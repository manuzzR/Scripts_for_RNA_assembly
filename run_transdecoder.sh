#!/bin/bash
#SBATCH --mem=100G
#SBATCH --time=48:00:00
#SBATCH --ntasks-per-node=20
#SBATCH --nodes=1

module load StdEnv/2020 gcc/9.3.0
module load transdecoder/5.5.0

TransDecoder.LongOrfs -t Trinity.fasta
