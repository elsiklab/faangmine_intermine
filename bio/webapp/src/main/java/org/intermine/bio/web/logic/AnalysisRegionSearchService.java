package org.intermine.bio.web.logic;

/*
 * Copyright (C) 2002-2022 FlyMine
 *
 * This code may be freely distributed and modified under the
 * terms of the GNU Lesser General Public Licence.  This should
 * be distributed with the code.  See the LICENSE file for more
 * information or http://www.gnu.org/copyleft/lesser.html.
 *
 */

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.intermine.api.InterMineAPI;
import org.intermine.bio.web.model.GenomicRegionSearchConstraint;
import org.intermine.bio.web.struts.GenomicRegionSearchForm;
import org.intermine.metadata.ConstraintOp;
import org.intermine.metadata.StringUtil;
import org.intermine.model.bio.Analysis;
import org.intermine.model.bio.BioProject;
import org.intermine.model.bio.Organism;
import org.intermine.model.bio.SequenceFeature;
import org.intermine.objectstore.query.ConstraintSet;
import org.intermine.objectstore.query.ContainsConstraint;
import org.intermine.objectstore.query.Query;
import org.intermine.objectstore.query.QueryClass;
import org.intermine.objectstore.query.QueryCollectionReference;
import org.intermine.objectstore.query.QueryField;
import org.intermine.objectstore.query.QueryObjectReference;
import org.intermine.objectstore.query.QueryValue;
import org.intermine.objectstore.query.Results;
import org.intermine.objectstore.query.ResultsRow;
import org.intermine.objectstore.query.SimpleConstraint;

import org.apache.log4j.Logger;

/**
 * A class to provide methods for implementing a region search analysis filter.
 *
 * @author
 */
public class AnalysisRegionSearchService
{
    private static final Logger LOG = Logger.getLogger(AnalysisRegionSearchService.class);

    /**
     * Constructor
     */
    public AnalysisRegionSearchService() {
    }


    /**
     * Add info for projects and analyses to region search results map
     * @param ma Results map
     * @param orgList Organisms list
     * @param im InterMineAPI object
     * @param batchSize Query batch size
     */
    public static void addProjectsAnalysesToMap(Map<String, Object> ma, List<String> orgList, 
        List<String> excludedFeatureTypes, InterMineAPI im, int batchSize) {
        // Add organisms -> analyses and project categories
        ma.put("analyses_categories", getOrgsAnalysesCategoriesArray(orgList, im, batchSize));

        // Add organisms -> sources and features
        ma.put("sources_features", getOrgsSourcesFeaturesArray(orgList, excludedFeatureTypes, im, batchSize));
    }

    /**
     * Parse projects and analyses from region search form
     * @param grsForm GenomicRegionSearchForm
     * @param grsc GenomicRegionSearchConstraint
     * @param selectionInfo Selection info
     */
    public static void parseAnalysisInput(GenomicRegionSearchForm grsForm, GenomicRegionSearchConstraint grsc, 
        List<String> selectionInfo) {
        String[] analyses = (String[]) grsForm.get("analyses");

        List<String> analysesList = new ArrayList<String>(Arrays.asList(analyses));
        // Below displays analysis source names, not titles (no easy way to access that info at this stage)
        //String analysesStr = StringUtil.join(analysesList, ", ");
        //selectionInfo.add("<b>Selected analyses: </b><i>" + analysesStr + "</i>");
        grsc.setAnalyses(analysesList);
    }

    private static List<Object> getOrgsAnalysesCategoriesArray(List<String> orgList, InterMineAPI im, int batchSize) {
        Map<String, Map<String, Map<String, String>>> orgAnalysesCatMap = getAnalysesForProjects(orgList, im, batchSize);

        List<Object> oac = new ArrayList<Object>();
        /* Create array:
         * array[ organism: (name),
         *   projects: array[
         *     category: (name),
         *     analyses: array [{source:(source), title:(title)} ]
         *   ]
         * ]
         */
        // Begin by iterating over organism names:
        for (String org : orgAnalysesCatMap.keySet()) {
            // Outermost map
            Map<String, Object> catEntry = new LinkedHashMap<String, Object>();
            // Store organism name with key "organism"
            catEntry.put("organism", org);

            // Wish to store array of project categories with key "projects"; create array:
            Map<String, Map<String, String>> orgCats = orgAnalysesCatMap.get(org);
            ArrayList<Object> catList = new ArrayList<Object>();

            // Iterate over project categories:
            for (String cat : orgCats.keySet()) {
                // Next map
                Map<String, Object> analysesEntry = new LinkedHashMap<String, Object>();
                // Store category name with key "category"
                analysesEntry.put("category", cat);

                // Wish to store array of analyses with key "analyses"; create array:
                Map<String, String> catAnalyses = orgAnalysesCatMap.get(org).get(cat);
                ArrayList<Object> analysisList = new ArrayList<Object>();

                // Iterate over analyses (sources and titles)
                for (Entry<String, String> e : catAnalyses.entrySet()) {
                    Map<String, String> analysisInfo = new LinkedHashMap<String, String>();
                    analysisInfo.put("source", e.getKey());
                    analysisInfo.put("title", e.getValue());
                    analysisList.add(analysisInfo);
                }
                // Now store array with key "analyses":
                analysesEntry.put("analyses", analysisList);
                catList.add(analysesEntry);
            }
            // Finally, store array with key "projects":
            catEntry.put("projects", catList);

            oac.add(catEntry);
        }

        return oac;
    }

    private static List<Object> getOrgsSourcesFeaturesArray(List<String> orgList, 
        List<String> excludedFeatureTypes, InterMineAPI im, int batchSize) {

        Map<String, Map<String, Set<String>>> orgSourcesFeaturesMap = getFeaturesForSources(orgList, excludedFeatureTypes, im, batchSize);

        List<Object> osf = new ArrayList<Object>();

        // Begin by iterating over organism names:
        for (String org : orgSourcesFeaturesMap.keySet()) {
            // Outermost map
            Map<String, Object> sourceFeaturesEntry = new LinkedHashMap<String, Object>();
            // Store organism name with key "organism"
            sourceFeaturesEntry.put("organism", org);

            // Wish to store array of sources with key "sources"; create array:
            Map<String, Set<String>> orgSourceFeatures = orgSourcesFeaturesMap.get(org);
            ArrayList<Object> sourcesList = new ArrayList<Object>();

            // Iterate over feature sources (sources and features sets)
            for (Entry<String, Set<String>> e : orgSourceFeatures.entrySet()) {
                Map<String, Object> sourceFeatures = new LinkedHashMap<String, Object>();
                sourceFeatures.put("source", e.getKey());

                ArrayList<String> features = new ArrayList<String>();
                for (String v : e.getValue()) {
                    features.add(v);
                }
                sourceFeatures.put("features", features);
                sourcesList.add(sourceFeatures);
            }
            // Store array with key "sources"
            sourceFeaturesEntry.put("sources", sourcesList);

            osf.add(sourceFeaturesEntry);
        }    

        return osf;
    }

    private static Map<String, Map<String, Set<String>>> getFeaturesForSources(List<String> orgList,
        List<String> excludedFeatureTypes, InterMineAPI im, int batchSize) {
        Map<String, Map<String, Set<String>>> orgSourcesFeaturesMap = new LinkedHashMap<String, Map<String, Set<String>>>();

        long orgSourcesFeaturesTime = 0;
        long stepTime = System.currentTimeMillis();

        Query q = new Query();
        q.setDistinct(true);

        QueryClass qcOrg = new QueryClass(Organism.class);
        QueryClass qcFeature = new QueryClass(SequenceFeature.class);

        QueryField qfOrgName = new QueryField(qcOrg, "shortName");
        QueryField qfFeatureSource = new QueryField(qcFeature, "source");
        QueryField qfFeatureClass = new QueryField(qcFeature, "class");

        q.addToSelect(qfOrgName);
        q.addToSelect(qfFeatureSource);
        q.addToSelect(qfFeatureClass);

        q.addFrom(qcOrg);
        q.addFrom(qcFeature);

        q.addToOrderBy(qfOrgName, "ascending");
        q.addToOrderBy(qfFeatureSource, "ascending");

        ConstraintSet constraints = new ConstraintSet(ConstraintOp.AND);
        q.setConstraint(constraints);

        // SequenceFeature.organism = Organism
        QueryObjectReference organism = new QueryObjectReference(qcFeature,
                "organism");
        ContainsConstraint ccOrg = new ContainsConstraint(organism,
                ConstraintOp.CONTAINS, qcOrg);
        constraints.addConstraint(ccOrg);

        // SequenceFeature.source is not null
        SimpleConstraint scSource = new SimpleConstraint(qfFeatureSource, ConstraintOp.IS_NOT_NULL);
        constraints.addConstraint(scSource);

        Results results = im.getObjectStore().execute(q, batchSize, true, true, true);

        if (results != null && results.size() > 0) {
            for (Iterator<?> iter = results.iterator(); iter.hasNext(); ) {
                ResultsRow<?> row = (ResultsRow<?>) iter.next();
                String org = (String) row.get(0);
                String source = (String) row.get(1);
                String featureType = ((Class) row.get(2)).getSimpleName();
                if (!"Chromosome".equals(featureType) && orgList.contains(org) 
                    && (excludedFeatureTypes == null || !excludedFeatureTypes.contains(featureType))) {
                    // Check whether we've seen this organism
                    if (!orgSourcesFeaturesMap.containsKey(org)) {
                        // Haven't seen this organism before
                        // Need to initialize map of source -> features
                        Map<String, Set<String>> sourceFeaturesMap = new LinkedHashMap<String, Set<String>>();
                        orgSourcesFeaturesMap.put(org, sourceFeaturesMap);
                    }
                    // Check whether we've seen this feature source
                    if (!orgSourcesFeaturesMap.get(org).keySet().contains(source)) {
                        // Haven't seen this source before
                        // Need to initialize set of features
                        Set<String> featureSet = new HashSet<String>();
                        orgSourcesFeaturesMap.get(org).put(source, featureSet);
                    }
                    // Add feature to set
                    orgSourcesFeaturesMap.get(org).get(source).add(featureType);
                }
            }
        }

        orgSourcesFeaturesTime = System.currentTimeMillis() - stepTime;
        LOG.info("getFeaturesForSources: " + orgSourcesFeaturesTime + "ms, ");

        return orgSourcesFeaturesMap;
    }

    private static Map<String, Map<String, Map<String, String>>> getAnalysesForProjects(List<String> orgList,
            InterMineAPI im, int batchSize) {
        long analysesCatsTime = 0;
        long stepTime = System.currentTimeMillis();

        Query q = new Query();
        q.setDistinct(true);

        QueryClass qcOrg = new QueryClass(Organism.class);
        QueryClass qcAnalysis = new QueryClass(Analysis.class);
        QueryClass qcProj = new QueryClass(BioProject.class);

        QueryField qfOrgName = new QueryField(qcOrg, "shortName");
        QueryField qfAnalysisSource = new QueryField(qcAnalysis, "source");
        QueryField qfAnalysisTitle = new QueryField(qcAnalysis, "name"); // "title" field renamed to "name"
        QueryField qfProjCat = new QueryField(qcProj, "category");

        q.addToSelect(qfOrgName);
        q.addToSelect(qfAnalysisSource);
        q.addToSelect(qfAnalysisTitle);
        q.addToSelect(qfProjCat);

        q.addFrom(qcOrg);
        q.addFrom(qcAnalysis);
        q.addFrom(qcProj);

        q.addToOrderBy(qfOrgName, "ascending");
        q.addToOrderBy(qfProjCat, "ascending");
        q.addToOrderBy(qfAnalysisTitle, "ascending");

        ConstraintSet constraints = new ConstraintSet(ConstraintOp.AND);
        q.setConstraint(constraints);

        // BioProject.organism = Organism
        QueryObjectReference organism = new QueryObjectReference(qcProj, "organism");
        ContainsConstraint ccOrg = new ContainsConstraint(organism, ConstraintOp.CONTAINS, qcOrg);
        constraints.addConstraint(ccOrg);

        // Analysis.bioProject = BioProject
        QueryObjectReference bioProject = new QueryObjectReference(qcAnalysis, "bioProject");
        ContainsConstraint ccProj = new ContainsConstraint(bioProject, ConstraintOp.CONTAINS, qcProj);
        constraints.addConstraint(ccProj);

        Results results = im.getObjectStore().execute(q, batchSize, true, true, true);

        // Parse results data to a map
        // Structure: map (organism -> map ( category -> map ( source -> title )))
        // Index on organism name, bioproject category, and analysis source
        // Note that if multiple bioprojects have the same category name for an organism, their analyses
        // are grouped together in this map, as ultimately the user is querying on analysis title + category 
        // (not individual project id). 
        Map<String, Map<String, Map<String, String>>> orgAnalysesCatMap = new LinkedHashMap<String, Map<String, Map<String, String>>>();
        if (results != null && results.size() > 0) {
            for (Iterator<?> iter = results.iterator(); iter.hasNext(); ) {
                ResultsRow<?> row = (ResultsRow<?>) iter.next();

                // 0) Organism
                // 1) Analysis source
                // 2) Analysis title
                // 3) Project category
                String org = (String) row.get(0);
                String source = (String) row.get(1);
                String title = (String) row.get(2);
                String cat = (String) row.get(3);

                // Build orgAnalysesCatMap for orgs
                if (orgList.contains(org)) {
                    if (!orgAnalysesCatMap.containsKey(org)) {
                        // Haven't seen this organism yet
                        // Need to initialize map of category -> analyses info
                        Map<String, Map<String, String>> catAnalysesMap = new LinkedHashMap<String, Map<String, String>>();
                        orgAnalysesCatMap.put(org, catAnalysesMap);
                    }
                    // Check whether we've seen this project category before
                    if (!orgAnalysesCatMap.get(org).keySet().contains(cat)) {
                        // Haven't seen this category before
                        // Need to initialize map for analysis info
                        Map<String, String> analysesSourceTitleMap = new LinkedHashMap<String, String>();
                        orgAnalysesCatMap.get(org).put(cat, analysesSourceTitleMap);
                    }
                    // Analysis sources are unique (up to organism) so we can add source -> title map
                    orgAnalysesCatMap.get(org).get(cat).put(source, title);
                }
            }
        }

        analysesCatsTime = System.currentTimeMillis() - stepTime;
        LOG.info("getAnalysesForProjects: " + analysesCatsTime + "ms, ");

        return orgAnalysesCatMap;
    }
}
