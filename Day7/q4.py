import pandas as pd

list1 = ['A','B','C','D','E']
list2 = [1,2,3,4,5]

series = pd.Series(list2,index=list1)
print(series)

new_order = ['B','A','C','D','E']
series1 = series.reindex(new_order)
print(series1)