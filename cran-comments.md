# CRAN submission R.oo 1.23.0

on 2019-11-02

I've verified that this submission causes no issues for the 31 reverse package dependency on CRAN and Bioconductor, except for packages 'polysim' and 'NSCP' which now produces new, non-breaking WARNINGs in R CMD check:

 1. The warning in 'polysim' is inevitable and will be possible to resolve by its maintainer only *after* R.oo 1.23.0 is on CRAN.

 2. The maintainer of NSCP have been notified multiple times about this change since May 2019.

Thanks in advance


## Notes not sent to CRAN

### R CMD check --as-cran validation

The package has been verified using `R CMD check --as-cran` on:

* Platform x86_64-apple-darwin15.6.0 (64-bit) [Travis CI]:
  - R version 3.5.3 (2019-03-11)
  - R version 3.6.1 (2019-07-05)

* Platform x86_64-unknown-linux-gnu (64-bit) [Travis CI]:
  - R version 3.5.3 (2017-01-27) [sic!]
  - R version 3.6.1 (2017-01-27) [sic!]
  - R Under development (unstable) (2019-11-02 r77358)

* Platform x86_64-pc-linux-gnu (64-bit) [r-hub]:
  - R version 3.6.1 (2019-07-05)
  - R Under development (unstable) (2019-10-26 r77334)

* Platform x86_64-pc-linux-gnu (64-bit):
  - R version 2.13.0 (2011-04-13)
  - R version 3.0.0 (2013-04-03)
  - R version 3.3.0 (2016-05-03)
  - R version 3.5.0 (2016-04-23)
  - R version 3.6.1 Patched (2019-10-31 r77348)

* Platform i386-pc-solaris2.10 (32-bit) [r-hub]:
  - R version 3.6.0 (2019-04-26)

* Platform x86_64-w64-mingw32 (64-bit) [r-hub]:
  - R Under development (unstable) (2019-10-19 r77318)

* Platform x86_64-w64-mingw32/x64 (64-bit) [AppVeyor CI]:
  - R version 3.6.1 (2019-07-05)

* Platform x86_64-w64-mingw32/x64 (64-bit) [win-builder]:
  - R version 3.6.1 (2019-07-05)
#  - R Under development (unstable) (2019-11-01 r77355)


## Non-tested

* Platform x86_64-w64-mingw32 (32-bit) [AppVeyor CI]:
  - R Under development (unstable) (2019-11-01 r77355)
  - REASON: Package required but not available: 'R.methodsS3'
  
* Platform x86_64-w64-mingw32/x64 (64-bit) [AppVeyor CI]:
  - R Under development (unstable) (2019-11-01 r77355)
  - REASON: Package required but not available: 'R.methodsS3'
