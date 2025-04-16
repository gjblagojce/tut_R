# Set CRAN mirror
options(repos = c(CRAN = "https://cloud.r-project.org"))

# Install CRAN packages
install.packages(c(
  "magrittr", "xml2", "ggplot2", "r3dmol", "shiny", "seqinr", "htmltools", "htmlwidgets"
))

# Install Bioconductor + required bio packages
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install(c(
  "Biostrings",
  "ShortRead",
  "Rsamtools",
  "VariantAnnotation",
  "rentrez",
  "msa",
  "rtracklayer"
))
