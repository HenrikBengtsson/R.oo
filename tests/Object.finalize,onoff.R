library("R.methodsS3")
library("R.oo")

finalized <- NULL

name <- NULL
nextName <- function() {
  if (is.null(name)) return(letters[1L])
  letters[which(letters == name) + 1L]
}

setMethodS3("finalize", "Foo", function(this, ...) {
  cat(sprintf("Finalizing %s()...\n", class(this)[1L]));
  name <- unclass(this);
  cat(sprintf("  Value: %s\n", name));
  finalized <<- c(finalized, name);
  cat(sprintf("Finalizing %s()...done\n", class(this)[1L]));
})


setConstructorS3("Foo", function(..., ...finalize=NA) {
  extend(Object(...), "Foo", ...finalize=...finalize)
})

# Default
x <- Foo(name <- nextName())
rm(list="x"); gc()
stopifnot(is.element(name, finalized))

# Default (explicit)
x <- Foo(name <- nextName(), finalize=TRUE, ...finalize=NA)
rm(list="x"); gc()
stopifnot(is.element(name, finalized))

# Disable
x <- Foo(name <- nextName(), finalize=FALSE, ...finalize=FALSE)
rm(list="x"); gc()
stopifnot(!is.element(name, finalized))

# Disable (forced)
x <- Foo(name <- nextName(), finalize=TRUE, ...finalize=FALSE)
rm(list="x"); gc()
stopifnot(!is.element(name, finalized))

# Enable (forced)
x <- Foo(name <- nextName(), finalize=FALSE, ...finalize=TRUE)
rm(list="x"); gc()
stopifnot(is.element(name, finalized))

print(finalized)

# Finalize upon exit
options("R.oo::Object/finalizeOnExit"=TRUE)
y <- Foo(name <- "OnExit")
