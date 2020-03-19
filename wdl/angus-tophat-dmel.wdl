task download_sample {
  String sample_name
  String dlr = "$"
  command <<<
    # ftp://ftp.sra.ebi.ac.uk/vol1/fastq/<dir1>[/<dir2>]/<run accession>
    mkdir ${sample_name}

    dir1=${sample_name}
    dir1=${dlr}{dir1::6}
    dir2=${sample_name}
    dir2="00${dlr}{dir2:9}"

    cd ${sample_name}

    echo ftp://ftp.sra.ebi.ac.uk/vol1/fastq/${dlr}{dir1}/${dlr}{dir2}/${sample_name}/${sample_name}_1.fastq.gz
    curl -O -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/${dlr}{dir1}/${dlr}{dir2}/${sample_name}/${sample_name}_1.fastq.gz
    echo ftp://ftp.sra.ebi.ac.uk/vol1/fastq/${dlr}{dir1}/${dlr}{dir2}/${sample_name}/${sample_name}_2.fastq.gz
    curl -O -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/${dlr}{dir1}/${dlr}{dir2}/${sample_name}/${sample_name}_2.fastq.gz
  >>>
  output {
    File left = "${sample_name}/${sample_name}_1.fastq.gz"
    File right = "${sample_name}/${sample_name}_2.fastq.gz"
  }
}

task tophat {
  String sample_name
  File gtf
  String index
  File left
  File right
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
  call download_sample
  call tophat {
    input:
      left = download_sample.left,
      right = download_sample.right
  }
}
