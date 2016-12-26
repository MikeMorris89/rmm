#' review.missing
#'
#' Review dataframe for missing values
#' @aliases remiss
#' @param data dataframe
#' @return output with summary information about all of the fields in data
#' @export
review.missing<-function(data)
{
  return(
    list(
      lbl("View All NA"),
      list(sapply(data, function(x) sum(is.na(x)))),
      lbl("Empty Strings"),
      list(sapply(data[, sapply(data, class) == 'character'], function(x) sum(x==""))),
      lbl("Na Numerics"),
      list(sapply(data[, sapply(data, class) == 'numeric'], function(x) sum(is.na(x)))),
      lbl("Factors Summaries"),
      list(summary(data[, sapply(data, class) == 'factor']))
    )
  )
}
