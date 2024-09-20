#!/bin/bash
#SBATCH --mem=100G
#SBATCH --time=12:00:00

module load StdEnv/2020
module load fastqc/0.11.9

fastqc -o fastqc_result -t 6 *fastq.gz

