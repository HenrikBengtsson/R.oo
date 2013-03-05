%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  ll.default.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{ll}
\alias{ll.default}
\alias{ll}

\title{Generates a list of informative properties of all members of an environment}

\description{
  Generates a list of informative properties of all members of an environment.
}

\usage{
\method{ll}{default}(pattern=".*", ..., private=FALSE, properties=getOption("R.oo::ll/properties"), sortBy=NULL, envir=parent.frame())
}

\arguments{
  \item{pattern}{Regular expression pattern specifying which members to
   return. If \code{".*"}, all names are matched.}
  \item{...}{A named \code{\link[base]{vector}} of format \code{functionName=value}, where
   \code{functionName()} will be called on each member found. If the
   result matches the \code{value}, the member is returned, otherwise
   not.}
  \item{private}{If \code{\link[base:logical]{TRUE}}, also private members, i.e. members with
   a name starting with a \code{.} (period), will be listed, otherwise not.}
  \item{properties}{Names of properties to be returned. There must exist
   a \code{\link[base]{function}} with the same name, because it will be called. This way
   one can extract any type of property by defining new methods.}
  \item{sortBy}{Name or index of column (property) to be sorted by.
   If \code{\link[base]{NULL}}, the objects are listed in the order they are found.}
  \item{envir}{An \code{\link[base]{environment}}, a search path index or a name of a package
   to be scanned.}
}

\value{
 Returns a \code{\link[base]{data.frame}} containing information about all the members.
}

\section{Default properties returned}{
 It is possible to set the default value of argument \code{properties}
 by setting option \code{"R.oo::ll/properties"}, e.g.
 \code{options("R.oo::ll/properties"=c("data.class", "dimension"))}.
 If this option is not set when the package is loaded, it is set to
 \code{c("data.class", "dimension", "objectSize")}.
}

\examples{
  \dontrun{
   To list all objects in .GlobalEnv:
   > ll()
   		     member data.class dimension objectSize
   1                *tmp*     Person         1         428
   2  as.character.Person   function      NULL        1208
   3              country  character         1          44
   4        equals.Person   function      NULL        2324
   5             filename  character         1          84
   6               getAge   function      NULL         372
   7        getAge.Person   function      NULL         612
   8       getName.Person   function      NULL         628
   9      hashCode.Person   function      NULL        1196
   10        last.warning       list         1         192
   11                 obj     Person         1         428
   12              Person      Class      NULL        2292
   13              setAge   function      NULL         372
   14       setAge.Person   function      NULL        2088
   15             setName   function      NULL         372
   16      setName.Person   function      NULL         760
   17   staticCode.Person   function      NULL        2372

   To list all functions in the methods package:
   ll(mode="function", envir="methods")

   To list all numeric and character object in the base package:
   ll(mode=c("numeric", "character"), envir="base")

   To list all objects in the base package greater than 40kb:
   subset(ll(envir="base"), objectSize > 40000)
  }
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link{ll.Object}}().
}

\keyword{utilities}

