#! /usr/bin/env bash

#SBATCH
#SBATCH --job-name=AF
#SBATCH --time=4:0:0
#SBATCH --partition=lrgmem
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1

source activate ~/data/xfeng17/miniconda

export PATH=$PATH:~/code/dnase_pipeline/dnanexus/dnase-call-hotspots/resources/usr/bin/

set -x

cd /home-4/xfeng17@jhu.edu/data/xfeng17/ref_genome/dm

dnase_hotspot.sh ~/data/xfeng17/dnase/dm/oregon/ENCFF005BHD_trimmed_filtered.bam \
chrom_sizes.bed \
dm6_bwa_index.tgz \
hotspot peaks density \
> ENCFF005BHD_trimmed_filtered_hotspot.log

cd /home-4/xfeng17@jhu.edu/data/xfeng17/ref_genome/hs

dnase_hotspot.sh ~/data/xfeng17/dnase/hs/A549/ENCFF332VRZ_trimmed_filtered.bam \
chrom_sizes.bed \
hg38_bwa_index.tgz \
hotspot peaks density \
> ENCFF332VRZ_trimmed_filtered_hotspot.log

set +x
