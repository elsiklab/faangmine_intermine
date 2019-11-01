#!/bin/bash

ant -Dsource=Felis_catus_9.0-dbsnp-variation-I -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=Felis_catus_9.0-dbsnp-variation-II -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=Felis_catus_9.0-dbsnp-variation-III -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=Felis_catus_9.0-dbsnp-variation-IV -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=Felis_catus_9.0-dbsnp-variation-V -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=Felis_catus_9.0-dbsnp-variation-VI -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=Felis_catus_9.0-dbsnp-variation-VII -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=GRCg6a-dbsnp-variation-I -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=GRCg6a-dbsnp-variation-II -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=GRCg6a-dbsnp-variation-III -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=GRCg6a-dbsnp-variation-IV -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=GRCg6a-dbsnp-variation-V -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=GRCg6a-dbsnp-variation-VI -v
sudo systemctl restart postgresql-9.5
sleep 4m
