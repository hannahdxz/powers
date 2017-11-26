<!-- README.md is generated from README.Rmd. Please edit that file -->
powers
======

The goal of powers is to perform basic computations on numerical vectors.

This package has four exported functions: `square()`, `cube()`, `box_cox()` and `my_log()`. There is one internal function `pow()` which these four functions depend on.

Example
-------

In this section I will give some examples for each functions.

**(1)** `square(x,na.omit)` This function squares a vector.

`x` is the vector to be squared.

`na.omit` is whether or not to remove NAs, the default is FALSE.

``` r
## basic example code
```
