# Run RStudio on Binder with Rethinking package installed

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/lsaravia/binder-rethinking/HEAD?urlpath=rstudio)

This is based on the [rocker/geospatial](https://hub.docker.com/r/rocker/geospatial)
image.

## Modify installed packages 

Add or delete packages from `install.R` file that will be executed on build.
Use `install.packages` or `devtools::install_version`.

```R
install.packages("ggplot2")
```

Packages are installed from [packagemanager.rstudio.com](https://packagemanager.rstudio.com/client/#/),
and binary packages are preferred wherever possible. For some R packages,
you might need to install system packages via apt - you can do so by writing
out a list of apt package names in `apt.txt`.


## Add your R code 

Finally, add the R code you want to demo to the repository! 

## Troubleshooting

**It didn't work! What do I do now?**.  If you are installing additional R
*packages, this will sometimes fail when a package requires an external library
*that is not found on the container.  We're working on a more elegant solution
*for this case, but meanwhile, you'll need to modify the Dockerfile to install
*these libraries.  For instance, the `gsl` [R package page
*reads](https://packagemanager.rstudio.com/client/#/repos/1/packages/gsl)

```shell
# Install System Prerequisites for Ubuntu 20.04 (focal)
apt-get install -y libgsl0-dev
```

To solve this, you will need to add the following line to your `apt.txt` file:

```txt
libgsl0-dev
```

