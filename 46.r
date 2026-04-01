# Step 1: Install ggplot2 package (run only once if not already installed)
install.packages("ggplot2")

# Load the ggplot2 library
library(ggplot2)

# Step 2: Create the dataset as a data frame
plant_data <- data.frame(
  Plant_ID = c(1, 2, 3, 4, 5),
  Growth_Rate = c(3.2, 1.8, 2.6, 0.9, 3.8),
  Condition_Label = c("Sunny", "Shade", "Rainy", "Drought", "Cloudy")
)

# View the dataset
print(plant_data)

# Step 3: Create a scatter plot
ggplot(data = plant_data, aes(x = Plant_ID, y = Growth_Rate)) +
  
  # Add points with specified color and size
  geom_point(color = "dodgerblue", size = 4) +
  
  # Add text labels below each point
  geom_text(aes(label = Condition_Label), 
            vjust = 1.5, 
            color = "darkorange") +
  
  # Add title and axis labels
  labs(
    title = "Scatter Plot of Plant Growth Data",
    x = "Plant ID",
    y = "Growth Rate"
  )

