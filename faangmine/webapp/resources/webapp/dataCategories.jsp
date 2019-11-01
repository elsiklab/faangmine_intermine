<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="im"%>


<!-- dataCategories -->
<html:xhtml/>

<div class="body">
    <im:boxarea title="Data" stylename="plainbox"><p><fmt:message key="dataCategories.intro"/></p></im:boxarea>
<table cellpadding="0" cellspacing="0" border="0" class="dbsources">
    <thead>
        <th>Data Category</th>
        <th>Organism</th>
        <th>Data</th>
        <th>Source</th>
        <th>PubMed</th>
        <th>Note
    </thead>
    <tbody>
        <tr>
            <th rowspan="24">
                Gene
            </th>
        </tr>
        <tr>
            <td>Bos taurus</td>
            <td>
                NCBI Genes (RefSeq)
            </td>
            <td>
                NCBI Bos taurus Annotation Release 106 (ARS-UCD1.2)
            </td>
            <td>
                O'Leary et al - PubMed <a target="_BLANK" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26553804">26553804</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/vertebrate_mammalian/Bos_taurus/latest_assembly_versions/GCF_002263795.1_ARS-UCD1.2">NCBI FTP</a>
            </td>
        </tr>
        <tr>
            <td>Ovis aries</td>
            <td>
                NCBI Genes (RefSeq)
            </td>
            <td>
                NCBI Ovis aries Annotation Release 101 (Oar_v3.1)
            </td>
            <td>
                O'Leary et al - PubMed <a target="_BLANK" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26553804">26553804</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/vertebrate_mammalian/Ovis_aries/all_assembly_versions/suppressed/GCF_000298735.1_Oar_v3.1">NCBI FTP</a>
            </td>
        </tr>
        <tr>
            <td>Capra hircus</td>
            <td>
                NCBI Genes (RefSeq)
            </td>
            <td>
                NCBI Capra hircus Annotation Release 102 (ARS1)
            </td>
            <td>
                O'Leary et al - PubMed <a target="_BLANK" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26553804">26553804</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/vertebrate_mammalian/Capra_hircus/latest_assembly_versions/GCF_001704415.1_ARS1/">NCBI FTP</a>
            </td>
        </tr>
        <tr>
            <td>Sus scrofa</td>
            <td>
                NCBI Genes (RefSeq)
            </td>
            <td>
                NCBI Sus scrofa Annotation Release 106 (Sscrofa11.1)
            </td>
            <td>
                O'Leary et al - PubMed <a target="_BLANK" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26553804">26553804</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/vertebrate_mammalian/Sus_scrofa/latest_assembly_versions/GCF_000003025.6_Sscrofa11.1">NCBI FTP</a>
            </td>
        </tr>
        <tr>
            <td>Gallus gallus</td>
            <td>
                NCBI Genes (RefSeq)
            </td>
            <td>
                NCBI Gallus gallus Annotation Release 104 (GRCg6a)
            </td>
            <td>
                O'Leary et al - PubMed <a target="_BLANK" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26553804">26553804</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/vertebrate_other/Gallus_gallus/latest_assembly_versions/GCF_000002315.6_GRCg6a">NCBI FTP</a>
            </td>
        </tr>
        <tr>
            <td>Equus caballus</td>
            <td>
                NCBI Genes (RefSeq)
            </td>
            <td>
                NCBI Equus caballus Annotation Release 103 (EquCab3.0)
            </td>
            <td>
                O'Leary et al - PubMed <a target="_BLANK" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26553804">26553804</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/vertebrate_mammalian/Equus_caballus/latest_assembly_versions/GCF_002863925.1_EquCab3.0">NCBI FTP</a>
            </td>
        </tr>
        <tr>
            <td>Canis lupus familiaris</td>
            <td>
                NCBI Genes (RefSeq)
            </td>
            <td>
                NCBI Canis lupus familiaris Annotation Release 105 (CanFam3.1)
            </td>
            <td>
                O'Leary et al - PubMed <a target="_BLANK" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26553804">26553804</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/vertebrate_mammalian/Canis_lupus/latest_assembly_versions/GCF_000002285.3_CanFam3.1">NCBI FTP</a>
            </td>
        </tr>
        <tr>
            <td>Felis catus</td>
            <td>
                NCBI Genes (RefSeq)
            </td>
            <td>
                NCBI Felis catus Annotation Release 104 (Felis_catus_9.0)
            </td>
            <td>
                O'Leary et al - PubMed <a target="_BLANK" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26553804">26553804</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/vertebrate_mammalian/Felis_catus/latest_assembly_versions/GCF_000181335.3_Felis_catus_9.0">NCBI FTP</a>
            </td>
        </tr>
        <tr>
            <td>Bubalus bubalis</td>
            <td>
                NCBI Genes (RefSeq)
            </td>
            <td>
                NCBI Bubalus bubalis Annotation Release 101 (UOA_WB_1)
            </td>
            <td>
                O'Leary et al - PubMed <a target="_BLANK" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26553804">26553804</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/vertebrate_mammalian/Bubalus_bubalis/latest_assembly_versions/GCF_003121395.1_UOA_WB_1">NCBI FTP</a>
            </td>
        </tr>
        <tr>
            <td>Homo sapiens</td>
            <td>
                NCBI Genes (RefSeq)
            </td>
            <td>
                NCBI Homo sapiens Annotation Release 109 (GRCh38.p12)
            </td>
            <td>
                O'Leary et al - PubMed <a target="_BLANK" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26553804">26553804</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/vertebrate_mammalian/Homo_sapiens/all_assembly_versions/GCF_000001405.38_GRCh38.p12">NCBI FTP</a>
            </td>
        </tr>
        <tr>
            <td>Mus musculus</td>
            <td>
                NCBI Genes (RefSeq)
            </td>
            <td>
                NCBI Mus musculus Annotation Release 106 (GRCm38.p6)
            </td>
            <td>
                O'Leary et al - PubMed <a target="_BLANK" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26553804">26553804</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/vertebrate_mammalian/Mus_musculus/latest_assembly_versions/GCF_000001635.26_GRCm38.p6">NCBI FTP</a>
            </td>
        </tr>
        <tr>
            <td>Rattus norvegicus</td>
            <td>
                NCBI Genes (RefSeq)
            </td>
            <td>
                NCBI Rattus norvegicus Annotation Release 106 (Rnor_6.0)
            </td>
            <td>
                O'Leary et al - PubMed <a target="_BLANK" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=26553804">26553804</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/vertebrate_mammalian/Rattus_norvegicus/latest_assembly_versions/GCF_000001895.5_Rnor_6.0">NCBI FTP</a>
            </td>
        </tr>
        <tr>
            <td>Bos taurus</td>
            <td>
                Ensembl Genes
            </td>
            <td>
                Ensembl Release 95
            </td>
            <td>
                Cunningham et al - PubMed <a target="_BLANK" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=30407521">30407521</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ensembl.org/pub/release-95/gff3/bos_taurus/">ENSEMBL Download</a>
            </td>
        </tr>
        <tr>
            <td>Ovis aries</td>
            <td>
                Ensembl Genes
            </td>
            <td>
                Ensembl Release 95
            </td>
            <td>
                Cunningham et al - PubMed <a target="_BLANK" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=30407521">30407521</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ensembl.org/pub/release-95/gff3/ovis_aries/">ENSEMBL Download</a>
            </td>
        </tr>
        <tr>
            <td>Capra hircus</td>
            <td>
                Ensembl Genes
            </td>
            <td>
                Ensembl Release 95
            </td>
            <td>
                Cunningham et al - PubMed <a target="_BLANK" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=30407521">30407521</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ensembl.org/pub/release-95/gff3/capra_hircus/">ENSEMBL Download</a>
            </td>
        </tr>
        <tr>
            <td>Sus scrofa</td>
            <td>
                Ensembl Genes
            </td>
            <td>
                Ensembl Release 95
            </td>
            <td>
                Cunningham et al - PubMed <a target="_BLANK" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=30407521">30407521</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ensembl.org/pub/release-95/gff3/sus_scrofa/">ENSEMBL Download</a>
            </td>
        </tr>
        <tr>
            <td>Gallus gallus</td>
            <td>
                Ensembl Genes
            </td>
            <td>
                Ensembl Release 95
            </td>
            <td>
                Cunningham et al - PubMed <a target="_BLANK" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=30407521">30407521</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ensembl.org/pub/release-95/gff3/gallus_gallus/">ENSEMBL Download</a>
            </td>
        </tr>
        <tr>
            <td>Equus caballus</td>
            <td>
                Ensembl Genes
            </td>
            <td>
                Ensembl Release 95
            </td>
            <td>
                Cunningham et al - PubMed <a target="_BLANK" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=30407521">30407521</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ensembl.org/pub/release-95/gff3/equus_caballus/">ENSEMBL Download</a>
            </td>
        </tr>
        <tr>
            <td>Canis lupus familiaris</td>
            <td>
                Ensembl Genes
            </td>
            <td>
                Ensembl Release 95
            </td>
            <td>
                Cunningham et al - PubMed <a target="_BLANK" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=30407521">30407521</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ensembl.org/pub/release-95/gff3/canis_familiaris/">ENSEMBL Download</a>
            </td>
        </tr>
        <tr>
            <td>Felis catus</td>
            <td>
                Ensembl Genes
            </td>
            <td>
                Ensembl Release 95
            </td>
            <td>
                Cunningham et al - PubMed <a target="_BLANK" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=30407521">30407521</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ensembl.org/pub/release-95/gff3/felis_catus/">ENSEMBL Download</a>
            </td>
        </tr>
        <tr>
            <td>Homo sapiens</td>
            <td>
                Ensembl Genes
            </td>
            <td>
                Ensembl Release 95
            </td>
            <td>
                Cunningham et al - PubMed <a target="_BLANK" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=30407521">30407521</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ensembl.org/pub/release-95/gff3/homo_sapiens/">ENSEMBL Download</a>
            </td>
        </tr>
        <tr>
            <td>Mus musculus</td>
            <td>
                Ensembl Genes
            </td>
            <td>
                Ensembl Release 95
            </td>
            <td>
                Cunningham et al - PubMed <a target="_BLANK" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=30407521">30407521</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ensembl.org/pub/release-95/gff3/mus_musculus/">ENSEMBL Download</a>
            </td>
        </tr>
        <tr>
            <td>Rattus norvegicus</td>
            <td>
                Ensembl Genes
            </td>
            <td>
                Ensembl Release 95
            </td>
            <td>
                Cunningham et al - PubMed <a target="_BLANK" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=30407521">30407521</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ensembl.org/pub/release-95/gff3/rattus_norvegicus/">ENSEMBL Download</a>
            </td>
        </tr>


        <tr>
            <th rowspan="4">
                Homology
            </th>
        </tr>

        <tr>
            <td>
                B. taurus<br/>
                C. familiaris<br/>
                E. caballus<br/>
                F. catus<br/>
                S. scrofa<br/>
                H. sapiens<br/>
                M. musculus<br/>
                R. norvegicus<br/>
                G. gallus
            </td>
            <td>
                Orthologue and paralogue relationships
            </td>
            <td>
                Treefam - release 9.0
            </td>
            <td>
                Schreiber et al - PubMed <a target="_BLANK" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=24194607">24194607</a>
            </td>
            <td>
                <a target="_BLANK" href="http://www.treefam.org/download">Treefam Download</a>
            </td>
        </tr>
        <tr>
            <td>
                B. taurus<br/>
                H. sapiens<br/>
                S. scrofa<br/>
                M. musculus<br/>
                G. gallus<br/>
                R. norvegicus<br/>
                C. familiaris<br/>
                F. catus<br/>
                C. hircus<br/>
                O. aries<br/>
                E. caballus
            </td>
            <td>
                Orthologue and paralogue relationships
            </td>
            <td>
                Ensembl Compara
            </td>
            <td>
                Vilella et al - PubMed <a target="_BLANK" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=19029536">19029536</a>
            </td>
            <td>
                <a target="_BLANK" href="http://useast.ensembl.org/biomart/martview/0753daa696defc7f50bc431acad5293e">Ensembl Biomart</a>
            </td>
        </tr>
        <tr>
            <td>
                B. taurus<br/>
                H. sapiens<br/>
                M. musculus<br/>
                R. norvegicus<br/>
                C. hircus<br/>
                O. aries<br/>
                C. familiaris<br/>
                E. caballus<br/>
                S. scrofa<br/>
                F. catus<br/>
                B. bubalis<br/>
                G. gallus
            </td>
            <td>
                Orthologue and paralogue relationships
            </td>
            <td>
                OrthoDB release 10
            </td>
            <td>
                Kriventseva et al - PubMed <a target="_BLANK" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=30395283">30395283</a>
            </td>
            <td>
                <a target="_BLANK" href="https://www.orthodb.org/?page=filelist">OrthoDB Download</a>
            </td>
        </tr>


        <tr>
            <th rowspan="3">
                Proteins
            </th>
        </tr>
        <tr>
            <td>
                B. taurus<br/>
                H. sapiens<br/>
                M. musculus<br/>
                R. norvegicus<br/>
                C. hircus<br/>
                O. aries<br/>
                C. familiaris<br/>
                E. caballus<br/>
                S. scrofa<br/>
                F. catus<br/>
                B. bubalis<br/>
                G. gallus
            </td>
            <td>
                Protein annotation
            </td>
            <td>
                UniProt - Release 2019_02
            </td>
            <td>
                UniProt Consortium - PubMed <a target="_BLANK" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=30395287">30395287</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.uniprot.org/pub/databases/uniprot/previous_releases/release-2019_02/knowledgebase/">Uniprot Download</a>
            </td>
        </tr>
        <tr>
            <td>
                B. taurus<br/>
                H. sapiens<br/>
                M. musculus<br/>
                R. norvegicus<br/>
                C. hircus<br/>
                O. aries<br/>
                C. familiaris<br/>
                E. caballus<br/>
                S. scrofa<br/>
                F. catus<br/>
                B. bubalis<br/>
                G. gallus
            </td>
            <td>
                Protein domains
            </td>
            <td>
                InterPro Version 72.0
            </td>
            <td>
                Mitchell et al - PubMed <a target="_BLANK" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=30398656">30398656</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ebi.ac.uk/pub/databases/interpro/72.0/">InterPro Download</a>
            </td>
        </tr>



        <tr>
            <th rowspan="3">
                Interactions
            </th>
        </tr>
        <tr>
            <td>
                B. taurus<br/>
                H. sapiens<br/>
                M. musculus<br/>
                R. norvegicus<br/>
                C. hircus<br/>
                O. aries<br/>
                C. familiaris<br/>
                E. caballus<br/>
                S. scrofa<br/>
                G. gallus
            </td>
            <td>
                Interactions
            </td>
            <td>
                BioGRID - Version 3.5.170
            </td>
            <td>
                Oughtred et al - PubMed <a target="_BLANK" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=30476227">30476227</a>
            </td>
            <td>
                <a target="_BLANK" href="https://downloads.thebiogrid.org/BioGRID/Release-Archive">BioGRID Download</a>
            </td>
        </tr>
        <tr>
            <td>
                B. taurus<br/>
                H. sapiens<br/>
                M. musculus<br/>
                R. norvegicus<br/>
                C. hircus<br/>
                O. aries<br/>
                E. caballus<br/>
                S. scrofa
            </td>
            <td>
                Interactions
            </td>
            <td>
                IntAct 2019-03-22 release
            </td>
            <td>
                Hermjakob H et al - PubMed <a target="_BLANK" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=14681455">14681455</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ebi.ac.uk/pub/databases/IntAct/current/">IntAct Download</a>
            </td>
        </tr>


        <tr>
            <th rowspan="12">
                Ontologies
            </th>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Uber Anatomy Ontology (UBERON)</td>
            <td>Release Date: 04/15/2017</td>
            <td>Mungall et al - PubMed <a target="_BLANK" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=22293552">22293552</td></a>
            <td><a target="_BLANK" href="https://bioportal.bioontology.org/ontologies/UBERON">UBERON</a></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Mouse Adult Gross Anatomy Ontology</td>
            <td>Release Date: 11/14/2014</td>
            <td>&nbsp;</td>
            <td><a target="_BLANK" href="https://bioportal.bioontology.org/ontologies/MA">MA</a></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>BRENDA Tissue Ontology</td>
            <td>Release Date: 05/03/2016</td>
            <td>Gremse et al - PubMed <a target="_BLANK" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=21030441">21030441</td></a>
            <td><a target="_BLANK" href="https://bioportal.bioontology.org/ontologies/BTO">BTO</a></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Clinical Measurement Ontology</td>
            <td>Release Date: 01/05/2019</td>
            <td>Shimoyama et al - PubMed <a target="_BLANK" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=22654893">22654893</td></a>
            <td><a target="_BLANK" href="https://bioportal.bioontology.org/ontologies/CMO">CMO</a></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Livestock Breed Ontology</td>
            <td>Release Date: 01/14/2019</td>
            <td>&nbsp;</td>
            <td><a target="_BLANK" href="https://bioportal.bioontology.org/ontologies/LBO">LBO</a></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Livestock Product Trait Ontology</td>
            <td>Release Date: 09/28/2018</td>
            <td>&nbsp;</td>
            <td><a target="_BLANK" href="https://bioportal.bioontology.org/ontologies/PTO">PTO</a></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Vertebrate Trait Ontology</td>
            <td>Release Date: 12/07/2018</td>
            <td>&nbsp;</td>
            <td><a target="_BLANK" href="https://bioportal.bioontology.org/ontologies/VT">VT</a></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Evidence Ontology</td>
            <td>Release Date: 03/09/2018</td>
            <td>Chibucos et al - PubMed <a target="_BLANK" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=25052702">25052702</td></a>
            <td><a target="_BLANK" href="https://bioportal.bioontology.org/ontologies/ECO">ECO</a></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>PSI MI Ontology</td>
            <td>Release Date: 03/06/2019</td>
            <td>&nbsp;</td>
            <td><a target="_BLANK" href="http://www.obofoundry.org/ontology/mi.html">MI</a></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Gene Ontology</td>
            <td>Release Date: 03/19/2019</td>
            <td>Gene Ontology Consortium - PubMed <a target="_BLANK" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=27899567">27899567</td></a>
            <td><a target="_BLANK" href="https://bioportal.bioontology.org/ontologies/GO">GO</a></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Sequence Ontology</td>
            <td>Release Date: 03/01/2019</td>
            <td>Eilbeck et al - PubMed <a target="_BLANK" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=15892872">15892872</td></a>
            <td><a target="_BLANK" href="https://bioportal.bioontology.org/ontologies/SO">SO</a></td>
        </tr>


        <tr>
            <th rowspan="3">Pathways and Metabolic Reactions</th>
        </tr>
        <tr>
            <td>
                B. taurus<br/>
                H. sapiens<br/>
                M. musculus<br/>
                R. norvegicus<br/>
                C. hircus<br/>
                O. aries<br/>
                C. familiaris<br/>
                E. caballus<br/>
                S. scrofa<br/>
                F. catus<br/>
                G. gallus
            </td>
            <td>
                Pathway information
            </td>
            <td>
                KEGG
            </td>
            <td>
                Kanehisa M et al - PubMed <a target="_BLANK" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=27899662">27899662</a>
            </td>
            <td>
                <a target="_BLANK" href="https://www.genome.jp/kegg/">KEGG Download</a>
            </td>
        </tr>
        <tr>
            <td>
                B. taurus<br/>
                H. sapiens<br/>
                M. musculus<br/>
                R. norvegicus<br/>
                C. hircus<br/>
                O. aries<br/>
                C. familiaris<br/>
                E. caballus<br/>
                S. scrofa<br/>
                F. catus<br/>
                B. bubalis<br/>
                G. gallus
            </td>
            <td>
                Pathway information inferred through orthologues from curated human pathways
            </td>
            <td>
                Reactome - version 68
            </td>
            <td>
                Rigden et al - PubMed <a target="_BLANK" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=29145629">29145629</a>
            </td>
            <td>
                <a target="_BLANK" href="https://reactome.org/download/current/">Reactome Download</a>
            </td>
        </tr>

        <tr>
            <th rowspan="2">Publications</th>
        </tr>
        <tr>
            <td>
                B. taurus<br/>
                H. sapiens<br/>
                M. musculus<br/>
                R. norvegicus<br/>
                C. hircus<br/>
                O. aries<br/>
                C. familiaris<br/>
                E. caballus<br/>
                S. scrofa<br/>
                F. catus<br/>
                B. bubalis<br/>
                G. gallus
            </td>
            <td>
                A mapping from genes to publications
            </td>
            <td>
                NCBI PubMed
            </td>
            <td>
                NCBI Resource Coordinators - PubMed <a target="_BLANK" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=25398906">25398906</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ncbi.nlm.nih.gov/gene/DATA/">NCBI Download</a>
            </td>
        </tr>



        <tr>
            <th rowspan="3">Variation</th>
        </tr>
        <tr>
            <td>
                B. taurus<br/>
                O. aries<br/>
                S. scrofa<br/>
                G. gallus
            </td>
            <td>
                QTL data
            </td>
            <td>
                AnimalQTLdb release 36
            </td>
            <td>
                Hu et al - PubMed <a target="_BLANK" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=30407520">30407520</a>
            </td>
            <td>
                <a target="_BLANK" href="https://www.animalgenome.org/cgi-bin/QTLdb/index">QTL Download</a>
            </td>
        </tr>
        <tr>
            <td>
                B. taurus<br/>
                C. hircus<br/>
                O. aries<br/>
                C. familiaris<br/>
                E. caballus<br/>
                F. catus<br/>
                G. gallus
            </td>
            <td>
                dbSNP data
            </td>
            <td>
                Ensembl95
            </td>
            <td>
                Hunt et al - PubMed <a target="_BLANK" href="https://www.ncbi.nlm.nih.gov/pubmed/30576484">30576484</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ensembl.org/pub/release-95/variation/vcf/">Ensembl Download</a>
            </td>
        </tr>


        <tr>
            <th>Variant Annotations</th>
            <td>
                B. taurus<br/>
                C. hircus<br/>
                O. aries<br/>
                C. familiaris<br/>
                E. caballus<br/>
                F. catus<br/>
                G. gallus
            </td>
            <td>
                Variant effects predicted on RefSeq and Ensembl using Ensembl Variant Effect Predictor
            </td>
            <td>
                Ensembl95
            </td>
            <td>
                Hunt et al - PubMed <a target="_BLANK" href="https://www.ncbi.nlm.nih.gov/pubmed/30576484">30576484</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ensembl.org/pub/release-95/variation/vcf/">Ensembl Download</a>
            </td>
        </tr>


        <tr>
            <th rowspan="10">Assembly</th>
        </tr>
        <tr>
            <td>
                B. taurus
            </td>
            <td>
                Chromosome Assembly
            </td>
            <td>
                ARS-UCD1.2
            </td>
            <td>
                <a target="_BLANK" href="http://www.wcgalp.org/proceedings/2018/modernizing-bovine-reference-genome-assembly">Rosen et al</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/vertebrate_mammalian/Bos_taurus/latest_assembly_versions/GCF_002263795.1_ARS-UCD1.2">NCBI Download</a>
            </td>
        </tr>
        <tr>
            <td>
                O. aries
            </td>
            <td>
                Chromosome Assembly
            </td>
            <td>
                Oar_v3.1
            </td>
            <td>
                Jiang et al - PubMed <a target="_BLANK" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=24904168">24904168</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/vertebrate_mammalian/Ovis_aries/all_assembly_versions/suppressed/GCF_000298735.1_Oar_v3.1">NCBI Download</a>
            </td>
        </tr>
        <tr>
            <td>
                C. hircus
            </td>
            <td>
                Chromosome Assembly
            </td>
            <td>
                ARS1
            </td>
            <td>
                Bickhart et al - PubMed <a target="_BLANK" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=28263316">28263316</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/vertebrate_mammalian/Capra_hircus/latest_assembly_versions/GCF_001704415.1_ARS1/">NCBI Download</a>
            </td>
        </tr>
        <tr>
            <td>
                S. scrofa
            </td>
            <td>
                Chromosome Assembly
            </td>
            <td>
                Sscrofa11.1
            </td>
            <td>
                <a target="_BLANK" href="https://www.biorxiv.org/content/10.1101/668921v1">Warr et al </a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/vertebrate_mammalian/Sus_scrofa/latest_assembly_versions/GCF_000003025.6_Sscrofa11.1">NCBI Download</a>
            </td>
        </tr>
        <tr>
            <td>
                G. gallus
            </td>
            <td>
                Chromosome Assembly
            </td>
            <td>
                GRCg6a
            </td>
            <td>
                International Chicken Genome Sequencing Consortium - PubMed <a target="_BLANK" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=15592404">15592404</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/vertebrate_other/Gallus_gallus/latest_assembly_versions/GCF_000002315.6_GRCg6a">NCBI Download</a>
            </td>
        </tr>
        <tr>
            <td>
                E. caballus
            </td>
            <td>
                Chromosome Assembly
            </td>
            <td>
                EquCab3.0
            </td>
            <td>
                Kalbfleisch et al - PubMed <a target="_BLANK" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=30456315">30456315</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/vertebrate_mammalian/Equus_caballus/latest_assembly_versions/GCF_002863925.1_EquCab3.0">NCBI Download</a>
            </td>
        </tr>
        <tr>
            <td>
                C. familiaris
            </td>
            <td>
                Chromosome Assembly
            </td>
            <td>
                CanFam3.1
            </td>
            <td>
                Hoeppner et al - PubMed <a target="_BLANK" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=24625832">24625832</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/vertebrate_mammalian/Canis_lupus/latest_assembly_versions/GCF_000002285.3_CanFam3.1">NCBI Download</a>
            </td>
        </tr>
        <tr>
            <td>
                F. catus
            </td>
            <td>
                Chromosome Assembly
            </td>
            <td>
                Felis_catus_9.0
            </td>
            <td>
                Tamazian et al - PubMed <a target="_BLANK" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=25143822">25143822</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/vertebrate_mammalian/Felis_catus/latest_assembly_versions/GCF_000181335.3_Felis_catus_9.0">NCBI Download</a>
            </td>
        </tr>
        <tr>
            <td>
                B. bubalis
            </td>
            <td>
                Chromosome Assembly
            </td>
            <td>
                UOA_WB_1
            </td>
            <td>
                Low et al - PubMed <a target="_BLANK" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=30651564">30651564</a>
            </td>
            <td>
                <a target="_BLANK" href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/vertebrate_mammalian/Bubalus_bubalis/latest_assembly_versions/GCF_003121395.1_UOA_WB_1">NCBI Download</a>
            </td>
        </tr>
    </tbody>
</table>
</div>
