#!/bin/bash

ant -Dsource=ARS-UCD1.2_genome_fasta -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=UOA_WB_1_genome_fasta -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=CanFam3.1_genome_fasta -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=ARS1_genome_fasta -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=EquCab3.0_genome_fasta -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=Felis_catus_9.0_genome_fasta -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=GRCg6a_genome_fasta -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=Oar_v3.1_genome_fasta -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=Sscrofa11.1_genome_fasta -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=ARS-UCD1.2-refseq-coding-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=ARS-UCD1.2-noncoding-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=UOA_WB_1-refseq-coding-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=UOA_WB_1-noncoding-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=CanFam3.1-refseq-coding-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=CanFam3.1-noncoding-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=ARS1-refseq-coding-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=ARS1-noncoding-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=EquCab3.0-refseq-coding-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=EquCab3.0-noncoding-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=Felis_catus_9.0-refseq-coding-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=Felis_catus_9.0-noncoding-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=GRCg6a-refseq-coding-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=GRCg6a-noncoding-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=Oar_v3.1-refseq-coding-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=Oar_v3.1-noncoding-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=Sscrofa11.1-refseq-coding-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=Sscrofa11.1-noncoding-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=ARS-UCD1.2-ensembl-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=CanFam3.1-ensembl-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=ARS1-ensembl-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=EquCab3.0-ensembl-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=Felis_catus_9.0-ensembl-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=GRCg6a-ensembl-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=Oar_v3.1-ensembl-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
ant -Dsource=Sscrofa11.1-ensembl-gff -v
sudo systemctl restart postgresql-9.5
sleep 4m
