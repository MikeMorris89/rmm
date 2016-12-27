#' sep.cols.every.char
#'
#' Separate column in to one column for every character.
#' @param sc.data dataframe.
#' @param x column name in my.data to separate.
#' @param maxchar the maximum columns to split x into.
#' @return return a dataframe with x split by ever char
#' @export
sep.cols.every.char<-function(sc.data,x,maxchar){
  sc.data$tmpcol<-sc.data[,x]
  return(separate(sc.data,tmpcol, into = paste(x,'spl', 0:maxchar, sep = ""),sep = c(0:maxchar+1), extra = "merge", fill = "right", remove = TRUE)
  )
}
