# read in data

data <- read.csv("./osteoporosis.csv")
head(data,5)
data <- as.data.frame(unclass(data),stringsAsFactors = TRUE)


##### initial insights #####
summary(data)
  

##### exploratory data analysis #####

# summary stats of age
  # total cohort 
    summary(data$Age)
  # osteoporosis yes
    summary(data$Age[data$Osteoporosis == 1],)
  # osteoporosis no
    summary(data$Age[data$Osteoporosis == 0],)

# frequency tables of demographics: race/ethnciity and gender
    ## pretty even distribution of race/eth and gender
prop.table(table(data$Osteoporosis, data$Race.Ethnicity))
prop.table(table(data$Osteoporosis, data$Gender))

prop.table(table(data$Race.Ethnicity))
prop.table(table(data$Gender))

