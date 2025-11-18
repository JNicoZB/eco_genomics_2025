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


ls ${INPUT}/2022*sorted.rmdup.bam >${OUT}/ABBABABA_V3_bam.list

ls ${INPUT}/2024*sorted.rmdup.bam >${OUT}/ABBABABA_V3_bam.list

ls ${INPUT}/2027*sorted.rmdup.bam >${OUT}/ABBABABA_V3_bam.list
ls ${INPUT}/2030*sorted.rmdup.bam >${OUT}/ABBABABA_V3_bam.list
ls ${INPUT}/2032*sorted.rmdup.bam >${OUT}/ABBABABA_V3_bam.list
ls ${INPUT}/2100*sorted.rmdup.bam >${OUT}/ABBABABA_V3_bam.list
ls ${INPUT}/2101*sorted.rmdup.bam >${OUT}/ABBABABA_V3_bam.list
ls ${INPUT}/2103*sorted.rmdup.bam >${OUT}/ABBABABA_V3_bam.list
ls ${INPUT}/2505*sorted.rmdup.bam >${OUT}/ABBABABA_V3_bam.list


