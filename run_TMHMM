#!/bin/sh
#SBATCH --job-name=tmhmm
#SBATCH --time=30:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --mem=32G

module load  StdEnv/2020  gcc/9.3.0 openmpi/4.0.3 tmhmm hmmer r boost/1.72.0 suitesparse/5.10.1 blast+/2.12.0 bcftools/1.11

module load trinotate/3.2.2

THREADS=${SLURM_NTASKS}

echo Starting TMHMM

tmhmm --short < longest_peptide.pep > Crinum_powellii_longest_peptides.pep_tmhmm.out 

echo Finished TMHMM
