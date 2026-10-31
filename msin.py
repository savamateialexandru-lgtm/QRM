import numpy as np


# Generate two random vectors with a simple linear relationship.
rng = np.random.default_rng(42)
x = rng.random(100)
y = 2.5 * x + 1.0 + rng.normal(0, 0.4, size=x.shape)

# Fit y = slope * x + intercept using least squares.
slope, intercept = np.polyfit(x, y, 1)
predictions = slope * x + intercept
r_squared = 1 - np.sum((y - predictions) ** 2) / np.sum((y - y.mean()) ** 2)

print(f"Slope: {slope:.3f}")
print(f"Intercept: {intercept:.3f}")
print(f"R²: {r_squared:.3f}")

# print the p value for the slope coefficient using scipy.stats.linregress
from scipy import stats

slope, intercept, r_value, p_value, std_err = stats.linregress(x, y)
print(f"P-value for slope: {p_value:.3f}")

#plot the data and the fitted line using matplotlib
import matplotlib.pyplot as plt

plt.scatter(x, y, label="Data")
plt.plot(x, predictions, color="red", label="Fitted Line")
plt.xlabel("X")
plt.ylabel("Y")
plt.title("Linear Regression")
plt.legend()
plt.show()

