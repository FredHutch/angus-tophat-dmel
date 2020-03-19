task tophat {
  String sample_name
  String data_dir
  File gtf
  String index
  File left = "${data_dir}/${sample_name}/${sample_name}_1.fastq.gz"
  File right = "${data_dir}/${sample_name}/${sample_name}_2.fastq.gz"
  Int nprocs
  command {
    module load TopHat/2.1.2-foss-2016b Bowtie2/2.3.4.3-foss-2016b
    mkdir -p results/${sample_name}
    tophat \
      -p ${nprocs} \
      -G ${gtf} \
      -o results/${sample_name} \
      --no-novel-juncs \
      ${index} \
      ${left} \
      ${right}
  }
  output {
    File accepted_hits = "results/${sample_name}/accepted_hits.bam"
    File align_summary = "results/${sample_name}/align_summary.txt"
    File deletions = "results/${sample_name}/deletions.bed"
    File insertions = "results/${sample_name}/insertions.bed"
    File junctions = "results/${sample_name}/junctions.bed"
    File prep_reads = "results/${sample_name}/prep_reads.info"
    File unmapped = "results/${sample_name}/unmapped.bam"
  }
}

workflow angus_tophat_dmel {
  call tophat
}
