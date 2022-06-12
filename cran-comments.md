# CRAN submission R.oo 1.25.0

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
── R.oo 1.24.0-9003: OK

  Build ID:   R.oo_1.24.0-9003.tar.gz-b85fc850656f409c8a8c05fd85a26325
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  3m 25.4s ago
  Build time: 2m 17.8s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── R.oo 1.24.0-9003: OK

  Build ID:   R.oo_1.24.0-9003.tar.gz-0273f641e4d449af8f3bdefa8d5ef147
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  3m 25.4s ago
  Build time: 2m 4.6s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── R.oo 1.24.0-9003: OK

  Build ID:   R.oo_1.24.0-9003.tar.gz-edca7c306bd54b5f8c3562d209c61e1e
  Platform:   CentOS 8, stock R from EPEL
  Submitted:  3m 25.4s ago
  Build time: 1m 48.3s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── R.oo 1.24.0-9003: OK

  Build ID:   R.oo_1.24.0-9003.tar.gz-5dacda8c29e64744b60f49d7d0b50f3e
  Platform:   macOS 10.13.6 High Sierra, R-release, CRAN's setup
  Submitted:  3m 25.4s ago
  Build time: 1m 36.3s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── R.oo 1.24.0-9003: OK

  Build ID:   R.oo_1.24.0-9003.tar.gz-2121c8cae92846b49de42e2ad0a3ece1
  Platform:   Apple Silicon (M1), macOS 11.6 Big Sur, R-release
  Submitted:  3m 25.4s ago
  Build time: 53.8s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── R.oo 1.24.0-9003: OK

  Build ID:   R.oo_1.24.0-9003.tar.gz-1006a7cd6f03435abe24b8091e79e309
  Platform:   Windows Server 2008 R2 SP1, R-release, 32/64 bit
  Submitted:  3m 25.4s ago
  Build time: 3m 13.3s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
