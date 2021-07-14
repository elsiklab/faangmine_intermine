package org.intermine.bio.dataconversion;

/*
 * Copyright (C) 2002-2016 FlyMine
 *
 * This code may be freely distributed and modified under the
 * terms of the GNU Lesser General Public Licence.  This should
 * be distributed with the code.  See the LICENSE file for more
 * information or http://www.gnu.org/copyleft/lesser.html.
 *
 */

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.io.Reader;

import org.intermine.dataconversion.ItemWriter;
import org.intermine.metadata.Model;
import org.intermine.model.bio.Organism;
import org.intermine.objectstore.ObjectStoreException;
import org.intermine.util.FormattedTextParser;
import org.intermine.xml.full.Item;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.apache.tools.ant.BuildException;

/**
 * 
 * @author
 */
public class FaangBioProjectConverter extends BioFileConverter
{
    private static final String DATASET_TITLE = "BioProject";
    private static final String DATA_SOURCE_NAME = "NCBI and EBI";
    private static final int NUM_COLS = 4; // expected number of columns in tsv input file
    private static final Logger LOG = Logger.getLogger(FaangBioProjectConverter.class);

    /**
     * Constructor
     * @param writer the ItemWriter used to handle the resultant items
     * @param model the Model
     */
    public FaangBioProjectConverter(ItemWriter writer, Model model) {
        super(writer, model, DATA_SOURCE_NAME, DATASET_TITLE);
    }

    /**
     * Called for each file found by ant.
     *
     * {@inheritDoc}
     */
    public void process(Reader reader) throws Exception {
       /*
        * Testing with tab-delimited file with columns:
        *
        * 0) project id
        * 1) category
        * 2) assay type
        * 3) taxon id
        *
        */
        Iterator<?> tsvIter;
        try {
            tsvIter = FormattedTextParser.parseTabDelimitedReader(reader);
        } catch (Exception e) {
            throw new BuildException("Cannot parse " + DATASET_TITLE + " file", e);
        }

        // skip header
        tsvIter.next();

        while (tsvIter.hasNext()) {
            String[] line = (String[]) tsvIter.next();

            if (line.length < NUM_COLS && StringUtils.isNotEmpty(line.toString())) {
                throw new RuntimeException("Invalid line, should be " + NUM_COLS + " columns but is " + line.length + " instead");
            }

            String bioProjectId = line[0].trim();

            if (StringUtils.isEmpty(bioProjectId)) {
                break;
            }

            LOG.info("Processing bioProject id " + bioProjectId);

            String category = line[1].trim();
            String assayType = line[2].trim();
            String taxonId = line[3].trim();
        
            createBioProject(bioProjectId, category, assayType, taxonId);
        }
    }

    /**
     * Create and store a BioProject item
     *
     * @param bioProjectId bioProject id
     * @param category project category
     * @param assayType assay type
     * @param taxonId taxon id
     * @throws ObjectStoreException os
     */
    private void createBioProject(String bioProjectId, String category, String assayType, String taxonId) throws ObjectStoreException {
        Item bioProjectItem = createItem("BioProject");

        bioProjectItem.setAttribute("bioProjectId", bioProjectId);
        bioProjectItem.setAttribute("category", category);
        bioProjectItem.setAttribute("assayType", assayType);

        // Set organism from taxon id
        bioProjectItem.setReference("organism", getOrganism(taxonId));

        store(bioProjectItem);
    }
}
