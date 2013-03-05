%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  050.Object.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{attach.Object}
\alias{attach.Object}
\alias{Object.attach}
\alias{attach,Object-method}

\title{Attaches an Object to the R search path}

\description{
 Attach the members of an Object to the \R search path.

 If trying to attach the same Object twice without detaching it inbetween,
 a \code{\link[base]{warning}} will be generated and nothing will be done.
}

\usage{
\method{attach}{Object}(this, private=FALSE, pos=2, ...)
}

\arguments{
  \item{private}{If \code{\link[base:logical]{TRUE}}, private fields will also be attached,
    otherwise not.}
  \item{pos}{The position at in search path where the Object should be
             inserted.}
  \item{...}{Not used.}
}

\value{
 Returns \code{\link[base:logical]{TRUE}} if the \code{\link[R.oo]{Object}} was attached, otherwise \code{\link[base:logical]{FALSE}}.
}

\examples{\dontrun{For a complete example see help(Object).}}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link[R.oo:detach.Object]{*detach}()} and \code{\link[base]{attach}}(), \code{\link[base]{detach}}().
  For more information see \code{\link{Object}}.
}

\keyword{programming}
\keyword{methods}
\keyword{internal}
\keyword{methods}
