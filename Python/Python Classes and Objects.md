# Python Classes & Objects

- Classes are like a function in OOP
- This is where you can put function, methods, etc in one place
- Till now we all were doing "Procedure Oriented Programming", now we will deal with OOP

**IN Class :**

- you can define attributes, behaviour
- attributes: Variables, Behaviour: Methods(function)

eg.
```
cat > lib-demo.py
	
		#!/usr/bin/python3
		author = "The-One-Oh-1"
```
```
cat > main-script.py
	
		#!/usr/bin/python3
		import lib-demo

		print(lib-demo.author)
```

____________________________________________________________________________________________

# Defining and Calling a class

```
#!/usr/bin/python3

class Theoneoh1: 									# defining

user = Theoneoh1()								# calling with object
```

- As you can see there is nothing in this class, but you cannot leave this empty
- You need a keyword '**pass**' to pass it as an empty class
- eg.

```
#!/usr/bin/python3
class Theoneoh1:
	pass

user = Theoneoh1()
```
____________________________________________________________________________________________

# How to create and use it

- eg.

```
#!/usr/bin/python3

class Theoneoh1:

	#method named as config
	def config(self)
		print("Hello")
		
```
- Calling method

```
info = Theoneoh1()
Theoneoh1.config(info)

```
____________________________________________________________________________________________

## SELF

```
class check:
	def __init__(self):
		print("Address of self = ", id(self))

obj = check()
print("Address of class object = ", id(obj))

```

- This will confirm that self and the class ID are the same

____________________________________________________________________________________________

### Example without class

```
#!/usr/bin/python3

name = "Anand"
team = "Red"

print("Name : ", name, "\nTeam : ", team)

```
- **[Note]** : now if you have 100 users, then you will have to repeat this for 100 times

- to solve this redundancy problem we can use class

**Code:**

```

#!/usr/bin/python3

class details:
	def __init__(self, name, team):
		self.name = name
		self.team = team

	def run(self):
		print("Name : ", self.name, "\nRole : ", self.team, "\n")

user1 = details('butcher', 'Red')
user2 = details('frenchie', 'Blue')

user1.run()
user2.run()

```
_______________________________________________________________________________________________________________

# Inheritance 

- We can use existing class and inherit all the capabilities of an existing class and the add
	our own little bit to make our new class
- The new child class has all the capabilities of the parent class and then some more


**Code:**

```

#!/usr/bin/python3

class PartyAnimal:
	x = 0
	name = ""
	def __init__(self, name):
		self.name = name 
	def party(self):
		self.x = self.x+1
		print(self.name, "party count:", self.x)

class ditiss(PartyAnimal):
	points = 0
	def total(self):
		self.points = self.points + 7
		self.party()

		print(self.name, "Points : ", self.points)

s = PartyAnimal("Theoneoh1")

j = ditiss(s.name)

j.total()
j.total()

```
