# affxparser

<details>

* Version: 1.60.0
* Source code: https://github.com/cran/affxparser
* URL: https://github.com/HenrikBengtsson/affxparser
* BugReports: https://github.com/HenrikBengtsson/affxparser/issues
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 4

Run `revdep_details(, "affxparser")` for more info

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
      installed size is  8.7Mb
      sub-directories of 1Mb or more:
        libs   8.3Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘affy’ in Rd xrefs
    ```

# aroma.cn

<details>

* Version: 1.6.1
* Source code: https://github.com/cran/aroma.cn
* URL: http://www.aroma-project.org/, https://github.com/HenrikBengtsson/aroma.cn
* BugReports: https://github.com/HenrikBengtsson/aroma.cn/issues
* Date/Publication: 2015-10-28 00:08:16
* Number of recursive dependencies: 24

Run `revdep_details(, "aroma.cn")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘GLAD’
    ```

# aroma.core

<details>

* Version: 3.2.1
* Source code: https://github.com/cran/aroma.core
* URL: https://github.com/HenrikBengtsson/aroma.core, https://www.aroma-project.org/
* BugReports: https://github.com/HenrikBengtsson/aroma.core/issues
* Date/Publication: 2020-02-04 15:20:21 UTC
* Number of recursive dependencies: 46

Run `revdep_details(, "aroma.core")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'GLAD', 'sfit', 'expectile', 'HaarSeg', 'mpcbs'
    ```

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘GLAD’ in Rd xrefs
    ```

# aroma.light

<details>

* Version: 3.18.0
* Source code: https://github.com/cran/aroma.light
* URL: https://github.com/HenrikBengtsson/aroma.light, https://www.aroma-project.org
* BugReports: https://github.com/HenrikBengtsson/aroma.light/issues
* Date/Publication: 2020-04-27
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

# cgdsr

<details>

* Version: 1.3.0
* Source code: https://github.com/cran/cgdsr
* URL: https://github.com/cBioPortal/cgdsr
* Date/Publication: 2019-06-26 11:50:22 UTC
* Number of recursive dependencies: 33

Run `revdep_details(, "cgdsr")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘cgdsr-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: cgdsr-CGDS
    > ### Title: Construct a CGDS connection object
    > ### Aliases: cgdsr-CGDS CGDS
    > 
    > ### ** Examples
    > 
    > # Create CGDS object
    > mycgds = CGDS("http://www.cbioportal.org/")
    > 
    > # Test the CGDS endpoint URL using a few simple API tests
    > test(mycgds) 
    Error in curl::curl_fetch_memory(url, handle = handle) : 
      Could not resolve host: www.cbioportal.org; Name or service not known
    Calls: test ... request_fetch -> request_fetch.write_memory -> <Anonymous>
    Execution halted
    ```

*   checking tests ...
    ```
    ...
        1. testthat::expect_identical(...) tests/test_cgdsr.R:51:2
        7. cgdsr::getProfileData.CGDS(mycgds, "NF1", "gbm_tcga_mrna", "gbm_tcga_all")
        9. cgdsr::processURL.CGDS(x, url)
       10. httr::GET(url, headers)
       11. httr:::request_perform(req, hu$handle$handle)
       13. httr:::request_fetch.write_memory(req$output, req$url, handle)
       14. curl::curl_fetch_memory(url, handle = handle)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 0 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 6 ]
      1. Error: getCancerStudies (@test_cgdsr.R#6) 
      2. Error: getCaseLists (@test_cgdsr.R#12) 
      3. Error: getGeneticProfiles (@test_cgdsr.R#23) 
      4. Error: getMutationData (@test_cgdsr.R#38) 
      5. Error: getClinicalData (@test_cgdsr.R#44) 
      6. Error: getProfileData (@test_cgdsr.R#51) 
      
      Error: testthat unit tests failed
      In addition: Warning message:
      Placing tests in `inst/tests` is deprecated. Please use `tests/testthat` instead 
      Execution halted
    ```

*   checking running R code from vignettes ...
    ```
      ‘cgdsr.Rnw’... failed
     ERROR
    Errors in running code in vignettes:
    when running code in ‘cgdsr.Rnw’
      ...
    > library(cgdsr)
    Please send questions to cbioportal@googlegroups.com
    
    > mycgds = CGDS("http://www.cbioportal.org/")
    
    > test(mycgds)
    
      When sourcing ‘cgdsr.R’:
    Error: Could not resolve host: www.cbioportal.org; Name or service not known
    Execution halted
    ```

# pathifier

<details>

* Version: 1.26.0
* Source code: https://github.com/cran/pathifier
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 4

Run `revdep_details(, "pathifier")` for more info

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

# tmle.npvi

<details>

* Version: 0.10.0
* Source code: https://github.com/cran/tmle.npvi
* Date/Publication: 2015-05-22 18:59:02
* Number of recursive dependencies: 43

Run `revdep_details(, "tmle.npvi")` for more info

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

