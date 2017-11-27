#' Log transformation
#'
#' This function perform log transformation.
#'
#' @param x The vector to be transformed. x>=0
#'
#' @param base The base of the log transformation, the default is exp(1)
#'
#' @param na.omit Whether or not to remove NAs, the default is FALSE.
#'
#' @return A vector that is the log transformation of \code{x}.
#'
#' @details
#' This function calculate the log transform of a vector.
#'
#' This function can only calculate the log transformation of x in the range:
#' base^(-100) <= x <= base^100
#'
#' @examples
#' my_log(7,2)
#' my_log(500:510, 4)
#' @export
#'

my_log <- function(x,base=exp(1),na.omit=FALSE){
  if (is.numeric(x) && is.numeric(base)){

  result <- rep(NA, length(x))

  for(i in 1:length(x)){

    if(is.na(x[i])){
      result[i] <- NA}
    else{
      if(x[i]==0){
        result[i] <- 0}
      else{

    if (x[i]>=0){

    if (x[i] <= pow(base,100,na.omit) && x[i] >= pow(base,-100,na.omit)){
  s <- seq(from=-100, to=100, by = 0.0001)
  a <- pow(base,s,na.omit)
  result[i] <- s[which.min(abs(a-x[i]))]
    }
    else{
      return("can not calculate")

    }
    }
    else{
      return("x needs to be greater than or equal to 0")
    }
    }
    }
  }
  if (na.omit==TRUE){
    result <- result[!is.na(result)]
    return(result)
  }else{
  return(result)
  }
  }
    else{
  return("invalid input")
  }
}
