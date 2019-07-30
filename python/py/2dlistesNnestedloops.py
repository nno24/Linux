#4 elements with 1 list per element
number_grid =[
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [0]
]

#print first element, first element of the list
print(number_grid[0][0])
#print first element, second element of the list
print(number_grid[0][1])

print(number_grid[2][1])

#nested for loop, parsing through a 2d list
for row in number_grid:
    for col in row:
	print(col)
