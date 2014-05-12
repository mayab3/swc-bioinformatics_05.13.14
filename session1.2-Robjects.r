## session 1.2 R objects 
gDat  <- read.delim("gapminderDataFiveYear.txt") # reads in dataset, lots of options to change the variables at import 
str(gDat) # prints dataset structure so you can see it 
head(gDat, n=10) # opens the first 10 lines of a dataset 
tail(gDat) # prints bottom 6 lines of a dataset
names(gDat) # gives column headings to dataset
dim(gDat) # gives dimensions of the dataset (rows,cols)
nrow(gDat) # num of rows
ncol(gDat) # num of cols of datset
length(gDat)
summary(gDat) # basic overview of dataset 
plot(lifeExp~year, data=gDat) # plot lifeExp (y) vs year (x) and get these variables from the data fram gDat
plot(lifeExp~gdpPercap, data=gDat)
str (gDat)
gDat$lifeExp # pulls out variable from data frame gDat
hist(gDat$lifeExp) # plots variable from data gram gDat as a histrogram
hist(gDat$gdpPercap)
gDat$continent # continent is actually a "factor" which is integer dataset with 5 levels where 1 = Africa, etc. 
as.character(gDat$continent) # turns the continent variable from a "factor" into a character (strings)

# want to subset a dataset 
subset(gDat, subset=country == "Cambodia") # extracts the corresponding rows with the country equal to Cambodia 
subset(gDat, subset=lifeExp <32)
subset(gDat, subset=lifeExp <32, select=c(country, lifeExp, pop)) # to subset a dataset by rows and columns 

# store as an object 
mydata  <- subset(gDat, subset=lifeExp <32, select=c(country, lifeExp, pop)) # assigns to an object (variable)
mean(mydata$lifeExp)

# plot only a subset of the data 
plot(lifeExp~year, data=gDat, subset=country=="Spain")
lm (lifeExp~year, data=gDat, subset=country=="Canada")

with(gDat, mean(lifeExp)) # using the "with" allows you to get the mean of lifeExp - have to use "with" because "mean" is not supported by the subset function
with(subset(gDat, subset=country=="Canada"), mean(lifeExp)) 

## Types of objects: 
# data.frame, vertices, matrices

# Vectors 
x  <- 5
x  <-  c(3,5) # c means to concantenate
x[3]  <- 4 # puts another value in third element 
x^2 # sqaures all the elements in x 

x  <- c(1,3, "cabbage") # if you put a string as one of the elements it will make everything a string 
class(x)

# Matrices 
# different from data.frames in that they are all one type of variable (i.e. characters, numeric, logicals, etc)
# most of functions (excluding a linear algebra for examples) work on a data.frame
x  <- cbind(1:5, c("a", "b", "c", "d", "e"))

