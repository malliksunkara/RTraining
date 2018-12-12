#Dealing with Factors

# Creating, Converting & Inspecting Factors

# create a factor string
gender <- factor(c("male", "female", "female", "male", "female"))
gender


# inspect to see if it is a factor class
class(gender)


# show that factors are just built on top of integers
typeof(gender)


# See the underlying representation of factor
unclass(gender)


# what are the factor levels?
levels(gender)


# show summary of counts
summary(gender)

# character strings or integers we can easily convert to factors:
group <- c("Group1", "Group2", "Group2", "Group1", "Group1")
str(group)

# convert from characters to factors
as.factor(group)

# When creating a factor we can control the ordering of the levels by using the levels argument

# when not specified the default puts order as alphabetical
gender <- factor(c("male", "female", "female", "male", "female"))
gender


# specifying order
gender <- factor(c("male", "female", "female", "male", "female"), 
                 levels = c("male", "female"))
gender