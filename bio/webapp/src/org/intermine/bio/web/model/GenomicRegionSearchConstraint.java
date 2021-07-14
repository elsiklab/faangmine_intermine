package org.intermine.bio.web.model;

/*
 * Copyright (C) 2002-2017 FlyMine
 *
 * This code may be freely distributed and modified under the
 * terms of the GNU Lesser General Public Licence.  This should
 * be distributed with the code.  See the LICENSE file for more
 * information or http://www.gnu.org/copyleft/lesser.html.
 *
 */

import java.util.List;
import java.util.Set;

/**
 * A class to represent the constraints a user selected including a list of features and genomic
 * regions, etc.
 *
 * @author Fengyuan Hu
 */
public class GenomicRegionSearchConstraint
{
    private String orgName = null;
    private String chrAssembly = null;
    private List<String> categories = null;
    private List<String> analyses = null;
    private Set<Class<?>> featureTypes = null;
    private List<GenomicRegion> genomicRegionList = null;
    private int extendedRegionSize = 0;

    private boolean strandSpecific;

    // TODO add liftOver contraints: org, source, target

    /**
     * @return the orgName
     */
    public String getOrgName() {
        return orgName;
    }
    /**
     * @param orgName the orgName to set
     */
    public void setOrgName(String orgName) {
        this.orgName = orgName;
    }

    public String getChrAssembly() {
        return chrAssembly;
    }
     public void setChrAssembly(String chrAssembly) {
        this.chrAssembly = chrAssembly;
    }

    public List<String> getCategories() {
        return categories;
    }

    public List<String> getAnalyses() {
        return analyses;
    }

    public void setCategories(List<String> categories) {
        this.categories = categories;
    }

    public void setAnalyses(List<String> analyses) {
        this.analyses = analyses;
    }

    /**
     * @return the feature types to search for
     */
    public Set<Class<?>> getFeatureTypes() {
        return featureTypes;
    }
    /**
     * @param featureTypes the feature types to search for
     */
    public void setFeatureTypes(Set<Class<?>> featureTypes) {
        this.featureTypes = featureTypes;
    }

    /**
     * @return the genomicRegionList
     */
    public List<GenomicRegion> getGenomicRegionList() {
        return genomicRegionList;
    }
    /**
     * @param genomicRegionList the genomicRegionList to set
     */
    public void setGenomicRegionList(List<GenomicRegion> genomicRegionList) {
        this.genomicRegionList = genomicRegionList;
    }

    /**
     * @return the extendedRegionSize
     */
    public int getExtendedRegionSize() {
        return extendedRegionSize;
    }
    /**
     * @param extendedRegionSize the extendedRegionSize to set
     */
    public void setExtendedRegionSize(int extendedRegionSize) {
        this.extendedRegionSize = extendedRegionSize;
    }

    /**
     * @param strandSpecific whether or not this search specifies a strand
     */
    public void setStrandSpecific(boolean strandSpecific) {
        this.strandSpecific = strandSpecific;
    }

    /**
     * @return strandSpecific value
     */
    public boolean getStrandSpecific() {
        return strandSpecific;
    }

    /**
     * @return whether or not this search includes project categories
     */
    public boolean hasProjectCategories() {
        // One special case of non-project-category
        // anything else besides that must be a project category
        return ((categories != null) && (categories.size() > 1));
    } 

    /**
     * @return whether or not this search includes analyses
     */
    public boolean hasAnalyses() {
        // Note: assumes that categories will not be null as long as
        // analyses not null
        return ((analyses != null) && (analyses.size() > 0));
    }

    /**
     * @param obj a GenomicRegionSearchConstraint object
     * @return boolean
     */
    @Override
    public boolean equals(Object obj) {
        boolean retVal = false;

        if (obj instanceof GenomicRegionSearchConstraint) {
            GenomicRegionSearchConstraint c = (GenomicRegionSearchConstraint) obj;
            retVal = (extendedRegionSize == c.getExtendedRegionSize()
                    && genomicRegionList.equals(c.getGenomicRegionList())
                    && featureTypes.equals(c.getFeatureTypes())
                    && orgName.equals(c.getOrgName())
                    && chrAssembly.equals(c.getChrAssembly())
                    && strandSpecific == c.getStrandSpecific());
            if (hasAnalyses()) {
                retVal = retVal && categories.equals(c.getCategories())
                    && analyses.equals(c.getAnalyses());
            }
        }
        return retVal;
    }

    /**
     * @return hashCode
     */
    @Override
    public int hashCode() {
        int hash = extendedRegionSize + genomicRegionList.hashCode() + featureTypes.hashCode()
            + orgName.hashCode() + chrAssembly.hashCode();

        if (hasAnalyses()) {
            hash += categories.hashCode() + analyses.hashCode();
        }

        return hash;
    }

}
