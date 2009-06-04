%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getContents.Package}
\alias{getContents.Package}
\alias{Package.getContents}
\alias{getContents.Package}
\alias{getContents,Package-method}


\title{Gets the contents of this package}

\description{
  Gets the contents of this package, i.e. the parsed \code{CONTENTS} file.
}

\usage{\method{getContents}{Package}(this, fields=NULL, ...)}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{data.frame}}.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link[base]{read.dcf}}().
  For more information see \code{\link{Package}}.
}
\keyword{internal}
\keyword{methods}
