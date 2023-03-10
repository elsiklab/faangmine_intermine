<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="im"%>
<%@ taglib uri="/WEB-INF/functions.tld" prefix="imf" %>

<!DOCTYPE html>
<html>
  <head>
    <style>
    #release-updates {
      margin: 10px 20px 10px 20px;
    }
    #new-release-note {
      font-size:15px;
    }
    .note_header {
      line-height: 1.8;
      margin-bottom: 10px;
    }
    .note_header h5 {
      font-style: italic;
    }
    .note_desc {
      font-size: 13px;
      margin-left: 20px;
    }
    </style>
  </head>
  <body>
    <div id="content-wrap">
      <div id="release-updates">
        <div id="new-release-note">
          <p>FAANGMine has been updated to the latest release v1.3. Please see the data sources page for a full list of data and their versions.</p>
          <p>If you have any questions, please see our docs and youtube videos. Please do not hesitate to contact us should you require any further assistance. For all types of help and feedback email <c:out value="${WEB_PROPERTIES['feedback.destination']}"/> .</p>
        </div>
        <br/>
        <div class="note_header">
          <h3>FAANGMine v1.3 release</h3>
          <h5>January 2023</h5>
        </div>
        <div class="note_desc">
          <h4>Features</h4>
          <ul>
            <li>New template queries have for FAANG data.</li>
            <li>A new data collection called "Orthologue Cluster" allows retrieving OrthoDB orthologue clusters based on the cluster id.</li>
            <li>Duplicated NCBI gene ids are now handled with an underscore and digit(s) added to the duplicated ids to make them unique.</li>
          </ul>
          <br/>
          <h4>Data Sets</h4>
          <ul>
            <li>New genome assemblies and gene sets for cat, dog, sheep and water buffalo.</li>
            <li>The dog genome hosted in FAANGMine is now for the German Shepherd breed.</li>
            <li>Updated Ensembl gene sets for chicken and pig.</li>
            <li>FAANG chromatin state data for bovine, chicken and pig. These are called "regulatory region" in the Regions Search.</li>
            <li>FAANG chromatin accessibility data for chicken. These include data based on ATAC-seq and DNase Hypersensitivity, which are called "open chromatin region" and  "DNaseI hypersensitive site" in the Regions Search.</li>
            <li>FAANG CTCF binding site data generated using ChIP-seq for bovine, chicken, goat, and pig.</li>
            <li>FAANG chromatin architecture data generated using Hi-C for goat and pig. These include A/B compartments and TADs, which are called "Biological Region" and "Topologically Associated Domain" in the Regions Search.</li>
            <li>FAANG histone modification data generated using ChIP-seq have for bovine, chicken, horse and pig, and is called "Histone Binding Site" in the Regions Search.</li>
            <li>New FAANG RNA-seq based gene expression data for bovine, chicken, pig, sheep and water buffalo.</li>
          </ul>
          <br/>
        </div>
        <br/>
        <div class="note_header">
          <h3>FAANGMine v1.2 release</h3>
          <h5>May 2021</h5>
        </div>
        <div class="note_desc">
          <h4>Features</h4>
          <ul>
            <li>The regions search has an additional filter for analyses per organism.</li>
            <li>Homologues now include cluster ID and last common ancestor.</li>
            <li>Publications added for all FAANG species.</li>
          </ul>
          <br/>
          <h4>Data Sets</h4>
          <ul>
            <li>Added data sets for Analyses, BioProjects, and BioSamples.</li>
            <li>Added data sets for Expressions and Experiments.</li>
            <li>Added OMIM data set.</li>
            <li>Excluded TreeFam data set.</li>
            <li>Pig variant and variant effect data issues resolved and are included in this release.</li>
            <li>FAANG histone modification data generated using ChIP-seq for horse.</li>
          </ul>
          <br/>
        </div>
        <br/>
        <div class="note_header">
          <h3>FAANGMine v1.1 release</h3>
          <h5>April 2019</h5>
        </div>
        <div class="note_desc">
          <p>This is the first public release of FAANGMine. There was a problem loading pig variant and variant effect data. This issue will be resolved in the next release.</p>
        </div>
      </div>
    </div>
  </body>
</html>

