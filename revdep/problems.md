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
|date     |2016-09-03                   |

## Packages

|package     |*  |version     |date       |source                          |
|:-----------|:--|:-----------|:----------|:-------------------------------|
|R.methodsS3 |   |1.7.1       |2016-02-16 |cran (@1.7.1)                   |
|R.oo        |   |1.20.0-9000 |2016-09-03 |local (HenrikBengtsson/R.oo@NA) |

# Check results
4 packages with problems

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

## aroma.light (3.2.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/aroma.light/issues

0 errors | 1 warning  | 1 note 

```
checking examples ... WARNING
checking a package with encoding  'latin1'  in an ASCII locale

Examples with CPU or elapsed time > 5s
                    user system elapsed
normalizeCurveFit 12.154  0.008  12.171
normalizeAffine   11.733  0.008  11.751

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

