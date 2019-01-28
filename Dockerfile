FROM rocker/r-rmd

RUN apt-get update \
    && apt-get install -y r-cran-devtools \
    && Rscript -e "devtools::install_github('rstudio/blogdown', dependencies = TRUE)" \
    && Rscript -e "devtools::install_github('rstudio/pagedown', dependencies = TRUE)" \
    && apt-get install -y hugo

EXPOSE 4321

