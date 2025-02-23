data(mtcars)  
head(mtcars)  
summary(mtcars)  

model <- lm(mpg ~ wt + hp, data = mtcars)
print(model)
summary(model) 

new_data <- data.frame(wt = c(3, 2.5), hp = c(110, 150))
print(new_data)
predictions <- predict(model, newdata = new_data)
print(predictions)
plot(predictions, col="red",pch=8)
