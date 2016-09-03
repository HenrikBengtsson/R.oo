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
27 packages

## ACNE (0.8.1)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/ACNE/issues

0 errors | 0 warnings | 0 notes

## CellularAutomaton (1.1-1)
Maintainer: John Hughes <hughesj@umn.edu>

0 errors | 0 warnings | 2 notes

```
checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  .buildNeighborhood.CellularAutomaton .generateRule.CellularAutomaton
  .initializeGrid.CellularAutomaton .run.CellularAutomaton
  .validateOptions.CellularAutomaton getLattice.CellularAutomaton
  getNumberOfColors.CellularAutomaton getRadius.CellularAutomaton
  getRuleNumber.CellularAutomaton getSteps.CellularAutomaton
  getTotalistic.CellularAutomaton plot.CellularAutomaton
See section 'Registering S3 methods' in the 'Writing R Extensions'
manual.

checking R code for possible problems ... NOTE
plot.CellularAutomaton: no visible global function definition for
  'image'
Undefined global functions or variables:
  image
Consider adding
  importFrom("graphics", "image")
to your NAMESPACE file.
```

## DATforDCEMRI (0.55)
Maintainer: Gregory Z. Ferl <ferl.gregory@gene.com>

0 errors | 0 warnings | 5 notes

```
checking package dependencies ... NOTE
Depends: includes the non-default packages:
  'xtable' 'akima' 'R.oo' 'R.methodsS3' 'matlab' 'lattice' 'locfit'
  'grid'
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking installed package size ... NOTE
  installed size is 1024.1Mb
  sub-directories of 1Mb or more:
    data  1024.0Mb

checking DESCRIPTION meta-information ... NOTE
Deprecated license: CC BY-NC-SA 3.0

checking dependencies in R code ... NOTE
'library' or 'require' calls to packages already attached by Depends:
  'R.methodsS3' 'R.oo' 'akima' 'graphics' 'grid' 'lattice' 'locfit'
  'matlab' 'xtable'
  Please remove these calls from your code.
'library' or 'require' call to 'R.matlab' in package code.
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
Packages in Depends field not imported from:
  'R.methodsS3' 'R.oo' 'akima' 'grid' 'lattice' 'locfit' 'matlab'
  'xtable'
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.

checking R code for possible problems ... NOTE
DAT : DATrun : calch: no visible global function definition for
  'preplot'
DAT : DATrun: no visible global function definition for 'rot90'
DAT : DATrun: no visible global function definition for 'median'
DAT : DATrun: no visible global function definition for 'locfit.robust'
DAT : DATrun: no visible global function definition for 'preplot'
DAT : DATrun: no visible global function definition for 'dev.new'
DAT : DATrun: no visible global function definition for 'image'
DAT : DATrun: no visible global function definition for 'palette'
... 16 lines ...
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

## MPAgenomics (1.1.2)
Maintainer: Samuel Blanck <samuel.blanck@inria.fr>

0 errors | 0 warnings | 2 notes

```
checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  'R.devices' 'R.filesets' 'R.methodsS3' 'R.oo' 'aroma.affymetrix'
  'aroma.cn' 'aroma.core' 'aroma.light' 'matrixStats' 'snowfall'
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
Unexported object imported by a ':::' call: 'cghseg:::segmeanCO'
  See the note in ?`:::` about the use of this operator.

checking R code for possible problems ... NOTE
.varregtimescount: no visible global function definition for 'var'
CGHSEGaroma: no visible global function definition for 'read.csv'
CGHSEGaroma : <anonymous>: no visible global function definition for
  'points'
CGHSEGaroma : <anonymous>: no visible global function definition for
  'lines'
CGHSEGaroma : <anonymous>: no visible global function definition for
  'write.table'
CGHcall: no visible global function definition for 'mad'
... 43 lines ...
tumorboostPlot: no visible global function definition for 'par'
tumorboostPlot: no visible global function definition for 'axis'
tumorboostPlot: no visible global function definition for 'points'
Undefined global functions or variables:
  axis head lines lm mad median optim par points read.csv sd var
  write.table
Consider adding
  importFrom("graphics", "axis", "lines", "par", "points")
  importFrom("stats", "lm", "mad", "median", "optim", "sd", "var")
  importFrom("utils", "head", "read.csv", "write.table")
to your NAMESPACE file.
```

## NPCD (1.0-9)
Maintainer: Yi Zheng <yi.isabel.zheng@asu.edu>

0 errors | 0 warnings | 0 notes

## NSA (0.0.32)
Maintainer: Maria Ortiz-Estevez <mortizest@gmail.com>

0 errors | 0 warnings | 7 notes

```
checking package dependencies ... NOTE
Depends: includes the non-default packages:
  'R.methodsS3' 'MASS' 'matrixStats' 'R.oo' 'R.utils' 'aroma.core'
  'aroma.affymetrix' 'DNAcopy'
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking installed package size ... NOTE
  installed size is 1024.3Mb
  sub-directories of 1Mb or more:
    exData  1024.2Mb

checking top-level files ... NOTE
Non-standard file/directory found at top level:
  'incl'

checking dependencies in R code ... NOTE
Packages in Depends field not imported from:
  'DNAcopy' 'MASS' 'R.methodsS3' 'R.oo' 'aroma.affymetrix' 'aroma.core'
  'matrixStats'
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.

checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  NSAByTotalAndFracB.matrix allocateOutputDataSets.NSANormalization
  allocateOutputDataSets.SNPsNormalization
  allocateOutputDataSets.SampleNormalization
  as.character.NSANormalization as.character.SNPsNormalization
  as.character.SampleNormalization findArraysTodo.NSANormalization
  findArraysTodo.SampleNormalization findUnitsTodo.SNPsNormalization
  fitNSA.matrix fitNSAcnPs.matrix getDataSets.NSANormalization
  getDataSets.SNPsNormalization getDataSets.SampleNormalization
  getName.NSANormalization getName.SNPsNormalization
  getName.SampleNormalization getOutputDataSets.NSANormalization
  getOutputDataSets.SNPsNormalization
  getOutputDataSets.SampleNormalization getPath.NSANormalization
  getPath.SNPsNormalization getPath.SampleNormalization
  getRootPath.NSANormalization getRootPath.SNPsNormalization
  getRootPath.SampleNormalization process.NSANormalization
  process.SNPsNormalization process.SampleNormalization
  sampleNByTotalAndFracB.numeric snpsNByTotalAndFracB.matrix
See section 'Registering S3 methods' in the 'Writing R Extensions'
manual.

checking R code for possible problems ... NOTE
NB: .First.lib is obsolete and will not be used in R >= 3.0.0

.First.lib: no visible global function definition for
  'packageDescription'
NSAByTotalAndFracB.matrix: no visible global function definition for
  'throw'
NSAByTotalAndFracB.matrix: no visible global function definition for
  'str'
NSANormalization: no visible global function definition for 'throw'
... 279 lines ...
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

checking Rd line widths ... NOTE
Rd file 'NSANormalization.Rd':
  \examples lines wider than 100 characters:
     by <- 50e3; # 50kb bins; you may want to try with other amounts of smoothing xOut <- seq(from=xRange[1], to=xRange[2], by=by);
     plot(getSignals(cnCNPS), getSignals(cnSNPS), xlim=Clim, ylim=Clim); abline(a=0, b=1, col="red", lwd=2);

These lines will be truncated in the PDF manual.
```

## PSCBS (0.61.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/PSCBS/issues

0 errors | 0 warnings | 1 note 

```
checking installed package size ... NOTE
  installed size is 1025.7Mb
  sub-directories of 1Mb or more:
    data-ex  1024.0Mb
```

## R.cache (0.12.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/R.cache/issues

0 errors | 0 warnings | 0 notes

## R.devices (2.14.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/R.devices/issues

0 errors | 0 warnings | 0 notes

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

## R.huge (0.9.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/R.huge/issues

0 errors | 0 warnings | 0 notes

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

## R.utils (2.3.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/R.utils/issues

0 errors | 0 warnings | 0 notes

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

## aroma.apd (0.6.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/aroma.apd/issues

0 errors | 0 warnings | 0 notes

## aroma.cn (1.6.1)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/aroma.cn/issues

0 errors | 0 warnings | 0 notes

## aroma.core (3.0.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/aroma.core/issues

0 errors | 0 warnings | 2 notes

```
checking package dependencies ... NOTE
Packages suggested but not available for checking: 'expectile' 'mpcbs'

checking installed package size ... NOTE
  installed size is 1025.6Mb
  sub-directories of 1Mb or more:
    R  1024.5Mb
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

## calmate (0.12.1)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/calmate/issues

0 errors | 0 warnings | 0 notes

## cgdsr (1.2.5)
Maintainer: Augustin Luna <lunaa@cbio.mskcc.org>

0 errors | 0 warnings | 0 notes

## curvetest (2.2)
Maintainer: Zhongfa Zhang<zjz999@gmail.com>

0 errors | 0 warnings | 5 notes

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.

checking dependencies in R code ... NOTE
'library' or 'require' call to 'locfit' which was already attached by Depends.
  Please remove these calls from your code.
Packages in Depends field not imported from:
  'R.methodsS3' 'R.oo' 'locfit' 'methods'
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.

checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  lines.curvefit plot.curvefit print.curvefit print.curvetest
See section 'Registering S3 methods' in the 'Writing R Extensions'
manual.

checking R code for possible problems ... NOTE
curvefit: no visible global function definition for 'model.frame'
curvefit: no visible global function definition for 'model.response'
curvefit: no visible global function definition for 'model.matrix'
curvetest: no visible global function definition for 'model.frame'
curvetest: no visible global function definition for 'plot'
curvetest.raw: no visible global function definition for 'pt'
curvetest.raw: no visible global function definition for 'pnorm'
getoptimalalpha: no visible global function definition for 'gcvplot'
getoptimalalpha: no visible global function definition for 'plot'
lines.curvefit: no visible global function definition for 'lines'
plot.curvefit: no visible global function definition for 'plot'
plot.curvefit: no visible global function definition for 'lines'
plot.curvefit: no visible global function definition for 'points'
Undefined global functions or variables:
  gcvplot lines model.frame model.matrix model.response plot pnorm
  points pt
Consider adding
  importFrom("graphics", "lines", "plot", "points")
  importFrom("stats", "model.frame", "model.matrix", "model.response",
             "pnorm", "pt")
to your NAMESPACE file.

checking Rd line widths ... NOTE
Rd file 'alpha2h.Rd':
  \examples lines wider than 100 characters:
         (h=alpha2h(0.3, at=0.5, xseq=x))  ##get the window width h around x=.5 so that 30% data points of xseq fall in the area.  

Rd file 'curvefit.Rd':
  \usage lines wider than 90 characters:
     curvefit(formula, data, kernel = "Quartic", alpha = 0.5, bw = NULL, myx, bcorrect = "simple", getit = F)

Rd file 'curvetest.Rd':
  \usage lines wider than 90 characters:
     curvetest(formula, data1 = NULL, data2 = NULL, equal.var = TRUE, alpha = 0.5, bw = NULL, plotit = TRUE, conf.level = 0.05, kernel = c(" ... [TRUNCATED]
  \examples lines wider than 100 characters:
         curvetest(y~x,data.frame(x=x1,y=y1), data.frame(x=x2,y=y2), alpha =  0.7, equal.var=TRUE,plotit=TRUE) 

These lines will be truncated in the PDF manual.
```

## pathifier (1.10.0)
Maintainer: Assif Yitzhaky <assif.yitzhaky@weizmann.ac.il>

0 errors | 0 warnings | 2 notes

```
checking installed package size ... NOTE
  installed size is 1024.2Mb
  sub-directories of 1Mb or more:
    data  1024.0Mb

checking R code for possible problems ... NOTE
.getpathway: no visible global function definition for 'var'
.samplings_stdev: no visible binding for global variable 'sd'
.score_pathway: no visible binding for global variable 'sd'
.score_pathway: no visible global function definition for 'aggregate'
.score_pathway: no visible global function definition for 'dist'
quantify_pathways_deregulation: no visible binding for global variable
  'sd'
quantify_pathways_deregulation: no visible global function definition
  for 'prcomp'
Undefined global functions or variables:
  aggregate dist prcomp sd var
Consider adding
  importFrom("stats", "aggregate", "dist", "prcomp", "sd", "var")
to your NAMESPACE file.
```

## plmDE (1.0)
Maintainer: Jonas <jonasmueller303@hotmail.com>

0 errors | 0 warnings | 4 notes

```
checking dependencies in R code ... NOTE
Packages in Depends field not imported from:
  'R.oo' 'limma' 'splines'
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.

checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  head.DEresults head.plmDE hist.DEresults info.plmDE
  plmDEmodel.default plot.DEresults
See section 'Registering S3 methods' in the 'Writing R Extensions'
manual.

checking R code for possible problems ... NOTE
fitBspline: no visible global function definition for 'median'
fitBspline: no visible global function definition for 'quantile'
fitGAPLM: no visible global function definition for 'poisson'
fitGAPLM: no visible global function definition for 'quantile'
fitGAPLM: no visible global function definition for 'anova'
fitGAPLM: no visible global function definition for 'as.formula'
fitGAPLM: no visible global function definition for 'glm'
fitGAPLM: no visible global function definition for 'pf'
fitGAPLM: no visible global function definition for 'lm'
... 14 lines ...
plot.DEresults: no visible global function definition for 'predict'
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

checking Rd line widths ... NOTE
Rd file 'info.plmDE.Rd':
  \examples lines wider than 100 characters:
     DataInfo = data.frame(sample = names(ExpressionData), group = c(rep("Control", 50), rep("Diseased", 50)), weight = abs(rnorm(100, 50, 2 ... [TRUNCATED]

These lines will be truncated in the PDF manual.
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

## tmle.npvi (0.10.0)
Maintainer: Pierre Neuvial <pierre.neuvial@genopole.cnrs.fr>

0 errors | 0 warnings | 2 notes

```
checking installed package size ... NOTE
  installed size is 1024.6Mb
  sub-directories of 1Mb or more:
    data  1024.0Mb

checking R code for possible problems ... NOTE
NPVI: no visible global function definition for 'quantile'
SL.glm.condExpX2givenW: no visible global function definition for
  'as.formula'
SL.glm.condExpX2givenW: no visible global function definition for 'glm'
SL.glm.condExpXYgivenW: no visible global function definition for
  'as.formula'
SL.glm.condExpXYgivenW: no visible global function definition for 'glm'
SL.glm.g: no visible global function definition for 'as.formula'
SL.glm.g: no visible global function definition for 'glm'
... 55 lines ...
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

