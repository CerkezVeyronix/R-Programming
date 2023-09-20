# Create matrices A and B
A <- matrix(1:100, nrow = 10)
B <- matrix(1:1000, nrow = 10)

# Calculate the inverse of matrix A
inv_A <- solve(A)

# Calculate the inverse of matrix B
inv_B <- solve(B)

# Print the inverses
cat("Inverse of matrix A:\n")
print(inv_A)
cat("Inverse of matrix B:\n")
print(inv_B)
