```R
#Corrected function to handle NA values correctly
calculate_mean <- function(x) {
  if (length(x) == 0 || all(is.na(x))) {
    return(NA)  # Handle empty vector or all NA case
  }
  sum_x <- sum(x, na.rm = TRUE)
  mean_x <- sum_x / length(x[!is.na(x)])
  return(mean_x)
}

# Test cases
vec1 <- c(1, 2, 3, 4, 5)
vec2 <- c()
vec3 <- c(NA, NA, NA)
vec4 <- c(1,NA,3)

print(calculate_mean(vec1)) # Correct: 3
print(calculate_mean(vec2)) # Correct: NA
print(calculate_mean(vec3)) # Correct: NA
print(calculate_mean(vec4)) # Correct: 2
```