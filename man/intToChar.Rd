%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  ASCII.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{intToChar}
\alias{intToChar.default}
\alias{intToChar}

\title{Converts a vector of integers into a vector of ASCII characters}

\description{
  Converts a vector of ASCII integers to a equal length vector of ASCII
  characters. To make sure that all values in the input vector are in
  the range [0,255], the input vector is taken modulo 256.
}

\usage{
\method{intToChar}{default}(i, ...)
}

\arguments{
  \item{i}{An \code{\link[base]{integer}} \code{\link[base]{vector}}.}
  \item{...}{Not used.}
}

\value{
  Returns a ASCII \code{\link[base]{integer}} \code{\link[base]{vector}}.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\examples{
  i <- charToInt(unlist(strsplit("Hello world!", split=NULL)))
  # Gives: 72 101 108 108 111  32 119 111 114 108 100  33
  ch <- intToChar(c(72,101,108,108,111,32,119,111,114,108,100,33))
  # Gives: "H" "e" "l" "l" "o" " " "w" "o" "r" "l" "d" "!"
}

\seealso{
  \code{\link[base]{utf8Conversion}}.
  \code{\link{charToInt}}()
}


\keyword{character}
