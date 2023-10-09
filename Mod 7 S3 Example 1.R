#### 1. S3 Object Representing a Student:


#Simple S3 similar to Module provided...
# Creating an S3 class 'Student'
Student <- function(name, age, grade) {
  student <- list(name = name, age = age, grade = grade)
  class(student) <- "Student"
  return(student)
}

# Creating a method for the S3 class
print.Student <- function(student) {
  cat("Student:", student$name, "\n")
  cat("Age:", student$age, "\n")
  cat("Grade:", student$grade, "\n")
}

# Creating S3 objects
student1 <- Student("Burak", 25, "A")
student2 <- Student("Billy Bob", 21, "B")

# Calling the print method for S3 objects
print(student1) 
print(student2) 
