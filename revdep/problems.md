# ACNE

<details>

* Version: 0.8.1
* Source code: https://github.com/cran/ACNE
* URL: https://github.com/HenrikBengtsson/ACNE
* BugReports: https://github.com/HenrikBengtsson/ACNE/issues
* Date/Publication: 2015-10-27 08:09:51
* Number of recursive dependencies: 23

Run `revdep_details(,"ACNE")` for more info

</details>

## In both

*   checking whether package ‘ACNE’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/ACNE/new/ACNE.Rcheck/00install.out’ for details.
    ```

# affxparser

<details>

* Version: 1.56.0
* Source code: https://github.com/cran/affxparser
* URL: https://github.com/HenrikBengtsson/affxparser
* BugReports: https://github.com/HenrikBengtsson/affxparser/issues
* Date/Publication: 2019-05-02
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

*   checking whether package ‘affxparser’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/affxparser/new/affxparser.Rcheck/00install.out’ for details.
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

* Version: 3.1.1
* Source code: https://github.com/cran/aroma.affymetrix
* URL: http://www.aroma-project.org/, https://github.com/HenrikBengtsson/aroma.affymetrix
* BugReports: https://github.com/HenrikBengtsson/aroma.affymetrix/issues
* Date/Publication: 2018-04-16 18:53:05 UTC
* Number of recursive dependencies: 74

Run `revdep_details(,"aroma.affymetrix")` for more info

</details>

## In both

*   checking whether package ‘aroma.affymetrix’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/aroma.affymetrix/new/aroma.affymetrix.Rcheck/00install.out’ for details.
    ```

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

# aroma.apd

<details>

* Version: 0.6.0
* Source code: https://github.com/cran/aroma.apd
* URL: URL: http://www.aroma-project.org/, https://github.com/HenrikBengtsson/aroma.apd
* BugReports: https://github.com/HenrikBengtsson/aroma.apd/issues
* Date/Publication: 2015-02-25 00:49:33
* Number of recursive dependencies: 5

Run `revdep_details(,"aroma.apd")` for more info

</details>

## In both

*   checking whether package ‘aroma.apd’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/aroma.apd/new/aroma.apd.Rcheck/00install.out’ for details.
    ```

# aroma.cn

<details>

* Version: 1.6.1
* Source code: https://github.com/cran/aroma.cn
* URL: http://www.aroma-project.org/, https://github.com/HenrikBengtsson/aroma.cn
* BugReports: https://github.com/HenrikBengtsson/aroma.cn/issues
* Date/Publication: 2015-10-28 00:08:16
* Number of recursive dependencies: 23

Run `revdep_details(,"aroma.cn")` for more info

</details>

## In both

*   checking whether package ‘aroma.cn’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/aroma.cn/new/aroma.cn.Rcheck/00install.out’ for details.
    ```

# aroma.core

<details>

* Version: 3.1.3
* Source code: https://github.com/cran/aroma.core
* URL: https://github.com/HenrikBengtsson/aroma.core, http://www.aroma-project.org/
* BugReports: https://github.com/HenrikBengtsson/aroma.core/issues
* Date/Publication: 2018-05-03 13:41:54 UTC
* Number of recursive dependencies: 45

Run `revdep_details(,"aroma.core")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'sfit', 'expectile', 'HaarSeg', 'mpcbs'
    ```

*   checking whether package ‘aroma.core’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/aroma.core/new/aroma.core.Rcheck/00install.out’ for details.
    ```

# aroma.light

<details>

* Version: 3.14.0
* Source code: https://github.com/cran/aroma.light
* URL: https://github.com/HenrikBengtsson/aroma.light, http://www.aroma-project.org
* BugReports: https://github.com/HenrikBengtsson/aroma.light/issues
* Date/Publication: 2019-05-02
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

*   checking whether package ‘aroma.light’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/aroma.light/new/aroma.light.Rcheck/00install.out’ for details.
    ```

# calmate

<details>

* Version: 0.12.1
* Source code: https://github.com/cran/calmate
* URL: https://github.com/HenrikBengtsson/calmate/
* BugReports: https://github.com/HenrikBengtsson/calmate/issues
* Date/Publication: 2015-10-27 08:09:53
* Number of recursive dependencies: 20

Run `revdep_details(,"calmate")` for more info

</details>

## In both

*   checking whether package ‘calmate’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/calmate/new/calmate.Rcheck/00install.out’ for details.
    ```

# cgdsr

<details>

* Version: 1.2.10
* Source code: https://github.com/cran/cgdsr
* URL: https://github.com/cBioPortal/cgdsr
* Date/Publication: 2018-01-18 10:51:31 UTC
* Number of recursive dependencies: 12

Run `revdep_details(,"cgdsr")` for more info

</details>

## Newly broken

*   checking whether package ‘cgdsr’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘R.methodsS3::throw’ by ‘R.oo::throw’ when loading ‘cgdsr’
    Found the following additional notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/cgdsr/new/cgdsr.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking whether package ‘cgdsr’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/cgdsr/old/cgdsr.Rcheck/00install.out’ for details.
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

*   checking whether package ‘DATforDCEMRI’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/DATforDCEMRI/new/DATforDCEMRI.Rcheck/00install.out’ for details.
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

# galgo

<details>

* Version: 1.4
* Source code: https://github.com/cran/galgo
* URL: https://github.com/vtrevino/GALGO
* Date/Publication: 2018-10-14 15:30:11 UTC
* Number of recursive dependencies: 8

Run `revdep_details(,"galgo")` for more info

</details>

## In both

*   checking whether package ‘galgo’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/galgo/new/galgo.Rcheck/00install.out’ for details.
    ```

# IdMappingAnalysis

<details>

* Version: 1.28.0
* Source code: https://github.com/cran/IdMappingAnalysis
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 9

Run `revdep_details(,"IdMappingAnalysis")` for more info

</details>

## In both

*   checking whether package ‘IdMappingAnalysis’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/IdMappingAnalysis/new/IdMappingAnalysis.Rcheck/00install.out’ for details.
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

* Version: 1.32.0
* Source code: https://github.com/cran/IdMappingRetrieval
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 47

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

*   checking whether package ‘IdMappingRetrieval’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/IdMappingRetrieval/new/IdMappingRetrieval.Rcheck/00install.out’ for details.
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

# knitrProgressBar

<details>

* Version: 1.1.0
* Source code: https://github.com/cran/knitrProgressBar
* URL: https://rmflight.github.io/knitrProgressBar
* BugReports: https://github.com/rmflight/knitrProgressBar/issues
* Date/Publication: 2018-02-20 04:04:54 UTC
* Number of recursive dependencies: 38

Run `revdep_details(,"knitrProgressBar")` for more info

</details>

## In both

*   checking whether package ‘knitrProgressBar’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/knitrProgressBar/new/knitrProgressBar.Rcheck/00install.out’ for details.
    ```

# lilikoi

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/lilikoi
* URL: https://github.com/lanagarmire/lilikoi
* BugReports: https://github.com/lanagarmire/lilikoi/issues
* Date/Publication: 2018-07-30 11:10:03 UTC
* Number of recursive dependencies: 130

Run `revdep_details(,"lilikoi")` for more info

</details>

## In both

*   checking whether package ‘lilikoi’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/lilikoi/new/lilikoi.Rcheck/00install.out’ for details.
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
    Namespaces in Imports field not imported from:
      ‘Matrix’ ‘devtools’ ‘e1071’ ‘glmnet’ ‘hash’ ‘pamr’ ‘randomForest’
      All declared Imports should be used.
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
    Found the following additional notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/NPCD/new/NPCD.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking whether package ‘NPCD’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/NPCD/old/NPCD.Rcheck/00install.out’ for details.
    ```

# pathifier

<details>

* Version: 1.22.0
* Source code: https://github.com/cran/pathifier
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 4

Run `revdep_details(,"pathifier")` for more info

</details>

## In both

*   checking whether package ‘pathifier’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/pathifier/new/pathifier.Rcheck/00install.out’ for details.
    ```

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

* Version: 3.0.2
* Source code: https://github.com/cran/phylosim
* URL: https://github.com/bsipos/phylosim
* Date/Publication: 2016-09-08 20:14:57
* Number of recursive dependencies: 40

Run `revdep_details(,"phylosim")` for more info

</details>

## Newly broken

*   checking whether package ‘phylosim’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘R.oo::throw’ by ‘R.methodsS3::throw’ when loading ‘phylosim’
    Found the following additional notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/phylosim/new/phylosim.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking whether package ‘phylosim’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/phylosim/old/phylosim.Rcheck/00install.out’ for details.
    ```

# PSCBS

<details>

* Version: 0.65.0
* Source code: https://github.com/cran/PSCBS
* URL: https://github.com/HenrikBengtsson/PSCBS
* BugReports: https://github.com/HenrikBengtsson/PSCBS/issues
* Date/Publication: 2019-05-05 22:40:09 UTC
* Number of recursive dependencies: 75

Run `revdep_details(,"PSCBS")` for more info

</details>

## In both

*   checking whether package ‘PSCBS’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/PSCBS/new/PSCBS.Rcheck/00install.out’ for details.
    ```

# R.cache

<details>

* Version: 0.13.0
* Source code: https://github.com/cran/R.cache
* URL: https://github.com/HenrikBengtsson/R.cache
* BugReports: https://github.com/HenrikBengtsson/R.cache/issues
* Date/Publication: 2018-01-04 16:55:43 UTC
* Number of recursive dependencies: 4

Run `revdep_details(,"R.cache")` for more info

</details>

## In both

*   checking whether package ‘R.cache’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/R.cache/new/R.cache.Rcheck/00install.out’ for details.
    ```

# R.devices

<details>

* Version: 2.16.0
* Source code: https://github.com/cran/R.devices
* URL: https://github.com/HenrikBengtsson/R.devices
* BugReports: https://github.com/HenrikBengtsson/R.devices/issues
* Date/Publication: 2018-07-21 12:30:03 UTC
* Number of recursive dependencies: 8

Run `revdep_details(,"R.devices")` for more info

</details>

## In both

*   checking whether package ‘R.devices’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/R.devices/new/R.devices.Rcheck/00install.out’ for details.
    ```

# R.filesets

<details>

* Version: 2.13.0
* Source code: https://github.com/cran/R.filesets
* URL: https://github.com/HenrikBengtsson/R.filesets, http://www.aroma-project.org/
* BugReports: https://github.com/HenrikBengtsson/R.filesets/issues
* Date/Publication: 2019-04-18 05:10:04 UTC
* Number of recursive dependencies: 6

Run `revdep_details(,"R.filesets")` for more info

</details>

## In both

*   checking whether package ‘R.filesets’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/R.filesets/new/R.filesets.Rcheck/00install.out’ for details.
    ```

# R.huge

<details>

* Version: 0.9.0
* Source code: https://github.com/cran/R.huge
* URL: https://github.com/HenrikBengtsson/R.huge
* BugReports: https://github.com/HenrikBengtsson/R.huge/issues
* Date/Publication: 2015-02-22 20:52:32
* Number of recursive dependencies: 3

Run `revdep_details(,"R.huge")` for more info

</details>

## In both

*   checking whether package ‘R.huge’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/R.huge/new/R.huge.Rcheck/00install.out’ for details.
    ```

# R.matlab

<details>

* Version: 3.6.2
* Source code: https://github.com/cran/R.matlab
* URL: https://github.com/HenrikBengtsson/R.matlab
* BugReports: https://github.com/HenrikBengtsson/R.matlab/issues
* Date/Publication: 2018-09-27 07:30:03 UTC
* Number of recursive dependencies: 6

Run `revdep_details(,"R.matlab")` for more info

</details>

## In both

*   checking whether package ‘R.matlab’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/R.matlab/new/R.matlab.Rcheck/00install.out’ for details.
    ```

# R.rsp

<details>

* Version: 0.43.1
* Source code: https://github.com/cran/R.rsp
* URL: https://github.com/HenrikBengtsson/R.rsp
* BugReports: https://github.com/HenrikBengtsson/R.rsp/issues
* Date/Publication: 2019-02-05 23:11:50 UTC
* Number of recursive dependencies: 18

Run `revdep_details(,"R.rsp")` for more info

</details>

## In both

*   checking whether package ‘R.rsp’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/R.rsp/new/R.rsp.Rcheck/00install.out’ for details.
    ```

# R.utils

<details>

* Version: 2.8.0
* Source code: https://github.com/cran/R.utils
* URL: https://github.com/HenrikBengtsson/R.utils
* BugReports: https://github.com/HenrikBengtsson/R.utils/issues
* Date/Publication: 2019-02-14 21:42:21 UTC
* Number of recursive dependencies: 3

Run `revdep_details(,"R.utils")` for more info

</details>

## In both

*   checking whether package ‘R.utils’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/R.utils/new/R.utils.Rcheck/00install.out’ for details.
    ```

# rtf

<details>

* Version: 0.4-13
* Source code: https://github.com/cran/rtf
* Date/Publication: 2018-05-17 04:16:00 UTC
* Number of recursive dependencies: 41

Run `revdep_details(,"rtf")` for more info

</details>

## Newly broken

*   checking whether package ‘rtf’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘R.methodsS3::throw’ by ‘R.oo::throw’ when loading ‘rtf’
    Found the following additional notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/rtf/new/rtf.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking whether package ‘rtf’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/rtf/old/rtf.Rcheck/00install.out’ for details.
    ```

# sBIC

<details>

* Version: 0.2.0
* Source code: https://github.com/cran/sBIC
* URL: https://github.com/Lucaweihs/sBIC
* BugReports: https://github.com/Lucaweihs/sBIC/issues
* Date/Publication: 2016-10-01 14:31:14
* Number of recursive dependencies: 37

Run `revdep_details(,"sBIC")` for more info

</details>

## In both

*   checking whether package ‘sBIC’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/sBIC/new/sBIC.Rcheck/00install.out’ for details.
    ```

# SEMID

<details>

* Version: 0.3.2
* Source code: https://github.com/cran/SEMID
* URL: https://github.com/Lucaweihs/SEMID
* BugReports: https://github.com/Lucaweihs/SEMID/issues
* Date/Publication: 2019-05-21 07:30:11 UTC
* Number of recursive dependencies: 17

Run `revdep_details(,"SEMID")` for more info

</details>

## In both

*   checking whether package ‘SEMID’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/SEMID/new/SEMID.Rcheck/00install.out’ for details.
    ```

# tmle.npvi

<details>

* Version: 0.10.0
* Source code: https://github.com/cran/tmle.npvi
* Date/Publication: 2015-05-22 18:59:02
* Number of recursive dependencies: 42

Run `revdep_details(,"tmle.npvi")` for more info

</details>

## In both

*   checking whether package ‘tmle.npvi’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.oo/revdep/checks/tmle.npvi/new/tmle.npvi.Rcheck/00install.out’ for details.
    ```

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

