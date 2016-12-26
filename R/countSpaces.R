#' countSpaces
#'
#' Count the number of spaces in a string
#' @param s string to count spaces
#' @return return the count of spaces
#' @export
countSpaces <- function(s) {
  sapply(gregexpr(" ", s), function(p) { sum(p>=0) } )
}

