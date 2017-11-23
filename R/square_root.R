#' Square root a vector
#'
#' That's it -- this function just square root a vector.
#'
#' @param x The vector to be square rooted.
#'
#' @return A vector that is the square root of \code{x}.
#'
#' @details
#' This function isn't complicated.
#'
#' And it almost certainly doesn't need two paragraphs in the "Details"
#' section!
#'
#' Here are some reasons why putting a list in this section is excessive:
#' \itemize{
#'      \item This \code{cube} function is quite simple.
#'      \item There's nothing else to say about \code{cube}.
#' }
#'
#' @examples
#' square_root(1:10)
#' square_root(-5)
#' @export
#'
square_root <- function(x) pow(x,1/2)
