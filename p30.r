# Initialize an empty list to store books and their borrowers
library_books <- list()

# Function to add a book and its borrowers
add_book <- function(book_name, borrowers) {
  library_books[[book_name]] <<- borrowers
}

# Function to remove a book from the system
remove_book <- function(book_name) {
  library_books[[book_name]] <<- NULL
}

# Function to calculate total borrowers for each book
calculate_borrowers <- function() {
  return(sapply(library_books, length))
}

# Function to find book with highest and lowest borrowers
find_extremes <- function() {
  borrower_counts <- calculate_borrowers()
  highest <- names(which.max(borrower_counts))
  lowest <- names(which.min(borrower_counts))
  return(list(highest = highest, lowest = lowest))
}

# Sample Data
add_book("The Hobbit", c("Alice", "Bob"))
add_book("1984", c("Charlie", "Alice"))
add_book("Moby Dick", c("Bob"))

# Calculate total borrowers
borrower_counts <- calculate_borrowers()

# Find highest and lowest borrowed books
extremes <- find_extremes()

# Print results
cat("Number of Borrowers for Each Book:\n")
print(borrower_counts)

cat("\nBook with Highest Number of Borrowers:", extremes$highest, "\n")
cat("Book with Lowest Number of Borrowers:", extremes$lowest, "\n")
