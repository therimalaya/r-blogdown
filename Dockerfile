FROM rocker/r-rmd

RUN apt-get update \
  && apt-get install -y r-cran-devtools \
  && Rscript -e "devtools::install_github('rstudio/blogdown', dependencies = TRUE)" \
  && Rscript -e "devtools::install_github('rstudio/pagedown', dependencies = TRUE)" \
  && Rscript -e "install.packages(c('car', 'MASS', 'lme4', 'nlme', 'pls', 'Renvlp', 'kableExtra', 'pander', 'tables', 'xtable', 'ggfortify'))" \
  && Rscript -e "devtools::install_github('rstudio/DT', dependencies = TRUE)" \
  && Rscript -e "devtools::install_github('rstudio/bookdown', dependencies = TRUE)" \
  && Rscript -e "devtools::install_github('rstudio/revealjs', dependencies = TRUE)" \
  && Rscript -e "devtools::install_github('rstudio/r2d3', dependencies = TRUE)" \
  && Rscript -e "devtools::install_github('rstudio/dygraphs', dependencies = TRUE)" \
  && Rscript -e "devtools::install_github('rstudio/leaflet', dependencies = TRUE)" \
  && Rscript -e "devtools::install_github('tidyverse/tidyverse', dependencies = TRUE)" \
  && apt-get install -y hugo

EXPOSE 4321

