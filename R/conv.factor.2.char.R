#' conv.factor.2.char
#'
#' Convert factor columns to character columns.
#' @param df dataframe to run conversion on
#' @return dataframe with all factor columns converted to character.
#' @export
conv.factor.2.char<-function(df){
  df[sapply(df, is.factor)] <- lapply(df[sapply(df, is.factor)], as.character, drop = F)
  return(df)
}
