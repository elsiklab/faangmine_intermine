//=== A mine specific script ===
//=== This is the default script for generic purpose ===

    jQuery(document).ready(function() {
       var htmlToInsert = '<li>' +
                           '<span>Select Organism:&nbsp;</span>' +
                           '<select id="organisms" name="organism">';

        // create organism dropdown
        if (useFullOrgNames) {
            // display organism full names
            // iterate through this one instead of 'fullnames' because order matters,
            jQuery.each(webDataJSON.organisms, function() {
                for (i in webDataJSON.fullnames) {
                    if (webDataJSON.fullnames[i].organism == this) {
                        htmlToInsert += '<option value="'+this+'">'+webDataJSON.fullnames[i].fullname+'</option>';
                        break;
                    }
                }
            });
        } else {
            // display organism short names
            jQuery.each(webDataJSON.organisms, function() {
                htmlToInsert += '<option value="'+this+'">'+this+'</option>';
            });
        }

        //htmlToInsert += '</select>' + '<span id="genomeBuild" style="padding:10px;"></span>'
        //                '</li><br>';
        htmlToInsert += '</select></li><br>';

        // create assembly dropdown, if using
        if (useAssemblyFilter) {
            htmlToInsert += '<li><span>Select Assembly:&nbsp;</span>' +
                            '<select id="assembly" name="assembly">';
            htmlToInsert += '</select></li><br>';
        }

        // create analysis jstree
        htmlToInsert += '<li><p id="selectAnalyses">Select Analyses:&nbsp;</p><br/>' +
                        '<div id="analysisTree" style="width:740px;">' +
                        '</div><br/>';

        // Adding hidden form element to collect checked analysis sources (can't easily get from jstree)
        htmlToInsert += '<div id="hiddenAnalyses"></div>';

        // Continuing with feature types checkboxes
        htmlToInsert += '<li>' +
                        '<p id="selectFeatureTypes"></p>' +
                        '<table id="featureTypes" cellpadding="0" cellspacing="0" border="0">' +
                        '</table>' +
                        '</li>' +
                        '<br>';

        jQuery(htmlToInsert).insertBefore('#genomicRegionInput');

        // Hide hidden checkboxes divs
        jQuery("#hiddenAnalyses").hide();

        // when organism changes, the feature types will change accordingly
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
            // Not used: Update genome build dropdown
            //appendGenomeBuild(jQuery(this).val());

            // Update assembly dropdown, if using
            if (useAssemblyFilter) {
                appendAssemblyVersions(jQuery(this).val());
            }

            // Update analyses tree
            // Note that this will also update the feature checkboxes
            appendAnalyses(jQuery(this).text());
        });
    }

    // Not used:
    //function appendGenomeBuild(org) {
    //    for(i in webDataJSON.genomeBuilds){
    //        if (webDataJSON.genomeBuilds[i].organism == org) {
    //            jQuery("#genomeBuild").html("<i>genome build: <span id='current-genome-version'>" + webDataJSON.genomeBuilds[i].genomeBuild + "</span></i>");
    //        }
    //    }
    //}

    function appendAnalyses(org) {
        var analysisTreeElements = '';
        var appendToTree = '';
        var nodeIdsToDisable = [];
        var analysisTree = jQuery('#analysisTree');
        var i,j,k,m;
        var catName, catId, analysisName, hiddenCheckbox, hiddenCheckboxAnalyses;

        // Clear tree
        analysisTree.jstree("destroy");
        analysisTree.empty();
        jQuery('#hiddenAnalyses').empty();

        // Build tree of project categories -> analysis titles
        analysisTreeElements = '<ul id="project-categories">';
        for (i in webDataJSON.analyses_categories) {
            if (webDataJSON.analyses_categories[i].organism == org) {
                for (j=0; j < webDataJSON.analyses_categories[i].projects.length; ++j) {
                    // Add top level tree node for bioproject category
                    catName = webDataJSON.analyses_categories[i].projects[j].category;
                    catId = getNodeIdFromName(catName);
                    // Special case: put genome features category first
                    if (catName == genomeFeaturesCategory) {
                        analysisTreeElements += '<li id="' + catId + '" class="category">' + catName;

                        // Add child nodes for analyses
                        // Display the first child and disable all checkboxes so that only parent genome features checkbox
                        // controls whether to search for all or no genome features (rather than search per source)
                        analysisTreeElements += '<ul id="' + catId + '-features">';
                        for (k=0; k < webDataJSON.analyses_categories[i].projects[j].analyses.length; ++k) {
                            // Add node for analysis title
                            analysisSource = webDataJSON.analyses_categories[i].projects[j].analyses[k].source;
                            analysisId = getNodeIdFromName(analysisSource);
                            nodeIdsToDisable.push(analysisId);
                            analysisClass = (k > 0) ? ' jstree-hidden' : ''; // hide all but the first child
                            analysisDisplayName = webDataJSON.analyses_categories[i].projects[j].analyses[k].title;
                            analysisTreeElements += '<li id="' + analysisId + '" class="analysis' + analysisClass + '">' + analysisDisplayName + '</li>';

                            // Add hidden analyses checkbox form elements
                            addHiddenCheckbox(analysisSource, analysisId);
                        }
                        analysisTreeElements += '</ul></li>'; // close project category node
                    } else {
                        appendToTree += '<li id="' + catId + '" class="category">' + catName;
                        appendToTree += '<ul id="' + catId + '-features">';
                        for (k=0; k < webDataJSON.analyses_categories[i].projects[j].analyses.length; ++k) {
                            // Add node for analysis title
                            analysisSource = webDataJSON.analyses_categories[i].projects[j].analyses[k].source;
                            analysisId = getNodeIdFromName(analysisSource);
                            analysisDisplayName = webDataJSON.analyses_categories[i].projects[j].analyses[k].title;
                            appendToTree += '<li id="' + analysisId + '" class="analysis">' + analysisDisplayName + '</li>';

                            // Add hidden analyses checkbox form elements
                            addHiddenCheckbox(analysisSource, analysisId);
                        }
                        appendToTree += '</ul></li>'; // close project category node
                    }
                }
                break; // Found org, exit out of loop early
            }
        }
        // Add rest of tree elements (everything after the genome features category)
        analysisTreeElements += appendToTree + '</ul>';
        // Uncheck all hidden boxes initially
        jQuery('#hiddenAnalyses input').prop('checked', false);

        // Initialize jsTree with category and analysis data
        //analysisTree.bind("loaded.jstree", function (event, data) {
        analysisTree.bind("ready.jstree", function (event, data) {
            // Automatically check genome features category upon loading page
            // NOTE: Every species will display this category, whether features exist or not.
            // Every load will have genome features in the database so it's not worth handling
            // the special case of no genome features present (will never happen in production).
            genomeFeaturesId = getNodeIdFromName(genomeFeaturesCategory);
            analysisTree.jstree("check_node", jQuery('#' + genomeFeaturesId));

            // If only one category, disable category node too since there's no choice
            if (jQuery("#analysisTree li.category").length == 1) {
                // By design, the lone category id should be the genome features category id, but
                // this will work in the generic case that there's only one category to choose from:
                var singleCatNodeId = jQuery("#analysisTree li.category")[0].id;
                nodeIdsToDisable.push(singleCatNodeId);
                //analysisTree.jstree("open_all");
                //analysisTree.jstree("check_all");
            } 
            // No longer relevant if genome features is automatically checked upon loading:
            //else {
            //    displayNoAnalysesSelectedMsg();
            //}

            // Nodes to disable:
            for (i=0; i < nodeIdsToDisable.length; ++i) {
                analysisTree.jstree("disable_node", jQuery('#' + nodeIdsToDisable[i]));
            }

            // Update checkboxes to reflect these changes
            updateHiddenCheckboxes();
        });
        analysisTree.html(analysisTreeElements);
        analysisTree.jstree({
            "core" : {
                "themes" : {
                    "dots"  : false,
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
            // expand node to show all analyses when category is checked
            if (data.node !== undefined) {
                analysisTree.jstree("open_node", jQuery('#' + data.node.id));
            }
            if (data.selected.length > 0) {
                appendFeatureTypes(jQuery("#organisms option:selected").text());
            } else {
                displayNoAnalysesSelectedMsg();
            }
            updateHiddenCheckboxes();
        });
    }

    function appendFeatureTypes(org) {
        var featureTypes = jQuery("#featureTypes").empty(),
            row = "<tr></tr>",
            input = "<input type='checkbox' class='featureType' name='featureTypes'>",
            cell = "<td width='300'></td>",
            br = "<br/>",
            sp = "&nbsp;",
            columns = 3;

         // Two-step process:
         // 1. Use webDataJSON.featureTypes to build list of features as usual with their descriptions
         // 2. Use selected analyses from tree to filter feature type list

         // First get all possible features for selected organism
         var allFeaturesList = [];
         for (i in webDataJSON.featureTypes) {
             if (webDataJSON.featureTypes[i].organism == org) {
                 var featureLen = webDataJSON.featureTypes[i].features.length;
                 for (var j=0; j<featureLen; j++) {
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
         
         // Next get the list of features available from the analyses selected in the tree
         var analysisTree = jQuery('#analysisTree');
         var analysisName, analysisId;
         var selectedAnalysesFeaturesList = [];
         var tmpList = []; // for merging lists together to avoid repeated features
         for (var i in webDataJSON.sources_features) {
             if (webDataJSON.sources_features[i].organism == org) {
                 for (var j=0; j < webDataJSON.sources_features[i].sources.length; ++j) {
                     analysisSource = webDataJSON.sources_features[i].sources[j].source;
                     analysisId = getNodeIdFromName(analysisSource);
                     // If this analysis is checked in the tree, merge this this of features
                     // with the selected analyses features list (removing duplicate entries)
                     if (analysisTree.jstree("is_checked", jQuery('#' + analysisId), true)) {
                         tmpList = webDataJSON.sources_features[i].sources[j].features;
                         selectedAnalysesFeaturesList = selectedAnalysesFeaturesList.concat(
                             tmpList.filter((feature) => selectedAnalysesFeaturesList.indexOf(feature) < 0)
                         );
                     }
                 }
                 break;
             }
         }

         // Create the final feature list from those selected
         var featureList = [];
         for (i=0; i < allFeaturesList.length; ++i) {
             if (selectedAnalysesFeaturesList.indexOf(allFeaturesList[i].current) >= 0) {
                 featureList.push(allFeaturesList[i]);
             }
         }

        // Now build the table as usual
        var featureSize = featureList.length;
        var rows = Math.ceil(featureSize/columns);
        var i=0;

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
        } else {
            // Note: this should never happen due to the way the features for each analysis are queried, but keeping
            // this here anyway just in case.
            var msg = "No features available for selected organism and/or analyses."
            jQuery("#selectFeatureTypes").html("Select Feature Types: <br><i>" + msg + "</i>");
        }
    }

    function appendAssemblyVersions(org) {
        jQuery("#assembly").empty();
        for(var i = 0; i < webDataJSON.assemblies.size(); i++) {
            if(webDataJSON.assemblies[i].organism == org) {
                var assemblies = webDataJSON.assemblies[i].assembly.sort();
                for(var j = 0; j < assemblies.size(); j++) {
                    jQuery("#assembly").append("<option value='" + assemblies[j] + "'>" + assemblies[j] + "</option>");
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
    function uncheck(status, name) {
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
           alert("No feature types selected. At least one feature type is required.");
           return false;
       }

       if (jQuery("#pasteInput").val() == "" && jQuery("#fileInput").val() == "") {
           alert("No genome regions entered. Type/paste/upload some genome regions.");
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
                   alert("Line " + lineNum + " is empty.");
                   return false;
               }
               if (!spanArray[i].match(ddotsRegex) &&
                   !spanArray[i].match(ddotstagRegex) &&
                   !spanArray[i].match(tabRegex) &&
                   !spanArray[i].match(dashRegex) &&
                   !spanArray[i].match(snpRegex) &&
                   !spanArray[i].match(emptyLine)
                   ) {
                      alert(spanArray[i] + " doesn't match any supported format.");
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

    function getNodeIdFromName(analysisName) {
       // Replace spaces with hyphens
       var id = analysisName.replace(/\s+/g, '-');
       // Remove periods
       id = id.replace(/\./g,'');
       // Convert to all lowercase
       id = id.toLowerCase();

       return 'tree-node-' + id;
    }

    function addHiddenCheckbox(analysisSource, analysisId) {
        // Add hidden analyses checkbox form elements (use source for form value)
        hiddenCheckboxAnalyses = '<input type="checkbox" id="' + analysisId + '" class="analysis" name="analyses" value="'
                               + analysisSource + '">' + analysisSource + '<br>';
        jQuery('#hiddenAnalyses').append(hiddenCheckboxAnalyses);
    }

    function updateHiddenCheckboxes() {
        // Initially uncheck all
        jQuery('#hiddenAnalyses input').prop('checked', false);

        // Iterate through and check the boxes corresponding to those selected in the tree
        jQuery('#analysisTree').jstree("get_checked", null, true).each(function(id, e) {
            if (jQuery('#hiddenAnalyses input#' + id).length) {
                // Check hidden analysis box
                jQuery('#hiddenAnalyses input#' + id).prop('checked', true);
            }
        });
    }

    function displayNoAnalysesSelectedMsg() {
        var msg = "No analyses selected."
        jQuery("#featureTypes").empty();
        jQuery("#selectFeatureTypes").html("Select Feature Types: <br><i>" + msg + "</i>");
    }

    // Switch organism to the one that matches the examples
    function loadOrganism() {
        jQuery("#organisms").val(exampleOrganism).change();
    }

    // Switch assembly to the one that matches the examples
    function loadAssembly() {
        jQuery("#assembly").val(exampleAssembly).change();
    }

    // Load example from web.properties file
    function loadExample(exampleSpans) {
        // Changing back to original behavior (don't reset org dropdown)
        //loadOrganism();
        //if (useAssemblyFilter) {
        //    loadAssembly();
        //}
        switchInputs('paste','file');
        jQuery('#pasteInput').focus();
        jQuery('#pasteInput').val(exampleSpans);
    }

    function loadExample1() {
        loadExample(exampleSpansFormat1);
        return false;
    }

    function loadExample2() {
        loadExample(exampleSpansFormat2);
        return false;
    }

    function loadExample3() {
        loadExample(exampleSpansFormat3);
        return false;
    }
