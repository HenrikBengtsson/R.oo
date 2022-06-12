# CRAN submission R.oo 1.24.1

on 2022-06-11

I've verified this submission has no negative impact on any of the 26 reverse package dependencies available on CRAN and Bioconductor.

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version     | GitHub | R-hub    | mac/win-builder |
| ------------- | ------ | -------- | --------------- |
| 3.4.x         | L      |          |                 |
| 3.6.x         | L      |          |                 |
| 4.0.x         | L      |          |                 |
| 4.1.x         | L M W  |          |                 |
| 4.2.x         | L M W  | L M M1 W | M1 W            |
| devel         | L . W  | L        |    W            |

*Legend: OS: L = Linux, M = macOS, M1 = macOS M1, W = Windows*


R-hub checks:

```r
res <- rhub::check(platform = c(
  "debian-clang-devel", "debian-gcc-patched", "linux-x86_64-centos-epel",
  "macos-highsierra-release-cran", "macos-m1-bigsur-release",
  "windows-x86_64-release"))
print(res)
```

gives

```
── R.oo 1.24.0-9002: OK

  Build ID:   R.oo_1.24.0-9002.tar.gz-49210f45c24f483d998ef7f3ac85fca0
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  3m 3.7s ago
  Build time: 2m 38.2s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── R.oo 1.24.0-9002: OK

  Build ID:   R.oo_1.24.0-9002.tar.gz-728132be2f2e456bb975a2c1b21a8a46
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  3m 3.7s ago
  Build time: 2m 15.4s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── R.oo 1.24.0-9002: OK

  Build ID:   R.oo_1.24.0-9002.tar.gz-4e9a4d52b1c84be698d1ce921e2c1e89
  Platform:   CentOS 8, stock R from EPEL
  Submitted:  3m 3.7s ago
  Build time: 1m 56s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── R.oo 1.24.0-9002: OK

  Build ID:   R.oo_1.24.0-9002.tar.gz-e7ceb3ca22ef4896a05867a8a1726bef
  Platform:   macOS 10.13.6 High Sierra, R-release, CRAN's setup
  Submitted:  3m 3.7s ago
  Build time: 1m 44.6s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── R.oo 1.24.0-9002: OK

  Build ID:   R.oo_1.24.0-9002.tar.gz-d920632473af446ea76a73a44f876cbe
  Platform:   Apple Silicon (M1), macOS 11.6 Big Sur, R-release
  Submitted:  3m 3.7s ago
  Build time: 55.4s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── R.oo 1.24.0-9002: OK

  Build ID:   R.oo_1.24.0-9002.tar.gz-3f34c6e850c847ceb2134286b8809a6e
  Platform:   Windows Server 2008 R2 SP1, R-release, 32/64 bit
  Submitted:  3m 47.8s ago
  Build time: 3m 21.3s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
