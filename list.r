# 1. Creating Lists
# Lists in R can contain different types of data
simple_list <- list(
    numbers = c(1, 2, 3, 4, 5),
    text = c("apple", "banana", "orange"),
    logical = c(TRUE, FALSE, TRUE),
    matrix = matrix(1:4, nrow = 2)
)

# 2. Named Lists
student <- list(
    name = "John",
    age = 25,
    grades = c(85, 92, 78)
)

# 2. Print the list
print("Here's our student:")
print(student)

# 3. Add a new element
student$email <- "john@example.com"

# 4. Print again to see the change
print("After adding email:")
print(student)

# 3. Accessing List Elements
# Using $ notation
print(student$name)        # Access 'name'
print(student$grades)      # Access 'grades'

# Using [] returns a list
print(student["name"])     # Returns list with name element

# Using [[]] returns the actual element
print(student[["name"]])   # Returns "John" directly

# 4. List Operations
# Adding new elements
student$passed <- TRUE

# Modifying elements
student$age <- 26

# Removing elements
student$email <- NULL

# 5. Nested Lists
nested_list <- list(
    person1 = list(
        name = "Alice",
        scores = c(90, 85, 88)
    ),
    person2 = list(
        name = "Bob",
        scores = c(78, 92, 85)
    )
)

# Accessing nested elements
print(nested_list$person1$name)    # Access Alice's name
print(nested_list$person2$scores)  # Access Bob's scores

# 6. List Manipulation
# Length of list
length(simple_list)

# Names of list elements
names(student)

# Combining lists
list1 <- list(a = 1, b = 2)
list2 <- list(c = 3, d = 4)
combined_list <- c(list1, list2)

# 7. List Operations with lapply
numbers_list <- list(a = 1:3, b = 4:6, c = 7:9)

# Apply function to each element
squared <- lapply(numbers_list, function(x) x^2)

# 8. Converting Lists
# List to vector (if possible)
vec_list <- list(1, 2, 3, 4)
vector_result <- unlist(vec_list)

# 9. List Comprehension
# Create list based on conditions
filtered_list <- list()
for(i in 1:5) {
    if(i %% 2 == 0) {
        filtered_list[[length(filtered_list) + 1]] <- i
    }
}

# Add elements
list$new_element <- value

# Remove elements
list$element <- NULL

# Modify elements
list$element <- new_value

# Check if element 

"element" %in% names(list)

# Merge lists
merged <- c(list1, list2)

# Apply function to all elements
result <- lapply(list, function)

# Deep nesting
nested <- list(
    outer = list(
        inner = list(
            value = 10
        )
    )
)

# Access nested value
nested$outer$inner$value

# Data Analysis Example
student_data <- list(
    class_A = list(
        scores = c(85, 92, 78),
        mean = mean(c(85, 92, 78)),
        passed = c(TRUE, TRUE, TRUE)
    ),
    class_B = list(
        scores = c(72, 88, 95),
        mean = mean(c(72, 88, 95)),
        passed = c(TRUE, TRUE, TRUE)
    )
)

# Calculate class averages
class_averages <- lapply(student_data, function(x) x$mean)

# Find all scores above 90
high_scores <- lapply(student_data, function(x) {
    x$scores[x$scores > 90]
})
