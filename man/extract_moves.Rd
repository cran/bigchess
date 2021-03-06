% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_moves.R
\name{extract_moves}
\alias{extract_moves}
\title{Extract first N moves}
\usage{
extract_moves(movetext, N = 10, last.move = T)
}
\arguments{
\item{movetext}{movetext string (or string vector). The standard English values are required: pawn = "P" (often not used), knight = "N", bishop = "B", rook = "R", queen = "Q", and king = "K".}

\item{N}{integer (default 10) determines how many first N moves will be extracted. Default is 10, should be greater than 0.}

\item{last.move}{boolean (default TRUE) indicating whether to calculate the last move}
}
\value{
Data frame containing first N moves for white and for black, named as W1, B1, W2 and so on, up to WN and BN (where N is input argument). If N is greater than total moves number then NA's generated. Column complete.movetext flag is indicating if movetext string begin with "1.'move'".
}
\description{
Extract first N moves from pgn movetext into data frame
}
\examples{
extract_moves("1. e4 e5 2. Nf3 Nf5 3. d5 ",N = 3)
# e4 e5 Nf3 Nf5 d5 NA TRUE
extract_moves("1. e4 e5 2. Nf3 Nf5 3. d5 ",N = 3, last.move = TRUE)
# e4 e5 Nf3 Nf5 d5 NA d5 TRUE
}
