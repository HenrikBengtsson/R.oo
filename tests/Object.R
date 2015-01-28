message("TESTING: Object...")

library("R.oo")

obj <- Object()
print(obj)

obj <- Object(42L)
print(obj)
stopifnot(obj == 42L)

obj$a <- 1:99
print(obj)

fields <- getFields(obj)
print(fields)

hasA <- hasField(obj, "a")
print(hasA)
stopifnot(hasA)

value <- obj$a
str(value)
stopifnot(identical(value, 1:99))

obj$a <- 1:100
print(obj)

value <- obj[["a"]]
str(value)
stopifnot(identical(value, 1:100))

size <- objectSize(obj)
print(size)

ref <- isReferable(obj)
print(ref)
stopifnot(isTRUE(ref))

time <- getInstantiationTime(obj)
print(time)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Attach and detach
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
res <- attach(obj)
print(res)
stopifnot(exists("a", mode="integer"))
str(a)

res <- detach(obj)
print(res)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Class
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
obj2 <- newInstance(obj, 43L)
print(obj2)
stopifnot(obj2 == 43L)


hash <- hashCode(obj)
print(hash)
stopifnot(length(hash) == 1L)

neq <- equals(obj, 1)
print(neq)
stopifnot(!neq)

eq <- equals(obj, obj)
print(eq)
stopifnot(eq)

obj3 <- clone(obj)
print(obj3)
stopifnot(!identical(obj3, obj))
stopifnot(all.equal(obj3, obj))


message("TESTING: Object...DONE")
