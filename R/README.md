# Nice commands in R

Cheat sheet for some convenient commands in R.

## Basics

- Some basic operations and functions on a vector x.
```R
log(x) # Natural log.
log10(x) # Base 10 log.
exp(y)
min(x)
max(x)
sum(x)
mean(x)
var(x)
length(x)
sort(x)
order(x) # Sort/order along more than one variable, e.g. for sorting data frames. 
sort(x) == x[order(x)] # True for vectors.
t(x) # Transpose.
```

- Inner product between x and y.
```R
t(x) %*% y
```

- Outer product between x and y.
```R
x %*% t(y)
```

- "in"-operator.
```R
%in%
```

- Make vector of factor variables and make table.
```R
factor.variables <- factor(c('elements of vector'))
table(factor.variables)
```

## Matrices

- Matrix multiplication operator.
```R
%*%
```

- Make matrix by column (default).
```R
matrix(1:5, nrow = 3, ncol = 2) # E.g.
```

- Make matrix by row.
```R
matrix(1:5, nrow = 3, ncol = 2, byrow = TRUE) # E.g.
```

- Make matrix by binding vectors x1, x2 and x3 (e.g.) by row.
```R
rbind(x1, x2, x3)
```

- Make matrix by binding vectors x1, x2 and x3 (e.g.) by row.
```R
cbind(x1, x2, x3)
```

- Useful matrix commands.
```R
dim(A) 
nrow(A) # Number of rows.
ncol(A) # Number of columns.
apply(A, 1, sum) # Apply the sum function to the rows of A.
apply(A, 2, sum) # Apply the sum function to the columns of A.
sum(diag(A)) # Trace of A.

A = diag(1:3) # A 3 by 3 diagonal matrix with entries 1, 2, 3.
solve(A) # Inverse of A, in general solve(A,b) solves Ax=b wrt x.
det(A) # Determinant of A.
```

## Plots

- Make figure with e.g. two subplots, divided into two rows and one column. 
```R
par(mfrow=c(2,1))
```

- Save several plots to the same pdf file.
```R
pdf("path.to.directory/plot(s)name.pdf") # Generate pdf. 

# Run desired plot commands.
plot(y ~ x, main = "My first plot")
plot(x1, y1, main = "My second plot")

dev.off() # Close the plotting environment. 
```

## Files

- Import csv.
```R
file <- read.csv("path.to.file/filename.csv")
```

- Export data.
```R
write.table(file, file = "~/path.to.file/any_new_file_name.csv",sep=",",quote = FALSE, row.names = F)
```

## Data frames

- Convenient commands to check data. 
```R
names(dataframe) # Variable names.
dim(dataframe) # Dimensions.
head(dataframe, n = 6) # Show first n (default is 6 already) values per column.
tail(dataframe, n = 6) # Show last n (default is 6 already) values per column.
str(datafram) # Display structure: data types, some abbreviated values, etc. 
summary(dataframe) # Show convenient summary of essential statistics. 
```

- Attach the variables in the dataframe to the environment. This way the variables can be used directly, instead of exporting them each time via $-signs (as in lists).
```R
attach(dataframe)
```

## Extra

- Clear R's brain.
```R
rm(list=ls())
```

- [Perhaps useful when working with data (?)](https://www.datacamp.com/community/tutorials/r-data-import-tutorial?utm_source=adwords_ppc&utm_campaignid=898687156&utm_adgroupid=48947256715&utm_device=c&utm_keyword=&utm_matchtype=b&utm_network=g&utm_adpostion=&utm_creative=332602034349&utm_targetid=aud-392016246653:dsa-473406573035&utm_loc_interest_ms=&utm_loc_physical_ms=1010976&gclid=Cj0KCQjwhb36BRCfARIsAKcXh6EeW4E0Cx9E84WvjoWgjiR2fI5RysSu9kSOHJ90HFKXaRjqGM9-PPcaApoZEALw_wcB)

- [Guide to exporting nice plots in R](https://www.r-bloggers.com/2013/02/exporting-nice-plots-in-r/)
