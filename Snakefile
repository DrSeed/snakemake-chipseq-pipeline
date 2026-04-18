configfile: 'config.yaml'
SAMPLES = config['samples']
rule all:
    input: expand('results/peaks/{sample}_peaks.narrowPeak', sample=SAMPLES)

rule macs2_callpeak:
    input: treatment='results/dedup/{sample}.dedup.bam', control='results/dedup/Input.dedup.bam'
    output: 'results/peaks/{sample}_peaks.narrowPeak'
    shell: 'macs2 callpeak -t {input.treatment} -c {input.control} -f BAM -g hs -n {wildcards.sample} --outdir results/peaks -q 0.05'
