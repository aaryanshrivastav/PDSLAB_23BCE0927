# Create a time vector representing minutes (1 to 60)
time <- 1:60

# Vector representing temperature readings in Celsius
temperature <- c(28, 29, 30, 31, 32, 33, 34, 32, 31, 30,
                 29, 28, 27, 29, 30, 31, 32, 33, 34, 35,
                 36, 34, 33, 32, 31, 30, 29, 28, 27, 26,
                 28, 29, 30, 31, 32, 33, 34, 35, 36, 37,
                 38, 36, 35, 34, 33, 32, 31, 30, 29, 28,
                 27, 26, 25, 26, 27, 28, 29, 30, 31, 32)

# Vector representing humidity readings in percentage
humidity <- c(45, 44, 43, 42, 41, 40, 39, 38, 37, 36,
              35, 34, 33, 35, 37, 39, 41, 43, 45, 47,
              48, 46, 44, 42, 40, 38, 36, 35, 34, 33,
              32, 31, 30, 32, 34, 36, 38, 40, 42, 44,
              45, 43, 41, 39, 37, 35, 33, 32, 31, 30,
              29, 28, 27, 28, 29, 30, 31, 32, 33, 34)

# Vector representing pressure readings in hPa
pressure <- c(1012, 1013, 1013, 1014, 1014, 1015, 1015, 1014, 1014, 1013,
              1013, 1012, 1012, 1013, 1013, 1014, 1014, 1015, 1015, 1016,
              1016, 1015, 1015, 1014, 1014, 1013, 1013, 1012, 1012, 1011,
              1012, 1013, 1013, 1014, 1014, 1015, 1015, 1016, 1016, 1017,
              1017, 1016, 1016, 1015, 1015, 1014, 1014, 1013, 1013, 1012,
              1012, 1011, 1011, 1012, 1012, 1013, 1013, 1014, 1014, 1015)

# Calculate average temperature
avg_temp <- mean(temperature)

# Calculate average humidity
avg_humidity <- mean(humidity)

# Calculate average pressure
avg_pressure <- mean(pressure)

# Identify time intervals where temperature > 30°C and humidity < 40%
critical_intervals <- time[temperature > 30 & humidity < 40]

# Print average sensor readings
cat("Average Temperature:", avg_temp, "°C\n")
cat("Average Humidity:", avg_humidity, "%\n")
cat("Average Pressure:", avg_pressure, "hPa\n\n")

# Print identified time intervals
cat("Time intervals where Temperature > 30°C and Humidity < 40%:\n")
cat(critical_intervals, "\n")
