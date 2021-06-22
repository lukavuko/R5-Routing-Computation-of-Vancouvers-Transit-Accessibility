# init.R
#
# R code to install packages if not already installed
#

# THIS METHOD TIMES OUT AND DOESNT WORK!!
my_packages = c("DT", "ggpubr", "ggplot2", "dplyr")

install_if_missing = function(p) {
  if (p %in% rownames(installed.packages()) == FALSE) {
    install.packages(p, dependencies = c('Depends', 'Imports'), Ncpus = 4)
  }
}

invisible(sapply(my_packages, install_if_missing))

# ALETERNATIVE METHOD FROM LOCAL
#install.packages("dplyr_1.0.7.tar.gz", repos=NULL, type="source")
#install.packages("DT_0.18.tar.gz", repos=NULL, type="source")
#install.packages("ggplot2_3.3.4.tar.gz", repos=NULL, type="source")
#install.packages("ggpubr_0.4.0.tar.gz", repos=NULL, type="source")



