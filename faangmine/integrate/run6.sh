#!/bin/bash

ant -Dsource=Sscrofa11.1-dbsnp-variation-I -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=Sscrofa11.1-dbsnp-variation-II -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=Sscrofa11.1-dbsnp-variation-III -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=Sscrofa11.1-dbsnp-variation-IV -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=Sscrofa11.1-dbsnp-variation-V -v
sudo systemctl restart postgresql-9.5
sleep 4m
