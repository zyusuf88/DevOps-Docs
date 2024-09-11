# Bash Scripting 

This README, will cover the fundamental concepts of Bash scripting, focusing on conditions, loops, functions, variables, error handling, and more. By the end of this guide, you'll have a basic understanding of how to write and execute Bash scripts.


## Table of Contents

1. [Comparisons](#comparisons)
2. [Variables](#variables)
3. [Parameters](#parameters)
4. [Arithmetic Expansion](#arithmetic-expansion)
5. [VSCode Installation](#vscode-installation)
6. [Control Structures](#control-structures)
7. [Loops](#loops)
8. [Functions](#functions)
9. [Error Handling](#error-handling)
10. [Environment Variables](#environment-variables)

---

## Comparisons

In Bash scripting, comparisons are essential for controlling flow. Here are some common comparison operators:

| Operator | Description                 |
|----------|-----------------------------|
| `-eq`    | Equal                       |
| `-ne`    | Not equal                   |
| `-lt`    | Less than                   |
| `-le`    | Less than or equal          |
| `-gt`    | Greater than                |
| `-ge`    | Greater than or equal       |

### Example:
```bash
if [ "$a" -eq "$b" ]; then
  echo "a is equal to b"
fi
```
This checks if the value of variable a is equal to the value of variable b. If true, the message "a is equal to b" will be displayed.


## Variables

Variables are used to store data, and their values can be referenced and manipulated throughout your script. In Bash, assigning a value to a variable is as simple as 

```bash
my_variable="Hello, World!"
echo $my_variable
```
This stores the string "Hello, World!" in the variable my_variable, and then prints it using echo.

## Parameters

Bash scripts can accept arguments from the command line when they are executed. These arguments are referred to as parameters. The first argument is accessed with `$1`, the second with `$2`, and so on.

```bash
#!/bin/bash
echo "Parameter 1 is: $1"
echo "Parameter 2 is: $2"

```

Run the script with:

```bash
./script.sh arg1 arg2
```

## Arithmetic Expansion
Arithmetic expansion allows you to perform mathematical operations within a Bash script. It is done using the $(( ... )) syntax.
```bash
result=$((5 + 3))
echo "Result: $result"
```

This example adds 5 and 3, stores the result in the variable result, and then prints it.

## Arithmetic Expansion with prameters 
```bash
#input the values in the terminal 
length="$1"
width="$2"

area=$((length * width))
perimeter=$((2 * (length + width)))


echo "Rectangle area: $area"
echo "Rectangle perimeter: $perimeter"
```


## if Statements
The `if` statement allows you to execute code conditionally based on whether a certain condition is met.
```bash 
if [ "$a" -gt "$b" ]; then
  echo "a is greater than b"
fi
```
This checks if the value of a is greater than b using the -gt (greater than) operator.

## else and elif
The else and elif statements provide additional logic for branching conditions.
```bash 
if [ "$1" -eq "$2" ]; then
  echo "1 equals 2"
elif [ "$1" -gt "$2" ]; then
  echo "1 is greater than 2"
else
  echo "1 is less than 2"
fi
```
- elif: Stands for "else if" and allows checking multiple conditions
- else: Provides code to execute if none of the previous conditions are met.
## Nested if Statements
You can also nest if statements within other if statements to check multiple conditions sequentially.
```bash
if [ 6 -eq 6 ]; then
  if [ 6 -gt 0 ]; then
    echo "6 is a positive number and equal to 6"
  fi
fi

```

# Loops

## while loops
A while loop allows you to repeat a block of code as long as a condition is true.


```bash
count=1
while [ $count -le 5 ]; do
  echo "Count: $count"
  count=$((count + 1))
done
```


# for loops
A for loop iterates over a list of values or a range of numbers.


```bash
for i in {1..5}; do
  echo "Looping... number $i"
done
```

# Break and continue
`break `and `continue` are control statements that allow you to alter the flow of loops.


```bash
for i in {1..5}; do
  if [ "$i" -eq 3 ]; then
    continue  # Skip iteration when i is 3
  fi
  echo "Number: $i"
done
```
- break: Exits the loop entirely.
- continue: Skips the current iteration and continues to the next one.
# Functions
## Basics of a function 
Functions allow you to group a set of commands into a reusable block.


```bash
my_function() {
  echo "This is a function!"
}
my_function
```
This defines a function called my_function and then calls it to display the message.

# Parameters in Functions

You can pass parameters to functions just like  with scripts.
```bash
greet() {
  echo "Hello, $1!"
}
greet "World"
```
This function takes one argument ($1) and prints "Hello, World" when called with "World" as a parameter.

## User Inputs
Bash allows reading user inputs from the terminal using the read command.


```bash
echo "Enter your name: "
read name
echo "Hello, $name!"
```
This prompts the user for their name and then greets them.

## Handling Bad Data
You can check if the input is valid using pattern matching or conditions.


```bash 
if [[ ! "$number" =~ ^[0-9]+$ ]]; then
  echo "Invalid input: Please enter a number."
fi
This checks if the input contains only digits.
```
## Piping
Piping allows you to pass the output of one command as the input to another.


```bash 
ls -l | grep ".sh"
This example lists all files in the current directory and pipes the output to grep, which filters only .sh files.
```

# Error Handling
if Statements Recap for Error Handling
You can handle errors by checking the result of commands and using if statements.


```bash if ! command -v some_command &> /dev/null; then
  echo "some_command is not installed"
  exit 1
fi
```
# Exit Codes
Every command in Bash returns an exit code ($?). 0 means success, while any other number indicates failure.


```bash 
./script.sh
if [ $? -eq 0 ]; then
  echo "Script executed successfully"
else
  echo "Script failed"
fi
```
### Set Options
- set -e: Exit the script if any command fails.
- set -u: Treat unset variables as errors.
- set -x: Print each command before executing it (useful for debugging).
- set -eux: Combination of all three for robust error handling.

```bash
set -eux
```
# Environment Variables
## Change PATH Permanently
To add directories to your PATH permanently, modify your .bashrc or .bash_profile:


```export PATH=$PATH:/new/directory/path```
## Reading Environment Variables
You can print environment variables using echo:

`echo $HOME`
This will print the current user's home directory.

## File Reading
You can read and process files line by line using a while loop.


```bash 
read_file() {
  local file_path="$1"
  
  while IFS= read -r line; do
  echo "$line"
done < filename.txt
}

read_file "./log.txt'
```
This example reads each line from filename.txt