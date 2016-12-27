#' my.rmse
#'
#' root mean squared error
#' @param prediction predicted value
#' @param response true value
#' @return sqrt(mean((prediction-truth)^2))
#' @export
my.rmse<-function(prediction,response){
  if(class(levels(prediction))=="character" && length(levels(prediction))==2)
  {
    my.result<-sqrt(mean((unclass(prediction)-unclass(response))^2))
  }else{
    my.result<-sqrt(mean((prediction-response)^2))
  }
  return(my.result)
}
