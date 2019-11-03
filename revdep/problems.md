# affxparser

<details>

* Version: 1.58.0
* Source code: https://github.com/cran/affxparser
* URL: https://github.com/HenrikBengtsson/affxparser
* BugReports: https://github.com/HenrikBengtsson/affxparser/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 4

Run `revdep_details(,"affxparser")` for more info

</details>

## In both

*   checking compiled code ... WARNING
    ```
    ...
      Found ‘exit’, possibly from ‘exit’ (C)
        Objects: ‘fusion_sdk/util/Err.o’, ‘R_affx_clf_pgf_parser.o’
      Found ‘printf’, possibly from ‘printf’ (C)
        Object: ‘fusion_sdk/file/TsvFile/TsvFile.o’
      Found ‘putchar’, possibly from ‘putchar’ (C)
        Object: ‘fusion_sdk/file/TsvFile/TsvFile.o’
      Found ‘puts’, possibly from ‘printf’ (C), ‘puts’ (C)
        Object: ‘fusion_sdk/file/TsvFile/TsvFile.o’
      Found ‘rand’, possibly from ‘rand’ (C)
        Objects: ‘fusion_sdk/calvin_files/utils/src/AffymetrixGuid.o’,
          ‘fusion_sdk/util/Verbose.o’
      Found ‘srand’, possibly from ‘srand’ (C)
        Object: ‘fusion_sdk/calvin_files/utils/src/AffymetrixGuid.o’
      Found ‘stdout’, possibly from ‘stdout’ (C)
        Object: ‘fusion_sdk/util/Util.o’
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor use Fortran I/O
    nor system RNGs.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

*   checking for portable file names ... NOTE
    ```
    Found the following non-portable file paths:
      affxparser/src/fusion_sdk/calvin_files/writers/src/CalvinCHPQuantificationDetectionFileBufferWriter.cpp
      affxparser/src/fusion_sdk/calvin_files/writers/src/CalvinCHPQuantificationDetectionFileBufferWriter.h
    
    Tarballs are only required to store paths of up to 100 bytes and cannot
    store those of more than 256 bytes, with restrictions including to 100
    bytes for the final component.
    See section ‘Package structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 16.8Mb
      sub-directories of 1Mb or more:
        libs  16.0Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘affy’
    ```

# aroma.affymetrix

<details>

* Version: 3.2.0
* Source code: https://github.com/cran/aroma.affymetrix
* URL: https://www.aroma-project.org/, https://github.com/HenrikBengtsson/aroma.affymetrix
* BugReports: https://github.com/HenrikBengtsson/aroma.affymetrix/issues
* Date/Publication: 2019-06-23 06:00:14 UTC
* Number of recursive dependencies: 80

Run `revdep_details(,"aroma.affymetrix")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        R             2.3Mb
        help          1.1Mb
        testScripts   1.3Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Error in setGeneric("getX", function(object, type) standardGeneric("getX")) : 
      could not find function "setGeneric"
    ```

# aroma.core

<details>

* Version: 3.2.0
* Source code: https://github.com/cran/aroma.core
* URL: https://github.com/HenrikBengtsson/aroma.core, https://www.aroma-project.org/
* BugReports: https://github.com/HenrikBengtsson/aroma.core/issues
* Date/Publication: 2019-06-17 18:20:03 UTC
* Number of recursive dependencies: 46

Run `revdep_details(,"aroma.core")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'sfit', 'expectile', 'HaarSeg', 'mpcbs'
    ```

*   checking dependencies in R code ... NOTE
    ```
    Error in setGeneric("image", function(x, ...) standardGeneric("image")) : 
      could not find function "setGeneric"
    ```

# aroma.light

<details>

* Version: 3.16.0
* Source code: https://github.com/cran/aroma.light
* URL: https://github.com/HenrikBengtsson/aroma.light, https://www.aroma-project.org
* BugReports: https://github.com/HenrikBengtsson/aroma.light/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 6

Run `revdep_details(,"aroma.light")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      inst/rsp/.rspPlugins
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# DATforDCEMRI

<details>

* Version: 0.55
* Source code: https://github.com/cran/DATforDCEMRI
* Date/Publication: 2013-03-20 07:49:01
* Number of recursive dependencies: 10

Run `revdep_details(,"DATforDCEMRI")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'xtable', 'akima', 'R.oo', 'R.methodsS3', 'matlab', 'lattice',
      'locfit', 'grid'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Deprecated license: CC BY-NC-SA 3.0
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls to packages already attached by Depends:
      ‘R.methodsS3’ ‘R.oo’ ‘akima’ ‘graphics’ ‘grid’ ‘lattice’ ‘locfit’
      ‘matlab’ ‘xtable’
      Please remove these calls from your code.
    'library' or 'require' call to ‘R.matlab’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Packages in Depends field not imported from:
      ‘R.methodsS3’ ‘R.oo’ ‘akima’ ‘grid’ ‘lattice’ ‘locfit’ ‘matlab’
      ‘xtable’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    DAT : DATrun: no visible global function definition for ‘graphics.off’
    DAT : DATrun: no visible global function definition for ‘pdf’
    DAT : DATrun: no visible global function definition for ‘layout’
    DAT : DATrun: no visible global function definition for ‘par’
    DAT : DATrun: no visible global function definition for ‘plot’
    DAT : DATrun: no visible global function definition for ‘frame’
    DAT : DATrun: no visible global function definition for ‘lines’
    DAT : DATrun: no visible global function definition for ‘dev.off’
    DAT : DATrun: no visible global function definition for ‘writeMat’
    DAT: no visible binding for global variable ‘DAT.simData’
    Undefined global functions or variables:
      DAT.simData colorRampPalette dev.new dev.off dev.set frame
      graphics.off image layout lines locator locfit.robust median palette
      par pdf plot preplot rot90 text writeMat
    Consider adding
      importFrom("grDevices", "colorRampPalette", "dev.new", "dev.off",
                 "dev.set", "graphics.off", "palette", "pdf")
      importFrom("graphics", "frame", "image", "layout", "lines", "locator",
                 "par", "plot", "text")
      importFrom("stats", "median", "preplot")
    to your NAMESPACE file.
    ```

# IdMappingAnalysis

<details>

* Version: 1.30.0
* Source code: https://github.com/cran/IdMappingAnalysis
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 9

Run `revdep_details(,"IdMappingAnalysis")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Biobase’
      All declared Imports should be used.
    Packages in Depends field not imported from:
      ‘R.oo’ ‘rChoiceDialogs’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking S3 generic/method consistency ... NOTE
    ```
    Found the following apparent S3 methods exported but not registered:
      boxplot.JointUniquePairs getName.IdMapBase primaryKey.IdMapBase
    See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
    manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    Undefined global functions or variables:
      Object abline as axis bmp box boxplot cor density dev.copy dev.cur
      dev.new dev.next dev.off dev.set dnorm ecdf equals extend
      flush.console getName jpeg legend lines loess mtext new
      packageDescription par pdf plot plot.new plot.window png points
      rbinom rect rgamma rnorm rselect.list rug strheight strwidth tail
      text throw tiff title
    Consider adding
      importFrom("grDevices", "bmp", "dev.copy", "dev.cur", "dev.new",
                 "dev.next", "dev.off", "dev.set", "jpeg", "pdf", "png",
                 "tiff")
      importFrom("graphics", "abline", "axis", "box", "boxplot", "legend",
                 "lines", "mtext", "par", "plot", "plot.new", "plot.window",
                 "points", "rect", "rug", "strheight", "strwidth", "text",
                 "title")
      importFrom("methods", "as", "new")
      importFrom("stats", "cor", "density", "dnorm", "ecdf", "loess",
                 "rbinom", "rgamma", "rnorm")
      importFrom("utils", "flush.console", "packageDescription", "tail")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

*   checking Rd files ... NOTE
    ```
    prepare_Rd: DataFilter.Rd:41-42: Dropping empty section \arguments
    prepare_Rd: Display.Rd:41-42: Dropping empty section \arguments
    prepare_Rd: Misc.Rd:41-42: Dropping empty section \arguments
    ```

# IdMappingRetrieval

<details>

* Version: 1.34.0
* Source code: https://github.com/cran/IdMappingRetrieval
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 62

Run `revdep_details(,"IdMappingRetrieval")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Packages in Depends field not imported from:
      ‘RCurl’ ‘XML’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking S3 generic/method consistency ... NOTE
    ```
    Found the following apparent S3 methods exported but not registered:
      addServices.ServiceManager getDataFrame.Annotation
      getDataFrameList.ServiceManager getFolderName.Annotation
      getIdMap.Annotation getIdMapList.ServiceManager
      getServiceRoot.Annotation getServices.ServiceManager
      setOptions.Annotation setServices.ServiceManager
    See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
    manual.
    ```

# lilikoi

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/lilikoi
* URL: https://github.com/lanagarmire/lilikoi
* BugReports: https://github.com/lanagarmire/lilikoi/issues
* Date/Publication: 2018-07-30 11:10:03 UTC
* Number of recursive dependencies: 147

Run `revdep_details(,"lilikoi")` for more info

</details>

## In both

*   checking whether the package can be unloaded cleanly ... WARNING
    ```
    Error in globalVariables("naresid.omit") : 
      could not find function "globalVariables"
    Error: package or namespace load failed for ‘lilikoi’:
     unable to load R code in package ‘Hmisc’
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in globalVariables("naresid.omit") : 
      could not find function "globalVariables"
    Error: unable to load R code in package ‘Hmisc’
    Execution halted
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        data      3.8Mb
        extdata   1.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    ...
    Call sequence:
    6: stop(msg, call. = FALSE, domain = NA)
    5: value[[3L]](cond)
    4: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    Error in globalVariables("naresid.omit") : 
      could not find function "globalVariables"
    Error: unable to load R code in package ‘Hmisc’
    Execution halted
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 3837 marked UTF-8 strings
    ```

# NPCD

<details>

* Version: 1.0-10
* Source code: https://github.com/cran/NPCD
* Date/Publication: 2016-10-18 22:59:23
* Number of recursive dependencies: 4

Run `revdep_details(,"NPCD")` for more info

</details>

## Newly broken

*   checking whether package ‘NPCD’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘R.oo::throw’ by ‘R.methodsS3::throw’ when loading ‘NPCD’
    See ‘/home/hb/repositories/R.oo/revdep/checks/NPCD/new/NPCD.Rcheck/00install.out’ for details.
    ```

# pathifier

<details>

* Version: 1.24.0
* Source code: https://github.com/cran/pathifier
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 4

Run `revdep_details(,"pathifier")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    .getpathway: no visible global function definition for ‘var’
    .samplings_stdev: no visible binding for global variable ‘sd’
    .score_pathway: no visible binding for global variable ‘sd’
    .score_pathway: no visible global function definition for ‘aggregate’
    .score_pathway: no visible global function definition for ‘dist’
    quantify_pathways_deregulation: no visible binding for global variable
      ‘sd’
    quantify_pathways_deregulation: no visible global function definition
      for ‘prcomp’
    Undefined global functions or variables:
      aggregate dist prcomp sd var
    Consider adding
      importFrom("stats", "aggregate", "dist", "prcomp", "sd", "var")
    to your NAMESPACE file.
    ```

# phylosim

<details>

* Version: 3.0.4
* Source code: https://github.com/cran/phylosim
* URL: https://github.com/bsipos/phylosim
* Date/Publication: 2019-06-28 08:20:03 UTC
* Number of recursive dependencies: 41

Run `revdep_details(,"phylosim")` for more info

</details>

## Newly broken

*   checking whether package ‘phylosim’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘R.oo::throw’ by ‘R.methodsS3::throw’ when loading ‘phylosim’
    See ‘/home/hb/repositories/R.oo/revdep/checks/phylosim/new/phylosim.Rcheck/00install.out’ for details.
    ```

# tmle.npvi

<details>

* Version: 0.10.0
* Source code: https://github.com/cran/tmle.npvi
* Date/Publication: 2015-05-22 18:59:02
* Number of recursive dependencies: 43

Run `revdep_details(,"tmle.npvi")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    tmle.npvi.: no visible global function definition for ‘update’
    update.NPVI: no visible global function definition for ‘gaussian’
    updateConv.NPVI: no visible global function definition for ‘tail’
    updateGNonTab.NPVI : g1: no visible binding for global variable
      ‘qlogis’
    updateGNonTab.NPVI : g1: no visible binding for global variable
      ‘plogis’
    updateGTab.NPVI: no visible binding for global variable ‘qlogis’
    updateGTab.NPVI: no visible binding for global variable ‘plogis’
    updatePsi.NPVI: no visible global function definition for ‘str’
    Undefined global functions or variables:
      as.formula binomial dnorm gaussian glm head integrate model.matrix
      optimize plogis pnorm qlogis qnorm quantile rnorm runif sd str tail
      update var
    Consider adding
      importFrom("stats", "as.formula", "binomial", "dnorm", "gaussian",
                 "glm", "integrate", "model.matrix", "optimize", "plogis",
                 "pnorm", "qlogis", "qnorm", "quantile", "rnorm", "runif",
                 "sd", "update", "var")
      importFrom("utils", "head", "str", "tail")
    to your NAMESPACE file.
    ```

