```R
# This function attempts to calculate the mean of a vector, but it has a subtle bug.
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA)  # Handle empty vector case
  }
  sum_x <- sum(x, na.rm = TRUE) #this line will cause error when x has only NA values
  mean_x <- sum_x / length(x)
  return(mean_x)
}

# Test cases
vec1 <- c(1, 2, 3, 4, 5)
vec2 <- c()
vec3 <- c(NA, NA, NA)

print(calculate_mean(vec1)) # Correct
print(calculate_mean(vec2)) # Correct
print(calculate_mean(vec3)) # Error: will produce NaN not NA 
```