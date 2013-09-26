assertPackages <- function(loaded=c("R.methodsS3", "R.oo")) {
  s <- sessionInfo()
  s$R.version <- NULL;
  s$platform <- "";
  s$locale <- "";
  cat("----------------------------------")
  print(s)
  cat("----------------------------------\n\n")
  stopifnot(!any(sprintf("package:%s", loaded) %in% search()))
}

R.oo::setConstructorS3("MyClass", function(a=1:10) {
  R.oo::extend(R.oo::Object(), "MyClass", a=a)
})

# Create an object with a finalizer
x <- MyClass()

assertPackages()

# Remove 'x' so that it will be finalized below
rm(x)
gc()

assertPackages()
