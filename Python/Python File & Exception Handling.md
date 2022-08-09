
# File Operations in Python
## File Handling 

- Open File 
```
f = open("file-name.txt")
```

- Close File 
```
f.close()						--- without this file will not flush the buffer
```

- Operations [Read, Write, Append]

```
f = open("file.txt", "r")
f = open("file.txt", "w")
f = open("file.txt", "a")
```
______________________________________________

**1. Read File**
```
f = open("file.txt", "r")
a = f.read()
print(a)
f.close()
```

**2. Write File **
```
f = open("file.txt", "w")
f.write("This is a test file\n")
f.close()
```

**3. Append File**
```
f = open("file.txt", "a")
f.write("This is not a test\n")
f.close()
```
_____________________________________________________________


# Exception Handling in Python

- Exceptions are where you are dealing with errors and how the programm will handle it

- To Pass the exception

```
#!/usr/bin/python3
try:
	f = oprn("file.txt", "r")
	f.read()
	f.close()
except:
	pass
```
__________________________________________________


- Exception, with Error message

```
#!/usr/bin/python3
try:
	f = oprn("file.txt", "r")
	f.read()
	f.close()
except Exception as a:
	print("Error", a)
```
-----------------------------------------------------------

##Type of Exceptions

```
#!/usr/bin/python3
try:
	f = open("file.txt", "r")
	f.read()

except IOError as pop:
	print("IO Error : ", pop)

except Exception as pop:
	print("Another error: ", pop)
else:
	print("Task Done")
	f.close() 
```
--------------------------------------------------
