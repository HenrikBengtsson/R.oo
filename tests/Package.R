message("TESTING: Package...")

library("R.oo")

# By defining .onAttach() as follows in zzz.R for a package, an
# instance of class Package with the same name as the package will
# be made available on the search path. More over, the code below
# will also inform the user that the package has been loaded:
#
#  > library(R.oo)
#  R.oo v0.52 (2003/04/13) was successfully loaded.
#
.onAttach <- function(libname, pkgname) {
  pkg <- Package(pkgname)
  assign(pkgname, pkg, pos=getPosition(pkg))
  cat(getName(pkg), " v", getVersion(pkg), " (", getDate(pkg), ")",
    " was successfully loaded.\n", sep="")
}

# The Package class works for any packages, loaded or not.

# Some information about the base package
pkg <- Package("base")
print(pkg)
# [1] "Package: base v3.6.2 is loaded (pos=14).  Title: The R Base Package.
# The official webpage is NA and the maintainer is R Core Team <R-core@
# r-project.org>.  The package is installed in /usr/lib/R/library/base/.
# License: Part of R 3.6.2.  Description: Base R functions.  Type 
# showNews(base) for package history, and ?base for help."
print(list.files(Package("base")$dataPath))

# Some information about the R.oo package
print(R.oo::R.oo)
# [1] "Package: R.oo v1.23.0-9000 .  Title: R Object-Oriented Programming 
# with or without References.  The official webpage is https://github.com/
# HenrikBengtsson/R.oo and the maintainer is Henrik Bengtsson.  The package
# is installed in /home/alice/R/x86_64-pc-linux-gnu-library/3.6/R.oo/.
# License: LGPL (>= 2.1).  Description: Methods and classes for object-
# oriented programming in R with or without references.  Large effort has
# been made on making definition of methods as simple as possible with a 
# minimum of maintenance for package developers.  The package has been 
# developed since 2001 and is now considered very stable.  This is a 
# cross-platform package implemented in pure R that defines standard S3
# classes without any tricks.  Type showNews(R.oo) for package history,
# and ?R.oo for help."

pkg <- Package("R.oo")
classes <- getClasses(pkg)
print(classes)
stopifnot(all(c("Object", "Class", "Interface", "Exception", "Package") %in% classes))

pkg <- Package("R.oo")
res <- showDescriptionFile(pkg, pager=function(...) TRUE)
stopifnot(isTRUE(res))
res <- showNews(pkg, pager=function(...) TRUE)
stopifnot(isTRUE(res))
res <- showChangeLog(pkg, pager=function(...) TRUE)
stopifnot(isTRUE(res))
res <- showHistory(pkg, pager=function(...) TRUE)
stopifnot(isTRUE(res))


res <- try(Package("Non-Existing-Package"), silent=TRUE)
stopifnot(inherits(res, "try-error"))

message("TESTING: Package...DONE")
