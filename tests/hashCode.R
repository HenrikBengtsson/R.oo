library(R.oo)

message("hashCode() ...")

message("- NULL")

y <- hashCode(NULL)
print(y)
stopifnot(is.null(y))

message("- empty vectors")

y <- hashCode(character(0L))
print(y)
stopifnot(is.null(y))

y <- hashCode(integer(0L))
print(y)
stopifnot(is.null(y))

y <- hashCode(double(0L))
print(y)
stopifnot(is.null(y))

y <- hashCode(list())
print(y)
stopifnot(is.null(y))


message("- strings")

y <- hashCode("")
print(y)
stopifnot(
  is.integer(y),
  y == 0L
)

y <- hashCode(base::letters)
print(y)
stopifnot(
  is.integer(y),
  all(y == charToInt(base::letters))
)

y <- hashCode("abcdefghijklmno")
print(y)
stopifnot(
  is.integer(y),
  all(y == 469762048L)
)

y <- hashCode("abcdefghij")
print(y)
stopifnot(
  is.integer(y),
  all(y == -634317659L)
)


message("- integers")

y <- hashCode(1:10)
print(y)
stopifnot(
  is.integer(y),
  all(y == 1:10)
)

message("- doubles")

y <- hashCode(as.numeric(1:10))
print(y)
stopifnot(
  is.integer(y),
  all(y == 1:10)
)


message("- complex")

y <- hashCode(1:10 + 0.1)
print(y)
stopifnot(
  is.integer(y),
  all(y == 1:10)
)

message("- miscellaneous types")

y <- hashCode(list(0L))
print(y)
stopifnot(
  is.integer(y),
  y == 0L
)

y <- hashCode(as.list(1:10))
print(y)
stopifnot(
  is.integer(y),
  all(y == 1:10)
)


message("hashCode() ... DONE")
