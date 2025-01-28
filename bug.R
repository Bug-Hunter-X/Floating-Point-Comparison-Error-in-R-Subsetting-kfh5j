```r
# This code attempts to subset a data frame based on a condition,
# but it produces unexpected results due to the use of `==` with floating-point numbers.

data <- data.frame(value = c(1.0, 2.0, 3.0000000000000004))

subset <- data[data$value == 3.0, ]
print(subset)
# Expected output:
#   value
# 3     3
# Actual output (likely):
#   value
# <0 rows> (empty data frame)
```