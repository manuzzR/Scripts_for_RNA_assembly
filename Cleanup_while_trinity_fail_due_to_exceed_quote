#!/bin/bash
#SBATCH --time=8:00:00
#SBATCH --output=/scratch/manorala/Crinum_powellii_all_file_assembly/Cp_all_trinity_assembly/cleanUp_%j.out

for i in {0..6}; do
 for CBin in /scratch/manorala/Crinum_powellii_all_file_assembly/Cp_all_trinity_assembly/read_partitions/Fb_$i/CBin_*; do
  for readCluster in $CBin/c*.trinity.read.fa.out.Trinity.fasta; do
   rm -v ${readCluster/.out.Trinity.fasta}; 
  done; 
 done; 
done
