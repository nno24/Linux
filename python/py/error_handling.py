#Try except block
try:
    n = int(input("input a number"))
    print(n)
    value = 10 / n
    print (value)
except ZeroDivisionError:
    print("zero division error")
except ValueError:
    print("invalid input")



