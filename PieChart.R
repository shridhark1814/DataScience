
#Pie Chart Simple
slices <-c(20,20,30,30)
#Slices has the values for the size
label<-c("INDIA","USA","DUBAI","FRANCE")
pie(slices,labels=label,main="Pie Chart of Countries")

"Pie Chart with Percentages"
slices <-c(20,20,30,30)
label<-c("INDIA","USA","DUBAI","FRANCE")
pct <-round(slices/sum(slices)*100)
label <-paste(label,pct)
label <-paste(label,"%",sep="")
pie(slices,labels=label,col=rainbow(length(label)),main="Pie Chart of Countries")


#Box Plot
boxplot(mpg~cyl,data=mtcars,main="car Milage Data",xlab="Number of Cylinders",ylab="Miles Per Gallon")

#Simple Scatter Plot form mtcars dataset
attach(mtcars)
plot(wt,mpg,main="Scatterplot Example",xlab="Car Weight",ylab="Miles per Gallon",pch =19)