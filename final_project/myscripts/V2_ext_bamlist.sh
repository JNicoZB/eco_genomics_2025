#!/bin/bash

# load your modules

#module purge
#module load gcc angsd

# set up directories

#mkdir ~/projects/eco_genomics_2025/final_project/mydata/ABBA_BABA

INPUT="/gpfs1/cl/ecogen/pbio6800/PopulationGenomics/bams"

REPO="/users/j/n/jnzapata/projects/eco_genomics_2025/final_project/myresults"

OUT="/users/j/n/jnzapata/projects/eco_genomics_2025/final_project/mydata/ABBA_BABA"

REF="/gpfs1/cl/ecogen/pbio6800/PopulationGenomics/ref_genome/Pmariana/Pmariana1.0-genome_reduced.fa"


ls ${INPUT}/2021*sorted.rmdup.bam >${OUT}/ABBABABA_V2_bam.list