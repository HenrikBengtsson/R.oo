# affxparser

<details>

* Version: 1.78.0
* GitHub: https://github.com/HenrikBengtsson/affxparser
* Source code: https://github.com/cran/affxparser
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 4

Run `revdepcheck::revdep_details(, "affxparser")` for more info

</details>

## In both

*   checking whether package ‘affxparser’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      fusion/file/CELFileData.cpp:2409:41: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2414:41: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2419:42: warning: taking address of packed member of ‘affxcel::_CELFileTranscriptomeEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2445:37: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2451:37: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2457:38: warning: taking address of packed member of ‘affxcel::_CELFileTranscriptomeEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2506:37: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2509:37: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2512:38: warning: taking address of packed member of ‘affxcel::_CELFileTranscriptomeEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2551:38: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2554:38: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:3194:30: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:3199:30: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:3204:31: warning: taking address of packed member of ‘affxcel::_CELFileTranscriptomeEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:3251:31: warning: taking address of packed member of ‘affxcel::_CELFileTranscriptomeEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:3255:30: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:3294:42: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
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
          ‘fusion/calvin_files/parameter/src/ParameterNameValueType.o’
      Found ‘exit’, possibly from ‘exit’ (C)
    ...
      Found ‘srand’, possibly from ‘srand’ (C)
        Object: ‘fusion/calvin_files/utils/src/AffymetrixGuid.o’
      Found ‘stdout’, possibly from ‘stdout’ (C)
        Object: ‘fusion/util/Util.o’
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor use Fortran I/O
    nor system RNGs nor [v]sprintf.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 18.8Mb
      sub-directories of 1Mb or more:
        libs  18.2Mb
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) applyCdfGroups.Rd:37-46: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) applyCdfGroups.Rd:47-59: Lost braces in \itemize; meant \describe ?
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘affy’
    ```

# aroma.affymetrix

<details>

* Version: 3.2.2
* GitHub: https://github.com/HenrikBengtsson/aroma.affymetrix
* Source code: https://github.com/cran/aroma.affymetrix
* Date/Publication: 2024-02-18 20:40:03 UTC
* Number of recursive dependencies: 85

Run `revdepcheck::revdep_details(, "aroma.affymetrix")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        R             2.3Mb
        help          1.1Mb
        testScripts   1.1Mb
    ```

# aroma.core

<details>

* Version: 3.3.1
* GitHub: https://github.com/HenrikBengtsson/aroma.core
* Source code: https://github.com/cran/aroma.core
* Date/Publication: 2024-02-19 08:40:02 UTC
* Number of recursive dependencies: 67

Run `revdepcheck::revdep_details(, "aroma.core")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'sfit', 'expectile', 'HaarSeg', 'mpcbs'
    ```

# aroma.light

<details>

* Version: 3.36.0
* GitHub: https://github.com/HenrikBengtsson/aroma.light
* Source code: https://github.com/cran/aroma.light
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 6

Run `revdepcheck::revdep_details(, "aroma.light")` for more info

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

* Version: 1.34.0
* GitHub: https://github.com/kmezhoud/bioCancer
* Source code: https://github.com/cran/bioCancer
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 261

Run `revdepcheck::revdep_details(, "bioCancer")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.4Mb
      sub-directories of 1Mb or more:
        app       3.3Mb
        doc       2.8Mb
        extdata   2.5Mb
    ```

*   checking Rd metadata ... NOTE
    ```
    Invalid package aliases in Rd file 'bioCancer.Rd':
      ‘-package’
    ```

# canceR

<details>

* Version: 1.40.0
* GitHub: https://github.com/kmezhoud/canceR
* Source code: https://github.com/cran/canceR
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 219

Run `revdepcheck::revdep_details(, "canceR")` for more info

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
      installed size is 21.9Mb
      sub-directories of 1Mb or more:
        doc      18.2Mb
        extdata   3.1Mb
    ```

*   checking Rd \usage sections ... NOTE
    ```
    S3 methods shown with full name in Rd file 'cbind.na.Rd':
      ‘cbind.na’
    
    S3 methods shown with full name in Rd file 'rbind.na.Rd':
      ‘rbind.na’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking Rd contents ... NOTE
    ```
    Argument items with no description in Rd file 'GSEA.EnrichmentScore.Rd':
      ‘gene.list’ ‘gene.set’ ‘weighted.score.type’ ‘correl.vector’
    Argument items with no description in Rd file 'GSEA.EnrichmentScore2.Rd':
      ‘gene.list’ ‘gene.set’ ‘weighted.score.type’ ‘correl.vector’
    Argument items with no description in Rd file 'GSEA.Gct2Frame.Rd':
      ‘filename’
    Argument items with no description in Rd file 'GSEA.Gct2Frame2.Rd':
      ‘filename’
    Argument items with no description in Rd file 'GSEA.GeneRanking.Rd':
      ‘A’ ‘class.labels’ ‘gene.labels’ ‘nperm’ ‘permutation.type’
    ...
    Argument items with no description in Rd file 'GSEA.Res2Frame.Rd':
      ‘filename’
    Argument items with no description in Rd file 'GSEA.Threshold.Rd':
      ‘V’ ‘thres’ ‘ceil’
    Argument items with no description in Rd file 'GSEA.VarFilter.Rd':
      ‘V’ ‘fold’ ‘delta’ ‘gene.names’
    Argument items with no description in Rd file 'GSEA.write.gct.Rd':
      ‘gct’ ‘filename’
    Argument items with no description in Rd file 'OLD.GSEA.EnrichmentScore.Rd':
      ‘gene.list’ ‘gene.set’
    ```

# NCIgraph

<details>

* Version: 1.54.0
* GitHub: NA
* Source code: https://github.com/cran/NCIgraph
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 49

Run `revdepcheck::revdep_details(, "NCIgraph")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘DEGraph’
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) NCIgraph.Rd:13: Lost braces
        13 |    extends graphNEL{Object}\cr
           |                    ^
    ```

# R.cache

<details>

* Version: 0.16.0
* GitHub: https://github.com/HenrikBengtsson/R.cache
* Source code: https://github.com/cran/R.cache
* Date/Publication: 2022-07-21 16:20:02 UTC
* Number of recursive dependencies: 4

Run `revdepcheck::revdep_details(, "R.cache")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) R.cache-package.Rd:28-30: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) R.cache-package.Rd:31-34: Lost braces in \itemize; meant \describe ?
    ```

# R.matlab

<details>

* Version: 3.7.0
* GitHub: https://github.com/HenrikBengtsson/R.matlab
* Source code: https://github.com/cran/R.matlab
* Date/Publication: 2022-08-25 21:52:34 UTC
* Number of recursive dependencies: 6

Run `revdepcheck::revdep_details(, "R.matlab")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) setOption.Matlab.Rd:37-39: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) setOption.Matlab.Rd:40-41: Lost braces in \itemize; meant \describe ?
    ```

# sBIC

<details>

* Version: 0.2.0
* GitHub: https://github.com/Lucaweihs/sBIC
* Source code: https://github.com/cran/sBIC
* Date/Publication: 2016-10-01 14:31:14
* Number of recursive dependencies: 52

Run `revdepcheck::revdep_details(, "sBIC")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) setData.ReducedRankRegressions.Rd:14-16: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) setData.ReducedRankRegressions.Rd:17-18: Lost braces in \itemize; meant \describe ?
    ```

# WeibullFit

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/WeibullFit
* Date/Publication: 2019-07-26 08:40:02 UTC
* Number of recursive dependencies: 35

Run `revdepcheck::revdep_details(, "WeibullFit")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) busTrace.Rd:15: Lost braces
        15 | /href{https://crawdad.org/coppe-ufrj/RioBuses/20180319/}
           |      ^
    ```

