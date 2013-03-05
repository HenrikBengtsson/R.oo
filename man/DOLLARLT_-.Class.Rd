%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  060.Class.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{DOLLAR< -.Class}
\alias{$<-.Class}
\alias{Class.$<-}
\alias{$<-,Class-method}
\alias{Class.[[<-}
\alias{[[<-.Class}
\alias{[[<-,Class-method}


\title{Makes the fields and methods of an Class assignable via the \$<- and the [[<- operator}

\usage{
  \method{$}{Class}(this, name) <- value
  \method{[[}{Class}(this, name) <- value
}

\description{
  Makes the fields and methods of an Class assignable via the \code{$<-}
  operator. This method is never called explicitly, but through an indirect
  usage of the \code{$<-} operator, e.g. \code{obj$name <- "foo"}.

  \enumerate{
    \item This method will first search for a \preformatted{set<Name>()}
    method, e.g. if name has the value \code{"age"}, a \code{setAge()} will
    be looked for. If such a method exists it will be called with the Class
    as the first argument and \code{value} as the second, e.g.
    \code{setAge(this, value)}.
    A \code{get<Name>()} is only looked for if \code{<name>} is not a
    private field. A private field is a name \emph{beginning} with a
    \code{.} (period). The rational for this naming convention is to be
    consistent with how \code{\link[base]{ls}()} works, which will not
    list such members  by default.

    \item If no such method exists it will assign the \code{value} to a
    (existing or a non-existing) field named \code{name}.
  }

  Because any \preformatted{set<Name>()} is called first, it is possible
  to \emph{encapsulate} (hide away) fields with certain names or to put
  restrictions to what values can be assigned to them.
}

\arguments{
  \item{name}{The name of the \preformatted{set<Name>()} method or the
    name of the field to be assigned the new value.}
  \item{value}{The value to be assigned.}
  \item{...}{Not used.}
}

\value{
 Returns itself, i.e. \code{this}, as all \code{$<-} methods must do.
}

\examples{\dontrun{For a complete example see help(Class).}}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Class}}.
}



\keyword{internal}
\keyword{methods}
\keyword{programming}
