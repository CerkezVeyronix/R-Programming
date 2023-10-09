#### 2. S4 Object Representing a Recipe:

```r
# Defining an S4 class 'Recipe'
setClass("Recipe", 
         slots = list(name = "character", ingredients = "character", steps = "character"))

# Creating S4 objects
recipe1 <- new("Recipe", 
               name = "Chocolate Cake", 
               ingredients = c("flour", "sugar", "cocoa powder", "eggs", "butter"), 
               steps = c("Mix dry ingredients", "Add wet ingredients", "Bake at 350°F"))

recipe2 <- new("Recipe", 
               name = "Vegetable Stir Fry", 
               ingredients = c("vegetables", "soy sauce", "garlic", "ginger", "oil"), 
               steps = c("Sauté vegetables", "Add sauce and stir", "Serve hot"))

# Creating a method for the S4 class
setMethod("show", "Recipe", function(object) {
  cat("Recipe:", object@name, "\n")
  cat("Ingredients:", paste(object@ingredients, collapse = ", "), "\n")
  cat("Steps:", paste(object@steps, collapse = "; "), "\n")
})

# Calling the show method for S4 objects
show(recipe1)


show(recipe2)

