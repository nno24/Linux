#good for getting  info back from a function
def cube(num):
    #here it breaks, everthing after this will not be executed
    return num*num*num
    print("test me")
    

print(cube(3))
result = cube(4)
print(result)
    
