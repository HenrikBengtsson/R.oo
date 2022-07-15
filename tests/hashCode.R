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

x <- ""
y <- hashCode(x)
print(y)
stopifnot(
  is.integer(y),
  length(y) == length(x),
  !anyNA(y),
  y == 0L
)

x <- base::letters
y <- hashCode(x)
print(y)
stopifnot(
  is.integer(y),
  length(y) == length(x),
  !anyNA(y),
  all(y == charToInt(base::letters))
)

x <- "abcdefghij"
y <- hashCode(x)
print(y)
stopifnot(
  is.integer(y),
  length(y) == length(x),
  !anyNA(y),
  y == -634317659L
)

x <- "abcdefghijklmno"
y <- hashCode(x)
print(y)
stopifnot(
  is.integer(y),
  length(y) == length(x),
  !anyNA(y),
  y == 486644840L
)


## Assert no integer overflow => NA
for (n in seq_along(base::letters)) {
  x <- paste(base::letters[seq_len(n)], collapse = "")
  y <- hashCode(x)
  cat(sprintf("%s => %d\n", x, y))
  stopifnot(
    is.integer(y),
    length(y) == length(x),
    !anyNA(y)
  )
}

message("- integers")

x <- 1:10
y <- hashCode(x)
print(y)
stopifnot(
  is.integer(y),
  length(y) == length(x),
  !anyNA(y),
  all(y == x)
)

message("- doubles")

x <- as.numeric(1:10)
y <- hashCode(x)
print(y)
stopifnot(
  is.integer(y),
  length(y) == length(x),
  !anyNA(y),
  all(y == as.integer(x))
)


message("- complex")

x <- 1:10 + 0.1
y <- hashCode(x)
print(y)
stopifnot(
  is.integer(y),
  length(y) == length(x),
  !anyNA(y),
  all(y == 1:10)
)

message("- miscellaneous types")

x <- list(0L)
y <- hashCode(x)
print(y)
stopifnot(
  is.integer(y),
  length(y) == length(x),
  !anyNA(y),
  y == 0L
)

x <- as.list(1:10)
y <- hashCode(x)
print(y)
stopifnot(
  is.integer(y),
  length(y) == length(x),
  !anyNA(y),
  all(y == 1:10)
)


message("hashCode() ... DONE")
