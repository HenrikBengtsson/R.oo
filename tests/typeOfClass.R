message("TESTING: typeOfClass()...")

library("R.oo")

type <- typeOfClass(NULL)
print(type)
stopifnot(is.na(type))

type <- typeOfClass(Object)
print(type)
stopifnot(type == "S3-Object")

type <- typeOfClass("Object")
print(type)
stopifnot(type == "S3-Object")

library("methods")
type <- typeOfClass("data.frame")
print(type)
stopifnot(type == "S4")

clazz <- getClass("data.frame")
type <- typeOfClass(clazz)
print(type)
stopifnot(type == "S4")

message("TESTING: typeOfClass()...DONE")
