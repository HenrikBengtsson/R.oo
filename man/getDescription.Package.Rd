%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getDescription.Package}
\alias{getDescription.Package}
\alias{Package.getDescription}
\alias{getDescription.Package}
\alias{getDescription,Package-method}


\title{Gets the description of the package}

\description{
  Gets the description of the package. Not to be mixed up with \code{\link[R.oo:getDescriptionFile.Package]{*getDescriptionFile}()}.
}

\usage{\method{getDescription}{Package}(this, replaceNewlines=" ", ...)}

\arguments{
  \item{replaceNewlines}{If a \code{\link[base]{character}} string, all newline characters
    are replaced with this string. Otherwise not.}
  \item{...}{Not used.}
}

\value{
  A \code{\link[base]{character}} string.
}

\examples{
  pkg <- Package("base")
  print(getDescription(pkg))
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Package}}.
}
\keyword{internal}
\keyword{methods}
