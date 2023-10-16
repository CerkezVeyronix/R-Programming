# Step 1: Import dataset into R
x <- read.table(file.choose(), header = TRUE, sep = ",")

# Step 2: Calculate mean of Age and Grade split by gender using plyr
library(plyr)
y <- ddply(x, "Sex", transform, Grade.Average = mean(Grade), Age.Average = mean(Age))

# Step 3: Save the mean values to a CSV file
write.table(y, "Sorted_Average.csv", sep = ",", row.names = FALSE)

# Step 4: Filter names containing the letter 'i' or 'I' from the dataset
newx <- subset(x, grepl("[iI]", x$Name))

# Step 5: Save the filtered dataset to a CSV file
write.csv(newx, "DataSubset.csv", row.names = FALSE)
