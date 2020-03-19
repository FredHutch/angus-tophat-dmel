for run in SRR042490
do
  echo "Submitting $run"
  set -x
  sbatch \
    --exclusive \
    -p campus \
    --job-name=angus-dmel-tophat-${run} --export=RUN=${run} \
    -o ${run}.%j.out ./run.sbatch.sh
  set +x
done
