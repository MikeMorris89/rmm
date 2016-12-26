#' ew
#'
#' Capture results Errors and Warnings.
#' @param ... pass operation to evaluate
#' @return list of res withCallingHandlers, err tryCatch error, warn tryCatch waring
#' @export
ew <- function(...) {
  warn <- err <- NULL
  res <- withCallingHandlers(
    tryCatch(..., error=function(e) {
      err <<- conditionMessage(e)
      NULL
    }), warning=function(w) {
      warn <<- append(warn, conditionMessage(w))
      invokeRestart("muffleWarning")
    })
  list(res, warn=warn, err=err)
}


