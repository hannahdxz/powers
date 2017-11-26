#' Power a vector
#'
#' This is an internal function.
#'
#' @param x The vector to be powered.
#'
#' @param a The power.
#'
#' @param na.omit Whether or not to remove NAs, the default is FALSE.
#'
#' @return A vector that is the power a of \code{x}.
#'
#' @details
#' This function isn't complicated.
#'
#' This function requires the input to be numeric,
#' when it is not, an "invalid input" message will appear.
#'
#' Here are some reasons why putting a list in this section is excessive:
#' \itemize{
#'      \item This \code{pow} function is quite simple.
#'      \item There's nothing else to say about \code{pow}.
#' }
#'

pow <- function(x, a, na.omit=FALSE){
  if (na.omit==TRUE){
  x <- x[!is.na(x)] # remove NA
  if (is.numeric(x) && is.numeric(a)){
  x^a
  }
  else{
    return("invalid input")
  }
  }else{
    if (is.numeric(x) && is.numeric(a)){
      x^a
    }
    else{
      return("invalid input")
    }
  }
}
