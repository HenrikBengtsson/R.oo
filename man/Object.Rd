%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  050.Object.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Object}
\docType{class}
\alias{Object}


\title{The root class that every class must inherit from}

\description{
 R.oo\cr
 \bold{Class Object}\cr

 public class \bold{Object}\cr

 \code{Object} is the root class of all other classes. All classes
 \emph{must} extends this class, directly or indirectly, which means
 that they all will inherit the methods in this class.
}

\usage{
Object(core=NA, finalize=TRUE)
}

\arguments{
  \item{core}{The core value of each \emph{reference} referring to the
    Object. By default, this is just the smallest possible \R object, but
    there are situations where it is useful to have another kind of core,
    which is the case with the Class class.
    \emph{Note that this value belongs to the reference variable
    and not to the Object, which means it can not be referenced.}}
  \item{finalize}{If \code{\link[base:logical]{TRUE}}, method \code{\link[R.oo:finalize.Object]{*finalize}()} will
    be called on this Object when it is garbage collected.}
}

\section{Fields and Methods}{
 \bold{Methods:}\cr
\tabular{rll}{
 \tab \code{$} \tab  -\cr
 \tab \code{$<-} \tab  -\cr
 \tab \code{.DollarNames} \tab  -\cr
 \tab \code{.subset2Internal} \tab  -\cr
 \tab \code{[[} \tab  -\cr
 \tab \code{[[<-} \tab  -\cr
 \tab \code{as.character} \tab  -\cr
 \tab \code{attach} \tab  -\cr
 \tab \code{attachLocally} \tab  -\cr
 \tab \code{clearCache} \tab  -\cr
 \tab \code{clearLookupCache} \tab  -\cr
 \tab \code{clone} \tab  -\cr
 \tab \code{detach} \tab  -\cr
 \tab \code{equals} \tab  -\cr
 \tab \code{extend} \tab  -\cr
 \tab \code{finalize} \tab  -\cr
 \tab \code{getEnvironment} \tab  -\cr
 \tab \code{getFieldModifier} \tab  -\cr
 \tab \code{getFieldModifiers} \tab  -\cr
 \tab \code{getFields} \tab  -\cr
 \tab \code{getInstantiationTime} \tab  -\cr
 \tab \code{getInternalAddress} \tab  -\cr
 \tab \code{getStaticInstance} \tab  -\cr
 \tab \code{hasField} \tab  -\cr
 \tab \code{hashCode} \tab  -\cr
 \tab \code{isReferable} \tab  -\cr
 \tab \code{ll} \tab  -\cr
 \tab \code{load} \tab  -\cr
 \tab \code{names} \tab  -\cr
 \tab \code{newInstance} \tab  -\cr
 \tab \code{novirtual} \tab  -\cr
 \tab \code{objectSize} \tab  -\cr
 \tab \code{print} \tab  -\cr
 \tab \code{save} \tab  -\cr
 \tab \code{staticCode} \tab  -\cr
}



}

\section{Defining static fields}{
 To define a static field of an Object class, use a private field
 \code{<.field>} and then create a virtual field \code{<field>} by
 defining methods \code{get<Field>()} and \code{set<Field>()}.
 These methods should retrieve and assign the value of the field
 \code{<.field>} of the \emph{static} instance of the class.  The
 second example below shows how to do this.  The example modifies
 also the static field already in the constructor, which is something
 that otherwise may be tricky.
}

\examples{
 
#########################################################################
# Defines the class Person with private fields .name and .age, and
# with methods print(), getName(), setName(), getAge() and setAge().
#########################################################################
setConstructorS3("Person", function(name, age) {
  if (missing(name)) name <- NA
  if (missing(age))  age <- NA

  extend(Object(), "Person",
    .name=name,
    .age=age
  )
})


setMethodS3("as.character", "Person", function(this, ...) {
  paste(this$.name, "is", as.integer(this$.age), "years old.")
})

setMethodS3("equals", "Person", function(this, obj, ...) {
  ( identical(data.class(this), data.class(obj)) &&
    identical(this$getName(), obj$getName()) &&
    identical(this$getAge() , obj$getAge() )    )
})

setMethodS3("hashCode", "Person", function(this, ...) {
  # Get the hashCode() of the '.name' and the '.age' fields
  # using hashCode.default().
  hashCode(this$.name) * hashCode(this$.age)
})

setMethodS3("getName", "Person", function(this, ...) {
  this$.name
})

setMethodS3("setName", "Person", function(this, newName, ...) {
  throw("It is not possible to change the name of a Person.")
})

setMethodS3("getAge", "Person", function(this, ...) {
  this$.age
})

setMethodS3("setAge", "Person", function(this, newAge, ...) {
  if (!is.numeric(newAge))
    throw("Age must be numeric: ", newAge)
  if (newAge < 0)
    throw("Trying to set a negative age: ", newAge)
  this$.age <- newAge
})




#########################################################################
# Code demonstrating different properties of the Object class using
# the example class Person.
#########################################################################

# Create an object (instance of) the class Person.
p1 <- Person("Dalai Lama", 67)

# 'p1' is an Object of class Person.
print(data.class(p1))  # "Person"

# Prints information about the Person object.
print(p1)            # "Dalai Lama is 67 years old."

# or equivalent (except that no generic method has to exist):

p1$print()           # "Dalai Lama is 67 years old."

# Shows that no generic method is required if the \$ operator is used:
print(p1$getName())  # "Dalai Lama"

# The following will call p1$getName() since there exists a get-()
# method for the 'name' property.
print(p1$name)       # "Dalai Lama"

# and equivalent when using the [[ operator.
print(p1[["name"]])  # "Dalai Lama"

# The following shows that p1$setName(68) is called, simply because
# there exists a set-() method for the 'name' property.
p1$age <- 68         # Will call p1$setAge(68)

# Shows that the age of the Person has been updated:
print(p1)            # "Dalai Lama is 68 years old."

# If there would not exists such a set-() method or field a new
# field would be created:
p1$country <- "Tibet"

# Lists all (non-private) members of the Person object:
print(ll(p1))

# which gives
#      member class      mode    typeof length  dim bytes
#   1 country  NULL character character      1 NULL    44

# The following will call p1$setName("Lalai Dama") which will
# throw an exception saying one can not change the name of
# a Person.
tryCatch(p1$name <- "Lalai Dama", error=print)

# The following will call p1$setAge(-4) which will throw an
# exception saying that the age must be a non-negative number.
tryCatch(p1$age <- -100, error=print)

# Attaches Object 'p1' to the search path.
attach(p1)

# Accesses the newly created field 'country'.
print(country)       # "Tibet"

# Detaches Object 'p1' from the search path. Note that all
# modifications to 'country' are lost.
country <- "Sweden"
detach(p1)
print(p1$country)    # "Tibet"


# Saves the Person object to a tempory file.
filename <- tempfile("R.methodsS3.example")
save(p1, filename)

# Deletes the object
rm(p1)

# Loads an Object (of "unknown" class) from file using the
# static method load() of class Object.
obj <- Object$load(filename)

# Prints information about the new Object.
print(obj)

# Lists all (non-private) members of the new Object.
print(ll(obj))


 
######################################################################
# Example illustrating how to "emulate" static fields using virtual
# fields, i.e. get- and set-methods.  Here we use a private static
# field '.count' of the static class instance 'MyClass', i.e.
# MyClass$.count.  Then we define a virtual field 'count' via method
# getCount() to access this static field.  This will make all queries
# for 'count' of any object to use the static field instead.  In the
# same way is assignment controlled via the setCount() method.  A
# side effect of this way of coding is that all MyClass instances will
# also have the private field '.count' (set to zero except for the
# static field that is).
######################################################################
setConstructorS3("MyClass", function(...) {
  # Create an instance (the static class instance included)
  this <- extend(Object(), "MyClass",
    .count = 0
  )

  # In order for a static field to be updated in the
  # constructor it has to be done after extend().
  this$count <- this$count + 1

  # Return the object
  this
})


setMethodS3("as.character", "MyClass", function(this, ...) {
  paste(class(this)[1], ": Number of instances: ", this$count, sep="")
})


# Get virtual field 'count', e.g. obj$count.
setMethodS3("getCount", "MyClass", function(this, ...) {
  MyClass$.count
})


# Set virtual field 'count', e.g. obj$count <- value.
setMethodS3("setCount", "MyClass", function(this, value, ...) {
  MyClass$.count <- value
})


# Create four instances of class 'MyClass'
obj <- lapply(1:4, MyClass)
print(obj)
print(MyClass$count)
print(obj[[1]]$count)

stopifnot(obj[[1]]$count == length(obj))
stopifnot(MyClass$count == length(obj))

}

\author{Henrik Bengtsson}

\references{
 [1] H. Bengtsson, \emph{The R.oo package - Object-Oriented Programming with References Using Standard R Code}, In Kurt Hornik, Friedrich Leisch and Achim Zeileis, editors, Proceedings of the 3rd International Workshop on Distributed Statistical Computing (DSC 2003), March 20-22, Vienna, Austria. \url{https://www.r-project.org/conferences/DSC-2003/Proceedings/}
 \cr
}

\keyword{programming}
\keyword{methods}
\keyword{classes}
