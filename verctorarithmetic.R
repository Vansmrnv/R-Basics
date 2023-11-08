#VECTOR ARITHMETIC
#Murder rates

# The name of the state with the maximum population is found by doing the following
murders$state[which.max(murders$population)]

# how to obtain the murder rate
murder_rate <- murders$total / murders$population * 100000

# ordering the states by murder rate, in decreasing order
murders$state[order(murder_rate, decreasing=TRUE)]


#DATACAMP EXERCISES\
# Assign city names to `city` 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Store temperature values in `temp`
temp <- c(35, 88, 42, 84, 81, 30)

# Convert temperature into Celsius and overwrite the original values of 'temp' with these Celsius values
temp = 5/9*(temp-32)
# Create a data frame `city_temps` 
city_temps = data.frame(names = city, temperatures = temp)

#Euler's 1:100 number sum
# Define an object `x` with the numbers 1 through 100
x = 1:100
# Compute the sum 
sum(1/x^2)

# AVERAGE MURDER RATE
# Load the data
library(dslabs)
data(murders)

# Store the per 100,000 murder rate for each state in murder_rate
murder_rate = murders$total/murders$population*100000
# Calculate the average murder rate in the US 
mean(murder_rate)