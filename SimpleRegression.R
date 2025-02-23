height<-c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
print(height)
weight<-c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
print(weight)
student<-lm(weight~height)
print(student)
a <- data.frame(height = 170)
print(a)
result<- predict(student,a) 
print(result)
plot(result, col="blue", xlab="height", ylab="weight", pch=8)



 