#' write.xclip
#'
#' Write to xClip (Linux)
#' @param x object to put in clip
#' @param selection Default options "primary", "secondary", "clipboard"
#' @param ... write table parameters
#' @export
write.xclip <- function(x, selection=c("primary", "secondary", "clipboard"), ...) {
  if (!isTRUE(file.exists(Sys.which("xclip")[1L])))
      stop("Cannot find xclip")
      selection <- match.arg(selection)[1L]
      con <- pipe(paste0("xclip -i -selection ", selection), "w")
      on.exit(close(con))
      write.table(x, con, ...)
}

#' writeclipl
#'
#' Write to Clipboard (Linux)
#' @aliases wcl
#' @param x object to put in clip
#' @param ... write table parameters
#' @export
writeclipl <- function(x, ...) {
  write.xclip(x,"clipboard")
}

#' writeclipl
#'
#' Write to Clipboard (windows)
#' @aliases wcw
#' @param x object to put in clip
#' @param ... write table parameters
#' @export
writeclipw <- function() {
  return("not yet sorry...")
}

writeclipm <- function() {
  return("not yet sorry...")
}

#' writeclipm
#'
#' Write to Clipboard (mac)
#' @aliases wcm
#' @param x object to put in clip
#' @param ... write table parameters
#' @export
writeclipm <- function() {
return("not yet sorry...")
}

