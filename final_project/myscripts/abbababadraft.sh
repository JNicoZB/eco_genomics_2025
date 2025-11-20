#!/bin/bash

#SBATCH --job-name=ABBABABA2

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

#set up directories

REPO="/users/j/n/jnzapata/projects/eco_genomics_2025/final_project/mydata/ABBA_BABA"

OUT="/users/j/n/jnzapata/projects/eco_genomics_2025/final_project/myresults"

REF="/gpfs1/cl/ecogen/pbio6800/PopulationGenomics/ref_genome/Pmariana/Pmariana1.0-genome_reduced.fa"

# to run ABBA BABA ?

angsd -doAbbababa2 1 \
-bam ${REPO}/bam.filelist \
-sizeFile ${REPO}/sizeFile.size \
-anc ${REF} \
-out ${OUT}/ABBA_BABA_run1 \
-doCounts 1 \
-nThreads 10 \
-minMapQ 20 \
-minQ 20 \
-blockSize 10000 \
-useLast 1
