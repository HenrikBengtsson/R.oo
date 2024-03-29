###########################################################################/**
# @RdocDefault hashCode
#
# @title "Gets an integer hashcoded for R objects"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{object}{A @vector or @list of \R objects.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns a @vector of @integer's.
# }
#
# \details{
#   A @character string is converted into a hashcode following Java
#   conventions by
#    \code{s[1]*31^(n-1) + s[2]*31^(n-2) + ... + s[n]}
#   using integer arithmetic, where \code{s[i]} is the \code{i}:th character
#   of the string, \code{n} is the length of the string. The hash value of
#   the empty string is zero.
#
#   For all other types, \code{as.integer()} is called by default.
# }
#
# @author
#
# @keyword programming
# @keyword methods
# @keyword internal
#*/###########################################################################
setMethodS3("hashCode", "default", function(object, ...) {
  asInt.Java <- function(x) {
    Integer.MIN.VALUE <- -2147483648
    Integer.MAX.VALUE <-  2147483647
    Integer.RANGE <- Integer.MAX.VALUE-Integer.MIN.VALUE + 1
    x <- (x-Integer.MIN.VALUE) %% Integer.RANGE + Integer.MIN.VALUE
    as.integer(x)
  }
  
  hashCode <- c()
  for (obj in object) {
    if (is.character(obj)) {
      #  The hashcode for a character string is computed as
      #
      #    s[1]*31^(n-1) + s[2]*31^(n-2) + ... + s[n]
      #
      #  using int arithmetic, where s[i] is the i:th character of the
      #  string, n is the length of the string. The hash value of the
      #  empty string is zero.
      s <- obj
      n <- nchar(s)
      if (n == 0) {
        hashCode <- c(hashCode, as.integer(0))
      } else {
        s <- unlist(strsplit(as.character(s), NULL))
        s <- charToInt(s)
        hashC <- 0
        for (k in 1:n) {
  	  hashC <- 31 * hashC + s[k]
          hashC <- asInt.Java(hashC)
        }
        # Convert into range of Java int.
        hashCode <- c(hashCode, hashC)
      }
    } else {
      hashCode <- c(hashCode, as.integer(obj))
    }
  }
  hashCode
}) # hashCode.default()
