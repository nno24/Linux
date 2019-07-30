def translate(phrase):
    translation = ""
    for letter in phrase:
    	if letter.lower() in "aeiou":
		translation = translation +"g"
	else:
		translation = translation + letter
    return phrase + translation

print(translate(raw_input("Enter phrase ")))
