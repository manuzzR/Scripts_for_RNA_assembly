#!/bin/sh
#SBATCH --job-name=hmm
#SBATCH --time=70:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --mem=32G

module purge
module load  StdEnv/2020  gcc/9.3.0 openmpi/4.0.3 tmhmm hmmer r boost/1.72.0 suitesparse/5.10.1 blast+/2.12.0 bcftools/1.11 
module save annotation_modules

module load trinotate/3.2.2 

THREADS=${SLURM_NTASKS}

echo Starting HMMScan

hmmscan\
  --cpu ${THREADS}\
  --domtblout peptides.fa_TrinotatePFAM_hmm.out\
  Pfam-A.hmm \
  longest_peptide.pep

echo 'Finished HMMScan'

