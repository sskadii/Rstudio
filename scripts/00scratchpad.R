sin(30)
log(1)
x<-log(2)

y <- 1:5 # this is a vector
y[3]



ls() # list what has been assigned (it is in the Environment)
rm(x,y) 
rm(y)
rm(list = ls()) # removes everything from the environment


installed.packages("tidyr")

results<-boxplot(rnorm(10))
results #describes the results 

example(boxplot) #takes you through examples of plots

installed.packages()

#### exercise 1 CATS
cats <- read.csv(file = "data/feline-data.csv")
cats$weight
cats$coat

## Say we discovered that the scale weighs two Kg light:
cats$weight + 2
cats$weight
paste("My cat is", cats$coat) #it does not matter whether we use single or double quotes
typeof(cats$weight)
typeof(1L) #L is a notation that this is an integer
typeof(1+1i)
typeof(TRUE)
typeof("banana")
file.show("data/feline-data.csv")
class(cats)
cats <- read.csv(file="data/feline-data.csv")
coats <- c('tabby', 'tortoiseshell', 'tortoiseshell', 'black', 'tabby')
 CATegories <- factor(coats)
 class(CATegories)
 
 str(CATegories)
 ?read.csv #activates help - looks for this function in loaded packages (??red.csv looks in INSTALLED packages)
 
 
 my_vector <- vector(length = 3)
 another_vector <- vector(mode='character', length=3)
 str(another_vector)
 combine_vector <- c(2,6,3) 
 quiz_vector <- c(2,6,'3') ## type coercion and the coercion rules go: logical -> integer -> numeric -> complex -> character, where -> can be read as are transformed into
 
 another_coertion_vector <- c(0, TRUE)
 another_coertion_vector
 
 character_vector_example <- c('0','2','4')
 character_coerced_to_numeric <- as.numeric(character_vector_example) 
 numeric_coerced_to_logical <- as.logical(character_coerced_to_numeric)
 cats$likes_string
 
 
 mySeries <- 1:10
 seq(10)
 seq(1,10, by=0.1)
 sequence_example <- seq(10)
 sequence_example
 head(sequence_example, n=2)
 length(sequence_example)
 class(sequence_example)
 typeof(sequence_example)
 
 
 #adding to a vector
 v <- c(1,2,3)
 v <- c(v,4)
 
 str(cats$weight)
 str(cats$likes_string)
 cats$likes_string <- as.logical(cats$likes_string)
 
 str(cats$likes_string)
 
 
 list_example <- list(1, "a", TRUE, 1+4i)
 list_example
 
 typeof(cats)
 
 cats[1] # refers to the first vector of the list - returns first column as a list
 cats[[1]] #returns the content of the list item
 cats$coat #calls items by name
 cats["coat"] #returns a list
 cats[1, 1] #it returns object in the first row and first column
 
 cats[, 1] #lists the first column
 cats[1, ] #lists the first row
 
 matrix_example <- matrix(0, ncol=6, nrow=3)
 length(matrix_example) # in case of matrices it gives the total number of elements rather than just the actual length
 
 LETTERS
 x <- matrix(1:50, ncol=5, nrow=10)
 
 dataTypes <- c('double', 'complex', 'integer', 'character', 'logical')
 dataStructures <- c('data.frame', 'vector', 'factor', 'list', 'matrix')
 answer <- list(dataTypes, dataStructures)
 answer
 
 
 age <- c(4,5,8)
 cats <- cbind(cats, age) #binds columns together
 cats
 
 cats[-4,] #to remove rows
 cats  <-  cats[ ,-5] 
 
 new.cat  <- list("black", 3.1 , 0, 8)
 cats <- rbind(cats, new.cat) # change is not permanent until you assign it
 
 cats$coat <- as.character(cats$coat)
 str(cats) # to check the number and names of categories so that "blac" does not become a new category because of a typo

 #Appending to a dataframe
 
 cats <- rbind(cats, cats)
cats

levels(cats$coat) <- c(levels(cats$coat), "tortoiseshell") #this tells it to take additional level

str(cats$coat)
 
cats$coat <- as.character(cats$coat)
cats$coat <- factor(cats$coat) 

levels(cats$coat)[4] <- "ginger" #it replaces 4th level with ginger

cats$coat

levels(cats$coat) <- levels(cats$coat)
cats$coat

cats[c(1,4,5),]

gap.df <- read.csv("data/gapminder-FiveYearData.csv")
nrow(gap.df)
ncol(gap.df)

str(gap.df)
names(gap.df) #names of columns

length(age)

cats[cats$coat == "black", ] # return only black pussies

cats[cats$coat != "black", ] # return NOTblack pussies

play.df <- gap.df[gap.df$country %in% c("Afghanistan", "Slovenia"), ]
play.df

gap.df[gap.df$year == 2002 | gap.df$year == 2007, ]



##### dplyr

for (i in cats$coat) {print(paste("The value of i is", i))}

for (j in 1:3) {
  for (i in cats$coat) {
        print(paste("The value of i is", i, "and j is", j ))
  }
}  
## to run it the coursor has to be in the top line



my_vec <- 1:5
for (i in 1:length(my_vec)) {
  print(my_vec[i]*2)
}
### print stuff within loops otherwise it returns blanks


my_vec * 2 # this will also work

x <- runif(1) # selects a random number from uniform distribution  and do it once
if (x <= 0.5) {
  print("Heads")
} else {
  print("Tails")
}

#or a more elegant way
x <- runif(1)
ifelse(x<=0.5, 
       paste("Heads"),
       paste("Tails"))

       

####### something something new
      my_var <- "cat"
      switch(my_var,
             "cat" = print("why are there so many cats"),
             "dog" = print("these folks are left out"),
              "humans" = print("eirgh"),
             "something else entirely")

?switch
       