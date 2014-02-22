
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
# Defining a class with a 'cached' fields
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
setConstructorS3("CachedObject", function(...) { 
  extend(Object(), "CachedObject",
    ...
  )
})

setMethodS3("as.character", "CachedObject", function(this, ...) { 
  s <- NextMethod("as.character", this, ...)
  s <- sprintf("%s RAM: %.2fkb.", s, objectSize(this)/1024)
  s
})


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
# Example of clearing a cache fields, reassigning it,
# and then clearing it again
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
obj <- CachedObject(a=1, b=1:10^5, "cached:c"=1:10^6)
print(obj)
print(ll(obj))

clearCache(obj, gc=TRUE)
print(obj)
print(ll(obj))


obj$c <- 1:10^6
print(obj)
print(ll(obj))

clearCache(obj, gc=TRUE)
print(obj)
print(ll(obj))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
# Clearing cached fields recursively and make sure it
# avoids race conditions due to circular dependences
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
objA <- CachedObject(a=2, "cached:c"=1:10^6, prev=NULL)
print(ll(objA))

objB <- CachedObject(a=2, "cached:c"=1:10^6, prev=objA)
print(ll(objB))

objC <- CachedObject(a=3, "cached:c"=1:10^6, prev=objB)
print(ll(objC))

objA$prev <- objC;

clearCache(objA, gc=TRUE)
print(ll(objA))
print(ll(objB))
print(ll(objC))

