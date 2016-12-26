#' index_Score
#'
#' Pick 2 points randomly on the stick at the same time
#' @return 1 or 0
#' @export
index_Score <- function(){
  # Picking 2 points randomly on the stick at the same time
  x <- runif(n = 2, min = 0, max = 1)
  a <- min(x) # first point
  b <- max(x) # second point
  # pieces of the stick with their respective length
  pieces <- c(a, b-a, 1-b)
  cond1 <- sum(pieces[c(1,2)]) > pieces[3] # condition # 1
  cond2 <- sum(pieces[c(1,3)]) > pieces[2] # condition # 2
  cond3 <- sum(pieces[c(3,2)]) > pieces[1] # condition # 3
  combine_conds <- ifelse(cond1 & cond2 & cond3, 1, 0) # if all 3 conditions are satisfied
  return(combine_conds)
}
