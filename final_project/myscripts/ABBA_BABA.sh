#!/bin/bash

#SBATCH --job-name=ABBABABA

# Name the output file: Re-direct the log file to your home directory
# The first part of the name (%x) will be whatever you name your job 
#SBATCH --output=/users/j/n/jnzapata/projects/eco_genomics_2025/final_project/mylogs/%x_%j.out

# Which partition to use: options include short (<3 hrs), general (<48 hrs), or week
#SBATCH --partition=general

# Specify when Slurm should send you e-mail.  You may choose from
# BEGIN, END, FAIL to receive mail, or NONE to skip mail entirely.
#SBATCH --mail-type=ALL
#SBATCH --mail-user=jnzapata@uvm.edu

# Run on a single node with four cpus/cores and 8 GB memory
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=10
#SBATCH --mem=64G

# Time limit is expressed as days-hrs:min:sec; this is for 24 hours.
#SBATCH --time=24:00:00

#---------  End Slurm preamble, job commands now follow



# load your modules

module purge
module load gcc angsd

# set up directories

mkdir ~/projects/eco_genomics_2025/final_project/mydata/ABBA_BABA

REPO="/users/j/n/jnzapata/projects/eco_genomics_2025/final_project/myresults"

OUT="/users/j/n/jnzapata/projects/eco_genomics_2025/final_project/mydata/ABBA_BABA"

REF="/gpfs1/cl/ecogen/pbio6800/PopulationGenomics/ref_genome/Pmariana/Pmariana1.0-genome_reduced.fa"


ls ${INPUT}/${MYPOP}*sorted.rmdup.bam >${OUT}/ABBABABA_V1_bam.list

ls ${INPUT}/${MYPOP}*sorted.rmdup.bam >${OUT}/${MYPOP}_bam.list


##mkdir ${REPO}/myresults/ANGSD

##mkdir ${REPO}/myresults/ANGSD/diversity


## do ABBA BABA

angsd -doAbbababa 1 \
-bam ${REPO}/allRS_bam.list \
-ref ${REF} \
-anc ${REF} \
-out ${OUT}/ABBA_BABA \
-doCounts 1 \
-nThreads 10 \
-minMapQ 20 \
-minQ 20 \


