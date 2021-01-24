
<!-- README.md is generated from README.Rmd. Please edit that file -->

# kimberlite

<!-- badges: start -->
<!-- badges: end -->

> “Kimberlite is an igneous rock, which sometimes contains diamonds. It
> is named after the town of Kimberley in South Africa, where the
> discovery of an 83.5-carat (16.70 g) diamond called the Star of South
> Africa in 1869 spawned a diamond rush and the digging of the open-pit
> mine called the Big Hole.” [Wikipedia:
> Kimberlite](https://en.wikipedia.org/wiki/Kimberlite)

![](man/figures/kimberlite-rock.jpg)

Hypabyssal facies diamondiferous kimberlite at the Sloan Ranch,
Colorado.  
Source:
[diamondprospector.webs.com](https://diamondprospector.webs.com/kimberlite.htm)

This package is not more than a fork of
[ochRe](https://github.com/ropenscilabs/ochRe) package. The goal of
kimberlite is to create some named color palettes for ggplot2 and base R
graphics.

## Installation

You can install the released version of kimberlite from
[github](https://github.com/ZGFabian/kimberlite) with:

``` r
devtools::install_github("zgfabian/kimberlite")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(kimberlite)
library(ggplot2)

## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub!
