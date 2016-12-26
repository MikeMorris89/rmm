#' lbl
#'
#' add separators to labels
#' @param my.lbl text to reformat
#' @return formated output
#' @export
lbl<-function(my.lbl){
  return(list(
    line.break(),
    paste("#",my.lbl,sep=" "),
    line.break()
  ))
}
