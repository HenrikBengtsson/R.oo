%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  999.package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{R.oo-package}
\alias{R.oo-package}
\alias{R.oo}
\docType{package}

\title{Package R.oo}


\description{
 Methods and classes for object-oriented programming in R with or without references.  Large effort has been made on making definition of methods as simple as possible with a minimum of maintenance for package developers.  The package has been developed since 2001 and is now considered very stable.  This is a cross-platform package implemented in pure R that defines standard S3 classes without any tricks.

 Please note that the Rdoc syntax/grammar used to convert Rdoc comments
 in code into Rd files is not strictly defined and is modified by the
 need of the author. Ideally, there will be a well defined Rdoc language
 one day.
}

\section{Installation and updates}{
  To install this package do\cr

  \code{install.packages("R.oo")}

  To get the "devel" version, see \url{http://www.braju.com/R/}.
}

\section{Dependancies and other requirements}{
  This package requires a standard \R installation and
  the \pkg{R.methodsS3} package.
}

\section{To get started}{
  To get started,It is very useful to understand that:
  \enumerate{
  \item The \code{\link[R.methodsS3]{setMethodS3}}() function, which is
    defined in the \pkg{R.methodsS3} package (used to be part of
    \pkg{R.oo}), is nothing but a conveniency wrapper for setting
    up S3 methods, and automatically create an S3 generic
    function, if missing.  For more information, see the help of
    \pkg{R.methodsS3}.
  \item The \code{\link{Object}} class is a top-level "root" class
    that provides support for \emph{reference variables}.
    Any class inheriting from this class supports
    reference variables.
  \item The \code{\link{Object}} class is basically a wrapper around an
    \code{\link[base]{environment}}, which some additional accessors etc.  It is the
    environment data type that provides the "emulation" of
    reference variables - the Object class structure makes
    it easier to extends this class and adds some level of coding
    protection.  The Object class features is not intended for
    referencing individual elements of basic \R data types,
    but rather for the whole variable of such.
    For instance, you can reassign a whole matrix \code{X} part of
    the object this way, but you cannot reassign \code{X[1,1]}
    without creating a completely new copy.
  }
}

\section{Further readings}{
  For a detailed introduction to the package see [1] (part of the
  package distribution).
}

\section{How to cite this package}{
  Whenever using this package, please cite [1] as\cr

  \preformatted{@INPROCEEDINGS{BengtssonH_2003,
 author       = {Henrik Bengtsson},
 title        = {The {R.oo} package - Object-Oriented Programming
                 with References Using Standard {R} Code},
 booktitle    = {Proceedings of the 3rd International Workshop on
                 Distributed Statistical Computing (DSC 2003)},
 year         = {2003},
 editor       = {Kurt Hornik and Friedrich Leisch and Achim Zeileis},
 address      = {Vienna, Austria},
 month        = {March},
 issn         = {1609-395X},
 howpublished = {http://www.ci.tuwien.ac.at/Conferences/DSC-2003/},
}}
\emph{}

}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\section{License}{
  The releases of this package is licensed under
  LGPL version 2.1 or newer.
}

\references{
 [1] H. Bengtsson, \emph{The R.oo package - Object-Oriented Programming with References Using Standard R Code}, In Kurt Hornik, Friedrich Leisch and Achim Zeileis, editors, Proceedings of the 3rd International Workshop on Distributed Statistical Computing (DSC 2003), March 20-22, Vienna, Austria. \url{http://www.ci.tuwien.ac.at/Conferences/DSC-2003/Proceedings/}
 \cr
}

\seealso{
  People interested in \pkg{R.oo} may also be interested in
  packages \pkg{proto} and \pkg{mutatr}.
}
\keyword{package}
