%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getDocPath.Package}
\alias{getDocPath.Package}
\alias{Package.getDocPath}
\alias{getDocPath.Package}
\alias{getDocPath,Package-method}


\title{Gets the path to the accompanying documentation (doc/) directory of this package}

\description{
  Gets the path to the accompanying documentation (doc/) directory of this package.
}

\usage{\method{getDocPath}{Package}(this, ...)}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{character}} string.
}

\examples{
  print(list.files(getDocPath(R.oo)))   # explicit call, or
  print(list.files(R.oo$docPath))       # as a virtual field
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Package}}.
}
\keyword{internal}
\keyword{methods}
