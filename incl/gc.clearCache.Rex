setConstructorS3("CachedObject", function(...) { 
  extend(Object(), "CachedObject",
    ...
  )
})

setMethodS3("as.character", function(this, ...) { 
  s <- NextMethod("as.character", this, ...)
  s <- sprintf("%s RAM: %.2fkb.", s, objectSize(this)/1024)
  s
}

obj <- CachedObject(a=1, b=1:10^5, "cached:c"=1:10^6)
print(obj)

gc(obj)
print(obj)

