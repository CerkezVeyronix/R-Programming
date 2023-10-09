#### 1. S4 Object Representing a Movie:

# Defining an S4 class 'Movie'
setClass("Movie", 
         slots = list(title = "character", director = "character", year = "numeric"))

# Creating S4 objects
movie1 <- new("Movie", title = "Ace Ventura: Pet Detective", director = "Tom Shadyac", year = 1994)
movie2 <- new("Movie", title = "You Don't Mess with the Zohan", director = "Dennis Dugan", year = 2008)

# Creating a method for the S4 class
setMethod("show", "Movie", function(object) {
  cat("Title:", object@title, "\n")
  cat("Director:", object@director, "\n")
  cat("Year:", object@year, "\n")
})

# Calling the show method for S4 objects
show(movie1)

show(movie2)


