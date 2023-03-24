# Initialize renv ----

# renv::init()



# Set wd ----

(WD <- getwd())
if (!is.null(WD)) setwd(WD)



# List of all required packages ----


required_Packages_Install <- c("devtools", "usethis", "roxygen2", "testthat", "knitr",  # package development
                               "MASS", "invgamma", "mvtnorm", "GIGrvg", "ald",  # density, random sample
                               "pcalg", "igraph", "dagitty",
                               "dplyr", "ggplot2",
                               "profvis", "microbenchmark",
                               "todor",
                               "mcmcse", "mcmcr", "coda", "bayesplot"
                               )



# Installation and call of library ----

for (Package in required_Packages_Install) {
  if (!require(Package, character.only = TRUE)) {
    install.packages(Package, dependencies = TRUE)
  }
  library(Package, character.only = TRUE)
}



# Update renv  ----

# renv::snapshot()  # to save the state of your project library.
# TODO the above function doesn't reflect installed packages -- fix it later



# Library details ----

# ExtDist: Symmetric Laplace
# ald: asymmetric Laplace
# invgamma:
# statmod: Inverse Gaussian (used for Symmetric Laplace)
# GIGrvg : Generalized Inverse Gaussian
# mvtnorm: Multivariate Normal --  random sample (rmvnorm), to crosscheck mult normal density (dmvnorm)



# install.packages('pcalg', dependencies = TRUE)
# if (!requireNamespace("BiocManager", quietly = TRUE))
#   install.packages("BiocManager")
# BiocManager::install("graph") #, version = "3.8")
# BiocManager::install("RBGL")

# once R and/or Rstudio is updated I should some packages to be re installed (dependencies for 'pcalg' -- using BiocManager')

# pcalg: pcalg2dagitty
# igraph: graph_from_adjacency_matrix, is_dag, as_ids, topo_sort
# dagitty: graphLayout


# mcmcse: diagnostics -- ess
# mcmcr:  as.mcmc()
# coda: diagnostic plots - autocor, trace





