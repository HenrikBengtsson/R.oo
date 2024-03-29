%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  050.Object.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{DOLLAR.Object}
\alias{$.Object}
\alias{Object.$}
\alias{$,Object-method}
\alias{Object.[[}
\alias{[[.Object}
\alias{[[,Object-method}


\title{Makes the fields and methods of an Object accessible via the $ and the [[ operator}

\description{
  Makes the fields and methods of an Object accessible via the \code{$}
  operator. This method is never called explicitly, but through an indirect
  usage of the \code{$} operator, e.g. \code{obj$name} or
  \code{obj$getValue()}.

  1) This method will first search for a \code{get<Name>()} method, e.g. if
  name has the value \code{"age"}, a \code{getAge()} will be looked for.
  If such a method exists it will be called with the Object as the first
  and only argument, e.g. \code{getAge(this)}.

  A \code{get<Name>()} is only looked for if \code{<name>} is not a private
  field. A private field is a name \emph{beginning} with a \code{.}
  (period). The rational for this naming convention is to be consistent
  with how \code{\link[base]{ls}}() works, which will not list such members
  by default.

  2) If no such method exists, first then, this method will look a field in
  the Object can has the name \code{name}.

  3) If such neither exists, a method with name \code{name} will be
  searched for and returned.

  4) Otherwise, a static field will be looked for.

  5) If no fields or methods are found at all, \code{\link[base]{NULL}} is returned.
}

\usage{
  \method{$}{Object}(this, name)
  \method{[[}{Object}(this, name, exact=TRUE)
}

\arguments{
  \item{name}{The name of the field or method to be accessed.}
}

\value{
 Returns the value of a field or a method (\code{\link[base]{function}}).
 If no such field or method exists, \code{\link[base]{NULL}} is returned.
}

\examples{\dontrun{For a complete example see help(Object).}}

\author{Henrik Bengtsson}

\seealso{
  For more information see \code{\link{Object}}.
}

\keyword{programming}
\keyword{methods}
\keyword{internal}
\keyword{methods}
