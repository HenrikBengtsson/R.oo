%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  throw.default.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{throw}
\alias{throw.default}
\alias{throw}

\title{Throws an Exception}

\description{
 Throws an exception similar to stop(), but with support for exception
 classes. The first argument (\code{object}) is by default pasted together
 with other arguments (\code{...}) and with seperator \code{sep=""}.
 For instance, to throw an exception, write

   \code{throw("Value out of range: ", value, ".")}.

 which is short for

   \code{throw(Exception("Value out of range: ", value, "."))}.

 Note that \code{throw()} can be defined for specific classes, which can
 then be caught (or not) using \code{\link[base:conditions]{tryCatch}()}.
}

\usage{\method{throw}{default}(...)}

\arguments{
  \item{...}{One or several strings that are concatenated and collapsed
      into on message string.}
}

\value{
  Returns nothing.
}

\examples{
  rbern <- function(n=1, prob=1/2) {
    if (prob < 0 || prob > 1)
      throw("Argument 'prob' is out of range: ", prob)
    rbinom(n=n, size=1, prob=prob)
  }

  rbern(10, 0.4)
  # [1] 0 1 0 0 0 1 0 0 1 0
  tryCatch(rbern(10, 10*0.4),
    error=function(ex) {}
  )
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  See the \code{\link{Exception}} class for more detailed information.
}


\keyword{error}
