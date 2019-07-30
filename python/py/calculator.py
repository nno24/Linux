#convert input to float, a number
n1 = float(input ("enter first number: "))
op = raw_input("enter operator")
n2 = float(input ("enter second  number: "))

if op == "+":
   print(n1 + n2)
elif op == "-":
   print(n1 - n2) 
elif op == "*":
   print(n1 * n2) 
elif op == "/":
   print(n1 / n2) 
else:
   print("no valid operator")
