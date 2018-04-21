# affxparser

Version: 1.50.0

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘affy’ in Rd xrefs
    ```

*   checking compiled code ... WARNING
    ```
    ...
          ‘fusion_sdk/util/Err.o’
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
    write to stdout/stderr instead of to the console, nor the system RNG.
    
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
      installed size is 13.6Mb
      sub-directories of 1Mb or more:
        libs  13.0Mb
    ```

# aroma.cn

Version: 1.6.1

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘GLAD’
    ```

# aroma.core

Version: 3.1.1

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘GLAD’ in Rd xrefs
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘png’ ‘Cairo’ ‘GLAD’ ‘sfit’ ‘expectile’ ‘HaarSeg’ ‘mpcbs’
    ```

# aroma.light

Version: 3.8.0

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      inst/rsp/.rspPlugins
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# CellularAutomaton

Version: 1.1-1

## In both

*   checking R code for possible problems ... NOTE
    ```
    plot.CellularAutomaton: no visible global function definition for
      ‘image’
    Undefined global functions or variables:
      image
    Consider adding
      importFrom("graphics", "image")
    to your NAMESPACE file.
    ```

# cgdsr

Version: 1.2.10

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
    Warning in file(file, "rt") :
      URL 'http://www.cbioportal.org/webservice.do?cmd=getCancerStudies&': status was 'Couldn't resolve host name'
    Error in file(file, "rt") : 
      cannot open the connection to 'http://www.cbioportal.org/webservice.do?cmd=getCancerStudies&'
    Calls: test ... processURL -> processURL.CGDS -> read.table -> file
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Last 13 lines of output:
      11: file(file, "rt")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 6 SKIPPED: 0 FAILED: 6
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

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    Please send questions to cbioportal@googlegroups.com
    Warning in file(file, "rt") :
      URL 'http://www.cbioportal.org/webservice.do?cmd=getCancerStudies&': status was 'Couldn't resolve host name'
    
    Error: processing vignette 'cgdsr.Rnw' failed with diagnostics:
     chunk 2 
    Error in file(file, "rt") : 
      cannot open the connection to 'http://www.cbioportal.org/webservice.do?cmd=getCancerStudies&'
    Execution halted
    ```

# curvetest

Version: 2.2

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘locfit’ which was already attached by Depends.
      Please remove these calls from your code.
    Packages in Depends field not imported from:
      ‘R.methodsS3’ ‘R.oo’ ‘locfit’ ‘methods’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    curvefit: no visible global function definition for ‘model.frame’
    curvefit: no visible global function definition for ‘model.response’
    curvefit: no visible global function definition for ‘model.matrix’
    curvetest: no visible global function definition for ‘model.frame’
    curvetest: no visible global function definition for ‘plot’
    curvetest.raw: no visible global function definition for ‘pt’
    curvetest.raw: no visible global function definition for ‘pnorm’
    getoptimalalpha: no visible global function definition for ‘gcvplot’
    getoptimalalpha: no visible global function definition for ‘plot’
    lines.curvefit: no visible global function definition for ‘lines’
    plot.curvefit: no visible global function definition for ‘plot’
    plot.curvefit: no visible global function definition for ‘lines’
    plot.curvefit: no visible global function definition for ‘points’
    Undefined global functions or variables:
      gcvplot lines model.frame model.matrix model.response plot pnorm
      points pt
    Consider adding
      importFrom("graphics", "lines", "plot", "points")
      importFrom("stats", "model.frame", "model.matrix", "model.response",
                 "pnorm", "pt")
    to your NAMESPACE file.
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

Version: 1.22.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘rChoiceDialogs’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# IdMappingRetrieval

Version: 1.26.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘XML’ ‘rChoiceDialogs’ ‘ENVISIONQuery’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# NSA

Version: 0.0.32

## In both

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘R.methodsS3’ ‘MASS’ ‘matrixStats’ ‘R.oo’ ‘R.utils’ ‘aroma.core’
      ‘aroma.affymetrix’ ‘DNAcopy’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Packages in Depends field not imported from:
      ‘DNAcopy’ ‘MASS’ ‘R.methodsS3’ ‘R.oo’ ‘aroma.affymetrix’ ‘aroma.core’
      ‘matrixStats’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    setTags.SampleNormalization: no visible global function definition for
      ‘trim’
    snpsNByTotalAndFracB.matrix: no visible global function definition for
      ‘throw’
    snpsNByTotalAndFracB.matrix: no visible global function definition for
      ‘str’
    snpsNByTotalAndFracB.matrix: no visible global function definition for
      ‘rowAlls’
    Undefined global functions or variables:
      AffymetrixCdfFile CNA Object approxfun aromaSettings byPath extend
      extractMatrix findUnitsTodo getAsteriskTags getChipType getFile
      getFullName getFullNames getGenomeInformation getName getNames
      getPath getPathname getPathnames getPositions getRam getRootPath
      getTags getUnitsOnChromosome hist median nbrOfFiles newInstance
      packageDescription rowAlls rowMedians segment setTags str throw trim
      verbose
    Consider adding
      importFrom("graphics", "hist")
      importFrom("stats", "approxfun", "median")
      importFrom("utils", "packageDescription", "str")
    to your NAMESPACE file.
    ```

# pathifier

Version: 1.16.0

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

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'Overview.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `fullpage.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.12 ^^M
            
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# phylosim

Version: 3.0.2

## In both

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Document Class: article 2007/10/19 v1.4h Standard LaTeX document class
    (/usr/share/texlive/texmf-dist/tex/latex/base/size10.clo))
    (/usr/share/texlive/texmf-dist/tex/latex/psnfss/times.sty)
    
    ! LaTeX Error: File `fullpage.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    Enter file name: 
    ! Emergency stop.
    <read *> 
             
    l.19 \usepackage
                    {hyperref}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Transcript written on PhyloSim.log.
    make: *** [all] Error 1
    Error in buildVignettes(dir = "/netapp/home/hb/repositories/R.oo/revdep/checks/phylosim/new/phylosim.Rcheck/vign_test/phylosim") : 
      running 'make' failed
    Execution halted
    ```

# plmDE

Version: 1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Packages in Depends field not imported from:
      ‘R.oo’ ‘limma’ ‘splines’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    hist.DEresults: no visible global function definition for ‘hist’
    hist.DEresults: no visible global function definition for ‘colors’
    hist.DEresults: no visible global function definition for ‘box’
    limmaPLM: no visible global function definition for ‘quantile’
    plot.DEresults: no visible global function definition for ‘as.formula’
    plot.DEresults: no visible global function definition for ‘lm’
    plot.DEresults: no visible global function definition for ‘glm’
    plot.DEresults: no visible global function definition for ‘plot’
    plot.DEresults: no visible global function definition for ‘lines’
    plot.DEresults: no visible global function definition for ‘points’
    plot.DEresults: no visible global function definition for ‘predict’
    Undefined global functions or variables:
      anova as.formula box colors glm head hist lines lm median p.adjust pf
      plot points poisson predict quantile
    Consider adding
      importFrom("grDevices", "colors")
      importFrom("graphics", "box", "hist", "lines", "plot", "points")
      importFrom("stats", "anova", "as.formula", "glm", "lm", "median",
                 "p.adjust", "pf", "poisson", "predict", "quantile")
      importFrom("utils", "head")
    to your NAMESPACE file.
    ```

# R.devices

Version: 2.15.1

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘Cairo’
    ```

# R.rsp

Version: 0.42.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error: processing vignette 'RSP_refcard.tex.rsp' failed with diagnostics:
    Running 'texi2dvi' on 'RSP_refcard.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `titlesec.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.34 \titlespacing
                      {\section}{0pt}{2.0ex}{0.5ex}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Execution halted
    ```

# rtf

Version: 0.4-11

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    .forest.plot.scale: no visible global function definition for ‘axTicks’
    .forest.plot.scale : <anonymous>: no visible global function definition
      for ‘lines’
    .forest.plot.scale: no visible global function definition for ‘lines’
    .forest.plot.scale: no visible global function definition for ‘text’
    .rtf.plot: no visible global function definition for ‘png’
    .rtf.plot: no visible global function definition for ‘dev.off’
    .rtf.trellis.object: no visible global function definition for ‘png’
    .rtf.trellis.object: no visible global function definition for
      ‘dev.off’
    addSessionInfo.RTF: no visible global function definition for
      ‘sessionInfo’
    Undefined global functions or variables:
      abline arrows axTicks dev.off lines par plot png points sessionInfo
      text
    Consider adding
      importFrom("grDevices", "dev.off", "png")
      importFrom("graphics", "abline", "arrows", "axTicks", "lines", "par",
                 "plot", "points", "text")
      importFrom("utils", "sessionInfo")
    to your NAMESPACE file.
    ```

# tmle.npvi

Version: 0.10.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Error in re-building vignettes:
      ...
    Warning: running command 'kpsewhich framed.sty' had status 1
    Warning in test_latex_pkg("framed", system.file("misc", "framed.sty", package = "knitr")) :
      unable to find LaTeX package 'framed'; will use a copy from knitr
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'tmle-npvi.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `manfnt.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.59 \usepackage
                    [textwidth=15cm, textheight=23cm]{geometry}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
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

