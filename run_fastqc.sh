#!/bin/bash
#SBATCH --mem=100G
#SBATCH --time=12:00:00
## this code we used for job submission in compute Canada server.
module load StdEnv/2020
module load fastqc/0.11.9

fastqc -o fastqc_result -t 6 *fastq.gz
#result will show the quality of our raw RNA-seq data.

