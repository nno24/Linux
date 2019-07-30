'''
#Open files to read (r )
open("names.txt", "r")
#Open to read and write
open("names.txt", "r+")
#Open to write
open("names.txt", "w")
#Open to append
open("names.txt", "a")
'''

name_file = open("names.txt", "r")

#print(name_file.readlines())

for name in name_file.readlines():
    print(name)

name_file.close()
