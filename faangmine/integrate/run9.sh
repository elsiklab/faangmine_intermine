#!/bin/bash

ant -Dsource=ARS-UCD1.2-cds-ensembl -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=ARS-UCD1.2-protein-ensembl -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=CanFam3.1-cds-ensembl -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=CanFam3.1-protein-ensembl -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=ARS1-cds-ensembl -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=ARS1-protein-ensembl -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=EquCab3.0-cds-ensembl -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=EquCab3.0-protein-ensembl -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=Felis_catus_9.0-cds-ensembl -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=Felis_catus_9.0-protein-ensembl -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=GRCg6a-cds-ensembl -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=GRCg6a-protein-ensembl -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=Oar_v3.1-cds-ensembl -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=Oar_v3.1-protein-ensembl -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=Sscrofa11.1-cds-ensembl -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=Sscrofa11.1-protein-ensembl -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=bovine-xref -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=goat-xref -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=sheep-xref -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=cat-xref -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=dog-xref -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=horse-xref -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=chicken-xref -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Dsource=pig-xref -v
sudo systemctl restart postgresql-9.5
sleep 5m
