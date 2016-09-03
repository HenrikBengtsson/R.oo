# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.3.1 (2016-06-21) |
|system   |x86_64, linux-gnu            |
|ui       |X11                          |
|language |en                           |
|collate  |C                            |
|tz       |NA                           |
|date     |2016-09-02                   |

## Packages

|package     |*  |version     |date       |source                          |
|:-----------|:--|:-----------|:----------|:-------------------------------|
|R.methodsS3 |   |1.7.1       |2016-02-16 |cran (@1.7.1)                   |
|R.oo        |   |1.20.0-9000 |2016-09-03 |local (HenrikBengtsson/R.oo@NA) |

# Check results
7 packages with problems

## R.filesets (2.10.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/R.filesets/issues

2 errors | 0 warnings | 0 notes

```
checking examples ... ERROR
Running examples in 'R.filesets-Ex.R' failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: FullNameInterface
> ### Title: The FullNameInterface class interface
> ### Aliases: FullNameInterface
> ### Keywords: classes
> 
> ### ** Examples
> 
> # Setup a file set
> path <- system.file("R", package="R.filesets")
> ds <- GenericDataFileSet$byPath(path)
> 
> # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
> # Data set
> # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
> cat("Path of data set:\n")
Path of data set:
> print(getPath(ds))
Error: evaluation nested too deeply: infinite recursion / options(expressions=)?
Execution halted

checking tests ... ERROR
Running the tests in 'tests/ChecksumFile.R' failed.
Last 13 lines of output:
  Checksum on record: NA (checksum file missing)
  > 
  > 
  > ## Example files
  > path <- system.file("exData", "dataSetA,original", package="R.filesets")
  > print(path)
  [1] "/cbc/henrik/repositories/R.oo/revdep/checks/R.filesets.Rcheck/R.filesets/exData/dataSetA,original"
  > 
  > ## Setting up a file set
  > ds <- GenericDataFileSet$byPath(path)
  > print(ds)
  Error: evaluation nested too deeply: infinite recursion / options(expressions=)?
  Execution halted
```

## R.matlab (3.6.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/R.matlab/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in 'tests/Matlab.R' failed.
Last 13 lines of output:
            - readResult.Matlab() is in environment 'R.matlab'
  
    at #03. readResult(this)
            - readResult() is in environment 'R.matlab'
  
    at #02. evaluate.Matlab(matlab, "A=1+2;", "B=ones(2,20);")
            - evaluate.Matlab() is in environment 'R.matlab'
  
    at #01. evaluate(matlab, "A=1+2;", "B=ones(2,20);")
            - evaluate() is in environment 'R.matlab'
  
  Error: Expected an 'answer' from MATLAB, but kept receiving nothing. Tried 30 times at intervals of approximately 1 seconds. To change this, see ?setOption.Matlab.
  Execution halted
```

## R.rsp (0.30.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/R.rsp/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in 'tests/rsp_tests_online.R' failed.
Last 13 lines of output:
      Downloading URL...
       URL: http://latex-project.org/guides/usrguide.tex
  Error in download.file(url, destfile = pathnameT, mode = mode, quiet = !isVisible(verbose),  : 
    cannot open URL 'http://latex-project.org/guides/usrguide.tex'
  Calls: source ... downloadFile -> downloadFile.character -> download.file
  In addition: Warning message:
  In system2(bin, args = args, stderr = TRUE) : setting stdout = TRUE
      Downloading URL...done
     Compiling LaTeX document...done
    Processing...done
   Processing RSP product...done
  Processing RSP file...done
  Execution halted
```

## affxparser (1.44.0)
Maintainer: Kasper Daniel Hansen <kasperdanielhansen@gmail.com>  
Bug reports: https://github.com/HenrikBengtsson/affxparser/issues

0 errors | 1 warning  | 2 notes

```
checking compiled code ... WARNING
File 'affxparser/libs/affxparser.so':
  Found '_ZSt4cerr', possibly from 'std::cerr' (C++)
    Object: 'fusion_sdk/util/Verbose.o'
  Found '_ZSt4cout', possibly from 'std::cout' (C++)
    Objects: 'fusion_sdk/file/TsvFile/TsvFile.o',
      'fusion_sdk/util/Err.o'
  Found 'abort', possibly from 'abort' (C)
    Objects:
      'fusion_sdk/calvin_files/fusion/src/CalvinAdapter/CalvinCHPDataAdapter.o',
... 14 lines ...
    Objects: 'fusion_sdk/calvin_files/utils/src/AffymetrixGuid.o',
      'fusion_sdk/util/Verbose.o'
  Found 'srand', possibly from 'srand' (C)
    Object: 'fusion_sdk/calvin_files/utils/src/AffymetrixGuid.o'
  Found 'stdout', possibly from 'stdout' (C)
    Object: 'fusion_sdk/util/Util.o'

Compiled code should not call entry points which might terminate R nor
write to stdout/stderr instead of to the console, nor the system RNG.

See 'Writing portable packages' in the 'Writing R Extensions' manual.

checking for portable file names ... NOTE
Found the following non-portable file paths:
  affxparser/src/fusion_sdk/calvin_files/writers/src/CalvinCHPQuantificationDetectionFileBufferWriter.cpp
  affxparser/src/fusion_sdk/calvin_files/writers/src/CalvinCHPQuantificationDetectionFileBufferWriter.h

Tarballs are only required to store paths of up to 100 bytes and cannot
store those of more than 256 bytes, with restrictions including to 100
bytes for the final component.
See section 'Package structure' in the 'Writing R Extensions' manual.

checking installed package size ... NOTE
  installed size is 1024.8Mb
  sub-directories of 1Mb or more:
    libs  1024.2Mb
```

## aroma.affymetrix (3.0.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/aroma.affymetrix/issues

1 error  | 0 warnings | 1 note 

```
checking tests ... ERROR
Running the tests in 'tests/AffymetrixCelSet.R' failed.
Last 13 lines of output:
  
      averageQuantile, normalizeQuantile, plotDensity, plotMvsA,
      plotXYCurve
  
  The following object is masked from 'package:affxparser':
  
      writeCdf
  
  > 
  > ## Empty CEL set
  > ds <- AffymetrixCelSet()
  Error: evaluation nested too deeply: infinite recursion / options(expressions=)?
  Execution halted

checking installed package size ... NOTE
  installed size is 1028.1Mb
  sub-directories of 1Mb or more:
    R            1024.9Mb
    help            1.1Mb
    testScripts     1.2Mb
```

## aroma.light (3.2.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/aroma.light/issues

0 errors | 1 warning  | 1 note 

```
checking examples ... WARNING
checking a package with encoding  'latin1'  in an ASCII locale

Examples with CPU or elapsed time > 5s
                    user system elapsed
normalizeCurveFit 11.344  0.008  11.376
normalizeAffine   10.988  0.003  11.013

checking for hidden files and directories ... NOTE
Found the following hidden files and directories:
  inst/rsp/.rspPlugins
These were most likely included in error. See section 'Package
structure' in the 'Writing R Extensions' manual.
```

## rtf (0.4-11)
Maintainer: Michael E. Schaffer <mschaff@gmail.com>

0 errors | 1 warning  | 2 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
  Running 'texi2dvi' on 'rtf.tex' failed.
LaTeX errors:
! Package keyval Error: hidelinks undefined.

See the keyval package documentation for explanation.
Type  H <return>  for immediate help.
 ...                                              
Calls: buildVignettes -> texi2pdf -> texi2dvi
Execution halted


checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  addHeader.RTF addNewLine.RTF addPageBreak.RTF addParagraph.RTF
  addPlot.RTF addPng.RTF addSessionInfo.RTF addTOC.RTF addTable.RTF
  addText.RTF addTrellisObject.RTF decreaseIndent.RTF done.RTF
  endParagraph.RTF increaseIndent.RTF setFontSize.RTF
  startParagraph.RTF view.RTF
See section 'Registering S3 methods' in the 'Writing R Extensions'
manual.

checking R code for possible problems ... NOTE
.forest.plot: no visible global function definition for 'par'
.forest.plot: no visible global function definition for 'plot'
.forest.plot: no visible global function definition for 'abline'
.forest.plot: no visible global function definition for 'arrows'
.forest.plot: no visible global function definition for 'points'
.forest.plot.scale: no visible global function definition for 'par'
.forest.plot.scale: no visible global function definition for 'plot'
.forest.plot.scale: no visible global function definition for 'axTicks'
.forest.plot.scale : <anonymous>: no visible global function definition
... 9 lines ...
addSessionInfo.RTF: no visible global function definition for
  'sessionInfo'
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

