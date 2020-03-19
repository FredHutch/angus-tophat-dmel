#!/usr/bin/env bash

echo "loading modules: $(date '+%Y-%m-%dT%H-%M-%S')"
t_start=$(date '+%s')
ml TopHat/2.1.1-foss-2016b
ml Bowtie2/2.2.9-foss-2016b
t_end=$(date '+%s')

echo "modules loaded in $((t_end - t_start)) seconds"

export NPROCS=${SLURM_CPUS_ON_NODE}

echo "starting make: $(date '+%Y-%m-%dT%H-%M-%S')"
t_start=$(date '+%s')
make ${RUN}
t_end=$(date '+%s')
echo "make ran $((t_end - t_start)) seconds"
echo "ended: $(date '+%Y-%m-%dT%H-%M-%S')"
