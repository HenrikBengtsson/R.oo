message("TESTING: equals()...")

library("R.oo")

print(equals(1,1))
print(equals(1,2))
a <- 1:100
b <- 1:100
print(equals(a,b))

message("TESTING: equals()...DONE")
