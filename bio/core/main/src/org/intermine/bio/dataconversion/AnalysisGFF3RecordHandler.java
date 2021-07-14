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

import org.intermine.bio.io.gff3.GFF3Record;
import org.intermine.dataconversion.ItemWriter;
import org.intermine.metadata.Model;
import org.intermine.objectstore.ObjectStoreException;
import org.intermine.xml.full.Item;

import java.util.HashMap;
import org.apache.commons.lang.StringUtils;
import org.apache.tools.ant.BuildException;

/**
 * A converter/retriever for GFF files with AnalysisAccession data in the last column.
 */

public class AnalysisGFF3RecordHandler extends GFF3RecordHandler
{
    protected HashMap<String,Item> analysisItems = new HashMap<String, Item>();
    protected static final String analysisAccKey = "AnalysisAccession";

    /**
     * Create a new AnalysisGFF3RecordHandler for the given data model.
     * @param model the model for which items will be created
     */
    public AnalysisGFF3RecordHandler (Model model) {
        super(model);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public void process(GFF3Record record) {
        Item feature = getFeature();

        // Get the analysis accession and add to analyses collection
        if (record.getAttributes().get(analysisAccKey) != null) {
            String analysisAcc = record.getAttributes().get(analysisAccKey).iterator().next();
            //System.out.println("Analysis accession = " + analysisAcc);

            if (StringUtils.isNotEmpty(analysisAcc)) {
                addAnalysisToFeature(analysisAcc, feature);
            }
        }
    }

    // Add analysis to sequence feature "analyses" collection
    protected void addAnalysisToFeature(String analysisAcc, Item feature) {
        if (analysisItems.containsKey(analysisAcc)) {
            feature.addToCollection("analyses", analysisItems.get(analysisAcc).getIdentifier());
        }
        else {
            Item analysisItem = converter.createItem("Analysis");
            analysisItem.setAttribute("analysisAccession", analysisAcc);
            addItem(analysisItem);
            feature.addToCollection("analyses", analysisItem.getIdentifier());
            analysisItems.put(analysisAcc, analysisItem);
        }
    }
}
