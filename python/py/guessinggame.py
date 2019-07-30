secret_word = "duck"

guess = ""
guesses = 0
guess_limit = 3
out_of_guesses = False

while guess != secret_word:
	guess = raw_input("enter guess: ")
	guesses+=1
	if guesses == guess_limit:
		break

if guess == secret_word:
	print("you guessed correctly!")
else:
	print("you loose")
