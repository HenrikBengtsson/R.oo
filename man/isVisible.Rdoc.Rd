%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Rdoc.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Rdoc$isVisible}
\alias{Rdoc$isVisible}
\alias{isVisible.Rdoc}
\alias{Rdoc.isVisible}
\alias{isVisible,Rdoc-method}

\title{Checks if a member is visible given its modifiers}

\description{
  Checks if a member is visible given its modifiers.
}

\usage{
## Static method (use this):
## Rdoc$isVisible(modifiers, visibilities, ...)

## Don't use the below:
\method{isVisible}{Rdoc}(static, modifiers, visibilities, ...)
}

\arguments{
 \item{modifiers}{A \code{\link[base]{character}} string of modifiers.}
 \item{visibilities}{A \code{\link[base]{character}} string of visibility flags.}
 \item{...}{Not used.}
}

\value{
 Returns \code{\link[base:logical]{TRUE}} if the modifiers are equal or higher than the visibility
 flags, otherwise \code{\link[base:logical]{FALSE}}.
}

\author{Henrik Bengtsson}

\seealso{
  For more information see \code{\link{Rdoc}}.
}


\keyword{internal}
\keyword{methods}
\keyword{documentation}
