#!/bin/bash

ant -Dsource=uniprot-sec -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=uniprot-keywords -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=uniprot-fasta -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=interpro -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=protein2ipr -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=reactome -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=ncbi-pubmed-gene -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=ensembl-pubmed-gene -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=ensembl-compara -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=treefam-extended -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=orthodb -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=bovine-biogrid -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=psi-intact -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=kegg -v
sudo systemctl restart postgresql-9.5
sleep 5m
