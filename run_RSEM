#!/bin/bash
#SBATCH --mem=32G
#SBATCH --time=48:00:00
#SBATCH --ntasks-per-node=16
#SBATCH --nodes=1

module load StdEnv/2020 gcc/9.3.0 openmpi/4.0.3
module load java/13.0.2
module load python/3.10.2
module load scipy-stack/2022a
module load bowtie2 samtools/1.15.1 rsem/1.3.3 jellyfish/2.3.0 salmon/1.7.0
module load trinity/2.14.0

echo running_RSEM......

$TRINITY_HOME/util/align_and_estimate_abundance.pl\
	--transcripts Trinity.fasta\
	--seqType fq\
	--samples_file /project/def-laboidp/manorala/scripts/Cp_sample_files\
	--est_method RSEM\
	--SS_lib_type FR\
	--trinity_mode\
	--aln_method bowtie\
	--prep_reference\
	--output_dir rsem_outdir

echo Finishing RSEM
