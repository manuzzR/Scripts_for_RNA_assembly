#!/bin/bash
#SBATCH --mem=100G
#SBATCH --time=12:00:00

var=$(cat varibleList.txt)

module load StdEnv/2020
module load fastp/0.23.1

# following code will take all fastq file from our working directory flodder and performed cleaning of our fastq data

for a in ${var}
    do 
      fastp -i ${a}_R1.fastq.gz -I ${a}_R2.fastq.gz -o ${a}_R1_fp.fastq.gz -O ${a}_R2_fp.fastq.gz
   done

