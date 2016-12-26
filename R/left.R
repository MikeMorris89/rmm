
#' left
#'
#' left of string.
#' @param text string
#' @param num_char number of chars from the left
#' @return left substring
#' @export
left = function(text, num_char) {
  substr(text, 1, num_char)
}
