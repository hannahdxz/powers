#' Inverse a vector
#'
#' That's it -- this function just inverse a vector.
#'
#' @param x The vector to be inversed.
#'
#' @return A vector that is the inverse of \code{x}.
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
#' inverse(1:10)
#' inverse(-5)
#' @export
#'
inverse <- function(x) pow(x,-1)
