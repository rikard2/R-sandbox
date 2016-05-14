icecream <- read.csv("datasets/icecream.csv")
to_celcius <- function(f) { return ( round( (f - 32) / 1.8, 1) ) }

# Scatterplot
icecream_tempcons <- data.frame(temp = lapply(icecream[5], to_celcius), consumption = icecream$cons)

plot(icecream_tempcons, xlab = "Temperature (C)", ylab = "Consumption Pints")
