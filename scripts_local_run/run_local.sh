#!/bin/bash

# Example to run GGR_ChIP-seq_pipeline/01-qc.cwl
# Requires cwltool and docker
#   https://github.com/common-workflow-language/cwltool
#   https://www.docker.com

# When running Docker on OS X, all data files must be under $HOME

TMP_OUTDIR_PREFIX=$HOME/cwl/out
TMPDIR_PREFIX=$HOME/cwl/tmp

FASTQ_FILE1=/Users/abarrera/data/TEST.t00_rep1.fastq
FASTQ_FILE2=/Users/abarrera/data/TEST.t05_rep1.fastq
DEFAULT_ADAPTERS_FILE=/Users/abarrera/data/adapters.fa
OUTDIR=$HOME/data/output

cwl-runner \
  --debug \
  --outdir=$OUTDIR \
  --tmp-outdir-prefix=$TMP_OUTDIR_PREFIX \
  --tmpdir-prefix=$TMPDIR_PREFIX \
  ../GGR_ChIP-seq_pipeline/pipeline.cwl \
  --input_fastq_files $FASTQ_FILE1 \
  --input_fastq_files $FASTQ_FILE2 \
  --default_adapters_file $DEFAULT_ADAPTERS_FILE
