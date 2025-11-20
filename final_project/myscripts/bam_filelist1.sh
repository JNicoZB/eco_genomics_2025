#!/bin/bash

# Directorio donde están tus listas
OUT="/users/j/n/jnzapata/projects/eco_genomics_2025/final_project/mydata/ABBA_BABA"

# 1. Crear bam.filelist concatenando todas las listas en orden
cat ${OUT}/ABBABABA_V1_bam.list \
    ${OUT}/ABBABABA_V2_bam.list \
    ${OUT}/ABBABABA_BS_bam.list \
    #${OUT}/ABBABABA_WS_bam.list \
    > ${OUT}/bam.filelist

# 2. Crear sizeFile.size con el número de individuos por grupo
n1=$(wc -l < ${OUT}/ABBABABA_V1_bam.list)
n2=$(wc -l < ${OUT}/ABBABABA_V2_bam.list)
n3=$(wc -l < ${OUT}/ABBABABA_BS_bam.list)
#n4=$(wc -l < ${OUT}/ABBABABA_WS_bam.list)

echo "$n1 $n2 $n3 $n4" > ${OUT}/sizeFile.size

# 3. Crear popNames.name con etiquetas de poblaciones
echo "RedSpruce1 RedSpruce2 BlackSpruce " > ${OUT}/popNames.name #(debo inclui White Spruce tambien

# Mensajes de verificación
echo "bam.filelist creado en ${OUT}/bam.filelist"
echo "sizeFile.size creado en ${OUT}/sizeFile.size con contenido:"
cat ${OUT}/sizeFile.size
echo "popNames.name creado en ${OUT}/popNames.name"
