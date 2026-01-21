# Initialize an empty to-do list
to_do_list <- list()

# Function to add tasks to the to-do list
add_task <- function(task)
{
  new_task <- list(task = task, completed = FALSE)
  to_do_list <<- c(to_do_list, list(new_task))
}

# Function to mark tasks as completed
mark_completed <- function(task)
{
  for (i in seq_along(to_do_list))
  {
    if (to_do_list[[i]]$task == task)
    {
      to_do_list[[i]]$completed <<- TRUE
      break
    }
  }
}

# Function to view the to-do list
view_tasks <- function()
{
  if (length(to_do_list) == 0)
  {
    print("To-do list is empty.")
    return()
  }
  
  for (i in seq_along(to_do_list))
  {
    status <- ifelse(to_do_list[[i]]$completed, "Completed", "Pending")
    cat(i, ". ", to_do_list[[i]]$task, " - ", status, "\n", sep = "")
  }
}


# Example usage
add_task("Finish report")
add_task("Call client")
mark_completed("Finish report")
view_tasks()
