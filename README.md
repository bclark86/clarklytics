
<!-- README.md is generated from README.Rmd. Please edit that file -->

# clarklytics

<!-- badges: start -->

<!-- badges: end -->

The goal of `clarklytics` is to make my life easier while I complete an
MBA @ NYU Stern. As I collect functions for various coursework and side
business analytics projects, I want to make the most commonly used
available to me anywhere.

## Installation

You can install the released version of clarklytics from
[github](https://github.com/) with:

``` r
devtools::install_github("bclark86/clarklytics", ref = "main")
```

## Time Value of Money

This is a basic example of the `present_value` function.

``` r
library(clarklytics)

clarklytics::present_value(future_value = 1000, rate = 0.05, periods = 5)
#> [1] 783.5262
```

Here is another one with the par value of a zero coupon bond.

``` r
clarklytics::create_par_value_tbl(face_value = 1000, rate = 0.07)
#> # A tibble: 11 x 3
#>    years_to_maturity par_value  rate
#>                <int>     <dbl> <dbl>
#>  1                 0     1000   0.07
#>  2                 1      935.  0.07
#>  3                 2      873.  0.07
#>  4                 3      816.  0.07
#>  5                 4      763.  0.07
#>  6                 5      713.  0.07
#>  7                 6      666.  0.07
#>  8                 7      623.  0.07
#>  9                 8      582.  0.07
#> 10                 9      544.  0.07
#> 11                10      508.  0.07
```

## What’s Next?

Not sure. That depends on how classes go. Stay tuned\!
