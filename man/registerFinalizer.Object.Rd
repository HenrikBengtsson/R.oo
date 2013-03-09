%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  050.Object.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{registerFinalizer.Object}
\alias{registerFinalizer.Object}
\alias{Object.registerFinalizer}
\alias{registerFinalizer,Object-method}

\title{Registers a finalizer hook for the object}

\description{
 Registers a finalizer hook for the object.
 The finalizer hook calls \code{\link[R.oo:finalize.Object]{*finalize}()} on the \code{\link{Object}} when
 it is garbage collected.
 This method is only intended to be called inside the constructor, if
 at all.
}

\usage{
\method{registerFinalizer}{Object}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
 Returns nothing.
}

\author{Henrik Bengtsson}

\seealso{
  Internally, \code{\link[base]{reg.finalizer}}() is used.
  For more information see \code{\link{Object}}.
}



\keyword{internal}
\keyword{methods}
\keyword{programming}
