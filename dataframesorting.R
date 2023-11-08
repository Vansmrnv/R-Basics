library(tidyverse)
library(dplyr)
library(data.table)
library(dslabs)

murders <- setDT(murders)
murders[, rate := total / population * 100000]

murders[order(population)] |> head()

murders[order(population, decreasing = TRUE)] |> head()

murders[order(region, rate)]

#CODE FROM VIDEO

# load packages and datasets and prepare the data
library(tidyverse)
library(dplyr)
library(data.table)
library(dslabs)
data(murders)
murders <- setDT(murders)
murders[, rate := total / population * 100000]

# order by population
murders[order(population)] |> head()

# order by population in descending order
murders[order(population, decreasing = TRUE)] 

# order by region and then murder rate
murders[order(region, rate)]