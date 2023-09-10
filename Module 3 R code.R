# Create vectors for the candidates' names and poll results
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_poll_results <- c(4, 62, 51, 21, 2, 14, 15)
CBS_poll_results <- c(12, 75, 43, 19, 1, 21, 19)

# Combine the vectors into a data frame
poll_data <- data.frame(Name, ABC_poll_results, CBS_poll_results)

# Print the data frame
print(poll_data)

# Create a matrix to represent the data
poll_matrix <- as.matrix(poll_data[, 2:3])  # Extract only the poll results columns

# Print the matrix
print(poll_matrix)

# Combine the vectors into a data frame
poll_data <- data.frame(Name, ABC_poll_results, CBS_poll_results)

# Calculate the mean of ABC poll results
mean_abc <- mean(poll_data$ABC_poll_results)

# Calculate the mean of CBS poll results
mean_cbs <- mean(poll_data$CBS_poll_results)

# Print the means
cat("Mean of ABC poll results:", mean_abc, "\n")
cat("Mean of CBS poll results:", mean_cbs, "\n")

# Calculate the collective mean of all poll results
collective_mean <- mean(c(poll_data$ABC_poll_results, poll_data$CBS_poll_results))

# Print the collective mean
cat("Collective Mean of ABC and CBS poll results:", collective_mean, "\n")

