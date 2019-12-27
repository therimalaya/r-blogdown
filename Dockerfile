FROM rocker/r-rmd

RUN apt-get update \
  && apt-get install -y r-cran-devtools \
  && apt-get install -y curl r-cran-rcurl \
  && apt-get install -y libssl-dev \
  && apt-get install -y gdal-bin proj-bin libgdal-dev libproj-dev \
  && Rscript -e "devtools::install_github('rstudio/blogdown', dependencies = TRUE)" \
  && Rscript -e "install.packages(c('car', 'MASS', 'lme4', 'nlme', 'pls', 'Renvlp', 'kableExtra'))" \
  && Rscript -e "install.packages(c('tidyverse', 'pander', 'tables', 'xtable', 'ggfortify'))" \
  && Rscript -e "devtools::install_github('rstudio/DT', dependencies = TRUE)" \
  && Rscript -e "devtools::install_github('rstudio/bookdown', dependencies = TRUE)" \
  && Rscript -e "devtools::install_github('rstudio/revealjs', dependencies = TRUE)" \
  && Rscript -e "devtools::install_github('rstudio/r2d3', dependencies = TRUE)" \
  && Rscript -e "devtools::install_github('rstudio/dygraphs', dependencies = TRUE)" \
  && apt-get install -y hugo

EXPOSE 4321

