%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Rdoc.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{compile.Rdoc}
\alias{compile.Rdoc}
\alias{Rdoc.compile}
\alias{compile.Rdoc}
\alias{compile,Rdoc-method}


\title{Compile source code files containing Rdoc comments into Rd files}

\description{
  Compile source code files containing Rdoc comments into Rd files.

 \emph{Note, the class and methods to be compiled have to be loaded into
 \R by for instance \code{library()} or  \code{source()} before calling
 this method.}
}

\synopsis{compile.Rdoc(this, filename=".*[.]R$", destPath=getManPath(this), showDeprecated=FALSE, addTimestamp=TRUE, verbose=FALSE, source=FALSE, check=TRUE, debug=FALSE, ...)}
\usage{Rdoc$compile(filename=".*[.]R$", destPath=getManPath(this), showDeprecated=FALSE, addTimestamp=TRUE, verbose=FALSE, source=FALSE, check=TRUE, debug=FALSE, ...)}

\arguments{
  \item{filename}{The pathname or filename pattern of the Rdoc files to be
    compiled.}
  \item{destPath}{The path where the generated Rd files should be saved.}
  \item{showDeprecated}{If \code{\link[base:logical]{TRUE}}, Rd files are generated for deprecated
    objects too, otherwise not.}
  \item{addTimestamp}{If \code{\link[base:logical]{TRUE}}, a date and time stamp is added to the
    Rd header comments.  This timestamp might be confusing for version
    control systems, which is why it can be turned off with \code{\link[base:logical]{FALSE}}.}
  \item{source}{If \code{\link[base:logical]{TRUE}}, the Rdoc files will be \code{source()}'ed first.
    This work of course only for Rdoc files that are R source files.}
  \item{verbose}{If \code{\link[base:logical]{TRUE}}, detailed compilation information is printed.}
  \item{debug}{If \code{\link[base:logical]{TRUE}}, extra debug information is printed.}
  \item{...}{Not used.}
}

\value{
 Returns nothing.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Rdoc}}.
}


\keyword{internal}
\keyword{methods}
\keyword{documentation}
