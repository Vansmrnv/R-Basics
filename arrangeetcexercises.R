
# DATACAMP EXERCISES
library(dplyr)
library(NHANES)
data(NHANES)
## complete this line of code.
ref <- NHANES %>% filter(AgeDecade == " 20-29" & Gender == "female") %>% summarise(average = mean(BPSysAve, na.rm = TRUE),
                                                                                   standard_deviation = sd(BPSysAve, na.rm = TRUE))


#NEXT EXERCISE

library(dplyr)
library(NHANES)
data(NHANES)
## modify the code we wrote for previous exercise.
ref_avg <- NHANES %>%
  filter(AgeDecade == " 20-29" & Gender == "female") %>%
  summarize(average = mean(BPSysAve, na.rm = TRUE), 
            standard_deviation = sd(BPSysAve, na.rm=TRUE)) %>% #Here we summarise the average and the sd, then pull it ref_avg to average
  pull(average)

#NEXT ECERCISE
#Here we do the same but with MINIMUM and MAXIMUM 

library(dplyr)
library(NHANES)
data(NHANES)
## complete the line
NHANES %>%
  filter(AgeDecade == " 20-29"  & Gender == "female") %>%
  summarise(minbp = min(BPSysAve, na.rm = TRUE), maxbp = max(BPSysAve, na.rm = TRUE))


#NEXT EXERCISE
library(dplyr)
library(NHANES)
data(NHANES)
##complete the line with group_by and summarize
#Here we only find the mean and sd, Blood Pressure(BPSysAve) within a group of Ages(AgeDecade)
NHANES %>%
  filter(Gender == "female") %>% group_by(AgeDecade) %>% 
  summarise(average = mean(BPSysAve, na.rm = TRUE), 
            standard_deviation = sd(BPSysAve, na.rm = TRUE))

#NEXT EXERCISE
#Same code as before but for men
library(dplyr)
library(NHANES)
data(NHANES)

NHANES %>% filter(Gender == "male") %>% group_by(AgeDecade) %>%
  summarise(average = mean(BPSysAve, na.rm = TRUE), 
            standard_deviation = sd(BPSysAve, na.rm = TRUE))

#NEXT EXERCISE 
#Multiple grouping
library(NHANES)
data(NHANES)
NHANES %>% group_by(AgeDecade, Gender) %>% 
  summarise(average = mean(BPSysAve, na.rm = TRUE),
            standard_deviation = sd(BPSysAve, na.rm = TRUE))

#NEXT EXERCISE

library(dplyr)
library(NHANES)
data(NHANES)
NHANES %>%
  filter(Gender == "male" & AgeDecade==" 40-49") %>%
  group_by(Race1) %>%
  summarize(average = mean(BPSysAve, na.rm = TRUE), 
            standard_deviation = sd(BPSysAve, na.rm=TRUE)) %>%
  arrange(average)