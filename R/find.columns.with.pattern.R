#' find.columns.with.pattern
#'
#' Return column name when column contains pattern.
#' @param data dataframe to search
#' @param pattern pattern to grep
#' @return column names
#' @export
find.columns.with.pattern<-function(data,pattern){
  return(names(data)[which(
    apply(data,MARGIN=2,function(x){
      return(length(grep(pattern,x,ignore.case=TRUE))>0)
    })
  )]
  )
}
