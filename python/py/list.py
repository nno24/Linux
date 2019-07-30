lucky_numbers = [4,1,8,12]
guys = ["me","you"]

#extend guys list with lucky_numbers
guys.extend(lucky_numbers)
#append lars to guys list
guys.append("lars")
#insert and push to the right
guys.insert(1, "nico")
print(guys)
#remove
guys.remove("me")
print(guys)
#pop off the last element of the list
guys.pop()
print(guys)
guys.sort()
print(guys)
lucky_numbers.reverse()
print(lucky_numbers)

