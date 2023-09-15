List1 = [1,2,3,4,5,6,7,8,9,7,6,2,4,2,5,23,6,4]

num_count = {}
for ch in List1:
    # print(f'ch = {ch}')
    if num_count.get(ch) is None:
        num_count[ch] = 1
    else:
        num_count[ch] += 1

print(num_count)



# Output ={1: 1, 2:2,3:1,4:4,5:1,6:2,7:7,23:1}