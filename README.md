
<!-- README.md is generated from README.Rmd. Please edit that file -->

# example.package

The goal of example.package is to be an example package.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("jeff-goldsmith/example.package")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(example.package)

sim_bern_mean(30)
#> # A tibble: 1 x 1
#>   p_hat
#>   <dbl>
#> 1 0.433
```
