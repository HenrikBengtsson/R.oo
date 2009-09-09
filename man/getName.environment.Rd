%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  getName.environment.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\name{getName.environment}
\alias{getName.environment}
\alias{getName.environment}


\title{Gets the name of an environment}

\description{
 Gets the name of an environment, e.g. \code{"R_GlobalEnv"} or \code{"0x01ddd060"}.
}

\usage{\method{getName}{environment}(env, ...)}

\arguments{
  \item{env}{An \code{\link[base]{environment}}.}
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{character}} string.
}

\examples{
  name <- getName(globalenv())
  print(name)
  stopifnot(identical(name, "R_GlobalEnv"))

  getName(new.env())
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link[base:environment]{environmentName}()}.
}

\keyword{programming}
\keyword{methods}
