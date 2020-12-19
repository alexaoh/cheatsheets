###############################################################
# This is the R script for the "Plotting in R" (Part 5, ggplot2)
# Introduction into R programming, plotting with ggplot2
###############################################################


#######################################################
# Plotting with ggplot2
# X-Y plot and other basics
#######################################################

# Before using ggplot2 the first time, install it, plus some other packages we need here
# install.packages("ggplot2")]
# install.packages("car")
# install.packages("GGally")

library(ggplot2)
library(car)

### Introductory example

df <- read.csv('df.csv')
str(df)
head(df)

plot(df$weight ~ df$height,
     ylab="Weight (kg)", xlab="Height (m)")
# These two are the same.
plot(weight ~ height, data=df, ylab="Weight (kg)", xlab="Height (m)")

ggplot(df, aes(x=height,y=weight, shape=gender, colour = gender)) + 
  geom_point(size=2) + 
  xlab("Height(m)") + 
  ylab("Weight (kg)") +
  theme_bw()


#######################################################
# Different plot types
#######################################################

### Scatterplots

# The SLID data set is available from the car package

?SLID

# We only use rows without missing values
SLID = na.omit(SLID)

ggplot(SLID, aes(education, wages)) + 
  geom_point() + 
  labs(title = "Scatterplot") +
  xlab("Education") + 
  ylab("Wages") +
  theme_bw()


ggplot(SLID, aes(education, wages)) + 
  geom_point(aes(color = language)) + 
  labs(title = "Scatterplot") +
  xlab("Education") + 
  ylab("Wages") +
  facet_wrap(~language) + 
  theme_bw() +
  theme_minimal()

ggplot(SLID, aes(education, wages)) +
  geom_point(aes(color = sex)) +
  labs(title = "Scatterplot") +
  xlab("Education") +
  ylab("Wages") +
  facet_wrap(~sex) +
  theme_bw() 

ggplot(SLID, aes(education, wages)) +
  geom_point(aes(color = sex)) +
  labs(title = "Scatterplot") +
  xlab("Education") +
  ylab("Wages") +
  facet_wrap(~sex + language) +
  theme_bw() 

ggplot(SLID, aes(education, wages)) +
  geom_point(aes(color = sex)) +
  labs(title = "Scatterplot") +
  xlab("Education") +
  ylab("Wages") +
  facet_grid(sex ~ language) +
  theme_bw() 
                          

### Histograms and density plots

# The standard histogram with counts on the y-axis
ggplot(SLID, aes(wages)) + 
  geom_histogram(binwidth = 2) + 
  labs(title = "Histogram") +
  xlab("Wages") +
  ylab("Frequency") +
  theme_minimal()

# The histogram with density on the y-axis
ggplot(SLID, aes(wages)) + 
  geom_histogram(binwidth = 2,aes(y=..density..)) + 
  labs(title = "Histogram") +
  xlab("Wages") +
  ylab("Frequency") +
  theme_minimal()

# Density plot

ggplot(SLID, aes(wages)) + 
  geom_density(color="darkblue", fill="lightblue",adjust = 2) +
  labs(title = "Density") +
  xlab("Wages") +
  ylab("Frequency") +
  theme_minimal()
  
?geom_density
?density


### Boxplots

ggplot(SLID, aes(x=language, y=wages)) +
  geom_boxplot(fill = "skyblue") +
  labs(title = "Box Plot") +
  theme_minimal()


### Pairs plots

library(GGally)
ggpairs(SLID) + theme_minimal()

# The more efficient (but less functional) base R version:
pairs(SLID)
                                                                                             