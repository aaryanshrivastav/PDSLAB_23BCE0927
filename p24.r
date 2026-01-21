# Vector containing daily closing prices of the stock
closing_prices <- c(120, 122, 118, 121, 119, 117, 123, 125, 126, 124,
                    128, 130, 129, 131, 135, 134, 136, 137, 140, 138,
                    139, 141, 142, 144, 143, 145, 146, 148, 147, 149)

# Calculate daily returns as percentage change
# Formula: ((Current Price - Previous Price) / Previous Price) * 100
daily_returns <- diff(closing_prices) / head(closing_prices, -1) * 100

# Identify the highest daily return
highest_return <- max(daily_returns)

# Identify the lowest daily return
lowest_return <- min(daily_returns)

# Identify the day with highest return
day_highest <- which.max(daily_returns) + 1

# Identify the day with lowest return
day_lowest <- which.min(daily_returns) + 1

# Calculate cumulative return over the month
# Formula: ((Final Price - Initial Price) / Initial Price) * 100
cumulative_return <- ((tail(closing_prices, 1) - closing_prices[1]) /
                       closing_prices[1]) * 100

# Print the results
cat("Daily Returns (%):\n", daily_returns, "\n\n")
cat("Highest Daily Return:", highest_return, "% on Day", day_highest, "\n")
cat("Lowest Daily Return:", lowest_return, "% on Day", day_lowest, "\n")
cat("Cumulative Return over the Month:", cumulative_return, "%\n")
