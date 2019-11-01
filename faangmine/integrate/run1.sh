#!/bin/bash

ant -Dsource=uberon -v
ant -Dsource=mouse-anatomy-ontology -v
ant -Dsource=brenda-tissue-ontology -v
ant -Dsource=clinical-measurement-ontology -v
ant -Dsource=livestock-breed-ontology -v
ant -Dsource=livestock-product-trait-ontology -v
ant -Dsource=vertebrate-trait-ontology -v
ant -Dsource=evidence-ontology -v
ant -Dsource=psi-mi-ontology -v
ant -Dsource=sequence-ontology -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=gene-ontology -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=human-gene-info-refseq -v
ant -Dsource=mouse-gene-info-refseq -v
ant -Dsource=rat-gene-info-refseq -v
ant -Dsource=human-gene-info-ensembl -v
ant -Dsource=mouse-gene-info-ensembl -v
ant -Dsource=rat-gene-info-ensembl -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=ARS-UCD1.2-dbsnp-variation-I -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=ARS-UCD1.2-dbsnp-variation-II -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=ARS-UCD1.2-dbsnp-variation-III -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=ARS-UCD1.2-dbsnp-variation-IV -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=ARS-UCD1.2-dbsnp-variation-V -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=ARS-UCD1.2-dbsnp-variation-VI -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=ARS-UCD1.2-dbsnp-variation-VII -v
sudo systemctl restart postgresql-9.5
sleep 4m
