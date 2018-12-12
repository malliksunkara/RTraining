## Creating Strings

a <- "learning to create"    # create string a
b <- "character strings"     # create string b

# paste together string a & b
paste(a, b)                      


# paste character and number strings (converts numbers to character class)
paste("The life of", pi)           


# paste multiple strings
paste("I", "love", "R")            


# paste multiple strings with a separating character
paste("I", "love", "R", sep = "-")  


# use paste0() to paste without spaces btwn characters
paste0("I", "love", "R")            


# paste objects with different lengths
paste("R", 1:5, sep = " v1.")       

#Converting to Strings
a <- "The life of"    
b <- pi

is.character(a)

is.character(b)

c <- as.character(b)
is.character(c)

toString(c("Aug", 24, 1980))

# common printing functions
#print(): generic printing
#noquote(): print with no quotes
#cat(): concatenate and print with no quotes
#sprintf(): a wrapper for the C function sprintf, that returns a character vector containing a 
#formatted combination of text and variable values

# print()
x <- "learning to print strings"    

# basic printing
print(x)                

# print without quotes
print(x, quote = FALSE)  

noquote(x)

 # Another very useful function is cat() which allows us to concatenate objects and print them either 
# on screen or to a file. The output result is very similar to noquote();
# however, cat() does not print the numeric line indicator. As a result, cat() can be useful for printing nicely 
# formated responses to users.

# basic printing (similar to noquote)
cat(x)                   
## learning to print strings

# combining character strings
cat(x, "in R")           
## learning to print strings in R

# basic printing of alphabet
cat(letters)             
## a b c d e f g h i j k l m n o p q r s t u v w x y z

# specify a seperator between the combined characters
cat(letters, sep = "-")  
## a-b-c-d-e-f-g-h-i-j-k-l-m-n-o-p-q-r-s-t-u-v-w-x-y-z

# collapse the space between the combine characters
cat(letters, sep = "")   
## abcdefghijklmnopqrstuvwxyz

x <- "Today I am learning how to print strings."
y <- "Tomorrow I plan to learn about textual analysis."
z <- "The day after I will take a break and drink a beer."

cat(x, y, z, fill = 0)

cat(x, y, z, fill = 1)


#To substitute in a string or string variable, use %s:

x <- "print strings"

# substitute a single string/variable
sprintf("Learning to %s in R", x)    


# substitute multiple strings/variables
y <- "in R"
sprintf("Learning to %s %s", x, y)   

# For integers, use %d or a variant:
version <- 3

# substitute integer
sprintf("This is R version:%d", version)

# print with leading spaces
sprintf("This is R version:%4d", version)   

# can also lead with zeros
sprintf("This is R version:%04d", version)

#%f for standard notation, and %e or %E
sprintf("%f", pi)         # '%f' indicates 'fixed point' decimal notation


sprintf("%.3f", pi)       # decimal notation with 3 decimal digits


sprintf("%1.0f", pi)      # 1 integer and 0 decimal digits


sprintf("%5.1f", pi)      # decimal notation with 5 total decimal digits and 
                          # only 1 to the right of the decimal point

sprintf("%05.1f", pi)     # same as above but fill empty digits with zeros


sprintf("%+f", pi)        # print with sign (positive)


sprintf("% f", pi)        # prefix a space

sprintf("%e", pi)         # exponential decimal notation 'e'


sprintf("%E", pi)         # exponential decimal notation 'E'

# elements in a string use length()

length("How many elements are in this string?")

length(c("How", "many", "elements", "are", "in", "this", "string?"))

# string use nchar()
nchar("How many characters are in this string?")


nchar(c("How", "many", "characters", "are", "in", "this", "string?"))




x <- "Learning To MANIPULATE strinGS in R"

tolower(x)

toupper(x)

# replace a character
# chartr()
?chartr

# Extract/Replace Substrings

alphabet <- paste(LETTERS, collapse = "")

# extract 18th character in string
substr(alphabet, start = 18, stop = 18)


# extract 18-24th characters in string
substr(alphabet, start = 18, stop = 24)


# replace 1st-17th characters with `R`
substr(alphabet, start = 19, stop = 24) <- "RRRRRR"
alphabet

#String manipulation with stringr
# install stringr package
install.packages("stringr")

# load package
library(stringr)

#Concatenate with str_c()
#Number of characters with str_length()
#Substring with str_sub()

# same as paste0()
str_c("Learning", "to", "use", "the", "stringr", "package")


# same as paste()
str_c("Learning", "to", "use", "the", "stringr", "package", sep = " ")


# allows recycling 
str_c(letters, " is for", "...")







