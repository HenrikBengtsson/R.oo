###########################################################################/**
# @RdocDefault ll
#
# @title "Generates a list of informative properties of all members of an environment"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{pattern}{Regular expression pattern specifying which members to
#    return. If \code{".*"}, all names are matched.}
#   \item{...}{A named @vector of format \code{functionName=value}, where
#    \code{functionName()} will be called on each member found. If the
#    result matches the \code{value}, the member is returned, otherwise
#    not.}
#   \item{private}{If @TRUE, also private members, i.e. members with
#    a name starting with a @. (period), will be listed, otherwise not.}
#   \item{properties}{Names of properties to be returned. There must exist
#    a @function with the same name, because it will be called. This way
#    one can extract any type of property by defining new methods.}
#   \item{sortBy}{Name or index of column (property) to be sorted by.
#    If @NULL, the objects are listed in the order they are found.}
#   \item{decreasing}{A @logical indiciating whether the sorting should
#    be done in increasing or decreasing order.}
#   \item{envir}{An @environment, a search path index or a name of a package
#    to be scanned.}
# }
#
# \value{
#  Returns a @data.frame containing information about all the members.
# }
#
# \section{Default properties returned}{
#  It is possible to set the default value of argument \code{properties}
#  by setting option \code{"R.oo::ll/properties"}, e.g.
#  \code{options("R.oo::ll/properties"=c("data.class", "dimension"))}.
#  If this option is not set when the package is loaded, it is set to
#  \code{c("data.class", "dimension", "objectSize")}.
# }
#
# \examples{
#   \dontrun{
#    To list all objects in .GlobalEnv:
#    > ll()
#    		     member data.class dimension objectSize
#    1                *tmp*     Person         1         428
#    2  as.character.Person   function      NULL        1208
#    3              country  character         1          44
#    4        equals.Person   function      NULL        2324
#    5             filename  character         1          84
#    6               getAge   function      NULL         372
#    7        getAge.Person   function      NULL         612
#    8       getName.Person   function      NULL         628
#    9      hashCode.Person   function      NULL        1196
#    10        last.warning       list         1         192
#    11                 obj     Person         1         428
#    12              Person      Class      NULL        2292
#    13              setAge   function      NULL         372
#    14       setAge.Person   function      NULL        2088
#    15             setName   function      NULL         372
#    16      setName.Person   function      NULL         760
#    17   staticCode.Person   function      NULL        2372
#
#    To list all functions in the methods package:
#    ll(mode="function", envir="methods")
#
#    To list all numeric and character object in the base package:
#    ll(mode=c("numeric", "character"), envir="base")
#
#    To list all objects in the base package greater than 40kb:
#    subset(ll(envir="base"), objectSize > 40000)
#   }
# }
#
# @author
#
# \seealso{
#   @see "utils::ls.str" and @see "ll.Object".
# }
#
# \keyword{utilities}
#*/###########################################################################
setMethodS3("ll", "default", function(pattern=".*", ..., private=FALSE, properties=getOption("R.oo::ll/properties", c("data.class", "dimension", "objectSize")), sortBy=NULL, decreasing=FALSE, envir=parent.frame()) {
  # AD HOC: Workaround to make sure property functions can be found.
  # This is because they are currently search for via the global
  # environment. /HB 2013-07-11
  require("R.oo") || throw("Package not loaded: R.oo");

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'envir':
  if (is.numeric(envir)) {
    envir <- as.environment(envir);
  } else if (is.character(envir)) {
    search <- gsub("^package:", "", search());
    pos <- which(search == envir);
    envir <- as.environment(pos);
  }

  members <- ls(envir=envir, all.names=private);

  # Any members at all?
  if (length(members) == 0L)
    return(data.frame());


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Keep members whose names match the pattern
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (!is.null(pattern)) {
    matches <- regexpr(pattern, members);
    members <- members[matches != -1L];
    if (length(members) == 0L)
      return(data.frame());
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Filter out members that to not match the search criteria according to "...".
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  args <- list(...);
  if (length(args) > 0L) {
    # Precreate a function to filter out members to be returned
    names <- names(args);
    expr <- NULL;
    for (kk in seq_along(args)) {
      value <- args[[kk]];
      if (is.null(value)) {
        e <- substitute(is.null(fcn(..object)), list(fcn=as.name(names[kk])));
      } else {
        e <- substitute(is.element(fcn(..object), value),
                        list(fcn=as.name(names[kk]), value=value));
      }
      if (is.null(expr)) {
        expr <- e;
      } else {
        expr <- substitute(expr && e, list(expr=expr, e=e));
      }
    } # for (kk ...)

#    expr <- substitute(filter <- function(name) {
#      eval(substitute(expr, list(..object=as.name(name))), envir=envir)
#    }, list(expr=expr, envir=envir));
    # Now, create the filter() function
#    eval(expr);

    # Replaces the above construct.
    filter <- eval(substitute({
      function(name) {
        ..object <- get(name, envir=envir);
        eval(expr, envir=envir)
      }
    }, list(expr=expr)));

    # Filter out members
    keep <- c();
    for (member in members) {
      # Keep the member or not?
      if (filter(member))
  	keep <- c(keep, member);
    }
    if (length(keep) == 0L)
      return(data.frame());
    members <- keep;
  }

  if (length(properties) == 0L || identical(properties, ""))
    return(data.frame(member=members));


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Generate a data frame row by row where each row contains the name of the
  # member and the properties as character strings.
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Precreate a function returning a row in the resulting data frame
  expr <- expression();
  for (property in properties) {
    e <- substitute({
      ..exp <- substitute(propertyFcn(object),
              list(propertyFcn=as.name(property), object=..object));
      ..value <- eval(..exp, envir=globalenv());
  	  if (is.null(..value)) {
  	    ..value <- "NULL";
  	  } else if (is.vector(..value) && length(..value) > 1L) {
  	    ..value <- sprintf("c(%s)", paste(..value, collapse=","));
  	  } else if (is.list(..value)) {
  	    ..value <- unlist(..value);
      }
  	  if (length(..value) > 0L) {
  	    ..value <- ..value[1L];
      }
    }, list(property=property));
    expr <- substitute({expr; e; ..row <- cbind(..row, ..value);},
                                             list(expr=expr,e=e));
  }

  df <- NULL;
  for (member in members) {
    if (is.element(member, c("..."))) {
      dfRow <- c(member, rep(NA_character_, times=length(properties)));
      dfRow <- as.list(dfRow);
    } else {
      rowExpr <- substitute({
        ..row <- list(name);
        ..object <- get(name, envir=envir);
        expr;
      }, list(name=member, member=as.name(member), expr=expr));
      dfRow <- eval(rowExpr);
    }

    if (is.null(df)) {
      df <- dfRow;
    } else {
      for (kk in seq_along(df)) {
        df[[kk]] <- c(df[[kk]], dfRow[[kk]]);
      }
    }
  }
  attributes(df) <- NULL;
  names(df) <- c("member", properties);
  df <- as.data.frame(df);

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Sort data frame?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (!is.null(sortBy)) {
    if (is.numeric(sortBy))
      pos <- sortBy
    else
      pos <- pmatch(sortBy, colnames(df));
    if (is.na(pos) || pos > ncol(df))
      throw("The column to sort by does not exist: ", sortBy);

    by <- df[,pos];

    # We know that the first column always contains character strings...
    if (pos > 1L) {
      sortBy <- colnames(df)[pos];

      # Figure out the data type of the sort column
      dummy <- eval(substitute(property(2), list(property=as.name(sortBy))));
      mode(by) <- mode(dummy);
    }

    # Finally, sort the result table
    df <- df[order(by, decreasing=decreasing),];
  }

  as.data.frame(df);
}) # ll.default()
