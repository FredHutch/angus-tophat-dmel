for run in SRR1989024 SRR1989065 SRR1991029 SRR042490 
do
  echo "Submitting $run"
  cmd='sbatch --exclusive --job-name=tophat-${run} --export=RUN=${run} -o ${run}.%j.out ./run.sbatch.sh'
  cmd='sbatch -A scicomp -c 24 --mem=22000M -p largenode --reservation=j-node --job-name=tophat-${run} --export=RUN=${run} -o ${run}.%j.out ./run.sbatch.sh'
  echo ${cmd}
  eval ${cmd}
done
