%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  040.setConstructorS3.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{setConstructorS3}
\alias{setConstructorS3.default}
\alias{setConstructorS3}

\title{Defines a class in S3/UseMethod style}

\description{
 Defines a class in R.oo/S3 style.
 What this function currently does is simply creating a constructor
 function for the class.
}

\usage{\method{setConstructorS3}{default}(name, definition, private=FALSE, protected=FALSE, export=TRUE, static=FALSE, abstract=FALSE, trial=FALSE, deprecated=FALSE, envir=parent.frame(), enforceRCC=TRUE, ...)}

\arguments{
  \item{name}{The name of the class.}
  \item{definition}{The constructor defintion. \emph{Note: The constructor
    must be able to be called with no arguments, i.e. use default values
    for all arguments or make sure you use \code{missing()} or similar!}}
  \item{static}{If \code{\link[base:logical]{TRUE}} this class is defined to be static,
     otherwise not. Currently this has no effect expect as an indicator.}
  \item{abstract}{If \code{\link[base:logical]{TRUE}} this class is defined to be abstract,
     otherwise not. Currently this has no effect expect as an indicator.}
  \item{private}{If \code{\link[base:logical]{TRUE}} this class is defined to be private.}
  \item{protected}{If \code{\link[base:logical]{TRUE}} this class is defined to be protected.}
  \item{export}{A \code{\link[base]{logical}} setting attribute \code{"export"}.}
  \item{trial}{If \code{\link[base:logical]{TRUE}} this class is defined to be a trial class,
     otherwise not. A trial class is a class that is introduced to be
     tried out and it might be modified, replaced or even removed in a
     future release. Some people prefer to call trial versions, beta
     version. Currently this has no effect expect as an indicator.}
  \item{deprecated}{If \code{\link[base:logical]{TRUE}} this class is defined to be deprecated,
     otherwise not. Currently this has no effect expect as an indicator.}
  \item{envir}{The environment for where the class (constructor function)
     should be stored.}
  \item{enforceRCC}{If \code{\link[base:logical]{TRUE}}, only class names following the R Coding
     Convention is accepted. If the RCC is violated an RccViolationException
     is thrown.}
  \item{...}{Not used.}

  Note: If a constructor is not declared to be private nor protected, it
  will be declared to be public.
}

\section{A constructor must be callable without arguments}{
  The requirement that a constructor function should be callable without
  arguments (e.g. \code{MyConstructor()}) is because that call is used
  to create the static instance of a class.  The reason for this is that
  a static instance of the class is created automatically when the
  constructor is called \emph{the first time} (only), that is,
  when the first of object of that class is created.
  All classes have to have a static instance.

  To make a constructor callable without arguments, one can either make
  sure all arguments have default values or one can test for missing
  arguments using \code{missing()}.
  For instance the following defintion is \emph{not} correct:
  \code{setConstructorS3("Foo", function(x) extend(Object(), "Foo", x=x))}
  whereas this one is
  \code{setConstructorS3("Foo", function(x=NA) extend(Object(), "Foo", x=x))}
}

\section{Code validation}{
 If argument \code{enforceRCC} is \code{\link[base:logical]{TRUE}},
 the class name is validated so it starts with a letter and it
 also gives a \code{\link[base]{warning}} if its first letter is \emph{not} captial. The
 reason for this is to enforce a naming convention that names classes
 with upper-case initial letters and methods with lower-case initial
 letters (this is also the case in for instance Java).
}

\examples{\dontrun{For a complete example see help(Object).}}

\seealso{
  To define a method see \code{\link[R.methodsS3]{setMethodS3}}.
  For information about the R Coding Conventions, see
  \code{\link{RccViolationException}}.
  For a thorough example of how to use this method see \code{\link{Object}}.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\keyword{programming}
\keyword{methods}

