library("R.oo")

pkg <- Package("datasets")
load(pkg)
print(isLoaded(pkg))
unload(pkg)
print(isLoaded(pkg))
