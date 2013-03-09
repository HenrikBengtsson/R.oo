%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  compileRdoc.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{compileRdoc}
\alias{compileRdoc}


\title{Compiles the Rdoc help comments in a package}

\description{
 Compiles the Rdoc help comments in a package by parsing the source code files and writes Rd help files.
}

\usage{
compileRdoc(pkgname=NULL, ..., verbose=TRUE)
}

\arguments{
  \item{pkgname}{A \code{\link[base]{character}} string specifying the package name.
    If \code{\link[base]{NULL}}, the package name is inferred from the DESCRIPTION file
    that is automatically search for in the subdirectories.}
  \item{...}{Additional arguments passed to \code{Rdoc\$compile()}.}
  \item{verbose}{If \code{\link[base:logical]{TRUE}}, verbose output is printed, otherwise not.}
}

\value{
  Returns nothing.
}

\details{
  To compile all Rdoc comments in a package 'PkgA' that is located
  under the current working directory (e.g. \code{PkgA/R/*.R}) from
  the system command line, do:
  \preformatted{
    Rscript -e R.oo::compileRdoc()
  }
}

\author{Henrik Bengtsson}

\seealso{
  See the \code{\link{Rdoc}} class.
}




\keyword{documentation}
\keyword{IO}
\keyword{internal}
