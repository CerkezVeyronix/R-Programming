# Load required library
library(lattice)

# Lattice Visualization
xyplot(wage ~ date, data = data, type = "b", col = "skyblue",
       main = "History of Federal Minimum Wage Rates",
       xlab = "Year", ylab = "Wage",
       scales = list(x = list(rot = 45, cex = 1),
                     y = list(cex = 1)),
       par.settings = list(axis.text = list(cex = 0.8)))
