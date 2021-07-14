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
import org.intermine.metadata.Model;
import org.intermine.xml.full.Item;

/**
 * A converter/retriever for the ChipseqGff dataset via AnalysisGFF files.
 */

public class ChipseqGffGFF3RecordHandler extends AnalysisGFF3RecordHandler
{

    /**
     * Create a new ChipseqGffGFF3RecordHandler for the given data model.
     * @param model the model for which items will be created
     */
    public ChipseqGffGFF3RecordHandler (Model model) {
        super(model);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public void process(GFF3Record record) {
        // Call parent to handle analysis accessions
        super.process(record);

        // Nothing else chipseq-specific to do for now

        // Item feature = getFeature();
        // if (record.getAttributes().get("ID") != null) {
        //     String chipSeqId = record.getAttributes().get("ID").iterator().next();
        //     System.out.println("chipSeqId = " + chipSeqId);
        // }
    }
}
