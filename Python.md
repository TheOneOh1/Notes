# PYTHON 

> apt update
> apt install pthon3 -y

[Interpreter]

> python3								--- to enter the interpreter

> exit()								--- exits from interpreter

-----------------------------------------------------------------------------

- Environment declaration (Shabang)

#!/usr/bin/python3

> python3 script.py 					--- Execute
OR
> ./script.py

---------------------------------------------------------------------------------

# Python Package Manager

- To install and manage python dependancies

> apt install python3-pip -y
> pip3 --version										--- shows current version

> pip3 install --upgrade <lib-name>						--- upgrading a library

> pip3 list												--- lists currently installed libs and modules

> pip3 install <lib-name>
> pip3 install <lib-name>=1.1							--- installing specific version of lib

> pip3 show <lib-name>									--- gives details of that module 

> pip3 uninstall <lib-name>	

-------------------------------------------------------------------------------------------------------

# requirements.txt

- You can install multiple libs at a time by storing the lib names in a file 
- Create a file "requirements.txt" and include lib names inside
- You can give lib name and versions as well
eg.

> nano requirements.txt
	\_ 	shodan
		requests

> pip3 install -r requirements.txt

> pip3 uninstall -r requirements.txt

> pip3 install --upgrade -r requirements.txt

_______________________________________________________________________________________________________________________


+-------------------------------+
|	https://pypi.org			|
|	https://docs.python.org		|
+-------------------------------+

_________________________________________________________________________________________________________________

+ Python is Case Sensitive Language
_________________________________________________________________________________________________________________

# KeyWords 

+ Keywords are the reserved words in python  
+ We cannot use these as variable name, function name or identifiers

eg. True, false, finally, return, else, break ....

_________________________________________________________________________________________________________________

# Identifiers 

- Identifier is a name given to entities like variables, functions or class

- Combinations of letters in lowercase or uppercase or digits
- Identifiers cannot start with a digit 

_________________________________________________________________________________________________________________

#!/usr/bin/python3
target = "cdac.in"
print(target)

# Variables 

- target is a variable holdin cdac.in as a string

- In this case python automatically decides wheathe it is an 'int' or 'str'

# Debugger

- To debug the program line by line

> python3 -m pdb script.py
[-m 	: Module]
[pdb 	: Python Debugger]

_________________________________________________________________________________________________________________

[ Multi Line String ]

#!/usr/bin/python3
target = """I know him
he is a friend from work"""
print(target)

_________________________________________________________________________________________________________________

# Keys and Values  [ Data Types - Dictionary ]

> d = {"user" : "TheOneOh1", "role" : "Admin"}						--- Storing the key and values in a variable  

> d.keys()															--- this will show keys 
dict_keys(['user','role'])

> d.values()														--- This will show values of the keys
dict_values(['TheOneOh1','Admin'])

> d['user']												--- to print specific key vaule 
TheOneOh1

> d['user'],d['role']									--- shows multiple key values
TheOneOh1 Admin

> d.get('user')											--- alternate way to show key values
TheOneOh1
_________________________________________________________________________________________________________________

[ Python Indentation ]

- Python is Sensitive to user Indentations

_________________________________________________________________________________________________________________

# Importing Libraries in the Script 

- import <lib-name>

- from <lib-name> import <func-name>

- import <lib-name> as <alias-name> 						--- big libs can be used with small aliases

eg.

#!/usr/bin/python3
import sys									--- so that we can use argv[]
x = sys.argv[1]
y = sys.argv[2]

print("First : ", x, "Second : ", y)

_________________________________________________________________________________________________________________

# While Loop 

#!/usr/bin/python3
i = 3 
while i<=5:
	print("Dormamu, I have come to bargin")
	i=i+1

- The loop will continue to print till the conditional value i.e. 5
_________________________________________________________________________________________________________________

# For Loop 

#!/usr/bin/python3

b = ['Jalebi', 29, 18]
for i in b:
        print(i)

- b is a list 
- For every item in list it will print the value 


--- Another way of Printing list ----------------------------------------

#!/usr/bin/python3
for i in ['domain', 120, 100]
	print(i)

_________________________________________________________________________________________________________________

# Range 
	   
``` 
for i in range(10):
	print(i)
```
	   
- This will print the values in specified range
- Will print 0-9 values 

---------------------------------------------------------------

#!/usr/bin/python3
for i in range(10, 30):
	print(i)

- This will print the specified range as from 10 to 29

---------------------------------------------------------------

#!/usr/bin/python3
for i in range(30, 10, -1):
	print(i)

- (-1) will print it in reverse order

_________________________________________________________________________________________________________________

[ Functions ]

#!/usr/bin/python3

def demofun():
	for i in range(10):
		print(i)

demofun()

- Defining a function 
	def <func-name>

- Calling the function
	func-name()

--------- If Blank Functions ----------------

#!/usr/bin/python3

def myfun():
	pass

myfun()

- 'pass' will skip the function

_________________________________________________________________________________________________________________

[ System Calls ]

#!/usr/bin/python3

import os								--- lib for OS commands

os.system("uname -a")
print(os.system())

--------------------------------------------------------------------------

#!/usr/bin/python3

import os

print(os.getcwd())						--- this will print current working directory

_________________________________________________________________________________________________________________

[ Sub Process ]

- This library/module allows you to spawn a new process

eg.

#!/usr/bin/python3

import subprocess as ss 										--- using ss as an alias 

ss.call("ifconfig", shell=True)

- Shell=True so that it can spwn a new shell process 

----------------------------------------------------------------------------------

#!/usr/bin/python3

import argparse

parser = argparse.ArgumentParser(description="This is a Tool")

parser.add_argument("-d", type=str, help="Enter Domain", required=True)

a = parser.parse_args()

print(a)											--- shows where the value is stored
print(a.d)											--- shows the specific value 
