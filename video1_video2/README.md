# Lynda AWK Essential Training



## 01. Introduction

We'll need to have some experience with the command line and have an AWK installed. I'll be using mawk:

```{bash}
mawk -W v
```


### Exercise files

All of the exercise files for this course are in `../exercise_files`.

    ls -rohat ../exercise_files/
    total 432
    -rwxr-xr-x   1 snd    79K Dec  1 09:22 addresses.txt
    -rwxr-xr-x   1 snd   281B Dec  1 09:22 awk.out
    -rwxr-xr-x   1 snd    11K Dec  1 09:22 csv.awk
    -rwxr-xr-x   1 snd   264B Dec  1 09:22 dukeofyork.txt
    -rwxr-xr-x   1 snd    31K Dec  1 09:22 excel.xls
    -rwxr-xr-x   1 snd   207B Dec  1 09:22 excel_final.awk
    -rwxr-xr-x   1 snd    79B Dec  1 09:22 firstthree.awk
    -rwxr-xr-x   1 snd   370B Dec  1 09:22 join.awk
    -rwxr-xr-x   1 snd   316B Dec  1 09:22 makeofficers_final
    -rwxr-xr-x   1 snd   659B Dec  1 09:22 md.txt
    -rwxr-xr-x   1 snd   299B Dec  1 09:22 multiaddress.txt
    -rwxr-xr-x   1 snd   921B Dec  1 09:22 nameemailavg.csv
    -rwxr-xr-x   1 snd   1.2K Dec  1 09:22 nameemailavg.out
    -rwxr-xr-x   1 snd   262B Dec  1 09:22 names.txt
    -rwxr-xr-x   1 snd   1.3K Dec  1 09:22 nicknames.txt
    -rwxr-xr-x   1 snd   555B Dec  1 09:22 officers.html
    -rwxr-xr-x   1 snd   989B Dec  1 09:22 officers.txt
    -rwxr-xr-x   1 snd    62B Dec  1 09:22 onebigline.txt
    -rwxr-xr-x   1 snd   154B Dec  1 09:22 removethe.awk
    -rwxr-xr-x   1 snd   794B Dec  1 09:22 scores.txt
    -rwxr-xr-x   1 snd   518B Dec  1 09:22 scores_final.awk
    -rwxr-xr-x   1 snd    88B Dec  1 09:22 shortlong.awk
    -rwxr-xr-x   1 snd   109B Dec  1 09:22 shortlong.sh
    -rwxr-xr-x   1 snd    15B Dec  1 09:22 swap
    -rwxr-xr-x   1 snd   241B Dec  1 09:22 transpose.awk
    drwxr-xr-x  28 snd   896B Dec  1 09:22 .
    -rwxr-xr-x   1 snd   112B Dec  1 09:22 wordusage.awk
    drwxr-xr-x  25 snd   800B Apr 27 13:35 ..




## 02. What Is AWK


### Naming

It's named for Alfred *A*ho, Peter *W*einberger, and Brian *K*ernighan. If you search for Brian Kernighan, you'll find some videos with him talking about AWK (at least in part), such as: https://www.youtube.com/watch?v=Sg4U4r_AgJU. 


### Where it's found

In general, it's probably already installed on macOS and linux distros.

```
awk -version
awk version 20070501
```

```
mawk -W version
mawk 1.3.4 20171017
Copyright 2008-2016,2017, Thomas E. Dickey
Copyright 1991-1996,2014, Michael D. Brennan

random-funcs:       arc4random_stir/arc4random
regex-funcs:        internal
compiled limits:
sprintf buffer      8192
maximum-integer     2147483647
```


There's also, nAWK, gAWK, mAWK, and others. Here, I'll be sticking to mawk.


### What's it good for

Mostly for text processing and data operations.
 
 






















