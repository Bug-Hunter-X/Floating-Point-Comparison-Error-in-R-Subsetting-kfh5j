```r
# This code uses all.equal() for approximate comparison of floating point numbers, addressing the issue in bug.R

data <- data.frame(value = c(1.0, 2.0, 3.0000000000000004))

# Use all.equal() to handle floating point precision issues
subset <- data[all.equal(data$value, 3.0) == TRUE, ]
print(subset)
# Expected output:
#   value
# 3     3.0000000000000004
```