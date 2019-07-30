monthConv={
	"jan": "january",
	"feb": "february",
	"mar": "march",
	0: "april",

}

print(monthConv["jan"])
print(monthConv.get("jan"))
print(monthConv.get(0))
print(monthConv.get("apr", "not a valid key"))

