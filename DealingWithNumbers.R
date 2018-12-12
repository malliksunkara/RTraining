# create a string of double-precision values
dbl_var <- c(1, 2.5, 4.5)  
dbl_var


# placing an L after the values creates a string of integers
int_var <- c(1L, 6L, 10L)
int_var


# identifies the vector type (double, integer, logical, or character)
typeof(dbl_var)
typeof(int_var)


# converts integers to double-precision values
typeof(as.double(int_var) )    


# identical to as.double()
typeof(as.numeric(int_var))   

typeof(int_var)
# converts doubles to integers

typeof(as.integer(dbl_var) )


# create a vector of integers between 1 and 10
1:10         


# create a vector consisting of 1, 5, and 10
c(1, 5, 10)   


# save the vector of integers between 1 and 10 as object x
x <- 1:10 
x

# generate a sequence of numbers from 1 to 21 by increments of 2
seq(from = 1, to = 21, by = 2)             


# generate a sequence of numbers from 1 to 21 that has 15 equal incremented 
# numbers
seq(0, 21, length.out = 15)    

# replicates the values in x a specified number of times in a collated fashion
rep(1:4, times = 2)   

# replicates the values in x in an uncollated fashion
rep(1:4, each = 2)    

# Comparison Operators
x <- 9
y <- 10

x == y

x <- c(1, 4, 9, 12)
y <- c(4, 4, 9, 13)

x == y

# How many pairwise equal values are in vectors x and y
sum(x == y) 

# Where are the pairwise equal values located in vectors x and y
which(x == y)  

x <- c(4, 4, 9, 12)
y <- c(4, 4, 9, 13)

identical(x, y)

x <- c(4, 4, 9, 12)
y <- c(4, 4, 9, 12)

identical(x, y)

x <- c(4.00000005, 4.00000008)
y <- c(4.00000002, 4.00000006)

all.equal(x, y)

x <- c(4.005, 4.0008)
y <- c(4.002, 4.0006)

all.equal(x, y)

x <- c(1,1.35,1.7,2.05,2.4,2.75,3.1,3.45,3.8,4.15,4.5,4.85,5.2,5.55,5.9)

# Round to the nearest integer
round(x)


# Round up
ceiling(x)


# Round down
floor(x)


# Round to a specified decimal
round(x, digits = 1)






