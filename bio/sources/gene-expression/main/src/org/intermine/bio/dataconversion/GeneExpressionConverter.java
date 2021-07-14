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
import java.lang.Override;
import java.lang.String;
import java.lang.System;
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
import org.intermine.xml.full.Item;
import org.apache.log4j.Logger;
import org.intermine.util.FormattedTextParser;


/**
 * 
 * @author
 */
public class GeneExpressionConverter extends BioFileConverter
{
    //
    protected static final Logger LOG = Logger.getLogger(GeneExpressionConverter.class);
    private String orgRefId;
    private static final String DATASET_TITLE = "Gene RNASeq Expression data";
    private static final String DATA_SOURCE_NAME = "Gene RNASeq Expression data";
    private ArrayList<String> sampleNames = new ArrayList<String>();
    private HashMap<String,Item> items = new HashMap<String, Item>();
    private HashMap<String,Item> transcriptItems = new HashMap<String, Item>();
    private HashMap<String, Item> sampleEntityMap = new HashMap<String, Item>();
    private String valueType = "";
    private String geneSource;
    private String taxonId;

    /**
     * Constructor
     * @param writer the ItemWriter used to handle the resultant items
     * @param model the Model
     */
    public GeneExpressionConverter(ItemWriter writer, Model model) {
        super(writer, model, DATA_SOURCE_NAME, DATASET_TITLE);
    }

    /**
     * Setter for geneSource, provided by project.xml
     * @param geneSource
     */ 
    public void setGeneSource(String geneSource) {
        System.out.println("Setting geneSource as " + geneSource);
        this.geneSource = geneSource;
    }

    /**
     * Setter for taxonId, provided by project.xml
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
        orgRefId = getOrganism(taxonId);
        boolean startLogging = false;

        Iterator<String[]> lineIter = FormattedTextParser.parseTabDelimitedReader(reader);
        System.out.println("Reading file ...");
        int lineCount = 0;
        while (lineIter.hasNext()) {
            String[] line = lineIter.next();
            lineCount += 1;

            if (lineCount % 1000 == 0) {
                System.out.println("\n\nProcessing line " + lineCount + "\n\n");
            }

            if (Pattern.matches("Gene", line[0])) {
                // parsing header
                for (int i = 1; i < line.length; i++) {
                    sampleNames.add(line[i]);
                }
                continue;
            }

            File currentFile = getCurrentFile();
            String currentFileName = currentFile.getName().toUpperCase();
            if (currentFileName.contains("FPKM")) {
                valueType = "FPKM";
            }
            else if (currentFileName.contains("TPM")) {
                valueType = "TPM";
            }
            else {
                System.out.println("Error: valueType never determined\nCheck file naming for " + currentFileName);
                System.exit(1);
            }

            String transcriptId = line[0];
            for (int i = 1; i < line.length; i++) {
                String value = line[i];
                String experiment = sampleNames.get(i - 1);
                experiment = experiment.replaceAll("\\s", "");
                String key = transcriptId + "_" + experiment;
                if (items.containsKey(key)) {
                    Item item = items.get(key);
                    // Set FPKM/TPM value
                    item.setAttribute(valueType, value);
                    //if (valueType.equals("FPKM")) {
                    //    item.setAttribute("FPKM", value);
                    //}
                    //else if (valueType.equals("TPM")) {
                    //    item.setAttribute("TPM", value);
                    //}
                    items.put(key, item);
                }
                else {
                    Item item = createItem("Expression");
                    item.setAttribute("experiment", experiment);
                    item.setReference("organism", orgRefId);
                    // Set FPKM/TPM value
                    item.setAttribute(valueType, value);
                    //if (valueType.equals("FPKM")) {
                    //    item.setAttribute("FPKM", value);
                    //}
                    //else if (valueType.equals("TPM")) {
                    //    item.setAttribute("TPM", value);
                    //}
                    items.put(key, item);
                }

                if (transcriptItems.containsKey(transcriptId)) {
                    Item item = items.get(key);
                    Item tmpTranscriptItem = transcriptItems.get(transcriptId);
                    item.setReference("gene", tmpTranscriptItem.getIdentifier());
                    tmpTranscriptItem.addToCollection("expressionValues", item.getIdentifier());
                    items.put(key, item);
                    transcriptItems.put(transcriptId, tmpTranscriptItem);
                }
                else {
                    Item transcriptItem = createItem("Gene");
                    Item item = items.get(key);
                    //System.out.println("Processing expression data for gene: " + transcriptId);
                    transcriptItem.setAttribute("primaryIdentifier", transcriptId);
                    transcriptItem.setAttribute("source", geneSource);
                    transcriptItem.setReference("organism", orgRefId);
                    transcriptItem.addToCollection("expressionValues", item.getIdentifier());
                    item.setReference("gene", transcriptItem.getIdentifier());
                    items.put(key, item);
                    transcriptItems.put(transcriptId, transcriptItem);
                }

                if (sampleEntityMap.containsKey(experiment)) {
                    Item tmpItem  = items.get(key);
                    Item tmpSampleItem = sampleEntityMap.get(experiment);
                    tmpSampleItem.addToCollection("isoforms", tmpItem.getIdentifier());
                    tmpItem.setReference("sraMetadata", tmpSampleItem.getIdentifier());
                    items.put(key, tmpItem);
                    sampleEntityMap.put(experiment, tmpSampleItem);
                }
                else {
                    Item sampleItem = createItem("Experiment");
                    Item tmpItem = items.get(key);
                    sampleItem.setAttribute("experiment", experiment);
                    sampleItem.setReference("organism", orgRefId);
                    sampleItem.addToCollection("isoforms", tmpItem.getIdentifier());
                    sampleEntityMap.put(experiment, sampleItem);
                    tmpItem.setReference("sraMetadata", sampleItem.getIdentifier());
                    items.put(key, tmpItem);
                }
            }
        }
    }
    


    /**
     * Storing all Expression Items
     */
    public void storeAllItems() {
        System.out.println("Storing all items ...");
        for (String key : items.keySet()) {
            try {
                store(items.get(key));
            } catch (Exception e) {
                System.out.println("Error while storing item:\n" + items.get(key) + "\nStackTrace:\n" + e);
            }
        }
    }

    /**
     * Storing all Transcript Items
     */
    public void storeAllTranscriptItems() {
        for (String key : transcriptItems.keySet()) {
            try {
                store(transcriptItems.get(key));
            } catch (Exception e) {
                System.out.println("Error while storing Transcript item:\n" + transcriptItems.get(key) + "\nStackTrace:\n" + e);
            }
        }
    }

    /**
     * Storing all Sample Items
     */
    public void storeAllSampleItems() {
        for (String key : sampleEntityMap.keySet()) {
            try {
                store(sampleEntityMap.get(key));
            } catch (Exception e) {
                System.out.println("Error while storing Sample item:\n" + sampleEntityMap.get(key) + "\nStackTrace:\n" + e);
            }
        }
    }

    /**
     *
     * {@inheritDoc}
     */
    @Override
    public void close() throws Exception {
        storeAllItems();
        storeAllTranscriptItems();
        storeAllSampleItems();
    }
}
