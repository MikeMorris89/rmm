#' is.empty
#'
#' is value empty.
#' @param value object to check length
#' @return True if length > 0
#' @export
is.empty<-function(value){
  return(length(value)>0)
}
