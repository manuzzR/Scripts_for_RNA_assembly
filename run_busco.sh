#!/bin/bash
#SBATCH --mem=100G
#SBATCH --time=12:00:00
#SBATCH --ntasks-per-node=20
#SBATCH --nodes=1

module load StdEnv/2020 gcc/9.3.0 openmpi/4.0.3
module load busco/5.5.0

busco -m transcriptome -i input.file  -o Crinium_powellii_busco_output -l embryophyta_odb10
