//=== A mine specific script ===
//=== This is the default script for generic purpose ===

    jQuery(document).ready(function() {

        var htmlToInsert = '<li>' +
                           '<span>Select Organism:&nbsp;</span>' +
                           '<select id="organisms" name="organism">';

        // iterate through the object
        jQuery.each(webDataJSON.organisms, function() {
            htmlToInsert += '<option value="'+this+'">'+this+'</option>';
        });

        //htmlToInsert += '</select>' + '<span id="genomeBuild" style="padding:10px;"></span>'
        // '</li><br>';
        htmlToInsert += '</select></li>'
        htmlToInsert += '<br/><li><span>Assembly:&nbsp;</span>' + '<select id="assembly" name="assembly">';        
        htmlToInsert += '</select></li><br/>';

        // Adding jsTree placeholder
        htmlToInsert += '<li><p id="selectAnalyses">Select Analyses:&nbsp;</p><br/>' +
                        '<div id="analysisTree" style="width:740px;">' +
                        '</div><br/>';

        // Adding hidden form element to collect checked category names and analysis titles (can't easily get from jstree)
        htmlToInsert += '<div id="hiddenCategories"></div>';
        htmlToInsert += '<div id="hiddenAnalyses"></div>';

        // Continuing with feature types dropdown (placeholder)
        htmlToInsert += '<li>' +
                        '<p id="selectFeatureTypes" style="padding-bottom:8px;"></p>' +
                        '<table id="featureTypes" cellpadding="0" cellspacing="0" border="0">' +
                        '</table>' +
                        '</li>' +
                        '<br>';

        jQuery(htmlToInsert).insertBefore('#genomicRegionInput');

        // when organism changes, the analyses and feature types will change accordingly
        jQuery("#organisms").change(function () {
            setInputOptions();
        })
        .trigger('change');

        window.addEventListener("pageshow", () => {
            // Should reset when back button is pressed
            setInputOptions();
        });
    });


   function setInputOptions() {
        // Reset textarea and file input
        resetInputs();

        jQuery("#organisms option:selected").each(function () {
            // Update genome build dropdown
            appendGenomeBuild(jQuery(this).text());
            // Update analyses tree
            appendAnalyses(jQuery(this).text());
            // Update feature types checkboxes
            appendAssemblyVersions(jQuery(this).text());
        });
   }

   function appendGenomeBuild(org) {
       for(i in webDataJSON.genomeBuilds){
           if (webDataJSON.genomeBuilds[i].organism == org) {
               jQuery("#genomeBuild").html("<i>genome build: <span id='current-genome-version'>" + webDataJSON.genomeBuilds[i].genomeBuild + "</span></i>");
           }
       }

   }

   function appendAnalyses(org) {
       var analysisTreeElements = '';
       var analysisTree = jQuery('#analysisTree');
       var i,j,k, m;
       var catsWithFeatures = [];
       var allCats = [];
       var leafClass, catName, analysisName, catId, analysisId;
       var hasAnalyses = true; // Whether organism has analysis data

       // Clear tree
       analysisTree.jstree("destroy");
       analysisTree.empty();
       jQuery('#hiddenCategories').empty();
       jQuery('#hiddenAnalyses').empty();

       // Build tree of project categories -> analysis titles

       // First collect the project categories that actually have features for this organism
       for (i in webDataJSON.analyses) {
          if (webDataJSON.analyses[i].organism == org) {
              for (j=0; j < webDataJSON.analyses[i].projects.length; ++j) {
                  catsWithFeatures.push(webDataJSON.analyses[i].projects[j].category);
              }
              break;
          }
       }

       // Now get all project category names, even if no features present
       // (so that categories are always displayed in tree, and only analyses
       // available to select are updated)
       for (i in webDataJSON.experiments) {
           if (webDataJSON.experiments[i].organism == org) {
               for (j=0; j < webDataJSON.experiments[i].experiment.length; ++j) {
                   allCats.push(webDataJSON.experiments[i].experiment[j]);
               }
               break;
           }
       }

       // Now build tree with all categories
       // if no features present, add CSS class to category node to display differently
       // (e.g., ghosted out)
       var nodeIdsToDisable = [];
       var hiddenCheckbox;

       analysisTreeElements = '<ul id="project-categories">';
       for (m=0; m < allCats.length; ++m) {
           catName = allCats[m];
           catId = getNodeIdFromName(catName);
           analysisTreeElements += '<li id="' + catId + '" class="category';
           // Check that any features are actually present
           if (catsWithFeatures.indexOf(catName) < 0) {
               // No features present
               nodeIdsToDisable.push(catId);
               analysisTreeElements += ' empty-features">' + catName;
           }
           else {
               // Features present
               // Add hidden categories checkbox form element 
               analysisTreeElements += '">' + catName;
               hiddenCheckbox = '<input type="checkbox" id="' + catId
                                  + '" class="category" name="categories" value="'
                                  + catName + '">' + catName + '<br>';
               jQuery('#hiddenCategories').append(hiddenCheckbox);
               jQuery('#hiddenCategories input[value="' + catName + '"]').prop('checked', false);

               // Now add the analysis title checkboxes, also add the corresponding
               // hidden checkboxes
               analysisTreeElements += '<ul id="' + catId + '-features">';
               for (i in webDataJSON.analyses) {
                   if (webDataJSON.analyses[i].organism == org) {
                       for (j=0; j < webDataJSON.analyses[i].projects.length; ++j) {
                           if (webDataJSON.analyses[0].projects[j].category == catName) {
                               for (k=0; k < webDataJSON.analyses[0].projects[j].analyses.length; ++k) {
                                   analysisName = webDataJSON.analyses[0].projects[j].analyses[k].title;
                                   analysisId = getNodeIdFromName(analysisName)

                                   analysisTreeElements += '<li id="' + analysisId + '" class="analysis">';
                                   analysisTreeElements += analysisName;
                                   analysisTreeElements += '</li>';

                                   var hiddenCheckboxAnalyses = '<input type="checkbox" id="' + analysisId
                                                         + '" class="analysis" name="analyses" value="'
                                                         + analysisName + '">' + analysisName + '<br>';
                                   jQuery('#hiddenAnalyses').append(hiddenCheckboxAnalyses);
                                   jQuery('#hiddenAnalyses input[value="' + analysisName + '"]').prop('checked', false);
                               }
                               break;
                           }
                       }
                       break;
                   }
               }
               analysisTreeElements += '</ul>';
           }
           analysisTreeElements += '</li>'; // close leaf node
       }
       
       // Special case: some organisms don't have any analysis data; all features are
       // "genome features." In that case, display a single checkbox and keep it checked
       // (since it's the only one).
       if (allCats.length < 1) {
           // Set boolean to reflect no analysis data
           hasAnalyses = false;

           // Add genome features category to tree
           catName = "Genome features";
           catId = getNodeIdFromName(catName);
           analysisTreeElements += '<li id="' + catId + '" class="category">' + catName + '</li>';

           // Add one hidden checkbox and keep it checked
           hiddenCheckbox = '<input type="checkbox" id="' + catId
                              + '" class="category" name="categories" value="'
                              + catName + '">' + catName + '<br>';
           jQuery('#hiddenCategories').append(hiddenCheckbox);
           jQuery('#hiddenCategories input[value="' + catName + '"]').prop('checked', true);
       }
       // Close categories list
       analysisTreeElements += '</ul>';

       analysisTree.bind("loaded.jstree", function (event, data) {
           //analysisTree.jstree("open_all");
           //analysisTree.jstree("check_all");
           for (i=0; i < nodeIdsToDisable.length; ++i) {
               analysisTree.jstree("uncheck_node", jQuery('#' + nodeIdsToDisable[i]));
               analysisTree.jstree("disable_node", jQuery('#' + nodeIdsToDisable[i]));
           }
           if (!hasAnalyses) {
               // Special case of no analyses: check "genome features" node and disable to prevent unchecking
               analysisTree.jstree("check_node", jQuery('#' + catId));
               analysisTree.jstree("disable_node", jQuery('#' + catId));
           }
           appendFeatureTypes(org, hasAnalyses);
           displayNoAnalysesSelectedMsg(); // Comment out if "check_all" set to true
       });
       analysisTree.html(analysisTreeElements);
       analysisTree.jstree({
           "core" : {
               "themes" : {
                   "dots"  : true,
                   "icons" : false
               },
           },
           "plugins" : [ "checkbox" ],
           "checkbox" : {
               "cascade" : 'down',
               "three_state": true,
           }
       });

       // when jstree nodes are checked/unchecked, feature types list must be rebuilt
       analysisTree.on("changed.jstree", function (event, data) {
           if (data.node !== undefined) {
               analysisTree.jstree("open_node", jQuery('#' + data.node.id));
           }
           if (data.selected.length > 0) {
               appendFeatureTypes(jQuery("#organisms option:selected").text(), hasAnalyses);
           }
           else {
               displayNoAnalysesSelectedMsg();
           }
           //console.log(data.selected);
           updateHiddenCheckboxes();
       });
   }

   function appendFeatureTypes(org, hasAnalyses) {
       var i,j,k;
       var featureList = [];

       var featureTypes = jQuery("#featureTypes").empty(),
           row = "<tr></tr>",
           input = "<input type='checkbox' class='featureType' name='featureTypes'>",
           cell = "<td width='300'></td>",
           br = "<br/>",
           sp = "&nbsp;",
           columns = 3;

        // Below no longer needed -- analysis features loaded from database now
        // (Keeping this code snippet for a bit in case the situation changes)
        // --------------------------------------------------------------------
        // First generate the list of features from analysis table, if applicable
        // These checkbox inputs (if any) will be their own name group
        //var analysisFeaturesList = [];
        //for (i=0; i < webDataJSON.analysis_features.length; ++i) {
        //    if (webDataJSON.analysis_features[i].organism == org) {
        //        analysisFeaturesList = webDataJSON.analysis_features[i].features;
        //        break;
        //    }
        //}

        // Run through feature type list initially to get those with attributes;
        // we'll eventually build the table out of those (eliminates empty cells)
        var allFeaturesList = [];
	for(i in webDataJSON.featureTypes) {
            if (webDataJSON.featureTypes[i].organism == org) {
                var featureLen = webDataJSON.featureTypes[i].features.length;
                for (j=0; j<featureLen; j++) {
                    try {
                        var cur = webDataJSON.featureTypes[i].features[j].featureType;
                        var dispName = $MODEL_TRANSLATION_TABLE[cur].displayName ? $MODEL_TRANSLATION_TABLE[cur].displayName : cur;
                        var desc = webDataJSON.featureTypes[i].features[j].description;
                        var cellData = {current: cur, displayName: dispName, description: desc};
                        allFeaturesList.push(cellData);
                    } catch(e) {
                        console.log("$MODEL_TRANSLATION_TABLE does not have attribute:", cur);
                    }
                }
                break;
            } 
        }
        //console.log('Features from organism:');
        //console.log(allFeaturesList);

        // Next get the list of features available from the analyses selected in the tree
        // (if applicable)
        if (hasAnalyses) {
            var analysisTree = jQuery('#analysisTree');
            var selectedAnalysesFeaturesList = [];
            var tmpList = [];
            var feature;
            for(i=0; i < webDataJSON.analyses.length; ++i) {
                if (webDataJSON.analyses[i].organism == org) {
                    for (j=0; j < webDataJSON.analyses[i].projects.length; ++j) {
                        for (k=0; k < webDataJSON.analyses[i].projects[j].analyses.length; ++k) {
                            analysisName = webDataJSON.analyses[i].projects[j].analyses[k].title;
                            analysisId = getNodeIdFromName(analysisName);
                            tmpList = webDataJSON.analyses[i].projects[j].analyses[k].features;
                            // If this analysis is checked in the tree, merge this this of features
                            // with the selected analyses features list (removing duplicate entries)
                            if (analysisTree.jstree("is_checked", jQuery('#' + analysisId), true)) {
                                //console.log(analysisName + " is checked");
                                selectedAnalysesFeaturesList = selectedAnalysesFeaturesList.concat(
                                    tmpList.filter((feature) => selectedAnalysesFeaturesList.indexOf(feature) < 0)
                                );
                            }
                            //else { console.log(analysisName + " is not checked"); }
                        }
                    }
                    break;
                }
            }

            //console.log("selected analysis features:");
            //console.log(selectedAnalysesFeaturesList);
  
            // Below should no longer be needed now that "genome features" is a category in the
            // database:
            //if (analysisTree.jstree("is_checked", jQuery('#' + getNodeIdFromName(genomeFeaturesCatName)), true)) {
            //    for (i=0; i < allFeaturesList.length; ++i) {
            //        // If not an analysis feature, it must be a genome feature
            //        // Add to list if it's a genome feature, or if it's an analysis feature
            //        // that happens to be selected in the tree
            //        if ((analysisFeaturesList.indexOf(allFeaturesList[i].current) < 0)
            //         || (selectedAnalysesFeaturesList.indexOf(allFeaturesList[i].current) >= 0)) {
            //            featureList.push(allFeaturesList[i]);
            //        }
            //    }
            //}
        
            // Create the final feature list from those selected
            for (i=0; i < allFeaturesList.length; ++i) {
                if (selectedAnalysesFeaturesList.indexOf(allFeaturesList[i].current) >= 0) {
                    featureList.push(allFeaturesList[i]);
                }
            }
        
            //console.log("filtered list:");
            //console.log(featureList);
        }
        else {
            // Include all features (no analyses to filter on)
            featureList = allFeaturesList;
        }

        // Now build the table as before
        i = 0;
        var featureSize = featureList.length;
        rows = Math.ceil(featureSize/columns);

        if (featureSize > 0) {
            for (j = 0; j < rows; j++) {
                var rowElem = jQuery(row);
                for (k = 0; k < columns; k++) {
                    // Since may not have equal number of rows and columns, exit early once we've
                    // exhausted feature list
                    if (i >= featureSize) {
                        break;
                    }

                    var current = featureList[i].current,
                        displayName = featureList[i].displayName,
                        description = featureList[i].description;
        
                    var desBox = "<a onclick=\"document.getElementById('ctxHelpTxt').innerHTML='" 
                               + displayName + ": " + description.replace(/&apos;/g, "\\'")
                               + "';document.getElementById('ctxHelpDiv').style.display=''; window.scrollTo(0, 0);"
                               + "return false\" title=\"" + description + "\">"
                               + "<img class=\"tinyQuestionMark\" src=\"images/icons/information-small-blue.png\"" 
                               + "alt=\"?\" style=\"padding: 4px 3px\"></a>";
                    var cellElem = jQuery(cell);
                    var onClick = function() {uncheck(this.checked)};
                    var ckbx = jQuery(input).attr({value: current}).click(onClick);
                    cellElem.append(ckbx).append(sp).append(displayName).append(desBox);
                    rowElem.append(cellElem);
                    i++; // proceed to next feature in list
                }
                featureTypes.append(rowElem);
            }

            jQuery("#selectFeatureTypes").html("<input id=\"check\" type=\"checkbox\" onclick=\"checkAll(this.id)\"/>&nbsp;Select Feature Types:");
        }
        else {
            //jQuery("#selectFeatureTypes").html("Select Feature Types:<br><i>"+org+" does not have any features</i>");
            var msg = "No features available for selected organism and/or analyses."
            jQuery("#selectFeatureTypes").html("Select Feature Types: <br><i>" + msg + "</i>");
        }
   }

   function appendAssemblyVersions(org) {
	jQuery("#assembly").find('option').remove().end()
	for(var i = 0; i < webDataJSON.assemblies.size(); i++) {
            if(webDataJSON.assemblies[i].organism == org) {
                //var assemblies = webDataJSON.assemblies[i].assembly.sort().reverse();
                var assemblies = webDataJSON.assemblies[i].assembly.sort();
                for(var j = 0; j < assemblies.size(); j++) {
                    // Ignore null values
                    if (assemblies[j] != null) {
                        jQuery("#assembly").append("<option value='" + assemblies[j] + "'>" + assemblies[j] + "</option>");
                    }
                }
            }
        }
   }

   // (un)Check all featureType checkboxes
   function checkAll(id) {
     jQuery(".featureType").prop('checked', jQuery('#' + id).is(':checked'));
     jQuery("#check").css("opacity", 1);
   }

   // check/uncheck any featureType checkbox
   function uncheck(status) {
         var statTag;
         if (!status) { //unchecked
           jQuery(".featureType").each(function() {
             if (this.checked) {statTag=true;}
           });

           if (statTag) {
            jQuery("#check").prop('checked', true);
            jQuery("#check").css("opacity", 0.5); }
           else {
            jQuery("#check").removeAttr('checked');
            jQuery("#check").css("opacity", 1);}
         }
         else { //checked
           jQuery(".featureType").each(function() {
             if (!this.checked) {statTag=true;}
         });

         if (statTag) {
           jQuery("#check").prop('checked', true);
           jQuery("#check").css("opacity", 0.5); }
         else {
           jQuery("#check").prop('checked', true);
           jQuery("#check").css("opacity", 1);}
         }
   }

   function validateBeforeSubmit() {
       var checkedFeatureTypes = [];
       jQuery(".featureType").each(function() {
           if (this.checked) { checkedFeatureTypes.push(this.value); }
       });
       var checkedFeatureTypesToString = checkedFeatureTypes.join(",");

       if (jQuery(".featureType").val() == null || checkedFeatureTypesToString == "") {
           alert("Please select some feature types...");
           return false;
       }

       if (jQuery("#pasteInput").val() == "" && jQuery("#fileInput").val() == "") {
           alert("Please type/paste/upload some genome regions...");
           return false;
       }

       if (jQuery("#pasteInput").val() != "") {
             // Regex validation
             var ddotsRegex = /^[^:\t\s]+: ?\d+(,\d+)*\.\.\d+(,\d+)*$/;
             var tabRegex = /^[^\t\s]+(\t\d+(,\d+)*){2}/; // this will match the line start with
             var dashRegex = /^[^:\t\s]+: ?\d+(,\d+)*\-\d+(,\d+)*$/;
             var snpRegex = /^[^:\t\s]+: ?\d+(,\d+)*$/;
             var emptyLine = /^\s*$/;
             var ddotstagRegex = /^[^:]+: ?\d+(,\d+)*\.\.\d+(,\d+)*: ?\d+$/;

             var spanArray = jQuery.trim(jQuery("#pasteInput").val()).split("\n");
             var lineNum;
             for (i=0;i<spanArray.length;i++) {
               lineNum = i + 1;
               if (spanArray[i] == "") {
                   alert("Line " + lineNum + " is empty...");
                   return false;
               }
               if (!spanArray[i].match(ddotsRegex) &&
                   !spanArray[i].match(ddotstagRegex) &&
                   !spanArray[i].match(tabRegex) &&
                   !spanArray[i].match(dashRegex) &&
                   !spanArray[i].match(snpRegex) &&
                   !spanArray[i].match(emptyLine)
                   ) {
                      alert(spanArray[i] + " doesn't match any supported format...");
                      return false;
               }
               if (spanArray[i].match(ddotsRegex)) {
                   var start = parseInt(spanArray[i].split(":")[1].split("..")[0].replace(/\,/g,''));
                   var end = parseInt(spanArray[i].split(":")[1].split("..")[1].replace(/\,/g,''));
               }
               if (spanArray[i].match(tabRegex)) {
                   var start = parseInt(spanArray[i].split("\t")[1].replace(/\,/g,''));
                   var end = parseInt(spanArray[i].split("\t")[2].replace(/\,/g,''));
               }
               if (spanArray[i].match(dashRegex)) {
                   var start = parseInt(spanArray[i].split(":")[1].split("-")[0].replace(/\,/g,''));
                   var end = parseInt(spanArray[i].split(":")[1].split("-")[1].replace(/\,/g,''));
               }
         }
       }
       return true;
   }

function loadExample(exampleSpans) {
    switchInputs('paste','file');
    jQuery('#pasteInput').focus();
    jQuery('#pasteInput').val(
        "1:580045..580045\n" +
        "5:5001231..5010365\n" +
        "5:7502134..7505149\n" +
        "8:220001..220001\n" +
        "9:2560023..2560023\n" +
        "10:346543..454792\n"
    );
}

function loadExample2() {
    switchInputs('paste','file');
    jQuery('#pasteInput').focus();
    jQuery('#pasteInput').val(
        "1:580045-580045\n" +
        "5:5001231-5010365\n" +
        "5:7502134-7505149\n" +
        "8:220001-220001\n" +
        "9:2560023-2560023\n" +
        "10:346543-454792\n"
    );
}

function loadExample3() {
    switchInputs('paste','file');
    jQuery('#pasteInput').focus();
    jQuery('#pasteInput').val(
        "1	580045	580045\n" +
        "5	5001231	5010365\n" +
        "5	7502134	7505149\n" +
        "8	220001	220001\n" +
        "9	2560023	2560023\n" +
        "10	346543	454792\n"
    );
}

function getNodeIdFromName(analysisName) {
    // Replace spaces with hyphens
    var id = analysisName.replace(/\s+/g, '-');
    // Remove periods
    id = id.replace(/\./g,'');
    // Convert to all lowercase
    id = id.toLowerCase();

    return 'tree-node-' + id;
}

function updateHiddenCheckboxes() {
    // Initially uncheck all
    jQuery('#hiddenAnalyses input').prop('checked', false);
    jQuery('#hiddenCategories input').prop('checked', false);

    // Iterate through and check the boxes corresponding to those selected in the tree
    jQuery('#analysisTree').jstree("get_checked", null, true).each(function(id, e) {
        if (jQuery('#hiddenAnalyses input#' + id).length) {
            // Check hidden analysis box
            jQuery('#hiddenAnalyses input#' + id).prop('checked', true);
            // Ensure parent is checked too in category section
            var thisNode = jQuery('#analysisTree').jstree("get_node", id);
            var parentId = jQuery('#analysisTree').jstree("get_parent", thisNode);
            jQuery('#hiddenCategories input#' + parentId).prop('checked', true);
        } else if (jQuery('#hiddenCategories input#' + id).length) {
            // Check hidden category box
            jQuery('#hiddenCategories input#' + id).prop('checked', true);
        }
    });
}

function displayNoAnalysesSelectedMsg() {
    var msg = "No analyses selected."
    jQuery("#featureTypes").empty();
    jQuery("#selectFeatureTypes").html("Select Feature Types: <br><i>" + msg + "</i>");
}

/*
   function loadExample(exampleSpans) {
        switchInputs('paste','file');
        jQuery('#pasteInput').focus();
        jQuery('#pasteInput').val(
            "GK000001.2:7901376-7901377\n"+
            "GK000003.2:80105316-80105317\n"+
            "GK000003.2:88904960-88904961\n"+
            "GK000004.2:7139260-7139261\n"+
            "GK000004.2:75484332-75484333\n"+
            "GK000005.2:47594268-47594269\n"+
            "GK000005.2:47866991-47866992\n"+
            "GK000005.2:48623407-48623408\n"+
            "GK000005.2:48876680-48876681\n"+
            "GK000005.2:49341986-49341987\n"+
            "GK000005.2:50511526-50511527\n"+
            "GK000006.2:40093712-40093713\n"+
            "GK000006.2:40093712-40093713\n"+
            "GK000006.2:40093712-40093713\n"+
            "GK000006.2:68101121-68101122\n"+
            "GK000006.2:103056415-103056416\n"+
            "GK000007.2:93287387-93287388\n"+
            "GK000007.2:98540675-98540676\n"+
            "GK000008.2:88601164-88601165\n"+
            "GK000009.2:81368713-81368714\n"+
            "GK000009.2:99124601-99124602\n"+
            "GK000010.2:94456158-94456159\n"+
            "GK000010.2:96286865-96286866\n"+
            "GK000011.2:103650142-103650143\n"+
            "GK000011.2:104721167-104721168\n"+
            "GK000012.2:28414761-28414762\n"+
            "GK000012.2:35342256-35342257\n"+
            "GK000014.2:24573257-24573258\n"+
            "GK000014.2:24621142-24621143\n"+
            "GK000014.2:24973324-24973325\n"+
            "GK000014.2:25015640-25015641\n"+
            "GK000014.2:25015640-25015641\n"+
            "GK000014.2:25015640-25015641\n"+
            "GK000014.2:25284162-25284163\n"+
            "GK000014.2:26244461-26244462\n"+
            "GK000014.2:49295027-49295028\n"+
            "GK000014.2:57668819-57668820\n"+
            "GK000016.2:11142022-11142023\n"+
            "GK000016.2:73527778-73527779\n"+
            "GK000017.2:25138316-25138317\n"+
            "GK000017.2:49580330-49580331\n"+
            "GK000020.2:4873556-4873557\n"+
            "GK000020.2:16773483-16773484\n"+
            "GK000020.2:28193857-28193858\n"+
            "GK000021.2:21396681-21396682\n"+
            "GK000021.2:21751432-21751433\n"+
            "GK000021.2:27166480-27166481\n"+
            "GK000021.2:32790802-32790803\n"+
            "GK000025.2:10486776-10486777\n"+
            "GK000025.2:25631487-25631488\n"+
            "GK000029.2:36095196-36095197\n"+
            "GK000029.2:45556241-45556242"
        );
   }

   function loadExample2() {
        switchInputs('paste','file');
        jQuery('#pasteInput').focus();
        jQuery('#pasteInput').val(
            "GK000001.2:7901376..7901377\n"+
            "GK000003.2:80105316..80105317\n"+
            "GK000003.2:88904960..88904961\n"+
            "GK000004.2:7139260..7139261\n"+
            "GK000004.2:75484332..75484333\n"+
            "GK000005.2:47594268..47594269\n"+
            "GK000005.2:47866991..47866992\n"+
            "GK000005.2:48623407..48623408\n"+
            "GK000005.2:48876680..48876681\n"+
            "GK000005.2:49341986..49341987\n"+
            "GK000005.2:50511526..50511527\n"+
            "GK000006.2:40093712..40093713\n"+
            "GK000006.2:40093712..40093713\n"+
            "GK000006.2:40093712..40093713\n"+
            "GK000006.2:68101121..68101122\n"+
            "GK000006.2:103056415..103056416\n"+
            "GK000007.2:93287387..93287388\n"+
            "GK000007.2:98540675..98540676\n"+
            "GK000008.2:88601164..88601165\n"+
            "GK000009.2:81368713..81368714\n"+
            "GK000009.2:99124601..99124602\n"+
            "GK000010.2:94456158..94456159\n"+
            "GK000010.2:96286865..96286866\n"+
            "GK000011.2:103650142..103650143\n"+
            "GK000011.2:104721167..104721168\n"+
            "GK000012.2:28414761..28414762\n"+
            "GK000012.2:35342256..35342257\n"+
            "GK000014.2:24573257..24573258\n"+
            "GK000014.2:24621142..24621143\n"+
            "GK000014.2:24973324..24973325\n"+
            "GK000014.2:25015640..25015641\n"+
            "GK000014.2:25015640..25015641\n"+
            "GK000014.2:25015640..25015641\n"+
            "GK000014.2:25284162..25284163\n"+
            "GK000014.2:26244461..26244462\n"+
            "GK000014.2:49295027..49295028\n"+
            "GK000014.2:57668819..57668820\n"+
            "GK000016.2:11142022..11142023\n"+
            "GK000016.2:73527778..73527779\n"+
            "GK000017.2:25138316..25138317\n"+
            "GK000017.2:49580330..49580331\n"+
            "GK000020.2:4873556..4873557\n"+
            "GK000020.2:16773483..16773484\n"+
            "GK000020.2:28193857..28193858\n"+
            "GK000021.2:21396681..21396682\n"+
            "GK000021.2:21751432..21751433\n"+
            "GK000021.2:27166480..27166481\n"+
            "GK000021.2:32790802..32790803\n"+
            "GK000025.2:10486776..10486777\n"+
            "GK000025.2:25631487..25631488\n"+
            "GK000029.2:36095196..36095197\n"+
            "GK000029.2:45556241..45556242"
        );
   }

   function loadExample3() {
        switchInputs('paste','file');
        jQuery('#pasteInput').focus();
        jQuery('#pasteInput').val(
            "GK000001.2   7901376 7901377\n"+
            "GK000003.2 80105316    80105317\n"+
            "GK000003.2 88904960    88904961\n"+
            "GK000004.2 7139260 7139261\n"+
            "GK000004.2 75484332    75484333\n"+
            "GK000005.2 47594268    47594269\n"+
            "GK000005.2 47866991    47866992\n"+
            "GK000005.2 48623407    48623408\n"+
            "GK000005.2 48876680    48876681\n"+
            "GK000005.2 49341986    49341987\n"+
            "GK000005.2 50511526    50511527\n"+
            "GK000006.2 40093712    40093713\n"+
            "GK000006.2 40093712    40093713\n"+
            "GK000006.2 40093712    40093713\n"+
            "GK000006.2 68101121    68101122\n"+
            "GK000006.2 103056415   103056416\n"+
            "GK000007.2 93287387    93287388\n"+
            "GK000007.2 98540675    98540676\n"+
            "GK000008.2 88601164    88601165\n"+
            "GK000009.2 81368713    81368714\n"+
            "GK000009.2 99124601    99124602\n"+
            "GK000010.2 94456158    94456159\n"+
            "GK000010.2 96286865    96286866\n"+
            "GK000011.2 103650142   103650143\n"+
            "GK000011.2 104721167   104721168\n"+
            "GK000012.2 28414761    28414762\n"+
            "GK000012.2 35342256    35342257\n"+
            "GK000014.2 24573257    24573258\n"+
            "GK000014.2 24621142    24621143\n"+
            "GK000014.2 24973324    24973325\n"+
            "GK000014.2 25015640    25015641\n"+
            "GK000014.2 25015640    25015641\n"+
            "GK000014.2 25015640    25015641\n"+
            "GK000014.2 25284162    25284163\n"+
            "GK000014.2 26244461    26244462\n"+
            "GK000014.2 49295027    49295028\n"+
            "GK000014.2 57668819    57668820\n"+
            "GK000016.2 11142022    11142023\n"+
            "GK000016.2 73527778    73527779\n"+
            "GK000017.2 25138316    25138317\n"+
            "GK000017.2 49580330    49580331\n"+
            "GK000020.2 4873556 4873557\n"+
            "GK000020.2 16773483    16773484\n"+
            "GK000020.2 28193857    28193858\n"+
            "GK000021.2 21396681    21396682\n"+
            "GK000021.2 21751432    21751433\n"+
            "GK000021.2 27166480    27166481\n"+
            "GK000021.2 32790802    32790803\n"+
            "GK000025.2 10486776    10486777\n"+
            "GK000025.2 25631487    25631488\n"+
            "GK000029.2 36095196    36095197\n"+
            "GK000029.2 45556241    45556242"
        );
   }
*/
