%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  050.Object.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{detach.Object}
\alias{detach.Object}
\alias{Object.detach}
\alias{detach.Object}
\alias{detach,Object-method}


\title{Detach an Object from the R search path}

\description{
 Detach, from the \R search path, an Object that has previously been
 attached. If the Object was not attached, a \code{\link[base]{warning}} will be generated
 and nothing will be done.
}

\usage{\method{detach}{Object}(this, ...)}

\arguments{
  \item{...}{Not used.}
}

\value{
 Returns \code{\link[base:logical]{TRUE}} if the Object was detached, otherwise \code{\link[base:logical]{FALSE}}.
}

\examples{\dontrun{For a complete example see help(Object).}}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link[R.oo:attach.Object]{*attach}()} and \code{\link[base]{attach}}(), \code{\link[base]{detach}}().
  For more information see \code{\link{Object}}.
}

\keyword{programming}
\keyword{methods}
\keyword{internal}
\keyword{methods}
