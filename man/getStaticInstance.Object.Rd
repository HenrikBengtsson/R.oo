%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  050.Object.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getStaticInstance.Object}
\alias{getStaticInstance.Object}
\alias{Object.getStaticInstance}
\alias{getStaticInstance.Object}
\alias{getStaticInstance,Object-method}


\title{Gets the static instance of this objects class}

\description{
  Gets the static instance of this objects class.
}

\usage{\method{getStaticInstance}{Object}(this, ...)}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns a reference to an \code{\link[R.oo]{Object}}.
}

\examples{
  ex <- Exception("Oops!")
  obj <- getStaticInstance(ex)
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Object}}.
}

\keyword{programming}
\keyword{methods}
\keyword{internal}
\keyword{methods}
