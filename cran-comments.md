# CRAN submission R.oo 1.22.0

on 2018-04-21

This submission addresses issues related to the new S3 lookup strategy
implemented in R (>= 3.6.0), e.g. it will resolve the CRAN check errors
reported on the aroma.cn package.

I've verified that this submission causes no issues for any of the
32 reverse (non-recursive) package dependencies available on CRAN
and Bioconductor.

Thanks in advance


### R CMD check --as-cran validation

The package has been verified using `R CMD check --as-cran` on:

* Platform x86_64-apple-darwin13.4.0 (64-bit) [Travis CI]:
  - R version 3.3.3 (2017-03-06)

* Platform x86_64-apple-darwin15.6.0 (64-bit) [Travis CI]:
  - R version 3.4.4 (2018-03-15)

* Platform x86_64-unknown-linux-gnu (64-bit) [Travis CI]:
  - R version 3.3.3 (2017-03-06)
  - R version 3.4.4 (2018-03-15)
  - R Under development (unstable) (2018-04-21 r74624)

* Platform x86_64-pc-linux-gnu (64-bit) [r-hub]:
  - R version 3.4.4 (2018-03-15)
  - R Under development (unstable) (2018-04-14 r74601)

* Platform x86_64-pc-linux-gnu (64-bit):
  - R version 2.13.0 (2011-04-13)
  - R version 2.14.0 (2011-10-31)
  - R version 2.15.3 (2013-03-01)
  - R version 3.0.0 (2013-04-03)
  - R version 3.1.2 (2014-10-31)
  - R version 3.2.0 (2015-04-16)
  - R version 3.3.0 (2016-05-03)
  - R version 3.4.4 (2018-03-15)
  - R Under development (unstable) (2018-04-20 r74620)

* Platform i686-pc-linux-gnu (32-bit):
  - R version 3.4.4 (2018-03-15)

* Platform i386-pc-solaris2.10 (32-bit) [r-hub]:
  - R version 3.4.1 Patched (2017-07-15 r72924)

* Platform i386-w64-mingw32 (32-bit) [Appveyor CI]:
  - R Under development (unstable) (2018-04-20 r74620)

* Platform x86_64-w64-mingw32/x64 (64-bit) [Appveyor CI]:
  - R version 3.4.4 (2018-03-15)
  - R Under development (unstable) (2018-04-20 r74620)

* Platform x86_64-w64-mingw32 (64-bit) [r-hub]:
  - R Under development (unstable) (2018-04-18 r74618)

* Platform x86_64-w64-mingw32/x64 (64-bit) [win-builder]:
  - R version 3.4.4 (2018-03-15)
  - R version 3.5.0 RC (2018-04-16 r74620)
