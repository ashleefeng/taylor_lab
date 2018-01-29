#! /usr/bin/env bash

#SBATCH
#SBATCH --job-name=align_dnase
#SBATCH --time=5:0:0
#SBATCH --partition=lrgmem
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=8

source activate ~/data/xfeng17/miniconda

#cd ~/data/xfeng17/ref_genome/hs

#echo "Aligning to human genome..."

#~/scratch/dnase_pipeline/dnanexus/dnase-align-bwa-se/resources/usr/bin/dnase_align_bwa_se.sh \
#hg38_bwa_index.tgz \
#~/data/xfeng17/dnase/hs/A549/ENCFF332VRZ_trimmed.fastq \
#8 \
#~/data/xfeng17/dnase/hs/A549/ENCFF332VRZ_trimmed \
#> ENCFF332VRZ_trimmed_align.log 

#echo "Done"

cd ~/data/xfeng17/ref_genome/dm

echo "Aligning to fly genome..."

~/scratch/dnase_pipeline/dnanexus/dnase-align-bwa-se/resources/usr/bin/dnase_align_bwa_se.sh \
dm6_bwa_index.tgz \
~/data/xfeng17/dnase/dm/oregon/ENCFF005BHD_trimmed.fastq \
8 \
~/data/xfeng17/dnase/dm/oregon/ENCFF005BHD_trimmed \
> ENCFF005BHD_trimmmed_align.log

echo "Done"
