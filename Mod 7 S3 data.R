# Creating a class 'StudentGrades'
StudentGrades <- function(grades) {
  grades_data <- list(grades = grades)
  class(grades_data) <- "StudentGrades"
  return(grades_data)
}

# Creating S3 object
grades <- c(85, 92, 78, 95, 88)
student_grades <- StudentGrades(grades)

# Printing the S3 object
#(Implied generic function)
print(student_grades)
