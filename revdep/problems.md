# affxparser

Version: 1.54.0

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
      installed size is 16.4Mb
      sub-directories of 1Mb or more:
        libs  15.7Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘affy’
    ```

# aroma.affymetrix

Version: 3.1.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        R             2.3Mb
        help          1.1Mb
        testScripts   1.3Mb
    ```

# aroma.core

Version: 3.1.3

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘expectile’ ‘HaarSeg’ ‘mpcbs’
    ```

# aroma.light

Version: 3.12.0

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      inst/rsp/.rspPlugins
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# DATforDCEMRI

Version: 0.55

## In both

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘xtable’ ‘akima’ ‘R.oo’ ‘R.methodsS3’ ‘matlab’ ‘lattice’ ‘locfit’
      ‘grid’
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

Version: 1.26.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘IdMappingAnalysis-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: IdMap
    > ### Title: The ID Map class
    > ### Aliases: IdMap
    > ### Keywords: classes
    > 
    > ### ** Examples
    > 
    >  obj<-IdMap(examples$identDfList[[2]]);
    >  obj$primaryKey();
    Error in UseMethod("primaryKey") : 
      no applicable method for 'primaryKey' applied to an object of class "c('IdMap', 'IdMapBase', 'Object')"
    Calls: <Anonymous> -> primaryKey
    Execution halted
    ```

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

Version: 1.30.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘IdMappingRetrieval-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: addServices.ServiceManager
    > ### Title: Add services to the ServiceManager object
    > ### Aliases: addServices.ServiceManager ServiceManager.addServices
    > ###   addServices.ServiceManager addServices,ServiceManager-method
    > ### Keywords: internal methods
    > 
    > ### ** Examples
    > 
    >  #create empty service manager object
    >  svm<-ServiceManager(ServiceManager$getDefaultServices());
    >  print(names(getServices(svm)))
    Error in UseMethod("getServices") : 
      no applicable method for 'getServices' applied to an object of class "c('ServiceManager', 'Object')"
    Calls: print -> getServices
    Execution halted
    ```

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

# lilikoi

Version: 0.1.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        data      3.8Mb
        extdata   1.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Matrix’ ‘devtools’ ‘e1071’ ‘glmnet’ ‘hash’ ‘pamr’ ‘randomForest’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 3837 marked UTF-8 strings
    ```

# pathifier

Version: 1.20.0

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

# tmle.npvi

Version: 0.10.0

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

