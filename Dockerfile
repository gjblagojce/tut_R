FROM rocker/binder:4.1.3

USER root

# system dependencies
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libxml2-dev \
    libssl-dev \
    zlib1g-dev \
    libbz2-dev \
    liblzma-dev \
    libncurses-dev \
    libreadline-dev \
    libgit2-dev \
    libxt-dev \
    libhdf5-dev \
    wget \
    gdebi-core && \
    apt-get clean

# Quarto
RUN wget https://quarto.org/download/latest/quarto-linux-amd64.deb && \
    gdebi -n quarto-linux-amd64.deb && \
    rm quarto-linux-amd64.deb

USER $NB_USER

# R packages
RUN R -e "install.packages('BiocManager', repos = 'https://cloud.r-project.org'); \
    BiocManager::install(version = '3.14'); \
    BiocManager::install(c('Biostrings', 'ShortRead', 'rtracklayer', 'Rsamtools', 'VariantAnnotation', 'genbankr', 'msa', 'rentrez')); \
    install.packages(c('ggplot2', 'dplyr', 'readr', 'tidyr', 'seqinr', 'xml2', 'r3dmol', 'shiny'), repos = 'https://cloud.r-project.org')"

ENV PATH="/opt/quarto/bin:$PATH"

COPY . ${HOME}
RUN chown -R ${NB_UID}:${NB_GID} ${HOME}
WORKDIR ${HOME}
