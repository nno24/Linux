is_male = False
is_tall = True


if is_male or is_tall:
	print("i am male or the person is tall")
if is_male and is_tall:
	print("i am male and the he is tall")
elif is_male and not(is_tall):
	print("i am male and the he is not tall")
elif not(is_male) and is_tall:
	print("i am not male and is tall")
else:
	print("you are not male nor tall or both")
