% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/browse_opening.R
\name{browse_opening}
\alias{browse_opening}
\title{Browse opening}
\usage{
browse_opening(df, movetext = "")
}
\arguments{
\item{df}{data frame with imported chess games from read.pgn() function.}

\item{movetext}{movetext string, default is "" means browse first move for White. The standard English values are required: pawn = "P" (often not used), knight = "N", bishop = "B", rook = "R", queen = "Q", and king = "K".}
}
\value{
Data frame from tree_move function and plot from plot_tree_move function.
}
\description{
Browse opening winning and drawing percentages by table and barplot
}
\examples{
f <- system.file("extdata", "Kasparov.gz", package = "bigchess")
con <- gzfile(f,encoding = "latin1")
df <- read.pgn(con,quiet = TRUE,ignore.other.games = TRUE,stat.moves = FALSE)
# Analyze best Kasparov openings:
bo <- browse_opening(subset(df,grepl("Kasparov",White)))
# Analyze 'best' answer to Kasparov Ruy Lopez:
bo <- browse_opening(subset(df,grepl("Kasparov",White)),"1.e4 e5 2.Nf3 Nc6 3.Bb5")
# Analyze best answer to "1.e4 e5 2.Nf3" in aggregated data
browse_opening(FirstTwoMoves,"1.e4 e5 2.Nf3")
}
