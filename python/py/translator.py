
#Giraffe language 
#vowels -> g ''

#translate func
def translate(phrase):
    transl = ""
    for letter in phrase:
	if letter in "AEIOUaeiou":
		transl = transl + "g"
	else:
		transl = transl + letter
    return transl

print(translate(raw_input()))
