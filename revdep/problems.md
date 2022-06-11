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
    See ‘/home/hb/repositories/R.oo/revdep/checks/affxparser/new/affxparser.Rcheck/00install.out’ for details.
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
      installed size is 18.8Mb
      sub-directories of 1Mb or more:
        libs  18.2Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘affy’
    ```

# aroma.affymetrix

<details>

* Version: 3.2.0
* GitHub: https://github.com/HenrikBengtsson/aroma.affymetrix
* Source code: https://github.com/cran/aroma.affymetrix
* Date/Publication: 2019-06-23 06:00:14 UTC
* Number of recursive dependencies: 73

Run `revdep_details(, "aroma.affymetrix")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'affy', 'affyPLM', 'gcrma', 'oligo', 'oligoClasses', 'pdInfoBuilder'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        R             2.3Mb
        help          1.1Mb
        testScripts   1.3Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Unknown packages ‘affy’, ‘gcrma’, ‘affyPLM’, ‘oligo’, ‘oligoClasses’ in Rd xrefs
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
      installed size is  8.5Mb
      sub-directories of 1Mb or more:
        app       3.4Mb
        doc       2.8Mb
        extdata   1.6Mb
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
* Number of recursive dependencies: 166

Run `revdep_details(, "canceR")` for more info

</details>

## In both

*   checking whether package ‘canceR’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: loading Rplot failed
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/hb/repositories/R.oo/revdep/checks/canceR/new/canceR.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 19.8Mb
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
* Number of recursive dependencies: 60

Run `revdep_details(, "knitrProgressBar")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

*   checking for non-standard things in the check directory ... NOTE
    ```
    Found the following files/directories:
      ‘Killed after ’
    ```

# MPAgenomics

<details>

* Version: 1.2.3
* GitHub: NA
* Source code: https://github.com/cran/MPAgenomics
* Date/Publication: 2021-03-30 15:50:07 UTC
* Number of recursive dependencies: 52

Run `revdep_details(, "MPAgenomics")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘CGHcall’
    ```

# PSCBS

<details>

* Version: 0.66.0
* GitHub: https://github.com/HenrikBengtsson/PSCBS
* Source code: https://github.com/cran/PSCBS
* Date/Publication: 2021-10-23 07:40:02 UTC
* Number of recursive dependencies: 74

Run `revdep_details(, "PSCBS")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘Hmisc’
    ```

# R.rsp

<details>

* Version: 0.44.0
* GitHub: https://github.com/HenrikBengtsson/R.rsp
* Source code: https://github.com/cran/R.rsp
* Date/Publication: 2020-07-09 16:20:02 UTC
* Number of recursive dependencies: 18

Run `revdep_details(, "R.rsp")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘R.rsp-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: RRspPackage$capabilitiesOf
    > ### Title: Checks which tools are supported
    > ### Aliases: RRspPackage$capabilitiesOf capabilitiesOf.RRspPackage
    > ###   RRspPackage.capabilitiesOf capabilitiesOf,RRspPackage-method
    > ###   RRspPackage.isCapableOf isCapableOf.RRspPackage
    > ###   isCapableOf,RRspPackage-method
    > ### Keywords: internal methods
    > 
    > ### ** Examples
    > 
    >   # Display which tools are supported by the package
    >   print(capabilitiesOf(R.rsp))
    Error in findAsciiDoc.default(mustExist = FALSE) : 
      Failed to parse version of %s based on captured output: ‘asciidoc’“asciidoc 9.0.0rc1”
    Calls: print ... capabilitiesOf.RRspPackage -> findAsciiDoc -> findAsciiDoc.default
    Execution halted
    ```

*   checking tests ...
    ```
      Running ‘000.session_information.R’
      Running ‘LoremIpsum.R’
      Running ‘RspConstruct.R’
      Running ‘RspProduct.R’
      Running ‘RspString.R’
      Running ‘capabilities.R’
     ERROR
    Running the tests in ‘tests/capabilities.R’ failed.
    Complete output:
      > library("R.rsp")
      R.rsp v0.44.0 (2020-07-09 16:20:02 UTC) successfully loaded. See ?R.rsp for help.
      > 
      > cat("Tools supported by the package:\n")
      Tools supported by the package:
      > print(capabilitiesOf(R.rsp))
      Error in findAsciiDoc.default(mustExist = FALSE) : 
        Failed to parse version of %s based on captured output: 'asciidoc'"asciidoc 9.0.0rc1"
      Calls: print ... capabilitiesOf.RRspPackage -> findAsciiDoc -> findAsciiDoc.default
      Execution halted
    ```

# roxygen2

<details>

* Version: 7.2.0
* GitHub: https://github.com/r-lib/roxygen2
* Source code: https://github.com/cran/roxygen2
* Date/Publication: 2022-05-13 07:30:02 UTC
* Number of recursive dependencies: 63

Run `revdep_details(, "roxygen2")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘devtools’
    ```

# rtf

<details>

* Version: 0.4-14.1
* GitHub: https://github.com/schaffman5/rtf
* Source code: https://github.com/cran/rtf
* Date/Publication: 2020-03-22 09:32:44 UTC
* Number of recursive dependencies: 36

Run `revdep_details(, "rtf")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘gsubfn’
    ```

*   checking for non-standard things in the check directory ... NOTE
    ```
    Found the following files/directories:
      ‘test_addPageBreak.doc’ ‘test_addPlot.doc’ ‘test_addSessionInfo.doc’
      ‘test_addTable.doc’
    ```

