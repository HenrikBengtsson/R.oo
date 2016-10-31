# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.3.1 (2016-06-21) |
|system   |x86_64, linux-gnu            |
|ui       |X11                          |
|language |en                           |
|collate  |en_US.UTF-8                  |
|tz       |US/Pacific                   |
|date     |2016-10-30                   |

## Packages

|package     |*  |version     |date       |source                          |
|:-----------|:--|:-----------|:----------|:-------------------------------|
|R.methodsS3 |   |1.7.1       |2016-02-16 |CRAN (R 3.3.1)                  |
|R.oo        |   |1.20.0-9000 |2016-10-31 |local (HenrikBengtsson/R.oo@NA) |

# Check results
1 packages with problems

## affxparser (1.46.0)
Maintainer: Kasper Daniel Hansen <kasperdanielhansen@gmail.com>  
Bug reports: https://github.com/HenrikBengtsson/affxparser/issues

0 errors | 1 warning  | 2 notes

```
checking compiled code ... WARNING
File ‘affxparser/libs/affxparser.so’:
  Found ‘_ZSt4cerr’, possibly from ‘std::cerr’ (C++)
    Object: ‘fusion_sdk/util/Verbose.o’
  Found ‘_ZSt4cout’, possibly from ‘std::cout’ (C++)
    Objects: ‘fusion_sdk/file/TsvFile/TsvFile.o’,
      ‘fusion_sdk/util/Err.o’
  Found ‘abort’, possibly from ‘abort’ (C)
    Objects:
      ‘fusion_sdk/calvin_files/fusion/src/CalvinAdapter/CalvinCHPDataAdapter.o’,
... 14 lines ...
    Objects: ‘fusion_sdk/calvin_files/utils/src/AffymetrixGuid.o’,
      ‘fusion_sdk/util/Verbose.o’
  Found ‘srand’, possibly from ‘srand’ (C)
    Object: ‘fusion_sdk/calvin_files/utils/src/AffymetrixGuid.o’
  Found ‘stdout’, possibly from ‘stdout’ (C)
    Object: ‘fusion_sdk/util/Util.o’

Compiled code should not call entry points which might terminate R nor
write to stdout/stderr instead of to the console, nor the system RNG.

See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.

checking for portable file names ... NOTE
Found the following non-portable file paths:
  affxparser/src/fusion_sdk/calvin_files/writers/src/CalvinCHPQuantificationDetectionFileBufferWriter.cpp
  affxparser/src/fusion_sdk/calvin_files/writers/src/CalvinCHPQuantificationDetectionFileBufferWriter.h

Tarballs are only required to store paths of up to 100 bytes and cannot
store those of more than 256 bytes, with restrictions including to 100
bytes for the final component.
See section ‘Package structure’ in the ‘Writing R Extensions’ manual.

checking installed package size ... NOTE
  installed size is 14.5Mb
  sub-directories of 1Mb or more:
    libs  13.9Mb
```

