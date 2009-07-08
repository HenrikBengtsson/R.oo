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
  To get started, see:
  \enumerate{
    \item \code{\link{Object}} - Root class providing support for reference
        variables. Any class inheriting from this class supports
        reference variables.
  }
}

\section{Further readings}{
  For a detailed introduction to the package see [1].
  To define static fields, see help on \code{\link{Object}}.
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
\keyword{package}
