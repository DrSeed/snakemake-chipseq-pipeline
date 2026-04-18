# Snakemake ChIP-seq Pipeline

> If Nextflow is the pipeline manager favoured by genomics cores, Snakemake is the one favoured by people who think in Python. This one is for the Python thinkers.

## What ChIP-seq Tells You That RNA-seq Can't

RNA-seq tells you which genes are expressed. ChIP-seq tells you WHY: where specific proteins are bound to the genome. H3K4me3 marks active promoters. H3K27me3 marks silenced regions. H3K27ac marks active enhancers. Map these marks and you understand the regulatory landscape.

## The Most Critical Step: Input Control

Every ChIP-seq experiment needs an input control. Without it, you can't distinguish real binding from open chromatin artefacts. If someone gives you ChIP-seq without input controls, send it back.

## Usage
```bash
snakemake --cores 8 --use-conda
```
