%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getClassNames.Package}
\alias{getClassNames.Package}
\alias{Package.getClassNames}
\alias{getClassNames.Package}
\alias{getClassNames,Package-method}

\alias{Package.getClasses}
\alias{getClasses.Package}
\alias{getClasses,Package-method}


\title{Gets all classes of a package}

\description{
  Gets all classes of a package.
}

\usage{\method{getClassNames}{Package}(this, ...)}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{character}} \code{\link[base]{vector}} of class names.
}

\examples{
  pkg <- Package("R.oo")
  print(getClassNames(pkg))
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Package}}.
}
\keyword{internal}
\keyword{methods}
