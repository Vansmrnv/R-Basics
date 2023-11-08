grades = data.frame(names=c("Jo", "Ju", "Ye", "Hao"),
                    exam1 = c(95, 93, 94, 80),
                    exam2 = c(96, 75, 80, 99))


# creating a data frame with stringAsFactors = FALSE
grades <- data.frame(names = c("John", "Juan", "Jean", "Yao"), 
                     exam_1 = c(95, 80, 90, 85), 
                     exam_2 = c(90, 85, 85, 90),
                     stringsAsFactors = FALSE)

#USE  stringsAsFactors if not already names are characters