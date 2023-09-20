# Create matrices A and B
A <- matrix(1:100, nrow = 10)
B <- matrix(1:1000, nrow = 10)

# Load the "MASS" package for the pseudoinverse
library(MASS)

# Calculate the Moore-Penrose pseudoinverse of matrix A and B
inv_A <- ginv(A)
inv_B <- ginv(B)

# Print the pseudoinverses
cat("Pseudoinverse of matrix A:\n")
print(inv_A)
cat("Pseudoinverse of matrix B:\n")
print(inv_B)
