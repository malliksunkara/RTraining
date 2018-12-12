# Dealing with Dates

#Getting current date & time

install.packages(lubridate)
library(lubridate)

Sys.timezone()

Sys.Date()

Sys.time()

# using the lubridate package

# Convert Strings to Dates

x <- c("2015-07-01", "2015-08-01", "2015-09-01")

as.Date(x)

# Note that the default date format is YYYY-MM-DD; therefore, if your string is of different format you must incorporate the format argument. 

y <- c("07/01/2015", "07/01/2015", "07/01/2015")

as.Date(y, format = "%m/%d/%Y")

# Create Dates by Merging Data

# Sometimes your date data are collected in separate elements. To convert these separate data into one date object incorporate the ISOdate()
# function:

yr <- c("2012", "2013", "2014", "2015")
mo <- c("1", "5", "7", "2")
day <- c("02", "22", "15", "28")

# ISOdate converts to a POSIXct object
ISOdate(year = yr, month = mo, day = day)


# truncate the unused time data by converting with as.Date
as.Date(ISOdate(year = yr, month = mo, day = day))

?lubridiate


