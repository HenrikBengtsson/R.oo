%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  050.Object.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{DOLLAR< -.Object}
\alias{$<-.Object}
\alias{Object.$<-}
\alias{$<-,Object-method}
\alias{Object.[[<-}
\alias{[[<-.Object}
\alias{[[<-,Object-method}


\title{Makes the fields and methods of an Object assignable via the \$<- and the [[<- operator}

\description{
  Makes the fields and methods of an Object assignable via the \code{$<-}
  operator. This method is never called explicitly, but through an indirect
  usage of the \code{$<-} operator, e.g. \code{obj$name <- "foo"}.

  1) This method will first search for a \code{set<Name>()} method, e.g. if
  name has the value \code{"age"}, a \code{setAge()} will be looked for.
  If such a method exists it will be called with the Object as the first
  argument and \code{value} as the second, e.g. \code{setAge(this, value)}.

  A \code{set<Name>()} is only looked for if \code{<name>} is a non-private
  field. A private field is a name \emph{beginning} with a \code{.} (period).
  The rational for this naming convention is to be consistent
  with how \code{\link[base]{ls}}() works, which will not list such members
  by default.
  Moreover, excluding private fields for the search of a \code{set<Name>()}
  will decrease the overhead for such field.

  2) If no such method exists the \code{value} will be assigned to an
     existing field named \code{name}, if such exists.

  3) Otherwise, the value will be assigned to a static field,
     if such exists.

  4) In all other case, the value is assigned to a new field.

  Because any \code{set<Name>()} is called first, it is possible to
  \emph{encapsulate} (hide away) fields with certain names or to put
  restrictions to what values can be assigned to them.
}

\usage{
  \method{$}{Object}(this, name) <- value
  \method{[[}{Object}(this, name) <- value
}

\arguments{
  \item{name}{The name of the \code{set<Name>()} method or the name of
    the field to be assigned the new value.}
  \item{value}{The value to be assigned.}
}

\value{
 Returns itself, i.e. \code{this}, as all \code{$<-} methods must do.
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
