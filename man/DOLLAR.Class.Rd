%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  060.Class.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{DOLLAR.Class}
\alias{$.Class}
\alias{Class.$}
\alias{$,Class-method}
\alias{Class.[[}
\alias{[[.Class}
\alias{[[,Class-method}


\title{Makes the fields and methods of an Class accessable via the \$ and the [[ operator}

\usage{
  \method{$}{Class}(this, name)
  \method{[[}{Class}(this, name)
}

\description{
  Makes the fields and methods of an Class accessable via the \code{$}
  operator. This method is never called explicitly, but through an indirect
  usage of the \code{$} operator, e.g. \code{obj$name} or
  \code{obj$getValue()}.

  \enumerate{
   \item This method will first search for a \code{get<Name>()} method,
   e.g. if name has the value \code{"age"}, a \code{getAge()} will be
   looked for. If such a method exists it will be called with the Class
   as the first and only argument, e.g. \code{getAge(this)}.
   A \code{get<Name>()} is only looked for if \code{<name>} is not a
   private field. A private field is a name \emph{beginning} with a
   \code{.} (period). The rational for this naming convention is to be
   consistent with how \code{\link[base]{ls}()} works, which will not list
   such members by default.

   \item If no such method exists, first then, this method will look a
   field in the Class can has the name \code{name}.

   \item If such neither exists, a method with name \code{name} will be
   searched for and returned.

   \item If no fields or methods are found at all, \code{\link[base]{NULL}} is returned.
  }
}

\arguments{
  \item{name}{The name of the field or method to be accessed.}
  \item{...}{Not used.}
}

\value{
 Returns the value of a field or a method (\code{\link[base]{function}}).
 If no such field or method exists, \code{\link[base]{NULL}} is returned.
}

\examples{\dontrun{For a complete example see help(Class).}}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Class}}.
}



\keyword{internal}
\keyword{methods}
\keyword{programming}
