# turning a set of integers into characters with as.character()
x = 1:5 
y = as.character(x)

#turning a set of characters back into integers with as.numeric()
as.numeric(y)


t = c(1, "a", 3)
#Cannot be turned in to integer by as.numeric because not a integer
j = as.numeric(t)