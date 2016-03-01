### MONTHLY STARBUCKS RETURN DATA ###

# Assign the URL to the CSV file
data_url <- ("http://assets.datacamp.com/course/compfin/sbuxPrices.csv")

# Load the data frame using read.csv
sbux_df <-read.csv(file.path(data_url), header = T, stringsAsFactors=F)


# Check the structure of 'sbux_df'
str(sbux_df)

# Check the first and last part of 'sbux_df'
head(sbux_df)
tail(sbux_df)

# Get the class of the Date column of 'sbux_df'
class(sbux_df$Date)

#make seperate closing_prices variable, but use drop=F to keep the dimension info to keep it as a data frame
closing_prices <- sbux_df[,"Adj.Close", drop=F]

# The which() function returns the indices for which a condition is TRUE. 
# For example: which(sbux_df$Date == "3/1/1994") returns the position of the date 3/1/1994, 
# which indicates in this case the row number in the sbux_df data frame.

# Find indices associated with the dates 3/1/1994 and 3/1/1995
index_1 <- which(sbux_df$Date == "3/1/1994")
index_2 <- which(sbux_df$Date == "3/1/1995")
    
# Extract prices between 3/1/1994 and 3/1/1995
some_prices <- sbux_df$Adj.Close[index_1:index_2]


# Create a new data frame that contains the price data with the dates as the row names
sbux_prices_df <- sbux_df[, "Adj.Close", drop=FALSE]
rownames(sbux_prices_df) <- sbux_df$Date
head(sbux_prices_df)

# With Dates as rownames, you can subset directly on the dates.
# Find indices associated with the dates 3/1/1994 and 3/1/1995.
price_1 <- 
price_2 <- 

