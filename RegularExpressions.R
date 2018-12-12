# Basic matches

# install stringr package
install.packages("stringr")

# load package
library(stringr)

x <- c("apple", "banana", "pear")
str_extract(x, "an")

bananas <- c("banana", "Banana", "BANANA")
str_detect(bananas, "banana")

str_detect(bananas, regex("banana", ignore_case = TRUE))

str_extract(x, ".a.")

str_detect("\nX\n", ".X.")

#You can allow . to match everything, including \n, by setting dotall = TRUE:

str_detect("\nX\n", regex(".X.", dotall = TRUE))

# output is same as input
x <- "a\\b"
writeLines(x)

str_extract(x, "\\\\")

# to get help on regular expression we have
help(regex)
# Metacharacters
# .    \\\    |    (    )    [    {    $    *    +   ?
# To match metacharacters in R you need to escape them with a double backslash "\\".
# we can see the meta charaters in image 

# examples to show how to use the escape syntax to find and replace metacharacters.

# substitute $ with !
sub(pattern = "\\$", "\\!", "I love R$")


# substitute ^ with carrot
sub(pattern = "\\^", "carrot", "My daughter has a ^ with almost every meal!")


# substitute \\ with whitespace
gsub(pattern = "\\\\", " ", "I\\need\\space")

#Sequences
#To match a sequence of characters we can apply short-hand notation which captures the fundamental types of sequences.
# image contain the sequences

# substitute any digit with an underscore
gsub(pattern = "\\d", "_", "I'm working in RStudio v.0.99.484")


# substitute any non-digit with an underscore
gsub(pattern = "\\D", "_", "I'm working in RStudio v.0.99.484")


# substitute any whitespace with underscore
gsub(pattern = "\\s", "_", "I'm working in RStudio v.0.99.484")


# substitute any wording with underscore
gsub(pattern = "\\w", "_", "I'm working in RStudio v.0.99.484")


#Character classes

# To match one of several characters in a specified set we can enclose the characters of concern with square brackets [ ].
# In addition, to match any characters not in a specified character set we can include the caret ^ at the beginning of the set within the brackets.
# image displays the list of characters

x <- c("RStudio", "v.0.99.484", "2015", "09-22-2015", "grep vs. grepl")

# find any strings with numeric values between 0-9
grep(pattern = "[0-9]", x, value = TRUE)


# find any strings with numeric values between 6-9
grep(pattern = "[6-9]", x, value = TRUE)


# find any strings with the character R or r
grep(pattern = "[Rr]", x, value = TRUE)


# find any strings that have non-alphanumeric characters
grep(pattern = "[^0-9a-zA-Z]", x, value = TRUE)


#Quantifiers
# When we want to match a certain number of characters that meet a certain criteria we can apply quantifiers to our pattern searches.

# Note that state.name is a built in dataset within R that contains all the U.S. state names

# match states that contain z 
grep(pattern = "z+", state.name, value = TRUE)


# match states with two s
grep(pattern = "s{2}", state.name, value = TRUE)


# match states with one or two s
grep(pattern = "s{1,2}", state.name, value = TRUE)

## pattern replacement functions

# To replace the first matching occurrence of a pattern use sub():

new <- c("New York", "new new York", "New New New York")
new


# Default is case sensitive
sub("New", replacement = "Old", new)


# use 'ignore.case = TRUE' to perform the obvious
sub("New", replacement = "Old", new, ignore.case = TRUE)

# To replace all matching occurrences of a pattern use gsub():

# Default is case sensitive
gsub("New", replacement = "Old", new)


# use 'ignore.case = TRUE' to perform the obvious
gsub("New", replacement = "Old", new, ignore.case = TRUE)

# Regex Functions with stringr
# install stringr package
install.packages("stringr")

# load package
library(stringr)

# use the built in data set 'state.name'
head(state.name)


str_detect(state.name, pattern = "New")


# count the total matches by wrapping with sum
sum(str_detect(state.name, pattern = "New"))

# Locating Patterns
# To locate the occurrences of patterns stringr offers two options: i) locate the first matching occurrence or ii) locate all occurrences. 
# To locate the position of the first occurrence of a pattern in a string vector use str_locate()


# locate 1st sequence of 1 or more consecutive numbers
x <- c("abcd", "a22bc1d", "ab3453cd46", "a1bc44d")
str_locate(x, "[0-9]+")



