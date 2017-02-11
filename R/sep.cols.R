#' sep.cols
#'
#' Separate column by space.
#' @param my.data dataframe
#' @param x column name in my.data to separate
#' @return return a dataframe with x split by space
#' @export
sep.cols<-function(my.data,x){
  my.data$tmpcol<-my.data[,x]
  return(tidyr::separate(my.data,tmpcol, into = paste(x, 1:max(countSpaces(my.data[,x])), sep = ""), extra = "merge", fill = "right", remove = TRUE)
  )
}
