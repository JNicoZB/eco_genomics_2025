
### load modules

#module purge
#module load gcc angsd


### Set up directories and variables

#mkdir ~/projects/eco_genomics_2025/final_project/mydata/ANGSD

#INPUT="/gpfs1/cl/ecogen/pbio6800/PopulationGenomics/bams"

#OUT="/users/j/n/jnzapata/projects/eco_genomics_2025/final_project/mydata/ANGSD"

#REF="/gpfs1/cl/ecogen/pbio6800/PopulationGenomics/ref_genome/Pmariana/Pmariana1.0-genome_reduced.fa"

#MYPOP="2019,2020"

ls ${INPUT}/${MYPOP}*sorted.rmdup.bam >${OUT}/ABBABABA_V1_bam.list

ls ${INPUT}/${MYPOP}*sorted.rmdup.bam >${OUT}/${MYPOP}_bam.list