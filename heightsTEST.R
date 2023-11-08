library(dslabs)
data(heights)
options(digits = 3) 

avg = mean(heights$height)

ind = heights$height > avg

female = sum(heights$sex == "Female" & ind)

#index = ind & female

proportionfem = sum(heights$sex == "Female")/nrow(heights)


min = min(heights$height)
max = max(heights$height)

firMIN = match(min, heights$height)

heights$sex[firMIN]

 
x = 50:82

ht_cm = heights$height * 2.54
heights2 = heights %>% mutate(heights, ht_cm )

femalese = heights2 %>% filter(, sex == "Female")
