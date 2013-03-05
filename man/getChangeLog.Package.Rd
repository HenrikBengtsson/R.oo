%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getChangeLog.Package}
\alias{getChangeLog.Package}
\alias{Package.getChangeLog}
\alias{getChangeLog,Package-method}
\alias{Package.getNews}
\alias{getNews.Package}
\alias{getNews,Package-method}

\alias{Package.getHistory}
\alias{getHistory.Package}
\alias{getHistory,Package-method}


\title{Gets the change log of this package}

\description{
  Gets the change log of this package, that is, (by default) the \code{NEWS} (then the
  \code{HISTORY} and \code{ChangeLog}) file, which should is expected to
  be located in the root directory of the package,
  i.e. \code{\link[R.oo:getPath.Package]{*getPath}()}.
}

\usage{
\method{getChangeLog}{Package}(this, filenames=c("NEWS", "HISTORY", "ChangeLog"), newline="
", ...)
}

\arguments{
  \item{filenames}{A \code{\link[base]{character}} \code{\link[base]{vector}} of (non-case sensitive) filenames
    to be searched for.}
  \item{newline}{The \code{\link[base]{character}} string to collapse lines in the file.}
  \item{...}{Not used.}
}

\value{
  Returns the complete contents of the change log file as a
  \code{\link[base]{character}} string. If not found, \code{\link[base]{NULL}} is returned.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Package}}.
}
\keyword{internal}
\keyword{methods}
