# Initialize an empty list to store teams and their scores
teams <- list()

# Function to add a team and its scores
add_team <- function(team_name, scores) {
  teams[[team_name]] <<- scores
}

# Function to remove a team from the list
remove_team <- function(team_name) {
  teams[[team_name]] <<- NULL
}

# Function to calculate average score for each team
calculate_averages <- function() {
  return(sapply(teams, mean))
}

# Function to rank teams based on average scores
rank_teams <- function() {
  averages <- calculate_averages()
  return(sort(averages, decreasing = TRUE))
}

# Sample Data
add_team("Team A", c(90, 85, 88))
add_team("Team B", c(78, 82, 79))
add_team("Team C", c(88, 92, 90))

# Calculate average scores
average_scores <- calculate_averages()

# Rank teams based on average scores
team_ranking <- rank_teams()

# Print results
cat("Average Score for Each Team:\n")
print(average_scores)

cat("\nTeam Rankings Based on Average Scores:\n")
print(team_ranking)
