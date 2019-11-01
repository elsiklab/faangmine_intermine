#!/bin/bash

ant -Dsource=GRCg6a-ensembl-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=Oar_v3.1-ensembl-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
