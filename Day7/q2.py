import pandas as pd
import numpy as np

series1 = pd.Series([5,10,15,25,30])
series2 = pd.Series([1,2,3,4,5])
print(series1)
print(series2)

print("Addition : ")
series_addition = series1 + series2
print(series_addition)

print("Subtraction : ")
series_subtraction = series1 - series2
print(series_subtraction)

print("Multiplication : ")
series_multiply = series1 * series2
print(series_multiply)

print("Division : ")
series_division = series1 / series2
print(series_division)
