FROM rocker/r-rmd

RUN apt-get update \
    && apt-get install \
    && Rscript -e "devtools::install_github('rstudio/blogdown', dependencies = TRUE)"
