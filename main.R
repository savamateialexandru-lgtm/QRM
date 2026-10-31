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