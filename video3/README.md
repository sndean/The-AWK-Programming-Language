---
title: "video3"
author: "snd"
date: "11/30/2018"
output: html_document
---



# Command line basics

## First awk program 

```{bash}
mawk '{print $2, $1}' ../exercise_files/names.txt
```


```{bash}
mawk '{print $1, $1}' ../exercise_files/names.txt
```


## Records, fields, etc.

In that first Awk program fields are columns, which are called by the `$` with a number for the first (`$1`) or second (`$2`) columns. 

Records are rows.

As another example. Here we'll pull the second field out of a file

```{bash}
mawk '{print $2}' ../exercise_files/dukeofyork.txt
```


To add the row (record) number, add `NR`

```{bash}
mawk '{print NR, $2}' ../exercise_files/dukeofyork.txt
```

To add the number of columns (fields) the row (record) contains, add `NF`

```{bash}
mawk '{print NF, $2}' ../exercise_files/dukeofyork.txt
```





### Contains a certain number of fields or finding certain words 


lines containing "up"

```{bash}
mawk '/up/{print NR, $0}' ../exercise_files/dukeofyork.txt
```



lines with six words

```{bash}
mawk 'NF==6{print NR, $0}' ../exercise_files/dukeofyork.txt
```



lines containing "up" and (`&&`) six words

```{bash}
mawk 'NF==6 && /up/{print NR, $0}' ../exercise_files/dukeofyork.txt
```


lines containg "hill" or (`||`) half

```{bash}
mawk '/hill/ || /half/{print NR, $0}' ../exercise_files/dukeofyork.txt
```

That last example with `/hill/ || /half/` suggests that mawk will first search for rows containing `hill`, then search for rows containing `half` since row 10 comes before row 7.


You can also print statements along with your output like so:

```{bash}
mawk '/hill/{print "Contains hill -->", NR, $0}' ../exercise_files/dukeofyork.txt
```



## Command line flags

### f

`swap` is a program that contains what are first program was

```{bash}
cat ../exercise_files/swap
```

swapping the first and last columns. To run this file we can't simply run `swap` after `mawk`. There needs to be a flag: `-f`

```{bash}
mawk -f ../exercise_files/swap ../exercise_files/names.txt
```


If you just run `mawk`, you'll see that `-f` is for reading a program's text in from a file (instead of from the command line) 

```{bash}
mawk
```



### F

`-F` changes the column delimiter (field separator)

Here if it's `' '` (a space), it correctly finds the number of words

```{bash}
awk -F ' ' '{print NF, "...field 5 -->", $5}' ../exercise_files/dukeofyork.txt
```


But if you switch it to find words using a tab delimiter, then you won't find any separated fields (just one big one)

```{bash}
awk -F '\t' '{print NF, "...field 5 -->", $5}' ../exercise_files/dukeofyork.txt
```




### v

`v` is for inputing variables 

```{bash}
mawk -v v="TEST" 'BEGIN {print $1, v}'
```



### |

You can pipe things into mawk by using... pipe (`|`). As a relatively realistic example

```{bash}
ls -rohat | mawk '{print NF, $4, $8}'
```

or in `uptime` the number of users is in the 3rd column (comma separated)

```{bash}
uptime | mawk -F , '{print $3}'
```

```{bash}
ls -rohat | mawk -F ' ' '{print $4, "\t\t", $8}' | sort -n
```





















