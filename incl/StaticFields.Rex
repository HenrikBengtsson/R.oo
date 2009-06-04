
######################################################################
# Example illustrating how to "emulate" static fields using virtual
# fields, i.e. get- and set-methods.  Here we use a private static 
# field '.count' of the static class instance 'MyClass', i.e. 
# MyClass$.count.  Then we define a virtual field 'count' via method
# getCount() to access this static field.  This will make all queries
# for 'count' of any object to use the static field instead.  In the
# same way is assignment controlled via the setCount() method.  A 
# side effect of this way of coding is that all MyClass instances will
# also have the private field '.count' (set to zero except for the
# static field that is).
######################################################################
setConstructorS3("MyClass", function(...) {
  # Create an instance (the static class instance included)
  this <- extend(Object(), "MyClass",
    .count = 0
  )

  # In order for a static field to be updated in the 
  # constructor it has to be done after extend().
  this$count <- this$count + 1;

  # Return the object
  this;
})


setMethodS3("as.character", "MyClass", function(this, ...) {
  paste(class(this)[1], ": Number of instances: ", this$count, sep="");
})


# Get virtual field 'count', e.g. obj$count.
setMethodS3("getCount", "MyClass", function(this, ...) {
  MyClass$.count;
})


# Set virtual field 'count', e.g. obj$count <- value.
setMethodS3("setCount", "MyClass", function(this, value, ...) {
  MyClass$.count <- value;
})


# Create four instances of class 'MyClass'
obj <- lapply(1:4, MyClass)
print(obj)
print(MyClass$count)
print(obj[[1]]$count)

stopifnot(obj[[1]]$count == length(obj))
stopifnot(MyClass$count == length(obj))
