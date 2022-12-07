
## Shell 

- A program that Interprets the Commands you type in your Terminal
	and then it passes them on to the Operating System.

	- Fast
	- Feature Rich
	- Most Commonly used

--------------------------

## 5 Steps to process Command Line

1. Tokenization
2. Command Identification
3. Shell Expansions
4. Quote Removal
5. Redirections

## Quoting in BASH

1. Backslash **`\`**
	- Removes special meaning from immediate next charachter
2. Single Quotes ('')
	- Removes special meaning when contained inside
3. Double Quotes ("")
	- Removes special meaning from all Except ($) and backtic (`)


## Tokenization

**Metacharachters**

- |
- &
- ;
- ()
- <>
- Space, Tab, Newline

-----------------------

## PERMISSION

eg. drwx-xr--x

d : Directory (if - then its a file) </br>
r : Read </br>
w : Write </br>
x : Execute </br>

**first 3 set** : Owner Permissions </br>
**second 3 set**: Group Permissions </br>
**last 3 set**  : Othe User Permissions </br>

- Permission Calculator | https://chmod-calculator.com/

----------------------------------------------

## PARAMETRS

- An Entity that can Store Values

1. Variables
	- user defined
	- shell variables
2. Positional Parameters
3. Special Parameters

**Note:** When defining a variable make sure to not use spaces between (=) If you do, the system will think that its a command and will pass "Command not found" Error


## Parameters Sclicing

```
> number=123456789
> echo ${number}

It will print it whole as a string
```

- Suppose you want to only print number upto 5 we can use Parameters Sclicing

- **Syntax:** echo ${parameter:offset:lenght}

```
> number=123456789
> echo ${number:0:5}

output : 12345
```
------------------------------------------

## Arithmatic 

- Exponential
```
> echo $((4 ** 2))

Result : 16
```

- Remainder
```
> echo $((5 % 2))

Result : 2
```

---------------------------------------------

## WORD Splitting

- A process performed by the shell to SPPLIT the result of some unquoted expansion into separate words.

- Word Splitting only happens on Result of Unquoted:
		- Parameters Expansions
		- Command Substitution
		- Arithmetic Expansions 
	
- The charachter used to split words are governed by IFS variable contains:
		- Space 
		- Tab
		- New Line

**Example:**

```
> echo ${IFS}
(It will give a blank response as space, tab and new line are all invisible charachters)

> echo ${IFS@Q}
(This will show the invisible charachters)
```

---------------------------------------------

## Globbing

- globbing is only performed on Words (No Operators)
- Special Pattern Charachters

```
1. (*)
		Will match all the pattern regardless of its length or what charachters it contain, even matches an empty string.

2. (?)
		Will match any charachter but only one charachter

3. []
		Will matches exactly 1 charachter but has to be listed inside the braces
```

---------------------------------------------

## REDIRECTION

- Data Streams </br>
	(0) : Standard Input (stdin) </br>
	(1) : Standard Output (stdout) </br>
	(2)	: Standard Error (stderr) </br>

- Redirection Operators </br>
	(>) : stdout </br>
	(<) : stdin </br>
	(&) : stderr </br>
	(&>): stderr + stdout </br>
	(>>): Append stdout </br>

---------------------------------------------

## USER INPUT IN BASH

**1. Positional Parameters**
	- Positional parameters refer to the position of the command line argument

```
eg. > bash script.sh itachi sasuke tobirama

- In the example the command line will have positional parameters like 

	0 : script.sh 
	1 : itachi
	2 : sasuke
	3 : tobirama

- To access these values in script you will have to use:-
	$1 : itachi
	$2 : sasuke
	$3 : tobirama

```

