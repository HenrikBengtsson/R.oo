%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  ASCII.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{charToInt}
\alias{charToInt.default}
\alias{charToInt}

\title{Converts a vector of ASCII characters into a vector of integers}

\description{
  Converts a \code{\link[base]{vector}} of ASCII \code{\link[base]{character}}s to a equal length vector of ASCII
  \code{\link[base]{integer}}s.
}

\usage{
\method{charToInt}{default}(ch, ...)
}

\arguments{
  \item{ch}{A \code{\link[base]{character}} \code{\link[base]{vector}}.}
  \item{...}{Not used.}
}

\value{
  Returns an ASCII \code{\link[base]{character}} \code{\link[base]{vector}}.
}

\author{Henrik Bengtsson}

\examples{
  i <- charToInt(unlist(strsplit("Hello world!", split=NULL)))
  # Gives: 72 101 108 108 111  32 119 111 114 108 100  33
  ch <- intToChar(c(72,101,108,108,111,32,119,111,114,108,100,33))
  # Gives: "H" "e" "l" "l" "o" " " "w" "o" "r" "l" "d" "!"
}

\seealso{
  \code{\link{intToChar}}()
  \code{\link[base]{utf8Conversion}}.
  \code{\link[base]{rawConversion}}
}



\keyword{character}
\keyword{internal}
