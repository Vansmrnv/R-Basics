# Store the murder rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total / murders$population * 100000

# Store the `murder_rate < 1` in `low` 
low = murder_rate < 1

#EXERCISE 2

# Store the murder rate per 100,000 for each state, in murder_rate
murder_rate <- murders$total/murders$population*100000

# Store the murder_rate < 1 in low 
low <- murder_rate < 1

# Get the indices of entries that are below 1
which(low)

#EXERCISE 3
# Store the murder rate per 100,000 for each state, in murder_rate
murder_rate <- murders$total/murders$population*100000

# Store the murder_rate < 1 in low 
low <- murder_rate < 1

# Names of states with murder rates lower than 1
murders$state[low] 


# EXERCISE 4

# Store the murder rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total/murders$population*100000

# Store the `murder_rate < 1` in `low` 
low <- murder_rate < 1

# Create a vector ind for states in the Northeast and with murder rates lower than 1. 
ind = low & murders$region=="Northeast"
# Names of states in `ind` 
murders$state[ind]

# EXERCISE 5

# Store the murder rate per 100,000 for each state, in murder_rate
murder_rate <- murders$total/murders$population*100000


# Compute the average murder rate using `mean` and store it in object named `avg`
avg = mean(murder_rate)

# How many states have murder rates below avg ? Check using sum 
sum(murder_rate < avg)


# EXERCISE 6

# Store the 3 abbreviations in a vector called `abbs` (remember that they are character vectors and need quotes)
abbs = c("AK", "MI", "IA")
# Match the abbs to the murders$abb and store in ind
ind = match(abbs, murders$abb)
# Print state names from ind
murders$state[ind]

# EXERCISE 7

# Store the 5 abbreviations in `abbs`. (remember that they are character vectors)
abbs = c("MA", "ME", "MI", "MO", "MU")

# Use the %in% command to check if the entries of abbs are abbreviations in the the murders data frame
abbs %in% murders$abb

#EXERCISE 8

# Store the 5 abbreviations in abbs. (remember that they are character vectors)
abbs <- c("MA", "ME", "MI", "MO", "MU") 

# Use the `which` command and `!` operator to find out which index abbreviations are not actually part of the dataset and store in `ind`
ind = which(!abbs %in% murders$abb)
# Names of abbreviations in `ind`
abbs[ind]

