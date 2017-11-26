#' Square a vector
#'
#' That's it -- this function just squares a vector.
#'
#' @param x The vector to be squared.
#'
#' @param na.omit Whether or not to remove NAs, the default is FALSE.
#'
#' @return A vector that is the square of \code{x}.
#'
#' @details
#' This function isn't complicated.
#'
#' It is built for learning purpose.
#'
#' @examples
#' square(1:10)
#' square(-5)
#' @export

square <- function(x,na.omit=FALSE) pow(x,2,na.omit)

# helper packages
# roxygen2
# testthat
# devtools
