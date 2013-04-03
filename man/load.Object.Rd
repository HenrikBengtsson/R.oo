%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  050.Object.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Object$load}
\alias{Object$load}
\alias{load.Object}
\alias{Object.load}
\alias{load,Object-method}

\title{Static method to load an Object from a file or a connection}

\description{
  Static method to load an Object from a file or a connection, which previously have been saved using \code{save()} of
  class Object.
}

\usage{
## Static method (use this):
## Object$load(file, path=NULL, ...)

## Don't use the below:
\method{load}{Object}(static, file, path=NULL, ...)
}

\arguments{
 \item{file}{Filename or \code{\link[base:connections]{connection}} from where to read the Object.}
 \item{path}{The path where the file exists.}
  \item{...}{Not used.}
}

\value{
 Returns a reference to the loaded Object.
}

\details{
  Please note that no constructors are called when an Object is loaded
  and neither is any static class code called.
}

\section{Type control}{
  Typically this static method is called as \code{<Object>$load(...)}
  where \code{<Object>} is any Object class.  When an Object has been
  loaded, it is verified that it inherits from \code{<Object>}. If it
  does not, an exception is thrown.  Thus, \code{Object$load(...)} will
  load any Object, but \code{MyClass$load(...)} will only load an Object
  that inherits from MyClass.  If loaded object is not of correct class,
  an exception is thrown.
}

\section{Troubleshooting}{
  Due to a bug, likely in \R itself, one can not specify the \code{file}
  argument by its name, i.e. \code{Object$load(file="foo.RData")} will
  not work, but \code{Object$load("foo.RData")} work just fine.
}

\examples{\dontrun{For a complete example see help(Object).}}

\author{Henrik Bengtsson}

\seealso{
  \code{\link[R.oo:save.Object]{*save}()} and
  \code{\link[base]{save}}(), \code{\link[base]{load}}().
  For more information see \code{\link{Object}}.
}

\keyword{programming}
\keyword{methods}
\keyword{IO}
\keyword{internal}
\keyword{methods}
