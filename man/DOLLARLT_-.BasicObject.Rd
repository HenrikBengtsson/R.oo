%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  BasicObject.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{DOLLAR< -.BasicObject}
\alias{$<-.BasicObject}
\alias{BasicObject.$<-}
\alias{$<-,BasicObject-method}
\alias{BasicObject.[[<-}
\alias{[[<-.BasicObject}
\alias{[[<-,BasicObject-method}


\title{Makes the fields and methods of an BasicObject assignable via the \$<- and the [[<- operator}

\description{
 Makes the fields and methods of an BasicObject assignable via the \$<- and the [[<- operator.
}

\usage{
  \method{$}{BasicObject}(this, name) <- value
  \method{[[}{BasicObject}(this, name) <- value
}

\arguments{
  \item{name}{The name of the \preformatted{set<Name>()} method or the
    name of the field to be assigned the new value.}
  \item{value}{The value to be assigned.}
}

\value{
 Returns itself, i.e. \code{this}, as all \code{$<-} methods must do.
}

\author{Henrik Bengtsson}

\seealso{
  For more information see \code{\link{BasicObject}}.
}

\keyword{programming}
\keyword{methods}
\keyword{internal}
\keyword{methods}
