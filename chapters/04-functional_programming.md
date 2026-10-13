# Writing Functions in R

*Working with Functions and Packages in R*

## Topics Covered

1.  Purpose of functions
2.  Control flow with if/else
3.  Iteration with `map()` and for loops
4.  Grouping functions into packages

## Why Use Functions

**Q. Why use functions when you can just copy and paste your code?**

A. Repeating yourself makes it more likely that you make a mistake while coding. Constantly repeating your code will make your scripts very long and hard for others to read and debug. Writing functions will also make it easier for you to reuse code that you wrote before.

### Example

```r
# Define function
fahr_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32) * (5 / 9)) + 273.15
  return(kelvin)
}

# Call function
fahr_to_kelvin(32)
```

### Advanced Function Usage

You can do more advanced things with functions, like piping the output of one function into another with the native pipe `|>` (R 4.1 or later):

```r
kelvin_to_celsius <- function(temp) {
  celsius <- temp - 273.15
  return(celsius)
}

fahr_to_kelvin(32) |> kelvin_to_celsius()
```

More information on functions can be found in this [introduction to functional programming in R](https://jcoliver.github.io/learn-r/007-intro-functional-programming.html).

## Control Flow in R

**Q. What is control flow and why is it important?**

A. Control flow is useful when you want certain code to run if certain conditions are met. It is typically used inside functions to change what code is executed based on the arguments that are passed in.

### If...Else Control Flow Boilerplate

```r
if (condition) {
  # code to run if the condition is TRUE
} else {
  # code to run if the condition is FALSE
}
```

### If...Else Control Flow Example

```r
x <- 8
if (x >= 10) {
  print("x is greater than or equal to 10")
} else if (x > 5) {
  print("x is greater than 5, but less than 10")
} else {
  print("x is less than or equal to 5")
}
```

More information on control flow can be found in the [Statistical Programming in R lecture on control flow](https://american-stat-412612.netlify.app/material/1-12-lecture/).

## Loops and Iteration

Say you have a function and want to apply it to more than one thing, what do you do? One solution is to create a loop.

### Steps

1. Define the function
2. Define a vector you want to apply the function to
3. Use `map()` from the purrr package to apply the function to each element in the vector
4. Alternatively, write a `for` loop that calls the function on each element

### Example

```r
library(purrr)

square <- function(x) { return(x * x) }

# Create a vector of numbers
vector1 <- c(2, 4, 5, 6)

# map() returns a list; map_dbl() returns a numeric vector
map_dbl(vector1, square)

# The same thing with a for loop
for (x in vector1) {
  print(square(x))
}
```

More information on loops can be found in the [Statistical Programming in R lecture on iteration](https://american-stat-412612.netlify.app/material/1-13-lecture/).

## Working with Packages

Once you have a set of related functions that you keep using in a workflow, it is very convenient to put them into a package, where you can group them together, document them for other users, and write tests. The `devtools` and `usethis` packages handle most of the setup for you. Writing your own packages is a pretty advanced topic, but I recommend starting with Hadley Wickham's [*R Packages*](https://r-pkgs.org/whole-game.html) book, which covers everything from creating a package directory to writing tests, documenting functions, and publishing your package on CRAN.
