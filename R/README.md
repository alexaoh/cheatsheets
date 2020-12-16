# Nice commands in R

Cheatsheet for some convenient commands in R.

## Plots

- Make figure with e.g. two subplots, divided into two rows and one column. 
```R
par(mfrow=c(2,1))
```


## Files

- Import csv.
```R
file = read.csv("path.to.file/filename.csv")
```

## Dataframes

- Show names/columns/variables.
```R
names(dataframe)
```

- Show dimension of dataframe.
```R
dim(dataframe)
```

- Show convenient summary of variables and the data.
```R
summary(dataframe)
```

- Attach the variables in the dataframe to the environment. This way the variables can be used directly, instead of exporting them each time via $-signs (as in lists).
```R
attach(dataframe)
```


