# Read the credit portfolio data and generate a basic plot.

3+3 

credit_portfolio_data <- read.csv("credit_portfolio_data.csv", stringsAsFactors = FALSE)

numeric_columns <- vapply(credit_portfolio_data, is.numeric, logical(1))
if (sum(numeric_columns) >= 2) {
	plot(
		credit_portfolio_data[[which(numeric_columns)[1]]],
		credit_portfolio_data[[which(numeric_columns)[2]]],
		xlab = names(credit_portfolio_data)[which(numeric_columns)[1]],
		ylab = names(credit_portfolio_data)[which(numeric_columns)[2]],
		main = "Credit Portfolio Data"
	)
} else if (sum(numeric_columns) == 1) {
	column <- which(numeric_columns)[1]
	hist(
		credit_portfolio_data[[column]],
		xlab = names(credit_portfolio_data)[column],
		main = "Credit Portfolio Data"
	)
} else {
	plot(as.factor(credit_portfolio_data[[1]]), main = "Credit Portfolio Data")
}


# generate a vecotr of 100 random numbers between 1 and 100
X <- sample(1:100, 100, replace = TRUE)

# generate a vector of 100 random numbers between 1 and 100
Y <- sample(1:100, 100, replace = TRUE)

# generate a scatter plot of the two vectors
plot(X, Y, main = "Scatter Plot of Random Numbers", xlab = "X", ylab = "Y", pch = 19, col = rgb(0.2, 0.4, 0.6, 0.7))
