#### 2. S3 Object Representing a type of Vehicle:

# Creating an S3 class 'Vehicle'
Vehicle <- function(make, model) {
  vehicle <- list(make = make, model = model)
  class(vehicle) <- "Vehicle"
  return(vehicle)
}

# Creating a method for the S3 class
print.Vehicle <- function(vehicle) {
  cat("Vehicle:", vehicle$make, vehicle$model, "\n")
}

# Creating S3 objects
car <- Vehicle("Chevrolet", "Camaro")
truck <- Vehicle("Chevrolet", "Silverado 1500")
bike <- Vehicle("Ducati", "SuperSport 950")

# Calling the print method for S3 objects
print(car)
print(truck)
print(bike) 

