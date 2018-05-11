#' Plot tree for a given tree move table
#'
#' Plot tree (barplot percentages) for a given tree move data frame.
#'
#' @param tr data frame containg tree move
#' @param main string for main title, default is ""
#' @return Barplot with white scores, draws percent and black scores.
#'
#' @examples
#' f <- system.file("extdata", "Kasparov.gz", package = "bigchess")
#' con <- gzfile(f,encoding = "latin1")
#' df <- read.pgn(con,quiet = TRUE,stat.moves = FALSE)
#' tr <- tree_move(subset(df,W1=="e4"),"B1")
#' plot_tree_move(tr,"1. e4 ... ?")
#' # Plot tree move openings in aggregated data
#' tr <- tree_move(FirstTwoMoves,"W1")
#' plot_tree_move(tr,paste0("1. ... ?\n",sum(FirstTwoMoves$Freq)," total games"))
#' @importFrom graphics barplot
#' @export
plot_tree_move <- function(tr,main = ""){
  rtr <- tr[rev(1:nrow(tr)),]
  barplot(as.table(t(rtr[,c("White_score","Draws_percent","Black_score")])),horiz = T,names.arg = paste0("(",rtr[,"N"],") ",rtr[,1]),las = 1,col = c("White","grey","black"),cex.names=.8,main = main)
}
