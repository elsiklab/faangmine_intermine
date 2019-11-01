#!/bin/bash

ant -Dsource=CanFam3.1-dbsnp-variation-I -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=CanFam3.1-dbsnp-variation-II -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=CanFam3.1-dbsnp-variation-III -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=CanFam3.1-dbsnp-variation-IV -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=CanFam3.1-dbsnp-variation-V -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=CanFam3.1-dbsnp-variation-VI -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=CanFam3.1-dbsnp-variation-VII -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=ARS1-dbsnp-variation-I -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=ARS1-dbsnp-variation-II -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=ARS1-dbsnp-variation-III -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=ARS1-dbsnp-variation-IV -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=ARS1-dbsnp-variation-V -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=ARS1-dbsnp-variation-VI -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=EquCab3.0-dbsnp-variation-I -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=EquCab3.0-dbsnp-variation-II -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=EquCab3.0-dbsnp-variation-III -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=EquCab3.0-dbsnp-variation-IV -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=EquCab3.0-dbsnp-variation-V -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=EquCab3.0-dbsnp-variation-VI -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=EquCab3.0-dbsnp-variation-VII -v
sudo systemctl restart postgresql-9.5
sleep 4m
