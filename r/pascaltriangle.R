pascal_triangle <- function(n_rows) {
    # Initialize the triangle as a list
    triangle <- list()
    
    # Generate each row
    for(i in 1:n_rows) {
        # First row is always just 1
        if(i == 1) {
            triangle[[i]] <- c(1)
            next
        }
        
        # Create new row starting and ending with 1
        new_row <- numeric(i)
        new_row[1] <- 1
        new_row[i] <- 1
        
        # Calculate middle values
        if(i > 2) {
            prev_row <- triangle[[i-1]]
            for(j in 2:(i-1)) {
                new_row[j] <- prev_row[j-1] + prev_row[j]
            }
        }
        
        triangle[[i]] <- new_row
    }
    
    # Print the triangle in a nice format
    for(i in 1:n_rows) {
        # Add padding for centered display
        padding <- paste(rep(" ", n_rows - i), collapse = "")
        # Convert row to string with spaces between numbers
        row_str <- paste(triangle[[i]], collapse = " ")
        # Print the padded row
        cat(padding, row_str, "\n")
    }
    
    return(triangle)
}

# Example usage:
pascal_triangle(5)
