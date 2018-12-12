# Test for missing values
# vector with missing data
x <- c(1:4, NA, 6:7, NA)
x


is.na(x)


# data frame with missing data
df <- data.frame(col1 = c(1:3, NA),
                 col2 = c("this", NA,"is", "text"), 
                 col3 = c(TRUE, FALSE, TRUE, TRUE), 
                 col4 = c(2.5, 4.2, 3.2, NA),
                 stringsAsFactors = FALSE)

# identify NAs in full data frame
is.na(df)


# identify NAs in specific data frame column
is.na(df$col4)

# identify location of NAs in vector
which(is.na(x))


# identify count of NAs in data frame
sum(is.na(df))


# recode missing values with the mean
# vector with missing data
x <- c(1:4, NA, 6:7, NA)
x


x[is.na(x)] <- mean(x, na.rm = TRUE)

round(x, 2)


# data frame that codes missing values as 99
df <- data.frame(col1 = c(1:3, 99), col2 = c(2.5, 4.2, 99, 3.2))

# change 99s to NAs
df[df == 99] <- NA
df
