message("TESTING: Class...")

library("R.oo")

clazz <- Object
print(clazz)

print(as.character(clazz))

print(getKnownSubclasses(clazz))

print(isAbstract(clazz))
print(isPrivate(clazz))
print(isProtected(clazz))
print(isPublic(clazz))
print(isDeprecated(clazz))
print(isStatic(clazz))

obj <- newInstance(clazz)


message("TESTING: Class...DONE")
