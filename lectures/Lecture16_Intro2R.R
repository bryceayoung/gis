##---- INTRO TO R --------------------------------------------------
### THIS IS AN r SCRIPT ###
# Double-form values are used for comparing SINGLE boolean values
(3 < 4) && (1 == 1)
T || F

# Single-form values are used for comparing SEQUENCES of boolean values
c(T, T)
c(T, T) & c(T, F)

strings <- c('Red', 'Green')
strings

strings <- c('Red', 'Green', T)
strings

# This is how we find the data type
class(strings)

class('red')

numbers <- c(1,2,3)
class(numbers)

# Generate a numeric vector
1:10

# Vectors are overwhelmingly the type of sequence we use in R
# So we're not going to talk about lists, we're just going to
#   work in vectors

# R starts indexing from 1 (as opposed to Python which starts at 0)
numbers
numbers[2]

# R is also inclusive of the element in the second part of a slice
numbers[1:3]
# This means 'start at index 1 and go up to and include index 3
# As opposed to Python which goes up to but doesn't include 3

# if statement is specified with braces
if (3 < 4) {
  print('smaller')
}

# If else statement tacks on to the if statement with 'else'
#   and another set of braces
if (3 < 4) {
  print('smaller')
} else {
  print('larger')
}

# This is a simple for loop
# Equivalent of for x in range(1, 11) in Python
for (x in 1:10) {
  print(x)
}

# Test for membership (different version of 'in')
3 %in% c(1,2,3)

# An RMD file is 'R-markdown'
# This is how we will save our labs
# Go into the rmd file in RStudio and click 'Knit' at the top
# This will make it a nicely laid out notebook

class(df)
summary(df)
head(df)
tail(df)
nrow(df)
ncol(df)
names(df) # Column names

# In R, you can use dots in name definitions
names_like_this = 'Fashad'
names.like.that = 'Fatima'
namesCamelCase = 'Khalid'

# In general, it's good to define variables with dots
# Because it is differnt from Python
# And that signals to your brain that you're using R
lets.do.names.like.this = 'My Favorite R Method'

# R will default to selecting COLUMNS if you only provide 1 number
#   in brackets
df[2] # Second column (as a dataframe)
df[,2] # Also second column (as a numeric vector)

df[5,] # Fifth row
df[5,2] # 5th row 2nd col

# Can sldo refer to cols by name
df['LAT_DD'] # As a dataframe
df$LAT_DD # As a numeric vector

# Find all rows where the veg type is grassland
df[df$VEG_TYPE == 'grassland',] # Put a comma!
# The comma specifies you are looking for rows!

# You can additionally specify columns
df[df$VEG_TYPE == 'grassland', c('LAT_DD', 'LONG_DD')]

# Find rows where BNPP is -999 and replace values with NA
df[df$BNPP_C == -999, 'BNPP_C'] <- NA
