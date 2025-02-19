# Function to print multiplication table of 5
print_table_5 <- function() {
    # Loop from 1 to 10
    for(i in 1:10) {
        # Print each multiplication in format: 5 x i = result
        cat("5 x", i, "=", 5 * i, "\n")
    }
}

# Call the function to print the table
print_table_5() 