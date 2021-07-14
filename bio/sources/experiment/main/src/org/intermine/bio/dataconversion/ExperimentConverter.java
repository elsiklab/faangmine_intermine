package org.intermine.bio.dataconversion;

/*
 * Copyright (C) 2002-2015 FlyMine
 *
 * This code may be freely distributed and modified under the
 * terms of the GNU Lesser General Public Licence.  This should
 * be distributed with the code.  See the LICENSE file for more
 * information or http://www.gnu.org/copyleft/lesser.html.
 *
 */

import java.io.File;
import java.io.Reader;
import java.lang.Exception;
import java.lang.String;
import java.lang.System;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.regex.Matcher;

import org.intermine.dataconversion.ItemWriter;
import org.intermine.metadata.Model;
import org.intermine.objectstore.ObjectStoreException;
import org.intermine.xml.full.Item;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.intermine.util.FormattedTextParser;


/**
 * 
 * @author
 */
public class ExperimentConverter extends BioFileConverter
{
    //
    protected static final Logger LOG = Logger.getLogger(ExperimentConverter.class);
    private static final int NUM_COLS = 29; // expected number of columns in tsv input file

    private HashMap<String,Item> btoItems = new HashMap<String, Item>();
    private static final String DATASET_TITLE = "SRA Experiment Metadata";
    private static final String DATA_SOURCE_NAME = "NCBI SRA";
    private HashMap<String,Item> projectItems = new HashMap<String, Item>();
    private HashMap<String,Item> sampleItems = new HashMap<String, Item>();
    private String taxonId;
    private ArrayList<String> headerNames = new ArrayList<String>();
    // Below are the attribute names that can be directly stored from input file
    // (no further processing needed)
    private ArrayList<String> attributeNames = new ArrayList<String>(
        Arrays.asList("tissue",
                      "run",
                      "organSystem",
                      "btoId",
                      "btoName",
                      "btoTopLevel",
                      "btoAllLevels",
                      "sex",
                      "age",
                      "breed",
                      "individual",
                      "lboId",
                      "releaseDate",
                      "averageReadLength",
                      "libraryName",
                      "libraryStrategy",
                      "librarySelection",
                      "librarySource",
                      "libraryLayout",
                      "platform",
                      "model",
                      "sraSample",
                      "sraStudy",
                      "sampleName",
                      "sraSubmission"));

    /**
     * Constructor
     * @param writer the ItemWriter used to handle the resultant items
     * @param model the Model
     */
    public ExperimentConverter(ItemWriter writer, Model model) {
        super(writer, model, DATA_SOURCE_NAME, DATASET_TITLE);
    }

    /**
     * Setter for taxonId from project.xml
     * @param taxonId
     */
    public void setTaxonId(String taxonId) {
        this.taxonId = taxonId;
    }

    /**
     * 
     *
     * {@inheritDoc}
     */
     public void process(Reader reader) throws Exception {
        // assumes that the metadata file has unique entries
        Iterator<String[]> lineIter = FormattedTextParser.parseTabDelimitedReader(reader);

        while (lineIter.hasNext()) {
            String[] line = lineIter.next();

            if (line.length < NUM_COLS && StringUtils.isNotEmpty(line.toString())) {
                throw new RuntimeException("Invalid line, should be " + NUM_COLS + " columns but is " + line.length + " instead");
            }

            // Assume id is first column with "Experiment" as header name
            if (Pattern.matches("Experiment", line[0])) {
                // Parsing header
                for (int i = 0; i < line.length; i++) {
                    // Store in lowercase for easier comparison
                    String headerName = line[i].trim().toLowerCase();
                    headerNames.add(headerName);
                }
                continue;
            }

            Item item = createItem("Experiment");

            String experiment = line[0].trim();
            if (StringUtils.isEmpty(experiment)) {
                System.out.println("experiment cannot be empty as it serves as a primaryIdentifier");
                System.exit(1);
            }
            else {
                item.setAttribute("experiment", experiment);
            }

            LOG.info("Processing Experiment " + experiment);

            // Store row values in (key, value) format with keys from header
            HashMap<String,String> attributes = new HashMap<String, String>();
            for (int i = 0; i < line.length; i++) {
                String value = line[i].trim();
                // If column value is empty (designated by - or . in column), set to empty string
                if (".".equals(value) || "-".equals(value)) {
                    value = "";
                }
                attributes.put(headerNames.get(i), value);
            }

            // Update rest of attributes (special cases to be handled separately below)
            for (String attributeName : attributeNames) {
                if (attributes.containsKey(attributeName.toLowerCase())) {
                    String attributeValue = attributes.get(attributeName.toLowerCase());
                    if (StringUtils.isNotEmpty(attributeValue)) {
                        item.setAttribute(attributeName, attributeValue);
                    }
                }
            }
            
            // Set organism reference
            item.setReference("organism", getOrganism(taxonId));
            String orgNameKey = "organism";
            if (attributes.containsKey(orgNameKey)) {
                String orgName = attributes.get(orgNameKey);
                item.setAttribute("organismName", orgName); 
            }

            // Set bioproject reference
            String bioProjectIdKey = "bioproject"; // lowercase
            if (attributes.containsKey(bioProjectIdKey)) {
                String projId = attributes.get(bioProjectIdKey);
                setExperimentReference(item, "BioProject", "bioProjectId", projId, projectItems, "bioProject");
            }

            // Set biosample reference
            String biosampleIdKey = "biosample"; // lowercase
            if (attributes.containsKey(biosampleIdKey)) {
                String sampleId = attributes.get(biosampleIdKey);
                setExperimentReference(item, "BioSample", "bioSampleId", sampleId, sampleItems, "bioSample");
            }

            // Get btoId
            String btoIdKey = "btoid"; // lowercase
            if (attributes.containsKey(btoIdKey)) {
                String btoId = attributes.get(btoIdKey);

                if (!btoId.isEmpty()) {
                    System.out.println("btoId: " + btoId);
                    String[] btoIds = btoId.split(",");
                    for (String btoIdentifier : btoIds) {
                        if (btoItems.containsKey(btoIdentifier)) {
                            item.addToCollection("brendaTissueOntology", btoItems.get(btoIdentifier).getIdentifier());
                        }
                        else {
                            Item btoItem = createItem("BRENDATerm");
                            btoItem.setAttribute("identifier", btoIdentifier);
                            item.addToCollection("brendaTissueOntology", btoItem.getIdentifier());
                            btoItem.addToCollection("samples", item.getIdentifier());
                            btoItems.put(btoIdentifier, btoItem);
                        }
                    }
                }

                // Additional terms
//                if (!additionalTerms.isEmpty()) {
//                    String[] brendaTissueOntologyTerms = additionalTerms.split(",");
//                    for (String brendaTissueOntologyTerm : brendaTissueOntologyTerms) {
//                        String[] pair = brendaTissueOntologyTerm.split("\\|");
//                        if (btoItems.containsKey(pair[1])) {
//                            item.addToCollection("brendaTissueOntology", btoItems.get(pair[1]).getIdentifier());
//                        }
//                        else {
//                            Item btoItem = createItem("BRENDATerm");
//                            btoItem.setAttribute("identifier", pair[1]);
//                            btoItem.setAttribute("name", pair[0]);
//                            item.addToCollection("brendaTissueOntology", btoItem.getIdentifier());
//                            btoItem.addToCollection("samples", item.getIdentifier());
//                            btoItems.put(pair[1], btoItem);
//                        }
//                    }
//                }
            }

            try {
                store(item);
            } catch(Exception e) {
                System.out.println("Error while storing Experiment item: " + item + "\nStacktrace: " + e);
            }
        }
    }

    /**
     *
     * {@inheritDoc}
     */
    @Override
    public void close() throws Exception {
        for (String key : btoItems.keySet()) {
            store(btoItems.get(key));
        }
    }


    /**
     * Set reference to item in experiment table
     *
     * @param item Experiment item
     * @param itemType type of item being referenced
     * @param idName id field name for reference item
     * @param id id value for reference item
     * @param items hashmap of reference items keyed by their ids
     * @param refName name of reference field
     */
    private void setExperimentReference(Item item, String itemType, String idName, String id, 
        HashMap<String,Item> items, String refName) throws ObjectStoreException {
        // Set reference, creating new Item if necessary
        if (!items.containsKey(id)) {
            Item newItem = createItem(itemType);
            newItem.setAttribute(idName, id);
            store(newItem);
            items.put(id, newItem);

            LOG.info("Creating new " + itemType + " item with ID: " + id);
        }
        item.setReference(refName, items.get(id).getIdentifier());
    } 
}
