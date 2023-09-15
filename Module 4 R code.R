# Load the data into variables similar to clarification hint

Frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
BP <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
First <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
Second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
FinalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)

# Create a data frame
data <- data.frame(Frequency, BP, First, Second, FinalDecision)

# Create a side-by-side boxplot
#Set up a 1x2 plotting layout
par(mfrow = c(1, 2)) 

boxplot(data$Frequency, data$BP, main = "Side-by-Side Boxplot",
        names = c("Frequency", "Blood Pressure"))

# Create a histogram for Frequency
hist(data$Frequency, main = "Histogram of Frequency", xlab = "Frequency")

# Reset plotting layout to default
par(mfrow = c(1, 1))
