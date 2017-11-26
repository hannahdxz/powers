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
#' And it almost certainly doesn't need two paragraphs in the "Details"
#' section!
#'
#' Here are some reasons why putting a list in this section is excessive:
#' \itemize{
#'      \item This \code{square} function is quite simple.
#'      \item There's nothing else to say about \code{square}.
#' }
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
