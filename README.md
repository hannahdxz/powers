<!-- README.md is generated from README.Rmd. Please edit that file -->
powers
======

The goal of the `powers` package is to perform basic computations on numerical vectors.

This package has four exported functions: [`square()`](https://github.com/hannahdxz/powers/blob/master/R/square.R), [`cube()`](https://github.com/hannahdxz/powers/blob/master/R/cube.R), [`box_cox()`](https://github.com/hannahdxz/powers/blob/master/R/box%20cox.R) and [`my_log()`](https://github.com/hannahdxz/powers/blob/master/R/my_log.R). There is one internal function [`pow()`](https://github.com/hannahdxz/powers/blob/master/R/pow.R) which these four functions depend on.

These four functions only work for numerical input. When the input is of other type, an "invalid input" message will be returned.

### Description & Examples

##### In this section I will explain the arguments of each function and give some examples for each function.

First, load my `powers` package.

``` r
library(powers)
```

**(1)** The function `square(x,na.omit)` squares a vector.

-   `x` is the vector to be squared.

-   `na.omit` is whether or not to remove NAs, the default is FALSE.

``` r
num_vec <- c(0, -4.6, 3.4, NA)
square(num_vec)
#> [1]  0.00 21.16 11.56    NA

square(num_vec, na.omit=TRUE)
#> [1]  0.00 21.16 11.56

num_vec2 <- c(0, -4.6, 3.4, "a")
square(num_vec2)
#> [1] "invalid input"
```

**(2)** The function`cube(x,na.omit)` raises a vector to the power of 3.

-   `x` is the vector to be cubed.

-   `na.omit` is whether or not to remove NAs, the default is FALSE.

``` r
num_vec <- c(0, -4.6, 3.4, NA)
cube(num_vec)
#> [1]   0.000 -97.336  39.304      NA

cube(num_vec, na.omit=TRUE)
#> [1]   0.000 -97.336  39.304

num_vec2 <- c(0, -4.6, 3.4, "a")
cube(num_vec2)
#> [1] "invalid input"
```

**(3)** The function`box_cox(y, lambda1, lambda2, na.omit)` calculate the box cox transform of a vector. Here is the formula of the transformation: ![cox box](https://user-images.githubusercontent.com/31666152/33244401-2e663790-d2ab-11e7-8273-ac8e4bc25d50.png) *(formula source: [wikipedia](https://en.wikipedia.org/wiki/Power_transform#Box.E2.80.93Cox_transformation))*

-   `y` is the vector to be transformed.

-   `lambda1` is the first parameter of the transformation, range from -5 to 5.

-   `lambda2` is the second parameter of the transformation, lambda2 is introduced for negative values of y, it must be greater than -y.

-   `na.omit` is whether or not to remove NAs, the default is FALSE.

``` r
num_vec <- c(0, -4.6, 3.4, NA)
box_cox(num_vec,4,6) # not omit NA
#> [1] -0.2500  0.7104 33.1584      NA

box_cox(num_vec,4,6,na.omit=TRUE) # omit NA
#> [1] -0.2500  0.7104 33.1584

box_cox(num_vec,4,2,na.omit=TRUE) # lambda2 too small
#> [1] "invalid value of lambda2"

box_cox(num_vec,6,2,na.omit=TRUE) # lambda1 >5
#> [1] "invalid value of lambda1"

num_vec2 <- c(0, -4.6, 3.4, "a")
box_cox(num_vec2,4,6)
#> [1] "invalid input"
```

**(4)** The function`my_log(x,base=exp(1),na.omit=FALSE)` perform log transformation.

-   `x` is the vector to be transformed. x&gt;=0

-   `base` is the base of the log transformation, the default is exp(1)

-   `na.omit` is whether or not to remove NAs, the default is FALSE.

-   Note: This function can only calculate the log transformation of x in the range: base^(-100) &lt;= x &lt;= base^100

``` r
my_log(exp(7))
#> [1] 7
num_vec <- c(0, 8,64,NA)
my_log(num_vec,2) # not omit NA
#> [1] -Inf    3    6   NA

my_log(num_vec,2, na.omit = TRUE) # omit NA
#> [1] -Inf    3    6

num_vec1 <- c(0, 4.6, 900000000000000000)
my_log(num_vec1,1.5) # can not calculate x > base^100
#> [1] "can not calculate"

my_log(-10,2) # x can not be negative
#> [1] "x needs to be greater than or equal to 0"

num_vec2 <- c(0, -4.6, 3.4, "a")
my_log(num_vec2,4)
#> [1] "invalid input"
```
