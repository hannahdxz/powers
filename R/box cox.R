#' Box cox transformation
#'
#' This function perform box cox transformation.
#'
#' @param y The vector to be transformed.
#'
#' @param lambda1 The first parameter of the transformation, range from -5 to 5.
#'
#' @param lambda2 The second parameter of the transformation, lambda2 in introduced for negative
#' values of y, lambda2 is greater than -y.
#'
#' @param na.omit Whether or not to remove NAs, the default is FALSE.
#'
#' @return A vector that is the box cox transformation of \code{y}.
#'
#' @details
#' This function calculate the box cox transform of a vector.
#'
#'
#' Here are some reasons why putting a list in this section is excessive:
#' \itemize{
#'      \item This \code{box_cox} function is quite simple.
#'      \item The \code{box_cox} is used to transform non-normal dependent variables into a normal shape.
#' }
#'
#' @examples
#' box_cox(5:10,2,6)
#' box_cox(-5,3,2)
#' @export
#'
box_cox <- function(y, lambda1, lambda2, na.omit=FALSE){
  if (is.numeric(lambda1) && is.numeric(lambda2)&& is.numeric(y)){

  if(lambda1>=-5&&lambda1<=5){
  result <- rep(NA, length(y))
  for(i in 1:length(y)){
    if(is.na(y[i])){
      result[i] <- NA}
    else{

  if(y[i] >= 0){
    if (lambda1 != 0){
      result[i] <- (pow(y[i],lambda1,na.omit)-1)/lambda1}
    else{
      result[i] <- log(y[i])
    }
  } else{
    if (y[i]>-lambda2){
    if (lambda1 != 0){
      result[i] <- (pow((y[i]+lambda2),lambda1,na.omit)-1)/lambda1}
    else{
      result[i] <- log(y[i]+lambda2)
    }
    }

    else{
      return("invalid value of lambda2")
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
  else
    return("invalid value of lambda1")
  }
  else{
    return("invalid input")
  }
  }
