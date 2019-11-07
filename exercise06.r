#Exercise 6 - Cailey Brogan

#number 1 (replicating the functionality of head)
head_function <- function(input_file, lines, bool_header) {
  if(bool_header){
    writeLines(readLines(file(input_file),lines+1))
  }
  if(!bool_header){
    writeLines(readLines(file(input_file),lines))
  }
}

head_function("./wages.csv", 5, TRUE)

#number 2
#print the last two rows in the last two columns of iris.csv
iris=read.csv("./iris.csv")
iris[(nrow(iris)-1):nrow(iris), (ncol(iris)-1):ncol(iris)]

#get the number observations for each species included in the data set
setosa=iris[iris$Species=="setosa",]
nrow(setosa)

versicolor=iris[iris$Species=="versicolor",]
nrow(versicolor)

virginica=iris[iris$Species=="virginica",]
nrow(virginica)

#get rows with Sepal.Width > 3.5
iris[iris$Sepal.Width>3.5,]

#write the data for the species setosa to a csv file 'setosa.csv'
write.csv(iris[iris$Species=="setosa",], file = "setosa.csv", row.names = FALSE)

#calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
mean(virginica$Petal.Length)
min(virginica$Petal.Length)
max(virginica$Petal.Length)


