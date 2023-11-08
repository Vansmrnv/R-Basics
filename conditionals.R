a = 2
if(a!=0){
  print(1/a)
} else{
  print("No reciprocal for 0")
}

library(dslabs)
data(murders)
murder_rate = murders$total/murders$population*100000

ind = which.min(murder_rate)

if(murder_rate[ind] < 0.5){
  print(murders$state[ind])
} else{
  print("No state murder rate that low")
}

b = 0
ifelse(b>0, 1/b, NA)

data(na_example)
sum(is.na(na_example))
no_nas = ifelse(is.na(na_example), 0, na_example)

v = c(TRUE, TRUE, FALSE)
vAny = any(v)

n = c(TRUE, TRUE, FALSE)
nAll = all(n)

