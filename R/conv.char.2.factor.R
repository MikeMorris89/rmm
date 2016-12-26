#' conv.char.2.factor
#'
#' Convert character columns to factor columns.
#' @param df dataframe to run conversion on
#' @return dataframe with all character columns converted to factors.
#' @export
conv.char.2.factor<-function(df){
  df[sapply(df, is.character)] <- lapply(df[sapply(df, is.character)], as.factor, drop = F)
  return(df)
}
