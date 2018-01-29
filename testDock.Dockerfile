FROM rocker/shiny:latest

RUN  echo 'install.packages(c("devtools","httr","RColorBrewer","shinythemes","shinycssloaders","DT","data.table","shinyjs","googlesheets"), \
repos="http://cran.us.r-project.org", \
dependencies=TRUE)' > /tmp/packages.R \

EXPOSE 3838
CMD ["/usr/bin/shiny-server.sh"]