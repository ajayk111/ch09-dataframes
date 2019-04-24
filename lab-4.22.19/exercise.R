data(iris)
#View(iris)

#Get all rows of Species ???versicolor??? in a new data frame. Call this data frame: ???iris.vers???
iris_frame = as.data.frame(iris)
iris.vers <-iris_frame[iris_frame['Species'] == 'versicolor',]
#Get a vector called ???sepal.dif??? with the difference between ???Sepal.Length??? and ???Sepal.Width??? of ???versicolor??? plants.
sepal.dif = iris.vers$Sepal.Length - iris.vers$Sepal.Width
#print(sepal.dif)
#Add ???iris.vers??? with the new column ???sepal.dif???.
iris.vers['sepal.dif'] = sepal.dif
#print(iris.vers)
#filter for all data of Species ???virginica??? with a ???Sepal.Width??? of greater than 3.5.
iris_frame[iris_frame['Species'] == 'virginica' & iris_frame['Sepal.Width'] > 3.5,]
#get a data frame of  all data of Species ???setosa??? with a ???Sepal.Width??? of greater than 3.5, but without the last column Species in the data frame?
print(iris_frame[iris_frame$Species == "setosa" & iris_frame$Sepal.Width > 3.5, 1:4])

#Write a function that takes in a species name as an argument and returns the average Sepal Width of that species.
difference <- function(sp_name){
  tmpdf <- iris[iris$Species==sp_name,]
  return(mean(tmpdf[,names(tmpdf)=="Sepal.Width"]))
}
print(difference("setosa"))
#What is the average Sepal.Length for 'versicolor' species having a Petal.Length of 4.2 or higher?
tmpdf <- iris[iris$Species=='versicolor',]
print(mean(tmpdf[,names(tmpdf)=="Petal.Length"]))
#BONUS VIZ Q
# Visualize species, Sepal.Length and Sepal.Width in a single plot. DO YOU SEE CLUSTERS?



#ULTRA BONUS - PERFORM PRINCIPAL COMPONENT ANALYSIS AND PLOT CLUSTERS