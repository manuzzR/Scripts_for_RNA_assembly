#!/bin/sh
#SBATCH --job-name=signalp
#SBATCH --time=50:00:00
#SBATCH --mem=32G

module load StdEnv/2020  gcc/9.3.0
module load  blast+/2.12.0

signalpDIR=/project/def-laboidp/blastDBs

cd $SCRATCH/Functional_annotation

module load signalp

$signalpDIR/signalp -f short\
 -n Crinium_powellii_signalp.out\
 longest_peptide.pep
