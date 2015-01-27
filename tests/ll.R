message("TESTING: objectSize()...")

library("R.oo")

## Create some objects in the current environment
a <- 1:100
env <- new.env()
env$b <- letters[1:10]

## List the content of evironments
x <- ll(envir=env)
print(x)

## Empty environment
x <- ll(envir=new.env())
print(x)

## search() path environment
x <- ll(envir="R.oo")
str(x)

## Filter by name pattern
x <- ll(envir="R.oo", pattern="^throw.*")
print(x)

x <- ll(envir="R.oo", pattern="^NonExistingName$")
print(x)

## List all functions
x <- ll(envir="R.oo", mode="function")
str(x)





message("TESTING: objectSize()...DONE")
