%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{showChangeLog.Package}
\alias{showChangeLog.Package}
\alias{Package.showChangeLog}
\alias{showChangeLog,Package-method}
\alias{Package.showHistory}
\alias{showHistory.Package}
\alias{showHistory,Package-method}

\alias{Package.showNews}
\alias{showNews.Package}
\alias{showNews,Package-method}


\title{Show the change log of this package}

\description{
  Show the change log of this package.
  If the change log file does not exist, an exception is thrown.
}

\usage{
\method{showChangeLog}{Package}(this, filenames=c("NEWS", "HISTORY", "ChangeLog"), ...)
}

\arguments{
  \item{filenames}{A \code{\link[base]{character}} \code{\link[base]{vector}} of (non-case sensitive) filenames
    to be searched for.}
  \item{...}{Not used.}
}

\value{
  Returns nothing.
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link[R.oo:getChangeLog.Package]{*getChangeLog}()}.
  For more information see \code{\link{Package}}.
}
\keyword{internal}
\keyword{methods}
