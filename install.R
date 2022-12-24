#install.packages(c("StanHeaders","rstan"),type="source")dotR <- file.path(Sys.getenv("HOME"), ".R")

if (!file.exists(dotR)) dir.create(dotR)
M <- file.path(dotR, "Makevars")
if (!file.exists(M)) file.create(M)
cat("\nCXX14FLAGS=-O3 -march=native -mtune=native -fPIC",
    "CXX14=g++", # or clang++ but you may need a version postfix
    file = M, sep = "\n", append = TRUE)
dotR <- file.path(Sys.getenv("HOME"), ".R")
if (!file.exists(dotR)) dir.create(dotR)
M <- file.path(dotR, "Makevars")
if (!file.exists(M)) file.create(M)
cat("\nCXX14FLAGS=-O3 -march=native -mtune=native -fPIC",
    "CXX14=g++", # or clang++ but you may need a version postfix
    file = M, sep = "\n", append = TRUE)
install.packages("rstan", repos = c("https://mc-stan.org/r-packages/", getOption("repos")))

#install.packages("cmdstanr", repos = c("https://mc-stan.org/r-packages/", getOption("repos")))
#library(cmdstanr)
#check_cmdstan_toolchain(fix = TRUE, quiet = TRUE)
#install_cmdstan(cores = 2)


install.packages(c("ggplot2","coda","mvtnorm","devtools","loo","dagitty","shape"))
devtools::install_github("rmcelreath/rethinking")
