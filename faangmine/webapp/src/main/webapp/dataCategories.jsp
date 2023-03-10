<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="im" %>

<!-- dataCategories -->
<div class="body">

<!-- INSERT TABLE HERE -->

<table cellpadding="0" cellspacing="0" border="0" class="dbsources"><tr><th width="15%">Data Category</th><th width="15%">Data</th><th width="10%">Organism</th><th width="25%">Source</th><th width="25%">PubMed</th><th width="10%">Link
</th></tr><tr>
<td class="leftcol" rowspan="9"><h2><p>Genome Assembly</p></h2></td>
<td>Genome Assembly</td>
<td><i>Bos taurus</i></td>
<td>ARS-UCD1.2</td>
<td>Rosen et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/32191811" target="_blank">32191811</a></td>
<td><a href="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/002/263/795/GCF_002263795.1_ARS-UCD1.2/" target="_blank">NCBI FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td>Genome Assembly</td>
<td><i>Bubalus bubalis</i></td>
<td>NDDB_SH_1</td>
<td>Mintoo et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/30962899" target="_blank">30962899</a></td>
<td><a href="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/019/923/935/GCF_019923935.1_NDDB_SH_1/" target="_blank">NCBI FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td>Genome Assembly</td>
<td><i>Canis lupus familiaris</i></td>
<td>UU_Cfam_GSD_1.0</td>
<td>Wang et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33568770" target="_blank">33568770</a></td>
<td><a href="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/011/100/685/GCF_011100685.1_UU_Cfam_GSD_1.0/" target="_blank">NCBI FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td>Genome Assembly</td>
<td><i>Capra hircus</i></td>
<td>ARS1</td>
<td>Bickhart et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/28263316" target="_blank">28263316</a></td>
<td><a href="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/001/704/415/GCF_001704415.1_ARS1" target="_blank">NCBI FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td>Genome Assembly</td>
<td><i>Equus caballus</i></td>
<td>EquCab3.0</td>
<td>Kalbfleisch et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/30456315" target="_blank">30456315</a></td>
<td><a href="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/002/863/925/GCF_002863925.1_EquCab3.0/" target="_blank">NCBI FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td>Genome Assembly</td>
<td><i>Felis catus</i></td>
<td>F.catus_Fca126_mat1.0</td>
<td>Bredemeyer et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33305796" target="_blank">33305796</a></td>
<td><a href="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/018/350/175/GCF_018350175.1_F.catus_Fca126_mat1.0/GCF_018350175.1_F.catus_Fca126_mat1.0_assembly_report.txt" target="_blank">NCBI FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td>Genome Assembly</td>
<td><i>Gallus gallus</i></td>
<td>GRCg6a</td>
<td>Warren et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/27852011" target="_blank">27852011</a></td>
<td><a href="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/002/315/GCF_000002315.6_GRCg6a/" target="_blank">NCBI FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td>Genome Assembly</td>
<td><i>Ovis aries</i></td>
<td>ARS-UI_Ramb_v2.0</td>
<td>Davenport et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/35134925" target="_blank">35134925</a></td>
<td><a href="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/016/772/045/GCF_016772045.1_ARS-UI_Ramb_v2.0/" target="_blank">NCBI FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td>Genome Assembly</td>
<td><i>Sus scrofa</i></td>
<td>Sscrofa11.1</td>
<td>Warr et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/32543654" target="_blank">32543654</a></td>
<td><a href="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/003/025/GCF_000003025.6_Sscrofa11.1/" target="_blank">NCBI FTP</a></td>
</tr>
<tr class="new-category-row">
<td class="leftcol" rowspan="22"><h2><p>Genes</p></h2></td>
<td rowspan="12">NCBI Genes (RefSeq)</td>
<td><i>Bos taurus</i></td>
<td>NCBI <i>Bos taurus</i> Annotation Release 106; 11&nbsp;May&nbsp;2018</td>
<td rowspan="12">Li et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33270901" target="_blank">33270901</a></td>
<td><a href="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/002/263/795/GCF_002263795.1_ARS-UCD1.2/" target="_blank">NCBI FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Bubalus bubalis</i></td>
<td>NCBI <i>Bubalus bubalis</i> Annotation Release 103; 17&nbsp;Nov&nbsp;2021</td>
<!-- part of rowspan -->
<td><a href="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/019/923/935/GCF_019923935.1_NDDB_SH_1/" target="_blank">NCBI FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Canis lupus familiaris</i></td>
<td>NCBI <i>Canis lupus familiaris</i> Annotation Release 106; 8&nbsp;Jan&nbsp;2021</td>
<!-- part of rowspan -->
<td><a href="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/011/100/685/GCF_011100685.1_UU_Cfam_GSD_1.0/" target="_blank">NCBI FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Capra hircus</i></td>
<td>NCBI <i>Capra hircus</i> Annotation Release 102; 8&nbsp;Sep&nbsp;2016</td>
<!-- part of rowspan -->
<td><a href="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/001/704/415/GCF_001704415.1_ARS1/" target="_blank">NCBI FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Equus caballus</i></td>
<td>NCBI <i>Equus caballus</i> Annotation Release 103; 26&nbsp;Jan&nbsp;2018</td>
<!-- part of rowspan -->
<td><a href="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/002/863/925/GCF_002863925.1_EquCab3.0/" target="_blank">NCBI FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Felis catus</i></td>
<td>NCBI <i>Felis catus</i> Annotation Release 105; 10&nbsp;Nov&nbsp;2021</td>
<!-- part of rowspan -->
<td><a href="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/018/350/175/GCF_018350175.1_F.catus_Fca126_mat1.0/GCF_018350175.1_F.catus_Fca126_mat1.0_assembly_report.txt" target="_blank">NCBI FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Gallus gallus</i></td>
<td>NCBI <i>Gallus gallus</i> Annotation Release 104; 17&nbsp;May&nbsp;2018</td>
<!-- part of rowspan -->
<td><a href="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/002/315/GCF_000002315.6_GRCg6a/" target="_blank">NCBI FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Homo sapiens</i></td>
<td>NCBI <i>Homo sapiens</i> Annotation Release 110; 6&nbsp;Apr&nbsp;2022</td>
<!-- part of rowspan -->
<td><a href="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/001/405/GCF_000001405.40_GRCh38.p14/" target="_blank">NCBI FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Mus musculus</i></td>
<td>NCBI <i>Mus musculus</i> Annotation Release 109; 22&nbsp;Sep&nbsp;2020</td>
<!-- part of rowspan -->
<td><a href="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/001/635/GCF_000001635.27_GRCm39/" target="_blank">NCBI FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Ovis aries</i></td>
<td>NCBI <i>Ovis aries</i> Annotation Release 104; 3&nbsp;Jul&nbsp;2021</td>
<!-- part of rowspan -->
<td><a href="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/016/772/045/GCF_016772045.1_ARS-UI_Ramb_v2.0/" target="_blank">NCBI FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Rattus norvegicus</i></td>
<td>NCBI <i>Rattus norvegicus</i> Annotation Release 108; 21&nbsp;Jan&nbsp;2021</td>
<!-- part of rowspan -->
<td><a href="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/015/227/675/GCF_015227675.2_mRatBN7.2/" target="_blank">NCBI FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Sus scrofa</i></td>
<td>NCBI <i>Sus scrofa</i> Annotation Release 106; 13&nbsp;May&nbsp;2017</td>
<!-- part of rowspan -->
<td><a href="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/003/025/GCF_000003025.6_Sscrofa11.1/" target="_blank">NCBI FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td rowspan="10">Ensembl Genes</td>
<td><i>Bos taurus</i></td>
<td rowspan="9">Ensembl Release 107; July 2022</td>
<td rowspan="10">Cunningham et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/34791404" target="_blank">34791404</a></td>
<td><a href="https://ftp.ensembl.org/pub/release-107/gff3/bos_taurus/" target="_blank">Ensembl FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Canis lupus familiaris</i></td>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><a href="https://ftp.ensembl.org/pub/release-107/gff3/canis_lupus_familiarisgsd/" target="_blank">Ensembl FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Capra hircus</i></td>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><a href="https://ftp.ensembl.org/pub/release-107/gff3/capra_hircus/" target="_blank">Ensembl FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Equus caballus</i></td>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><a href="https://ftp.ensembl.org/pub/release-107/gff3/equus_caballus/" target="_blank">Ensembl FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Gallus gallus</i></td>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><a href="https://ftp.ensembl.org/pub/release-107/gff3/gallus_gallus/" target="_blank">Ensembl FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Homo sapiens</i></td>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><a href="https://ftp.ensembl.org/pub/release-107/gff3/homo_sapiens/" target="_blank">Ensembl FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Mus musculus</i></td>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td rowspan="2"><a href="https://ftp.ensembl.org/pub/release-107/gff3/rattus_norvegicus/" target="_blank">Ensembl FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Rattus norvegicus</i></td>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Sus scrofa</i></td>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><a href="https://ftp.ensembl.org/pub/release-107/gff3/sus_scrofa/" target="_blank">Ensembl FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Felis catus</i></td>
<td>Ensembl Rapid Release</td>
<!-- part of rowspan -->
<td><a href="https://ftp.ensembl.org/pub/rapid-release/species/Felis_catus/GCA_018350175.1/geneset/2021_08/" target="_blank">Ensembl FTP</a></td>
</tr>
<tr class="new-category-row">
<td class="leftcol" rowspan="2"><h2><p>Homology</p></h2></td>
<td>Orthologues and Paralogues from Ensembl Compara</td>
<td><i>Bos taurus</i><br><i>Canis lupus familiaris</i><br><i>Capra hircus</i><br><i>Equus caballus</i><br><i>Felis catus</i><br><i>Gallus gallus</i><br><i>Homo sapiens</i><br><i>Mus musculus</i><br><i>Rattus norvegicus</i><br><i>Sus scrofa</i></td>
<td>Ensembl Release 107; July 2022</td>
<td>Cunningham et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/34791404" target="_blank">34791404</a></td>
<td><a href="http://jul2022.archive.ensembl.org/biomart/martview/" target="_blank">Ensembl Biomart</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td>Orthologue Clusters from OrthoDB</td>
<td>All Species</td>
<td>OrthoDB v11; October 2022</td>
<td>Kuznetsov et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/36350662" target="_blank">36350662</a></td>
<td><a href="https://data.orthodb.org/download/" target="_blank">OrthoDB Download</a></td>
</tr>
<tr class="new-category-row">
<td class="leftcol" rowspan="2"><h2><p>Proteins</p></h2></td>
<td>Protein annotation</td>
<td><i>Bos taurus</i><br><i>Bubalus bubalis</i><br><i>Canis lupus familiaris</i><br><i>Capra hircus</i><br><i>Equus caballus</i><br><i>Felis catus</i><br><i>Gallus gallus</i><br><i>Homo sapiens</i><br><i>Mus musculus</i><br><i>Ovis aries</i><br><i>Rattus norvegicus</i><br><i>Sus scrofa</i></td>
<td>UniProt release 2022_01</td>
<td>UniProt Consortium - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33237286" target="_blank">33237286</a></td>
<td><a href="https://ftp.uniprot.org/pub/databases/uniprot/previous_major_releases/release-2022_01/" target="_blank">UniProt FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td>Protein domains</td>
<td>All Species</td>
<td>InterPro - Version 88.0</td>
<td>Blum et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33156333" target="_blank">33156333</a></td>
<td><a href="https://ftp.ebi.ac.uk/pub/databases/interpro/releases/88.0/" target="_blank">InterPro FTP</a></td>
</tr>
<tr class="new-category-row">
<td class="leftcol" rowspan="2"><h2><p>Gene Ontology</p></h2></td>
<td>Gene Ontology Annotations</td>
<td>See UniProt Protein List</td>
<td>UniProt release 2022_01</td>
<td>UniProt Consortium - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33237286" target="_blank">33237286</a></td>
<td><a href="https://ftp.uniprot.org/pub/databases/uniprot/previous_major_releases/release-2022_01/" target="_blank">UniProt FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td>Gene Ontology</td>
<td>Gene Ontology Consortium</td>
<td>GO release 2021&nbsp;Dec&nbsp;15</td>
<td>Gene Ontology Consortium - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33290552" target="_blank">33290552</a></td>
<td><a href="http://geneontology.org/docs/download-ontology" target="_blank">GOC Download</a></td>
</tr>
<tr class="new-category-row">
<td class="leftcol" rowspan="2"><h2><p>Pathways</p></h2></td>
<td>Pathway information from KEGG</td>
<td>All Species</td>
<td>KEGG Release 102.0, 1&nbsp;Apr&nbsp;2022</td>
<td>Kanehisha et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33125081" target="_blank">33125081</a></td>
<td><a href="https://www.kegg.jp/kegg/rest/keggapi.html" target="_blank">KEGG Download</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td>Pathway information from Reactome</td>
<td><i>Bos taurus</i><br><i>Canis lupus familiaris</i><br><i>Gallus gallus</i><br><i>Homo sapiens</i><br><i>Mus musculus</i><br><i>Rattus norvegicus</i><br><i>Sus scrofa</i></td>
<td>Version 81; Release 16&nbsp;Jun&nbsp;2022</td>
<td>Gillespie et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/34788843" target="_blank">34788843</a></td>
<td><a href="https://reactome.org/download/current/UniProt2Reactome_All_Levels.txt" target="_blank">Reactome Download</a></td>
</tr>
<tr class="new-category-row">
<td class="leftcol"><h2><p>Diseases</p></h2></td>
<td>Gene-disease associations</td>
<td><i>Homo sapiens</i></td>
<td>OMIM; 14&nbsp;Jul&nbsp;2022</td>
<td>Amberger et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/30445645" target="_blank">30445645</a></td>
<td><a href="https://www.omim.org/downloads" target="_blank">OMIM Download</a></td>
</tr>
<tr class="new-category-row">
<td class="leftcol" rowspan="2"><h2><p>Interactions</p></h2></td>
<td>BioGRID</td>
<td><i>Bos taurus</i><br><i>Canis lupus familiaris</i><br><i>Capra hircus</i><br><i>Equus caballus</i><br><i>Gallus gallus</i><br><i>Homo sapiens</i><br><i>Mus musculus</i><br><i>Ovis aries</i><br><i>Rattus norvegicus</i><br><i>Sus scrofa</i></td>
<td>BioGRID version 4.4.210; 31&nbsp;May&nbsp;2022</td>
<td>Oughtred et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33070389" target="_blank">33070389</a></td>
<td><a href="https://downloads.thebiogrid.org/BioGRID/Release-Archive/BIOGRID-4.4.210/" target="_blank">BioGRID Download</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td>IntAct</td>
<td><i>Bos taurus</i><br><i>Canis lupus familiaris</i><br><i>Capra hircus</i><br><i>Equus caballus</i><br><i>Homo sapiens</i><br><i>Mus musculus</i><br><i>Ovis aries</i><br><i>Rattus norvegicus</i><br><i>Sus scrofa</i></td>
<td>IntAct Release 242; February 2022</td>
<td>Del Toro et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/34761267" target="_blank">34761267</a></td>
<td><a href="https://ftp.ebi.ac.uk/pub/databases/IntAct/2022-02-03/psi25/species/" target="_blank">IntAct Download</a></td>
</tr>
<tr class="new-category-row">
<td class="leftcol" rowspan="18"><h2><p>Genomic Variation</p></h2></td>
<td>QTL</td>
<td><i>Bos taurus</i><br><i>Capra hircus</i><br><i>Equus caballus</i><br><i>Gallus gallus</i><br><i>Ovis aries</i><br><i>Sus scrofa</i></td>
<td>AnimalQTLdb Release 47; 25&nbsp;Apr&nbsp;2022</td>
<td>Hu et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/34850103" target="_blank">34850103</a></td>
<td><a href="https://www.animalgenome.org/cgi-bin/QTLdb/index" target="_blank">QTL Download</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td rowspan="6">Variants</td>
<td><i>Bos taurus</i></td>
<td rowspan="5">Ensembl Variation Release 107; July 2022</td>
<td rowspan="5">Cunningham et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/34791404" target="_blank">34791404</a></td>
<td><a href="https://ftp.ensembl.org/pub/release-107/variation/vcf/bos_taurus/" target="_blank">Ensembl FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Capra hircus</i></td>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><a href="https://ftp.ensembl.org/pub/release-107/variation/vcf/capra_hircus/" target="_blank">Ensembl FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Equus caballus</i></td>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><a href="https://ftp.ensembl.org/pub/release-107/variation/vcf/equus_caballus/" target="_blank">Ensembl FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Gallus gallus</i></td>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><a href="https://ftp.ensembl.org/pub/release-107/variation/vcf/gallus_gallus_gca000002315v5/" target="_blank">Ensembl FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Sus scrofa</i></td>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><a href="https://ftp.ensembl.org/pub/release-107/variation/vcf/sus_scrofa/" target="_blank">Ensembl FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Ovis aries</i></td>
<td>European Variation Archive RS Release 3; 24&nbsp;Feb&nbsp;2022</td>
<td>Cezard el al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/34718739" target="_blank">34718739</a></td>
<td><a href="https://ftp.ebi.ac.uk/pub/databases/eva/rs_releases/release_3/by_species/ovis_aries/GCA_016772045.1/" target="_blank">EVA Download</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td rowspan="5">Variant effects on Ensembl genes</td>
<td><i>Bos taurus</i></td>
<td rowspan="5">Ensembl Variation Release 107; July 2022</td>
<td rowspan="5">Cunningham et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/34791404" target="_blank">34791404</a></td>
<td><a href="https://ftp.ensembl.org/pub/release-107/variation/vcf/bos_taurus/" target="_blank">Ensembl FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Capra hircus</i></td>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><a href="https://ftp.ensembl.org/pub/release-107/variation/vcf/capra_hircus/" target="_blank">Ensembl FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Equus caballus</i></td>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><a href="https://ftp.ensembl.org/pub/release-107/variation/vcf/equus_caballus/" target="_blank">Ensembl FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Gallus gallus</i></td>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><a href="https://ftp.ensembl.org/pub/release-107/variation/vcf/gallus_gallus_gca000002315v5/" target="_blank">Ensembl FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Sus scrofa</i></td>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><a href="https://ftp.ensembl.org/pub/release-107/variation/vcf/sus_scrofa/" target="_blank">Ensembl FTP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td rowspan="6">SNP Array Alias IDs from SNPchiMp v.3</td>
<td><i>Bos taurus</i></td>
<td>Affymetrix_Axiom_Bovine<br>GeneSeek_Genomic_Profiler_LD_v1<br>GeneSeek_Dairy_Ultra_LD_v2<br>GeneSeek_Genomic_Profiler_HD<br>GeneSeek_Genomic_Profiler_HD_v2<br>GeneSeek_Genomic_Profiler_LD_v2<br>GeneSeek_Genomic_Profiler_LD_v3<br>ICBF_International_Dairy_and_Beef_v2<br>ICBF_International_Dairy_and_Beef_v3<br>Illumina_Bovine3k_BeadChip<br>Illumina_BovineHD_BeadChip<br>Illumina_BovineLD_BeadChip<br>Illumina_BovineLD_v1.1_BeadChip<br>Illumina_BovineLD_v2_BeadChip<br>Illumina_BovineSNP50v1_BeadChip<br>Illumina_BovineSNP50v2_BeadChip</td>
<td rowspan="6">Nicolazzi et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/25881165" target="_blank">25881165</a></td>
<td rowspan="6">No longer available</td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Capra hircus</i></td>
<td>IGGC_CaprineSNP50_BeadChip</td>
<!-- part of rowspan -->
<!-- part of rowspan -->
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Equus caballus</i></td>
<td>GeneSeek_EquineSNP65_BeadChip<br>Illumina_Infinium_EquineSNP50_BeadChip</td>
<!-- part of rowspan -->
<!-- part of rowspan -->
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Gallus gallus</i></td>
<td>Affymetrix_Axiom_Chicken</td>
<!-- part of rowspan -->
<!-- part of rowspan -->
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Ovis aries</i></td>
<td>AgResearch_OvineHD_BeadChip<br>Illumina_Infinium_Ovine_SNP50_v1_BeadChip</td>
<!-- part of rowspan -->
<!-- part of rowspan -->
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Sus scrofa</i></td>
<td>Affymetrix_Axiom_PorcineHD<br>GeneSeek-Neogen_Genomic_Profiler_10k_BeadChip<br>GeneSeek-Neogen_PorcineSNP80_BeadChip<br>Illumina_Infinium_PorcineSNP60_v1_BeadChip<br>Illumina_Infinium_PorcineSNP60_v2_BeadChip</td>
<!-- part of rowspan -->
<!-- part of rowspan -->
</tr>
<tr class="new-category-row">
<td class="leftcol" rowspan="33"><h2><p>Gene Expression</p></h2></td>
<td rowspan="33">RNA-seq-based gene expression levels</td>
<td rowspan="9"><i>Bos taurus</i></td>
<td>PRJEB14330</td>
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/30227846" target="_blank">30227846</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJEB14330" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJEB25677</td>
<td>Chamberlain et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/26596891" target="_blank">26596891</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJEB25677" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJEB27455</td>
<td>Foissac et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/31884969" target="_blank">31884969</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJEB27455" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJEB34570</td>
<td>Nolte et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/31824560" target="_blank">31824560</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJEB34570" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJEB35127</td>
<td>Dorji et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33076826" target="_blank">33076826</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJEB35127" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJNA263600</td>
<td>Triant et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/32537769" target="_blank">32537769</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJNA263600" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJNA294306</td>
<td>Triant et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/32537769" target="_blank">32537769</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJNA294306" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJNA379574</td>
<td>Triant et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/32537769" target="_blank">32537769</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJNA379574" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJNA665193</td>
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33758196" target="_blank">33758196</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJNA665193" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td rowspan="2"><i>Bubalus bubalis</i></td>
<td>PRJEB25226</td>
<td>Young et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/31428126" target="_blank">31428126</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJEB25226" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJEB4351</td>
<td>Low et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/30651564" target="_blank">30651564</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJEB4351" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td rowspan="2"><i>Canis lupus familiaris</i></td>
<td>PRJNA78827</td>
<td>Hoeppner et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/24625832" target="_blank">24625832</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJNA78827" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJNA396033</td>
<td>Megquier et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/31181663" target="_blank">31181663</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJNA396033" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td rowspan="2"><i>Capra hircus</i></td>
<td>PRJEB23196</td>
<td>Muriuki et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/31749840" target="_blank">31749840</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJEB23196" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJEB27455</td>
<td>Foissac et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/31884969" target="_blank">31884969</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJEB27455" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Felis catus</i></td>
<td>PRJNA312519</td>
<td>Visser et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/30171610" target="_blank">30171610</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJNA312519" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td rowspan="2"><i>Equus caballus</i></td>
<td>PRJEB26787</td>
<td>Gao et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/32512843" target="_blank">32512843</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJEB26787" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJEB35307</td>
<td>Kingsley et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/31861495" target="_blank">31861495</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJEB35307" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td rowspan="5"><i>Gallus gallus</i></td>
<td>PRJEB12891</td>
<td>Kuo et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/28438136" target="_blank">28438136</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJEB12891" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJEB14330</td>
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/30227846" target="_blank">30227846</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJEB14330" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJEB27455</td>
<td>Foissac et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/31884969" target="_blank">31884969</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJEB27455" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJNA204941</td>
<td>McCarthy et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/31210271" target="_blank">31210271</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJNA204941" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJNA665193</td>
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33758196" target="_blank">33758196</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJNA665193" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td rowspan="3"><i>Ovis aries</i></td>
<td>PRJEB19199</td>
<td>Clark et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/28915238" target="_blank">28915238</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJEB19199" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJEB6169</td>
<td>Clark et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/28915238" target="_blank">28915238</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJEB6169" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJNA414087</td>
<td>Davenport et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/35134925" target="_blank">35134925</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJNA414087" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td rowspan="7"><i>Sus scrofa</i></td>
<td>PRJEB14330</td>
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/30227846" target="_blank">30227846</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJEB14330" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJEB19268</td>
<td>Derks et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/30231021" target="_blank">30231021</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJEB19268" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJEB19386</td>
<td>Warr et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/32543654" target="_blank">32543654</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJEB19386" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJEB27455</td>
<td>Foissac et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/31884969" target="_blank">31884969</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJEB27455" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJEB37735</td>
<td>Pan et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/34615879" target="_blank">34615879</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJEB37735" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJNA311523</td>
<td>Li et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/27646534" target="_blank">27646534</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJNA311523" target="_blank">NCBI BioProject</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJNA665193</td>
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33758196" target="_blank">33758196</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/bioproject/PRJNA665193" target="_blank">NCBI BioProject</a></td>
</tr>
<tr class="new-category-row">
<td class="leftcol" rowspan="30"><h2><p>FAANG Sequence Annotation</p></h2></td>
<td rowspan="6">Chromatin accessibility</td>
<td><i>Bos taurus</i></td>
<td>PRJNA665194</td>
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33758196" target="_blank">33758196</a></td>
<td><a href="https://farm.cse.ucdavis.edu/~ckern/Nature_Communications_2020/" target="_blank">UC-Davis Server</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Capra hircus</i></td>
<td>PRJEB27111</td>
<td>Foissac et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/31884969" target="_blank">31884969</a></td>
<td><a href="http://www.fragencode.org/results.html" target="_blank">FR-AgENCODE</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td rowspan="2"><i>Gallus gallus</i></td>
<td>PRJNA665194</td>
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33758196" target="_blank">33758196</a></td>
<td><a href="https://farm.cse.ucdavis.edu/~ckern/Nature_Communications_2020/" target="_blank">UC-Davis Server</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJNA665196</td>
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33758196" target="_blank">33758196</a></td>
<td><a href="https://farm.cse.ucdavis.edu/~ckern/Nature_Communications_2020/" target="_blank">UC-Davis Server</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td rowspan="2"><i>Sus scrofa</i></td>
<td>PRJEB27111</td>
<td>Foissac et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/31884969" target="_blank">31884969</a></td>
<td><a href="http://www.fragencode.org/results.html" target="_blank">FR-AgENCODE</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJNA665194</td>
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33758196" target="_blank">33758196</a></td>
<td><a href="https://farm.cse.ucdavis.edu/~ckern/Nature_Communications_2020/" target="_blank">UC-Davis Server</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td rowspan="2">Chromatin architecture</td>
<td><i>Capra hircus</i></td>
<td rowspan="2">PRJEB27364</td>
<td>Foissac et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/31884969" target="_blank">31884969</a></td>
<td><a href="http://www.fragencode.org/results.html" target="_blank">FR-AgENCODE</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Sus scrofa</i></td>
<!-- part of rowspan -->
<td>Foissac et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/31884969" target="_blank">31884969</a></td>
<td><a href="http://www.fragencode.org/results.html" target="_blank">FR-AgENCODE</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td rowspan="4">Chromatin state</td>
<td><i>Bos taurus</i></td>
<td rowspan="4">PRJNA665212</td>
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33758196" target="_blank">33758196</a></td>
<td><a href="https://farm.cse.ucdavis.edu/~ckern/Nature_Communications_2020/" target="_blank">UC-Davis Server</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Gallus gallus</i></td>
<!-- part of rowspan -->
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33758196" target="_blank">33758196</a></td>
<td><a href="https://farm.cse.ucdavis.edu/~ckern/Nature_Communications_2020/" target="_blank">UC-Davis Server</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td rowspan="2"><i>Sus scrofa</i></td>
<!-- part of rowspan -->
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33758196" target="_blank">33758196</a></td>
<td><a href="https://farm.cse.ucdavis.edu/~ckern/Nature_Communications_2020/" target="_blank">UC-Davis Server</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Pan et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/34615879" target="_blank">34615879</a></td>
<td><a href="https://farm.cse.ucdavis.edu/~zhypan/Nature_Communications_2021/" target="_blank">UC-Davis Server</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td rowspan="3">CTCF binding</td>
<td><i>Bos taurus</i></td>
<td rowspan="3">PRJNA665197</td>
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33758196" target="_blank">33758196</a></td>
<td><a href="https://farm.cse.ucdavis.edu/~ckern/Nature_Communications_2020/" target="_blank">UC-Davis Server</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Gallus gallus</i></td>
<!-- part of rowspan -->
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33758196" target="_blank">33758196</a></td>
<td><a href="https://farm.cse.ucdavis.edu/~ckern/Nature_Communications_2020/" target="_blank">UC-Davis Server</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td><i>Sus scrofa</i></td>
<!-- part of rowspan -->
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33758196" target="_blank">33758196</a></td>
<td><a href="https://farm.cse.ucdavis.edu/~ckern/Nature_Communications_2020/" target="_blank">UC-Davis Server</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td rowspan="15">Histone modification</td>
<td rowspan="4"><i>Bos taurus</i></td>
<td>PRJNA665199</td>
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33758196" target="_blank">33758196</a></td>
<td><a href="https://farm.cse.ucdavis.edu/~ckern/Nature_Communications_2020/" target="_blank">UC-Davis Server</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJNA665209</td>
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33758196" target="_blank">33758196</a></td>
<td><a href="https://farm.cse.ucdavis.edu/~ckern/Nature_Communications_2020/" target="_blank">UC-Davis Server</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJNA665214</td>
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33758196" target="_blank">33758196</a></td>
<td><a href="https://farm.cse.ucdavis.edu/~ckern/Nature_Communications_2020/" target="_blank">UC-Davis Server</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJNA665216</td>
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33758196" target="_blank">33758196</a></td>
<td><a href="https://farm.cse.ucdavis.edu/~ckern/Nature_Communications_2020/" target="_blank">UC-Davis Server</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td rowspan="2"><i>Equus caballus</i></td>
<td>PRJEB35307</td>
<td>Kingsley et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/31861495" target="_blank">31861495</a></td>
<td><a href="https://data.faang.org/dataset/PRJEB35307" target="_blank">FAANG Data Portal</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJEB42315</td>
<td>Kingsley et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33841506" target="_blank">33841506</a></td>
<td><a href="https://data.faang.org/dataset/PRJEB42315" target="_blank">FAANG Data Portal</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td rowspan="4"><i>Gallus gallus</i></td>
<td>PRJNA665199</td>
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33758196" target="_blank">33758196</a></td>
<td><a href="https://farm.cse.ucdavis.edu/~ckern/Nature_Communications_2020/" target="_blank">UC-Davis Server</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJNA665209</td>
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33758196" target="_blank">33758196</a></td>
<td><a href="https://farm.cse.ucdavis.edu/~ckern/Nature_Communications_2020/" target="_blank">UC-Davis Server</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJNA665214</td>
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33758196" target="_blank">33758196</a></td>
<td><a href="https://farm.cse.ucdavis.edu/~ckern/Nature_Communications_2020/" target="_blank">UC-Davis Server</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJNA665216</td>
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33758196" target="_blank">33758196</a></td>
<td><a href="https://farm.cse.ucdavis.edu/~ckern/Nature_Communications_2020/" target="_blank">UC-Davis Server</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td rowspan="5"><i>Sus scrofa</i></td>
<td>PRJEB37735</td>
<td>Pan et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/34615879" target="_blank">34615879</a></td>
<td><a href="https://farm.cse.ucdavis.edu/~zhypan/Nature_Communications_2021/" target="_blank">UC-Davis Server</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJNA665199</td>
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33758196" target="_blank">33758196</a></td>
<td><a href="https://farm.cse.ucdavis.edu/~ckern/Nature_Communications_2020/" target="_blank">UC-Davis Server</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJNA665209</td>
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33758196" target="_blank">33758196</a></td>
<td><a href="https://farm.cse.ucdavis.edu/~ckern/Nature_Communications_2020/" target="_blank">UC-Davis Server</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJNA665214</td>
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33758196" target="_blank">33758196</a></td>
<td><a href="https://farm.cse.ucdavis.edu/~ckern/Nature_Communications_2020/" target="_blank">UC-Davis Server</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>PRJNA665216</td>
<td>Kern et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33758196" target="_blank">33758196</a></td>
<td><a href="https://farm.cse.ucdavis.edu/~ckern/Nature_Communications_2020/" target="_blank">UC-Davis Server</a></td>
</tr>
<tr class="new-category-row">
<td class="leftcol"><h2><p>Publications</p></h2></td>
<td>A mapping from genes to publications</td>
<td><i>Bos taurus</i><br><i>Bubalus bubalis</i><br><i>Canis lupus familiaris</i><br><i>Capra hircus</i><br><i>Equus caballus</i><br><i>Felis catus</i><br><i>Gallus gallus</i><br><i>Ovis aries</i><br><i>Sus scrofa</i></td>
<td>NCBI PubMed</td>
<td>Sayers et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33095870" target="_blank">33095870</a></td>
<td><a href="https://ftp.ncbi.nlm.nih.gov/gene/DATA/gene2pubmed.gz" target="_blank">NCBI FTP</a></td>
</tr>
<tr class="new-category-row">
<td class="leftcol" rowspan="21"><h2><p>Ontologies</p></h2></td>
<td colspan="2">Animal Trait Ontology for Livestock</td>
<!-- part of colspan -->
<td>Release date: 13&nbsp;Sep&nbsp;2018</td>
<td>Meunier-Sala&#252;n et al. - HAL <a href="https://hal.inrae.fr/hal-02626650" target="_blank">hal-02626650</a></td>
<td><a href="https://bioportal.bioontology.org/ontologies/ATOL" target="_blank">ATOL</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td colspan="2">BRENDA Tissue Ontology</td>
<!-- part of colspan -->
<td>Release date: 26&nbsp;Oct&nbsp;2021</td>
<td>Chang et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33211880" target="_blank">33211880</a></td>
<td><a href="https://bioportal.bioontology.org/ontologies/BTO" target="_blank">BTO</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td colspan="2">Cell Ontology</td>
<!-- part of colspan -->
<td>Release date: 16&nbsp;Aug&nbsp;2022</td>
<td>Diehl et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/27377652" target="_blank">27377652</a></td>
<td><a href="https://obophenotype.github.io/cell-ontology/" target="_blank">CL</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td colspan="2">Clinical Measurement Ontology</td>
<!-- part of colspan -->
<td>Release date: 13&nbsp;Aug&nbsp;2022</td>
<td>Smith et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/24103152" target="_blank">24103152</a></td>
<td><a href="https://bioportal.bioontology.org/ontologies/CMO" target="_blank">CMO</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td colspan="2">Environmental Ontology for Livestock</td>
<!-- part of colspan -->
<td>Release date: 2016</td>
<td>Meunier-Sala&#252;n et al. - HAL <a href="https://hal.inrae.fr/hal-02626650" target="_blank">hal-02626650</a></td>
<td><a href="https://bioportal.bioontology.org/ontologies/EOL" target="_blank">EOL</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td colspan="2">Evidence Ontology</td>
<!-- part of colspan -->
<td>Release date: 5&nbsp;Aug&nbsp;2022</td>
<td>Nadendla et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/34986598" target="_blank">34986598</a></td>
<td><a href="https://bioportal.bioontology.org/ontologies/ECO" target="_blank">ECO</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td colspan="2">Experimental Factor Ontology</td>
<!-- part of colspan -->
<td>Release date: 15&nbsp;Aug&nbsp;2022</td>
<td>Malone et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/20200009" target="_blank">20200009</a></td>
<td><a href="https://www.ebi.ac.uk/efo/index.html" target="_blank">EFO</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td colspan="2">Gene Ontology</td>
<!-- part of colspan -->
<td>Release date: 1&nbsp;Jul&nbsp;2022</td>
<td>Gene Ontology Consortium - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/27899567" target="_blank">27899567</a></td>
<td><a href="https://bioportal.bioontology.org/ontologies/GO" target="_blank">GO</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td colspan="2">Human Developmental Stage Ontology</td>
<!-- part of colspan -->
<td>Release date: 10&nbsp;Mar&nbsp;2020</td>
<td><a href="https://github.com/obophenotype/developmental-stage-ontologies/" target="_blank">GitHub</a></td>
<td><a href="https://bioportal.bioontology.org/ontologies/HSAPDV" target="_blank">HSAPDV</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td colspan="2">Human Phenotype Ontology</td>
<!-- part of colspan -->
<td>Release date: 11&nbsp;Jun&nbsp;2022</td>
<td>K&#246;hler et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/33264411" target="_blank">33264411</a></td>
<td><a href="https://hpo.jax.org/app/data/ontology" target="_blank">HP</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td colspan="2">Livestock Breed Ontology</td>
<!-- part of colspan -->
<td>Release date: 19&nbsp;Aug&nbsp;2022</td>
<td>Hu et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/23180796" target="_blank">23180796</a></td>
<td><a href="https://bioportal.bioontology.org/ontologies/LBO" target="_blank">LBO</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td colspan="2">Livestock Product Trait Ontology</td>
<!-- part of colspan -->
<td>Release date: 16&nbsp;Dec&nbsp;2021</td>
<td>Hu et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/30407520" target="_blank">30407520</a></td>
<td><a href="https://bioportal.bioontology.org/ontologies/LPT" target="_blank">LPT</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td colspan="2">MONDO Diesease Ontology</td>
<!-- part of colspan -->
<td>Release date: 6&nbsp;Sep&nbsp;2022</td>
<td>Shefchek et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/31701156" target="_blank">31701156</a></td>
<td><a href="https://mondo.monarchinitiative.org/pages/download/" target="_blank">MONDO</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td colspan="2">Mouse Adult Gross Anatomy Ontology</td>
<!-- part of colspan -->
<td>Release date: 7&nbsp;Feb&nbsp;2022</td>
<td>Hayamizu et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/26208972" target="_blank">26208972</a></td>
<td><a href="https://bioportal.bioontology.org/ontologies/MA" target="_blank">MA</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td colspan="2">Ontology for Biomedical Investigations</td>
<!-- part of colspan -->
<td>Release date: 11&nbsp;Jul&nbsp;2022</td>
<td>Bandrowski et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/27128319" target="_blank">27128319</a></td>
<td><a href="http://obi-ontology.org" target="_blank">OBI</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td colspan="2">Orphanet Rare Disease Ontology</td>
<!-- part of colspan -->
<td>Release date: 1&nbsp;Jul&nbsp;2022</td>
<td>Rath et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/22422702" target="_blank">22422702</a></td>
<td><a href="https://bioportal.bioontology.org/ontologies/ORDO" target="_blank">ORDO</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td colspan="2">Phenotype and Trait Ontology</td>
<!-- part of colspan -->
<td>Release date: 31&nbsp;Aug&nbsp;2022</td>
<td>Shimoyama et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/22654893" target="_blank">22654893</a></td>
<td><a href="https://github.com/pato-ontology/pato/" target="_blank">PATO</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td colspan="2">PSI MI Ontology</td>
<!-- part of colspan -->
<td>Release date: 15&nbsp;Apr&nbsp;2021</td>
<td>Orchard et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/20013380" target="_blank">20013380</a></td>
<td><a href="https://github.com/HUPO-PSI/psi-mi-CV" target="_blank">PSI-MI</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td colspan="2">Sequence Ontology</td>
<!-- part of colspan -->
<td>Release date: 22&nbsp;Nov&nbsp;2021</td>
<td>Eilbeck et al. - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/15892872" target="_blank">15892872</a></td>
<td><a href="https://bioportal.bioontology.org/ontologies/SO" target="_blank">SO</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td colspan="2">Uber Anatomy Ontology (UBERON)</td>
<!-- part of colspan -->
<td>Release date: 19&nbsp;Aug&nbsp;2022</td>
<td>Haendel et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/25009735" target="_blank">25009735</a></td>
<td><a href="https://bioportal.bioontology.org/ontologies/UBERON" target="_blank">UBERON</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td colspan="2">Vertebrate Trait Ontology</td>
<!-- part of colspan -->
<td>Release date: 19&nbsp;Jul&nbsp;2022</td>
<td>Park et al. - PubMed <a href="https://www.ncbi.nlm.nih.gov/pubmed/23937709" target="_blank">23937709</a></td>
<td><a href="https://bioportal.bioontology.org/ontologies/VT" target="_blank">VT</a></td>
</tr>
</table>

</div>
<!-- /dataCategories -->
