#' right
#'
#' right of string.
#' @param text string
#' @param num_char number of chars from the right
#' @return right substring
#' @export
right = function(text, num_char) {
  substr(text, nchar(text) - (num_char-1), nchar(text))
}
