# Access the `state` variable and store it in an object 
states <- murders$state 

# Sort the object alphabetically and redefine the object 
states <- sort(states) 

# Report the first alphabetical value  
states[1]

# Access population values from the dataset and store it in pop
pop <- murders$population
# Sort the object and save it in the same object 
pop <- sort(pop)
# Report the smallest population size 
pop[1]

#Sorting exercises from datacamp////////////////////



# Access population from the dataset and store it in pop
pop <- murders$population
# Use the command order to find the vector of indexes that order pop and store in object ord
ord <- order(pop)
# Find the index number of the entry with the smallest population size
ord[1]


#EX 3 from datacamp

# Find the index of the smallest value for variable total 
which.min(murders$total)

# Find the index of the smallest value for population
which.min(murders$population)

#EX 4  from datacamp 

# Define the variable i to be the index of the smallest state
i <- which.min(murders$population)

# Define variable states to hold the states
states <- murders$state
# Use the index you just defined to find the state with the smallest population
states[i]

# First dataframe question

# Store temperatures in an object 
temp <- c(35, 88, 42, 84, 81, 30)

# Store city names in an object 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Create data frame with city names and temperature 
city_temps <- data.frame(name = city, temperature = temp)

# Define a variable states to be the state names 
states = murders$state

# Define a variable ranks to determine the population size ranks 
ranks = rank(murders$population)

# Create a data frame my_df with the state name and its rank
my_df = data.frame(name = states, rank = ranks)

#First PROBLEM NOT SOLVED

# Define a variable states to be the state names from the murders data frame
states <- murders$state

# Define a variable ranks to determine the population size ranks 
ranks <- rank(murders$population)

# Define a variable ind to store the indexes needed to order the population values
ind <- order(murders$population)

# Create a data frame my_df with the state name and its rank and ordered from least populous to most 
my_df <- data.frame(states = states[ind], ranks = ranks[ind])

#Data camp is.na() problem to define the number of NA s
# Using new dataset 
library(dslabs)
data(na_example)

# Checking the structure 
str(na_example)

# Find out the mean of the entire dataset 
mean(na_example)

# Use is.na to create a logical index ind that tells which entries are NA
ind = is.na(na_example)
# Determine how many NA ind has using the sum function
sum(ind)

#
