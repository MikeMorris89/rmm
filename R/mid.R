#' mid
#'
#' substring ofstring.
#' @param text string
#' @param start_num number of chars from the left to strat at
#' @param num_char number of chars from the start point
#' @return left substring
#' @export
mid = function(text, start_num, num_char) {
  substr(text, start_num, start_num + num_char - 1)
}
