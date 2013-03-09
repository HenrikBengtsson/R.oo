%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{ll.Package}
\alias{ll.Package}
\alias{Package.ll}
\alias{ll,Package-method}

\title{Generates a list of informative properties of all members of the package}

\description{
  Generates a list of informative properties of all members of the package.

  If the package is not loaded, it will be loaded, the members will be
  retrieved and then the package will be unloaded again.
}

\usage{
\method{ll}{Package}(this, envir=pos.to.env(getPosition(this)), ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{data.frame}}.
}

\details{
  Note the difference from the default definition of \code{ll()} as
  inherited from the \code{\link[R.oo]{Object}} class. Here \code{ll()} has been
  redefined to list the members of the package, i.e. the members in
  the environment on search path that belongs to the package, whereas
  the original usage was to list the members of the Object. However,
  since the internal members of Package object is not of interest we
  decided on this definition instead.
}

\examples{
  \dontrun{ll(R.oo)}
}

\author{Henrik Bengtsson}

\seealso{
  For more information see \code{\link{Package}}.
}
\keyword{internal}
\keyword{methods}
