setConstructorS3("CachedObject", function(...) { 
  extend(Object(), "CachedObject",
    ...
  )
})

setMethodS3("as.character", "CachedObject", function(this, ...) { 
  s <- NextMethod("as.character", this, ...)
  s <- sprintf("%s. RAM: %.2fkb.", s, objectSize(this)/1024)
  s
})

obj <- CachedObject(a=1, b=1:10^5, "cached:c"=1:10^6)
print(ll(obj))
print(obj) # [1] "CachedObject: 0x02466E28. RAM: 4297.16kb."

gc(obj)         # Clear all cached fields 
print(ll(obj))
print(obj) # [1] "CachedObject: 0x02466E28. RAM: 391.05kb."

