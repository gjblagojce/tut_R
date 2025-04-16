---
editor: 
  markdown: 
    wrap: 72
---

# 🧬 Bioinformatics in R – Quarto Web Tutorial

This is a modular, web-based tutorial for learning bioinformatics
workflows using R and Bioconductor. Built with **Quarto**, it walks
through core bioinformatics file formats, sequence handling, alignment,
database access, BLAST, and visualization.

------------------------------------------------------------------------

## 🔎 Contents

-   `00_Introduction_R.qmd` – R basics and project overview
-   `01_File_formats_R.qmd` – Working with FASTA, FASTQ, SAM/BAM, BED,
    VCF
-   `02_Basic_sequence_handling_R.qmd` – Sequence analysis with
    Biostrings
-   `03_Sequence_alignment_R.qmd` – Pairwise and multiple sequence
    alignment
-   `04_NCBI_database_access_R.qmd` – Accessing NCBI databases with
    `rentrez`
-   `05_BLAST_practical_flow_R.qmd` – BLAST remotely with `blastp` +
    `xml2` parsing
-   `06_Data_visualization_R.qmd` – Plotting gene expression and
    sequences

------------------------------------------------------------------------

## 📁 Example Data

All input files are located in the `data/` folder: - `.fasta`, `.fastq`,
`.bed`, `.bam`, `.vcf`, `.gb` - Example gene expression `.csv` and
`.txt`

------------------------------------------------------------------------

## 🛠️ How to Run (Locally)

### 1. Install R & Quarto

-   [R Download](https://cran.r-project.org/)
-   [Quarto Download](https://quarto.org/)
-   [BLAST+](https://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/)

### 2. Install all required packages

Run this script:

\`\`\`r source("requirements.R")
