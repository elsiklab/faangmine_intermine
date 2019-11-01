#!/bin/bash

ant -Dsource=ARS-UCD1.2-qtl-gff -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=GRCg6a-qtl-gff -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=Oar_v3.1-qtl-gff -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=Sscrofa11.1-qtl-gff -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=ARS-UCD1.2-cds-refseq -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=ARS-UCD1.2-protein-refseq -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=UOA_WB_1-cds-refseq -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=UOA_WB_1-protein-refseq -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=CanFam3.1-cds-refseq -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=CanFam3.1-protein-refseq -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=ARS1-cds-refseq -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=ARS1-protein-refseq -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=EquCab3.0-cds-refseq -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=EquCab3.0-protein-refseq -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=Felis_catus_9.0-cds-refseq -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=Felis_catus_9.0-protein-refseq -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=GRCg6a-cds-refseq -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=GRCg6a-protein-refseq -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=Oar_v3.1-cds-refseq -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=Oar_v3.1-protein-refseq -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=Sscrofa11.1-cds-refseq -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=Sscrofa11.1-protein-refseq -v
sudo systemctl restart postgresql-9.5
sleep 5m
