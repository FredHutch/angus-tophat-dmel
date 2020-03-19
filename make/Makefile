all:
	$(error An explicit target is required- no default targets exist)
# Run: SRR042490
# Illumina Genome Analyzer paired end sequencing; Male adults three
# days old RNA-Seq
# http://www.ebi.ac.uk/ena/data/view/SRR042490
# Read Count: 7,447,148
# Base Count: 1,117,072,200
SRR042490: SRR042490/SRR042490_1.fastq SRR042490/SRR042490_2.fastq
SRR042490/SRR042490_1.fastq.gz:
	-mkdir SRR042490
	cd SRR042490 && curl -O -L \
		ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR042/SRR042490/SRR042490_1.fastq.gz
SRR042490/SRR042490_1.fastq: SRR042490/SRR042490_1.fastq.gz
	gunzip -k SRR042490/SRR042490_1.fastq.gz

SRR042490/SRR042490_2.fastq.gz:
	-mkdir SRR042490
	cd SRR042490 && curl -O -L \
		ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR042/SRR042490/SRR042490_2.fastq.gz
SRR042490/SRR042490_2.fastq: SRR042490/SRR042490_2.fastq.gz
	gunzip -k SRR042490/SRR042490_2.fastq.gz

# Run: SRR1991029
# Illumina HiSeq 2000 paired end sequencing; Drosophila melanogaster
# Raleigh 808 Mated 2 Experiment 1
# http://www.ebi.ac.uk/ena/data/view/SRR1991029
# Read Count: 29,444
# Base Count: 5,594,360
SRR1991029: SRR1991029/SRR1991029_1.fastq SRR1991029/SRR1991029_2.fastq
SRR1991029/SRR1991029_1.fastq.gz:
	-mkdir SRR1991029
	cd SRR1991029 && curl -O -L \
		ftp.sra.ebi.ac.uk/vol1/fastq/SRR199/009/SRR1991029/SRR1991029_1.fastq.gz
SRR1991029/SRR1991029_1.fastq: SRR1991029/SRR1991029_1.fastq.gz
	gunzip -k SRR1991029/SRR1991029_1.fastq.gz

SRR1991029/SRR1991029_2.fastq.gz:
	-mkdir SRR1991029
	cd SRR1991029 && curl -O -L \
		ftp.sra.ebi.ac.uk/vol1/fastq/SRR199/009/SRR1991029/SRR1991029_2.fastq.gz
SRR1991029/SRR1991029_2.fastq: SRR1991029/SRR1991029_2.fastq.gz
	gunzip -k SRR1991029/SRR1991029_2.fastq.gz

# Run: SRR1989065
# Illumina HiSeq 2000 paired end sequencing; Drosophila melanogaster 
# Raleigh 362 Mated 3 Experiment 1
# http://www.ebi.ac.uk/ena/data/view/SRR1989065
# Read Count: 1,493
# Base Count: 285,163
SRR1989065: SRR1989065/SRR1989065_2.fastq SRR1989065/SRR1989065_1.fastq
SRR1989065/SRR1989065_1.fastq:SRR1989065/SRR1989065_1.fastq.gz
	gunzip -k SRR1989065/SRR1989065_1.fastq.gz
SRR1989065/SRR1989065_2.fastq:SRR1989065/SRR1989065_2.fastq.gz
	gunzip -k SRR1989065/SRR1989065_2.fastq.gz

SRR1989065/SRR1989065_1.fastq.gz:
	-mkdir SRR1989065
	cd SRR1989065 && curl -O -L \
		ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR198/005/SRR1989065/SRR1989065_1.fastq.gz
SRR1989065/SRR1989065_2.fastq.gz:
	-mkdir SRR1989065
	cd SRR1989065 && curl -O -L \
		ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR198/005/SRR1989065/SRR1989065_2.fastq.gz

# Run: SRR1989024
# Illumina HiSeq 2000 paired end sequencing; Drosophila melanogaster
# Raleigh 350 Virgin 3 Experiment 1
# http://www.ebi.ac.uk/ena/data/view/SRR1989024
# Read Count: 24,248
# Base Count: 4,607,120
SRR1989024/SRR1989024_1.fastq:SRR1989024/SRR1989024_1.fastq.gz
	gunzip -k SRR1989024/SRR1989024_1.fastq.gz
SRR1989024/SRR1989024_2.fastq:SRR1989024/SRR1989024_2.fastq.gz
	gunzip -k SRR1989024/SRR1989024_2.fastq.gz

SRR1989024/SRR1989024_1.fastq.gz:
	-mkdir SRR1989024
	cd SRR1989024 && curl -O -L \
		ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR198/004/SRR1989024/SRR1989024_1.fastq.gz
SRR1989024/SRR1989024_2.fastq.gz:
	-mkdir SRR1989024
	cd SRR1989024 && curl -O -L \
		ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR198/004/SRR1989024/SRR1989024_2.fastq.gz

# Index Download and Processing
dmel-all-chromosome-r6.16.fasta.gz:
	curl -u anonymous:mrg\@fredhutch.org -O -L \
		ftp://ftp.flybase.net/releases/FB2017_03/dmel_r6.16/fasta/dmel-all-chromosome-r6.16.fasta.gz

dmel-all-chromosome-r6.16.fasta: dmel-all-chromosome-r6.16.fasta.gz
	gunzip -k dmel-all-chromosome-r6.16.fasta.gz

index: index/dmel_genome_bowtie2.4.bt2 index/dmel_genome_bowtie2.3.bt2 index/dmel_genome_bowtie2.1.bt2 index/dmel_genome_bowtie2.2.bt2 index/dmel_genome_bowtie2.rev.1.bt2 index/dmel_genome_bowtie2.rev.2.bt2
index/dmel_genome_bowtie2.1.bt2 index/dmel_genome_bowtie2.2.bt2 index/dmel_genome_bowtie2.3.bt2 index/dmel_genome_bowtie2.4.bt2 index/dmel_genome_bowtie2.rev.1.bt2 index/dmel_genome_bowtie2.rev.2.bt2: dmel-all-chromosome-r6.16.fasta
	-mkdir index
	cd index && \
		bowtie2-build ../dmel-all-chromosome-r6.16.fasta dmel_genome_bowtie2

# GTF File download
gtf: dmel-all-r6.16.gtf
dmel-all-r6.16.gtf.gz:
	curl -u anonymous:mrg\@fredhutch.org -O -L \
		ftp://ftp.flybase.net/releases/FB2017_03/dmel_r6.16/gtf/dmel-all-r6.16.gtf.gz

dmel-all-r6.16.gtf: dmel-all-r6.16.gtf.gz
	gunzip -k dmel-all-r6.16.gtf.gz

SRR1989024: index gtf SRR1989024/SRR1989024_2.fastq SRR1989024/SRR1989024_1.fastq
	-mkdir -p result/SRR1989024
	tophat -p $(NPROCS) -G dmel-all-r6.16.gtf -o result/SRR1989024 \
		--no-novel-juncs index/dmel_genome_bowtie2 \
		SRR1989024/SRR1989024_1.fastq.gz SRR1989024/SRR1989024_2.fastq.gz

SRR1989065: index gtf SRR1989065/SRR1989065_2.fastq SRR1989065/SRR1989065_1.fastq
	-mkdir -p result/SRR1989065
	tophat -p $(NPROCS) -G dmel-all-r6.16.gtf -o result/SRR1989065 \
		--no-novel-juncs index/dmel_genome_bowtie2 \
		SRR1989065/SRR1989065_1.fastq.gz SRR1989065/SRR1989065_2.fastq.gz

SRR1991029: index gtf SRR1991029/SRR1991029_2.fastq SRR1991029/SRR1991029_1.fastq
	-mkdir -p result/SRR1991029
	tophat -p $(NPROCS) -G dmel-all-r6.16.gtf -o result/SRR1991029 \
		--no-novel-juncs index/dmel_genome_bowtie2 \
		SRR1991029/SRR1991029_1.fastq.gz SRR1991029/SRR1991029_2.fastq.gz

SRR042490: index gtf SRR042490/SRR042490_2.fastq SRR042490/SRR042490_1.fastq
	-mkdir -p result/SRR042490
	tophat -p $(NPROCS) -G dmel-all-r6.16.gtf -o result/SRR042490 \
		--no-novel-juncs index/dmel_genome_bowtie2 \
		SRR042490/SRR042490_1.fastq.gz SRR042490/SRR042490_2.fastq.gz

.PHONY: SRR1989024 SRR1989065 SRR1991029 SRR042490

map_short: gtf index sequence_short
	tophat -p $(NPROCS) -G dmel-all-r6.16.gtf -o map_short \
		--no-novel-juncs index/dmel_genome_bowtie2 \
		SRR1989065/SRR1989065_1.fastq.gz SRR1989065/SRR1989065_2.fastq.gz

.PHONY: map_short
