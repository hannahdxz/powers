#' Cube a vector
#'
#' That's it -- this function just raises a vector to the power of 3.
#'
#' @param x The vector to be cubed.
#'
#' @param na.omit Whether or not to remove NAs, the default is FALSE.
#'
#' @return A vector that is the cube of \code{x}.
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
#' cube(1:10)
#' cube(-5)
#' @export
#'
cube <- function(x,na.omit=FALSE) pow(x,3,na.omit)
