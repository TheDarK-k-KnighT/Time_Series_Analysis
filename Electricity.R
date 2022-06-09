library(forecast)
electricity <- read.csv("C:/Users/The Dark Knight/Desktop/Applications/Code/Time_Series_Analysis/Electricity.csv", header = TRUE)
temperature <- read.csv("C:/Users/The Dark Knight/Desktop/Applications/Code/Time_Series_Analysis/Temperatures.csv", header = TRUE)
ts_electricity <- ts(electricity, frequency = 12)
plot.ts(ts_electricity)

model_fit<-auto.arima(ts_electricity, seasonal = TRUE, ic = 'aic')
print(model_fit)
forecast(model_fit, 6)

