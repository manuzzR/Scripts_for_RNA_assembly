#!/bin/bash
#SBATCH --mem=800G
#SBATCH --time=48:00:00
#SBATCH --ntasks-per-node=16
#SBATCH --nodes=3

module load StdEnv/2020 gcc/9.3.0 openmpi/4.0.3
module load java/13.0.2
module load python/3.10.2
module load scipy-stack/2022a
module load bowtie2 samtools/1.15.1 rsem/1.3.3 jellyfish/2.3.0 salmon/1.7.0
module load trinity/2.14.0

Trinity --seqType fq\
	--max_memory 790G\
	--CPU 48\
	--SS_lib_type FR\
	--output $SCRATCH/Crinum_powellii_all_file_assembly/Cp_all_trinity_assembly\
        --samples_file /project/def-laboidp/manorala/scripts/Cp_sample_files


