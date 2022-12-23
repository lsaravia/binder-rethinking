# we recommend running this is a fresh R session or restarting your current session
#install.packages("cmdstanr", repos = c("https://mc-stan.org/r-packages/", getOption("repos")))
#library(cmdstanr)
#check_cmdstan_toolchain(fix = TRUE, quiet = TRUE)
#install_cmdstan(cores = 2)

# Compile packages using all cores
Sys.setenv(MAKEFLAGS = paste0("-j",parallel::detectCores()))

install.packages(c("StanHeaders","rstan"),type="source")

install.packages(c("ggplot2","coda","mvtnorm","devtools","loo","dagitty","shape"))
devtools::install_github("rmcelreath/rethinking")
