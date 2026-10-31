# Read the credit portfolio data and generate a basic plot.


# generate a vecotr of 100 random numbers between 1 and 100
X <- sample(1:100, 100, replace = TRUE)

# generate a vector of 100 random numbers between 1 and 100
Y <- sample(1:100, 100, replace = TRUE)

# generate a scatter plot of the two vectors
plot(X, Y, main = "Scatter Plot of Random Numbers", xlab = "X", ylab = "Y", pch = 19, col = rgb(0.2, 0.4, 0.6, 0.7))


# run a regression test between Y and X
lm(Y ~ X)
summary(lm(Y ~ X))

class(SPI_SPX_daily_2000_2026)
