triangle_area <- function(base, height) {
    area <- (base * height) / 2
    return(area)
}

# Example usage
base_values <- c(4, 6, 8, 10)
height_values <- c(3, 5, 7, 9)

for (i in seq_along(base_values)) {
    area <- triangle_area(base_values[i], height_values[i])
    cat("Triangle with base", base_values[i], 
        "and height", height_values[i], 
        "has area:", area, "\n")
}
