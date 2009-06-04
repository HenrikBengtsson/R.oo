
#########################################################################
# Defines the class Person with private fields .name and .age, and
# with methods print(), getName(), setName(), getAge() and setAge().
#########################################################################
setConstructorS3("Person", function(name, age) {
  if (missing(name)) name <- NA;
  if (missing(age))  age <- NA;

  extend(Object(), "Person", 
    .name=name, 
    .age=age
  )
})


setMethodS3("as.character", "Person", function(this, ...) {
  paste(this$.name, "is", as.integer(this$.age), "years old.");
})

setMethodS3("equals", "Person", function(this, obj, ...) {
  ( identical(data.class(this), data.class(obj)) &&
    identical(this$getName(), obj$getName()) &&
    identical(this$getAge() , obj$getAge() )    );
})

setMethodS3("hashCode", "Person", function(this, ...) {
  # Get the hashCode() of the '.name' and the '.age' fields
  # using hashCode.default().
  hashCode(this$.name) * hashCode(this$.age);
})

setMethodS3("getName", "Person", function(this, ...) {
  this$.name;
})

setMethodS3("setName", "Person", function(this, newName, ...) {
  throw("It is not possible to change the name of a Person.");
})

setMethodS3("getAge", "Person", function(this, ...) {
  this$.age;
})

setMethodS3("setAge", "Person", function(this, newAge, ...) {
  if (!is.numeric(newAge))
    throw("Age must be numeric: ", newAge);
  if (newAge < 0)
    throw("Trying to set a negative age: ", newAge);
  this$.age <- newAge;
})




#########################################################################
# Code demonstrating different properties of the Object class using
# the example class Person.
#########################################################################

# Create an object (instance of) the class Person.
p1 <- Person("Dalai Lama", 67)

# 'p1' is an Object of class Person.
print(data.class(p1))  # "Person"

# Prints information about the Person object.
print(p1)            # "Dalai Lama is 67 years old."

# or equivalent (except that no generic method has to exist):

p1$print()           # "Dalai Lama is 67 years old."

# Shows that no generic method is required if the \$ operator is used:
print(p1$getName())  # "Dalai Lama"

# The following will call p1$getName() since there exists a get-() 
# method for the 'name' property.
print(p1$name)       # "Dalai Lama"

# and equivalent when using the [[ operator.
print(p1[["name"]])  # "Dalai Lama"

# The following shows that p1$setName(68) is called, simply because
# there exists a set-() method for the 'name' property.
p1$age <- 68         # Will call p1$setAge(68)

# Shows that the age of the Person has been updated:
print(p1)            # "Dalai Lama is 68 years old."

# If there would not exists such a set-() method or field a new
# field would be created:
p1$country <- "Tibet"

# Lists all (non-private) members of the Person object:
print(ll(p1))

# which gives
#      member class      mode    typeof length  dim bytes
#   1 country  NULL character character      1 NULL    44

# The following will call p1$setName("Lalai Dama") which will
# throw an exception saying one can not change the name of 
# a Person.
tryCatch(p1$name <- "Lalai Dama", error=print)

# The following will call p1$setAge(-4) which will throw an
# exception saying that the age must be a non-negative number.
tryCatch(p1$age <- -100, error=print)

# Attaches Object 'p1' to the search path.
attach(p1)

# Accesses the newly created field 'country'.
print(country)       # "Tibet"

# Detaches Object 'p1' from the search path. Note that all
# modifications to 'country' are lost.
country <- "Sweden"
detach(p1)
print(p1$country)    # "Tibet"


# Saves the Person object to a tempory file.
filename <- tempfile("R.methodsS3.example")
save(p1, filename)

# Deletes the object
rm(p1)

# Loads an Object (of "unknown" class) from file using the
# static method load() of class Object.
obj <- Object$load(filename)

# Prints information about the new Object.
print(obj)

# Lists all (non-private) members of the new Object.
print(ll(obj))
