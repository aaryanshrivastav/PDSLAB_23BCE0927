# Step 1: Install required packages (run once if not installed)
install.packages("ggplot2")
install.packages("plotly")

# Load the libraries
library(ggplot2)
library(plotly)

# Step 2: Load the Iris dataset
data(iris)

# View dataset
print(head(iris))

# Step 3: Create a static scatter plot using ggplot2
static_plot <- ggplot(data = iris, aes(x = Sepal.Width, y = Petal.Width, color = Species)) +
  geom_point(size = 3) +
  labs(
    title = "Static Scatter Plot of Iris Dataset",
    x = "Sepal Width",
    y = "Petal Width"
  )

# Display static plot
print(static_plot)

# Step 4: Convert static plot to interactive plot using ggplotly
interactive_plot <- ggplotly(static_plot)

# Display interactive plot
interactive_plot

# Step 5: Create an interactive plot directly using plot_ly
plot_ly(
  data = iris,
  x = ~Sepal.Width,
  y = ~Petal.Width,
  color = ~Species,
  type = "scatter",
  mode = "markers"
) %>%
  layout(
    title = "Iris Data Set Visualization",
    xaxis = list(title = "Sepal Width", ticksuffix = " cm"),
    yaxis = list(title = "Petal Width", ticksuffix = " cm")
  )


