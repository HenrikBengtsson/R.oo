# CRAN submission R.oo 1.20.0
on 2016-02-17

Updates related to R/CRAN:

* Explicit namespace imports also from 'utils' package.
* Plays nicer with the rJava package.

Thanks in advance


## Notes not sent to CRAN
The package has been verified using `R CMD check --as-cran` on:

* Platform x86_64-unknown-linux-gnu (64-bit) [Travis CI]:
  - R version 3.1.3 (2015-03-09)
  - R version 3.2.2 (2015-12-10)
  - R Under development (unstable) (2016-02-15 r70177)
  
* Platform x86_64-pc-linux-gnu (64-bit):
  - R version 2.13.1 (2011-07-08)
  - R version 2.15.3 (2013-03-01)
  - R version 3.0.3 (2014-03-06)
  - R version 3.1.3 (2015-03-09)
  - R version 3.2.3 (2015-12-10)
  - R version 3.2.3 Patched (2016-02-12 r70155)
  - R Under development (unstable) (2016-02-14 r70170)

* Platform: x86_64-apple-darwin10.8.0 (64-bit):
  - R version 3.2.3 Patched (2016-01-12 r69945)

* Platform i386-w64-mingw32 (32-bit) [Appveyor CI]:
  - R Under development (unstable) (2016-02-11 r70152)

* Platform x86_64-w64-mingw32/x64 (64-bit) [win-builder]:
  - R version 3.2.3 (2015-12-10)
  - R Under development (unstable) (2016-02-15 r70179)

* Platform x86_64-w64-mingw32/x64 (64-bit):
  - R version 3.1.3 (2015-03-09)
  - R version 3.2.3 Patched (2016-02-13 r70160)
  - R Under development (unstable) (2016-02-14 r70170)


Moreover, the updates cause no issues for any of the following
29 reverse dependencies on CRAN and Bioconductor: ACNE 0.8.1,
CellularAutomaton 1.1-1, DATforDCEMRI 0.55, IdMappingAnalysis 1.15.0,
IdMappingRetrieval 1.19.2, MPAgenomics 1.1.2, NPCD 1.0-9, NSA 0.0.32,
PSCBS 0.61.0, R.cache 0.12.0, R.devices 2.13.2, R.filesets 2.10.0,
R.huge 0.9.0, R.matlab 3.4.0, R.rsp 0.21.0, R.utils 2.2.0,
affxparser 1.43.0, aroma.affymetrix 3.0.0, aroma.apd 0.6.0,
aroma.cn 1.6.1,aroma.core 3.0.0, aroma.light 3.1.1, calmate 0.12.1,
cgdsr 1.2.5, curvetest 2.2, pathifier 1.9.0, plmDE 1.0, rtf 0.4-11 and
tmle.npvi 0.10.0.
