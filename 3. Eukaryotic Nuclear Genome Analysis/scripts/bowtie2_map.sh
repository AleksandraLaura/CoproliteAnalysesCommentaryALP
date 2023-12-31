#!/bin/bash
######################## new parallel mapping_script


time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/vertebrate_mammal/vert_mam.1 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.vert_mam.1.bam' &> vert_mam.1.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/vertebrate_mammal/vert_mam.2 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.vert_mam.2.bam' &> vert_mam.2.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/vertebrate_mammal/vert_mam.3 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.vert_mam.3.bam' &> vert_mam.3.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/vertebrate_mammal/vert_mam.4 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.vert_mam.4.bam' &> vert_mam.4.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/vertebrate_mammal/vert_mam.5 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.vert_mam.5.bam' &> vert_mam.5.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/vertebrate_mammal/vert_mam.6 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.vert_mam.6.bam' &> vert_mam.6.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/vertebrate_mammal/vert_mam.7 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.vert_mam.7.bam' &> vert_mam.7.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/vertebrate_mammal/vert_mam.8 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.vert_mam.8.bam' &> vert_mam.8.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/vertebrate_mammal/vert_mam.9 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.vert_mam.9.bam' &> vert_mam.9.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/vertebrate_mammal/vert_mam.10 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.vert_mam.10.bam' &> vert_mam.10.log.txt

time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/invertebrate/invert.1 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.invert.1.bam' &> invert.1.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/invertebrate/invert.2 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.invert.2.bam' &> invert.2.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/invertebrate/invert.3 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.invert.3.bam' &> invert.3.log.txt

time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/vertebrate_other/vert_other.1 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.vert_other.1.bam' &> vert_other.1.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/vertebrate_other/vert_other.2 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.vert_other.2.bam' &> vert_other.2.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/vertebrate_other/vert_other.3 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.vert_other.3.bam' &> vert_other.3.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/vertebrate_other/vert_other.4 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.vert_other.4.bam' &> vert_other.4.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/vertebrate_other/vert_other.5 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.vert_other.5.bam' &> vert_other.5.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/vertebrate_other/vert_other.6 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.vert_other.6.bam' &> vert_other.6.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/vertebrate_other/vert_other.7 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.vert_other.7.bam' &> vert_other.7.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/vertebrate_other/vert_other.8 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.vert_other.8.bam' &> vert_other.8.log.txt

time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/plant/plant.1 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.plant.1.bam' &> plant.1.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/plant/plant.2 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.plant.2.bam' &> plant.2.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/plant/plant.3 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.plant.3.bam' &> plant.3.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/plant/plant.4 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.plant.4.bam' &> plant.4.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/plant/plant.5 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.plant.5.bam' &> plant.5.log.txt

time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/archaea_fungi_virus/archaea_fungi_virus.fa -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.archaea_fungi_virus.1.bam' &> archaea_fungi_virus.1.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/plastid/plastid.fa -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.plastid.1.bam' &> plastid.1.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/mitochondrion/mitochondrion.fa -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.mitochondrion.1.bam' &> mitochondrion.1.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x refseq_30Aug2022/protozoa/protozoa.fa -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.protozoa.1.bam' &> protozoa.1.log.txt

time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x ncbi_nt_Sept2022/nt.1 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.nt.1.bam' &> nt.1.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x ncbi_nt_Sept2022/nt.2 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.nt.2.bam' &> nt.2.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x ncbi_nt_Sept2022/nt.3 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.nt.3.bam' &> nt.3.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x ncbi_nt_Sept2022/nt.4 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.nt.4.bam' &> nt.4.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x ncbi_nt_Sept2022/nt.5 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.nt.5.bam' &> nt.5.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x ncbi_nt_Sept2022/nt.6 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.nt.6.bam' &> nt.6.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x ncbi_nt_Sept2022/nt.7 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.nt.7.bam' &> nt.7.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x ncbi_nt_Sept2022/nt.8 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.nt.8.bam' &> nt.8.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x ncbi_nt_Sept2022/nt.9 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.nt.9.bam' &> nt.9.log.txt

time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x norway_plant_ctgenoms/complete_genomes/final_db/norPlantCom.1 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.norPlantCom.1.bam' &> norPlantCom.1.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x norway_plant_ctgenoms/complete_genomes/final_db/norPlantCom.2 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.norPlantCom.2.bam' &> norPlantCom.2.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x norway_plant_ctgenoms/complete_genomes/final_db/norPlantCom.3 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.norPlantCom.3.bam' &> norPlantCom.3.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x norway_plant_ctgenoms/complete_genomes/final_db/norPlantCom.4 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.norPlantCom.4.bam' &> norPlantCom.4.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x norway_plant_ctgenoms/complete_genomes/final_db/norPlantCom.5 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.norPlantCom.5.bam' &> norPlantCom.5.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x norway_plant_ctgenoms/complete_genomes/final_db/norPlantCom.6 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.norPlantCom.6.bam' &> norPlantCom.6.log.txt
time cat sample.list | parallel -j 3 'bowtie2 --threads 24 -k 1000 -t -x norway_plant_ctgenoms/complete_genomes/final_db/norPlantCom.7 -U {}.ppm.vs.fq --no-unal --mm -t | samtools view -bS - > {}.norPlantCom.7.bam' &> norPlantCom.7.log.txt

time cat sample.list | parallel -j 2 'samtools merge  {}.merged.sam.gz {}*.bam -@ 24'
time cat sample.list | parallel -j 2 'samtools view --threads 24  -H {}.merged.sam.gz | gzip > {}.merged.Header.sam.gz'
time cat sample.list | parallel -j 2 'samtools view --threads 24 {}.merged.sam.gz | gzip > {}.merged.alignment.sam.gz'
time cat sample.list | parallel -j 2 'gz-sort -S 30G -P 10 {}.merged.alignment.sam.gz {}.merged.alignment.sort.sam.gz'
time cat sample.list | parallel -j 2 'zcat {}.merged.Header.sam.gz {}.merged.alignment.sort.sam.gz | samtools view -h -o {}.merged.sort.sam.gz'
