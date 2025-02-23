data("AirPassengers")
class(AirPassengers)#dataset belong to time series format
start(AirPassengers)#start of the time series
end(AirPassengers) #end of the time series
#frequency of the dataset here mean 12 i.e based on only one month basis
frequency(AirPassengers)
# Output-1:To know mean median of dataset
summary(AirPassengers)
#Output-2 : plot the time series model 
plot(AirPassengers) 
#Output-3 : plot best fit kine used for regression.
abline(reg = lm(AirPassengers~time(AirPassengers)))
#Output-4 :print cycle across year
cycle(AirPassengers)
#Output-5 :aggregate the cycle and display trend as per year
plot(aggregate(AirPassengers,FUN =mean))
#Output - 6 : get box plot 
boxplot(AirPassengers~cycle(AirPassengers))
