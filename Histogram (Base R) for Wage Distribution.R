# Data from https://vincentarelbundock.github.io/Rdatasets/datasets.html
# Specifically "History of Federal Minimum Wage Rates Under the Fair Labor Standards Act, 1938-2009"

#Data compiled in frame

data <- data.frame(
  date = c("1938-10-24", "1939-10-24", "1945-10-24", "1950-01-25", "1956-03-01", 
           "1961-09-03", "1963-09-03", "1967-02-01", "1968-02-01", "1974-05-01", 
           "1975-01-01", "1976-01-01", "1978-01-01", "1979-01-01", "1980-01-01", 
           "1981-01-01", "1990-04-01", "1991-04-01", "1996-10-01", "1997-09-01", 
           "2007-07-24", "2008-07-24", "2009-07-24"),
  wage = c(0.25, 0.3, 0.4, 0.75, 1, 1.15, 1.25, 1.4, 1.6, 2, 2.1, 2.3, 2.65, 2.9, 
           3.1, 3.35, 3.8, 4.25, 4.75, 5.15, 5.85, 6.55, 7.25)
)

# Convert date to proper Date class
data$date <- as.Date(data$date)

# Calculate the number of years
num_years <- length(data$date)

# Plot bar graph
barplot(height = data$wage, names.arg = format(data$date, "%Y-%m-%d"), 
        col = "skyblue", main = "History of Federal Minimum Wage Rates Under the Fair Labor Standards Act, 1938-2009",
        xlab = "Year", ylab = "Wage", ylim = c(0, 8), las = 2)

# Y-axis labels to be more precise
axis(2, at = seq(0.1, 7.9, 0.1), labels = seq(0.1, 7.9, 0.1))

# Add a text label with the number of years
text(10, 7, paste("Number of Years taken into account over 71 years: ", num_years))

