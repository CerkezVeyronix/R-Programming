# Define an S4 class 'StudentGrades'
setClass("StudentGrades",
         slots = list(grades = "numeric"))

# Create an S4 object with a dataset of student grades
student_grades_s4 <- new("StudentGrades", grades = c(85, 92, 78, 95, 88))

# Create a method to print the S4 object
#Generic function
setMethod("show", "StudentGrades", function(object) {
  cat("Student Grades:", paste(object@grades, collapse = ", "), "\n")
})

# Print the S4 object
student_grades_s4
