<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="im"%>
<%@ taglib uri="/WEB-INF/functions.tld" prefix="imf" %>

<!DOCTYPE html>

<html>
	<head>
	    <title>Release Updates</title>
	    <style>
	    </style>
	</head>
	<body>
	    <div id="content-wrap">
            <div id="release-updates">
                <div class="note_header">
                    <h3>FAANGMine v1.2 Release</h3>
                </div>
                <br/>
                <div class="note_desc">
                    <h4>Features</h4>
                    <ul>
                        <li>The regions search has an additional filter for analyses per organism.</li>
                        <li>Homologues now include cluster ID and last common ancestor.</li>
                        <li>Publications added for all FAANG species.</li>
                    </ul>
                    <br>
                    <h4>Data Sets</h4>
                    <ul>
                        <li>Added data sets for Analyses, BioProjects, and BioSamples.</li>
                        <li>Added data sets for Expressions and Experiments.</li>
                        <li>Added OMIM data set.</li>
                        <li>Excluded TreeFam data set.</li>
                        <li>Pig variant and variant effect data issues resolved and are included in this release.</li>
                    </ul>
                </div>
                <br/>
		<div class="note_header">
		    <h3>FAANGMine v1.1 Release</h3>
		</div>
		<br/>
		<div class="note_desc">
		   <p>
This is the first public release of FAANGMine. There was a problem loading pig variant and variant effect data. This issue will be resolved in the next release.
		   </p>
		</div>
		<br/>
	    </div>
	    </div>
        </body>
</html>
