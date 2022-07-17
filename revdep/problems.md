# affxparser

<details>

* Version: 1.68.1
* GitHub: https://github.com/HenrikBengtsson/affxparser
* Source code: https://github.com/cran/affxparser
* Date/Publication: 2022-04-29
* Number of recursive dependencies: 4

Run `revdep_details(, "affxparser")` for more info

</details>

## In both

*   checking whether package ‘affxparser’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      fusion/file/CELFileData.cpp:2409:27: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2414:27: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2419:28: warning: taking address of packed member of ‘affxcel::_CELFileTranscriptomeEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2445:37: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2451:37: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2457:38: warning: taking address of packed member of ‘affxcel::_CELFileTranscriptomeEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2506:23: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2509:23: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2512:24: warning: taking address of packed member of ‘affxcel::_CELFileTranscriptomeEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2551:24: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2554:24: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:3194:16: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:3199:16: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:3204:17: warning: taking address of packed member of ‘affxcel::_CELFileTranscriptomeEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:3251:17: warning: taking address of packed member of ‘affxcel::_CELFileTranscriptomeEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:3255:16: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:3294:28: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
    See ‘/c4/home/henrik/repositories/R.oo/revdep/checks/affxparser/new/affxparser.Rcheck/00install.out’ for details.
    ```

*   checking compiled code ... WARNING
    ```
    File ‘affxparser/libs/affxparser.so’:
      Found ‘_ZSt4cerr’, possibly from ‘std::cerr’ (C++)
        Object: ‘fusion/util/Verbose.o’
      Found ‘_ZSt4cout’, possibly from ‘std::cout’ (C++)
        Objects: ‘fusion/file/TsvFile/TsvFile.o’, ‘fusion/util/Err.o’
      Found ‘abort’, possibly from ‘abort’ (C)
        Objects: ‘fusion/calvin_files/fusion/src/FusionCHPData.o’,
          ‘fusion/calvin_files/fusion/src/GCOSAdapter/GCOSCHPDataAdapter.o’,
          ‘fusion/calvin_files/parameter/src/ParameterNameValueType.o’,
          ‘fusion/file/BPMAPFileWriter.o’
    ...
      Found ‘srand’, possibly from ‘srand’ (C)
        Object: ‘fusion/calvin_files/utils/src/AffymetrixGuid.o’
      Found ‘stdout’, possibly from ‘stdout’ (C)
        Object: ‘fusion/util/Util.o’
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor use Fortran I/O
    nor system RNGs.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 18.0Mb
      sub-directories of 1Mb or more:
        libs  17.5Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘affy’
    ```

# aroma.core

<details>

* Version: 3.2.2
* GitHub: https://github.com/HenrikBengtsson/aroma.core
* Source code: https://github.com/cran/aroma.core
* Date/Publication: 2021-01-05 05:10:12 UTC
* Number of recursive dependencies: 48

Run `revdep_details(, "aroma.core")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'sfit', 'expectile', 'HaarSeg', 'mpcbs'
    ```

# aroma.light

<details>

* Version: 3.26.0
* GitHub: https://github.com/HenrikBengtsson/aroma.light
* Source code: https://github.com/cran/aroma.light
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 6

Run `revdep_details(, "aroma.light")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      inst/rsp/.rspPlugins
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# bioCancer

<details>

* Version: 1.24.01
* GitHub: https://github.com/kmezhoud/bioCancer
* Source code: https://github.com/cran/bioCancer
* Date/Publication: 2022-04-27
* Number of recursive dependencies: 220

Run `revdep_details(, "bioCancer")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.1Mb
      sub-directories of 1Mb or more:
        app       3.2Mb
        doc       2.8Mb
        extdata   1.5Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘AlgDesign’ ‘GO.db’ ‘R.methodsS3’ ‘import’ ‘methods’ ‘org.Bt.eg.db’
      ‘shinythemes’
      All declared Imports should be used.
    ```

# canceR

<details>

* Version: 1.30.01
* GitHub: https://github.com/kmezhoud/canceR
* Source code: https://github.com/cran/canceR
* Date/Publication: 2022-04-27
* Number of recursive dependencies: 169

Run `revdep_details(, "canceR")` for more info

</details>

## In both

*   checking whether package ‘canceR’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: loading Rplot failed
      Warning: no DISPLAY variable so Tk is not available
    See ‘/c4/home/henrik/repositories/R.oo/revdep/checks/canceR/new/canceR.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 19.6Mb
      sub-directories of 1Mb or more:
        doc  18.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R.methodsS3’
      All declared Imports should be used.
    ```

# knitrProgressBar

<details>

* Version: 1.1.0
* GitHub: https://github.com/rmflight/knitrProgressBar
* Source code: https://github.com/cran/knitrProgressBar
* Date/Publication: 2018-02-20 04:04:54 UTC
* Number of recursive dependencies: 59

Run `revdep_details(, "knitrProgressBar")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# roxygen2

<details>

* Version: 7.2.0
* GitHub: https://github.com/r-lib/roxygen2
* Source code: https://github.com/cran/roxygen2
* Date/Publication: 2022-05-13 07:30:02 UTC
* Number of recursive dependencies: 62

Run `revdep_details(, "roxygen2")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘devtools’
    ```

# tmle.npvi

<details>

* Version: 0.10.0
* GitHub: NA
* Source code: https://github.com/cran/tmle.npvi
* Date/Publication: 2015-05-22 18:59:02
* Number of recursive dependencies: 41

Run `revdep_details(, "tmle.npvi")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    NPVI: no visible global function definition for ‘quantile’
    SL.glm.condExpX2givenW: no visible global function definition for
      ‘as.formula’
    SL.glm.condExpX2givenW: no visible global function definition for ‘glm’
    SL.glm.condExpXYgivenW: no visible global function definition for
      ‘as.formula’
    SL.glm.condExpXYgivenW: no visible global function definition for ‘glm’
    SL.glm.g: no visible global function definition for ‘as.formula’
    SL.glm.g: no visible global function definition for ‘glm’
    SL.glm.theta: no visible global function definition for ‘as.formula’
    ...
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

