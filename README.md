# Floating Point Comparison Error in R Subsetting

This repository demonstrates a common error in R when using the `==` operator to compare floating-point numbers for subsetting data frames.  Floating point numbers are inherently imprecise due to the way they're stored in memory, leading to unexpected results when direct equality comparisons are used.  This example showcases the problem and its solution using `all.equal()` for approximate comparisons.

## Bug
The `bug.R` file contains code that attempts to subset a data frame based on a condition involving a floating-point number. Due to the imprecision of floating-point representation, the comparison `==` may not produce the expected result. 

## Solution
The `bugSolution.R` file offers a solution using `all.equal()`, which allows for approximate comparisons within a specified tolerance. This approach is more robust when dealing with floating-point numbers and avoids the pitfalls of direct equality checks.