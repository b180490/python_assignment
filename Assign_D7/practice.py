import pandas as pd
lis1 = ['a','b','c','d','e']
lis2 = [400,200,600,900,0]
a1 = pd.Series(lis2,index=lis1)
print(a1)