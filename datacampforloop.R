test <- vector(length = 5)
for (i in 1:5){
  test[i] <- i^2
}


#DATACAMP EXERCISES
>
  x <- c(1,2,-3,4)
  if(all(x>0)){
    print("All Positives")
  } else{
    print("Not All Positives")
  }
  [1] "Not All Positives"
  
  
  
  
  
  # Assign the state abbreviation when the state name is longer than 8 characters 
  new_names <- ifelse(nchar(murders$state)>8, murders$abb, murders$state)
  
  
  
  
  
  
  # Define a function and store it in `compute_s_n`
  compute_s_n <- function(n){
    x <- 1:n
    sum(x^2)
  }
  
  # Create a vector for storing results
  s_n <- vector("numeric", 25)
  
  # write a for-loop to store the results in s_n
  for(i in 1:25){
    s_n[i] = compute_s_n(i)
  }
  #  Create the plot 
  plot(n, s_n)