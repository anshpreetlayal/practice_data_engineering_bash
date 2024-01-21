#! /bin/bash

# Bash Shell Scripting

## What is Shell?
In the context of operating systems, a shell is a command-line interface that interprets user commands and interacts with the operating system. It acts as an intermediary between the user and the kernel.

## Types of Shells on an Operating System
You can check the available shells on your system by examining the "/etc/shells" file:
```bash
nsh@Xubuntu:~$ cat /etc/shells
# /etc/shells: valid login shells
/bin/sh
/bin/bash
/usr/bin/bash
/bin/rbash
/usr/bin/rbash
/usr/bin/sh
/bin/dash
/usr/bin/dash
```

#What is Bash?
Bash, or the Bourne Again Shell, is a popular command processor that typically provides a user interface for your Linux or Unix-like operating system.
 It is an enhanced version of the original Bourne Shell (sh) and includes features for scripting and interactive use.



# Use hash to comment  on bash scripting files
echo "hello world"

# System variables
echo  our shell name is $BASH 
echo our shell version name is $BASH_VERSION
echo home directory is$HOME
echo our current working directory is $PWD

#output
#:ansh@Xubuntu:~/Desktop$ ./hello.sh
#hello world
#/bin/bash
#ansh@Xubuntu:~/Desktop$ ./hello.sh
#hello world
#/bin/bash
#5.1.16(1)-release
#/home/ansh
#/home/ansh/Desktop
#ansh@Xubuntu:~/Desktop$ 


#Bash scripting examples
# Read user input

echo "Enter names: "
read name1 name2 name3 
echo "Entered names: $name1, $name2, $name3"

# To ask for user input using flags
read -p 'username: '  user_var
read -sp 'password: ' pass_var
echo -e "\nUsername : $user_var"
echo "Password : $pass_var"

# To tell the system to read an array using flags
echo "Enter names: "
read -a names
echo "Names: ${names[0]}, ${names[1]}"

# Pass arguments to a Bash-Script
echo $1 $2 $3 '> echo $1 $2 $3'

args=("$@")
echo ${args[0]} ${args[1]} ${args[2]}



# If statement (if then, if then else, if elif else)
# syntax:
# if [ condition ]; then
#    statement
# fi

# Example:
count=10
if [ $count -eq 9 ]; then
   echo "Condition is true"
fi

word=abc
if [[ $word != "abcc" ]]; then
   echo "Condition is true"
fi

# if then else statement
if [[ $word == "abcc" ]]; then
   echo "Condition is true"
else
   echo "Condition is false"
fi

# elif statement
if [[ $word == "b" ]]; then
   echo "Condition b is true"
elif [[ $word == "a" ]]; then
   echo "Condition a is true"
else
   echo "Condition is false"
fi



# Appending output to the end of a text file
echo -e "Enter the name of the file: \c"
read file_name

if [ -f $file_name ]; then
   if [ -w $file_name ]; then
      echo "Type some text data. To quit press ctrl+d."
      cat >> $file_name
   else
      echo "The file does not have write permission"
   fi
else
   echo "$file_name does not exist"
fi


# Logical AND operator
age=50

if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]; then
   echo "Valid age"
else 
   echo "Age not valid"
fi

# Logical OR operator
age=50

if [ "$age" -gt 18 ] || [ "$age" -lt 30 ]; then
   echo "Valid age"
else 
   echo "Age not valid"
fi

# Performing arithmetic operations 
num1=20
num2=4

echo $((num1 + num2))
echo $((num1 - num2))
echo $((num1 * num2))
echo $((num1 / num2))
echo $((num1 % num2))

# Second way to perform arithmetic operations
echo $(expr $num1 + $num2)
echo $(expr $num1 - $num2)
echo $(expr $num1 \* $num2)
echo $(expr $num1 / $num2)
echo $(expr $num1 % $num2)

# Using bc command to perform floating-point math operations
num1=20.5
num2=4

echo "20.5+5" | bc   # can also do  echo "$num1+$num2" | bc 
echo "20.5-5" | bc
echo "20.5*5" | bc
echo "20.5%5" | bc
echo "scale=20;20.5/5" | bc

num=4 
echo "scale=2;sqrt($num)" | bc -l
echo "scale=2;3^3" | bc -l

# The case statement
# Basic syntax:
case expression in
     pattern1 )
           statements ;;
     pattern2 )
           statements ;;
     ...
esac

# First example
vehicle=$1
case $vehicle in
     "car" )
           echo "Rent of $vehicle is 100 dollars" ;;
     "van" )
           echo "Rent of $vehicle is 80 dollars" ;;
     "bicycle" )
           echo "Rent of $vehicle is 5 dollars" ;;
     "truck")
           echo "Rent of $vehicle is 150 dollars" ;;
     * )
           echo "Unknown vehicle" ;;
esac

# Second example
echo -e "Enter some character: \c"
read value
case $value in
     [a-z] )
           echo "User entered $value which is between a to z" ;;
     [A-Z] )
           echo "User entered $value which is between A to Z" ;;
     [0-9] )
           echo "User entered $value which is between 0 to 9" ;;
     ? )
           echo "User entered $value is a special character" ;;
     * )
           echo "Unknown input" ;;
esac

# Array variables
os=('cat' 'dog' 'ferret' 'otter' 'rabbits')
os[0]='dolphin' # To add in index

unset os[2] # To remove from index
echo "${os[@]}"  # To print the array
echo "${os[1]}" # To print the first array
echo "${!os[@]}" # To count the number of array
echo "${#os[@]}" # To print the total number of array

string="sjdhjhf"
echo "${string[@]}"

# While loops
# Syntax :
# while [ condition ]; do
#    command1
#    command2
#    command3
# done

# Example
n=1
while [ $n -le 10 ]; do
     echo "$n"
     (( n++ ))
done

# Using sleep with while loops
n=1
while [ $n -le 10 ]; do
     echo "$n"
     (( n++ ))
     sleep 1
done


# ways to read file content in bash
#1
while read p
do 
    echo $p
done < hello.sh

#2
cat hello.sh | while read p
do  
    echo $p
done

#3

while IFS= read -r line
do
    echo $line
done < hello.sh

  
#until loops
basic syntax:
until- [ condition ]
do  
    command1
    command2
    ...
    ...
    commandN
done

#example
 n=1
until- [ $n -ge 10 ]
do  
   echo $n
    n=$(( n+1 ))
done

#For loops


#using for loops to execute commands
for command in ls pwd date
do 
  echo "------------------$command-------------------"
  $command
done



#select loop

# Prompt the user with a menu
select option in option1 option2 option3 quit
do
  case $option in
    "option1")
      echo "You chose option 1"
      ;;
    "option2")
      echo "You chose option 2"
      ;;
    "option3")
      echo "You chose option 3"
      ;;
    "quit")
      echo "Exiting the menu"
      break
      ;;
    *)
      echo "Invalid option, please choose again."
      ;;
  esac
done

#Break and continue
 #`break` and `continue` are control flow statements used in loops to alter the normal flow of execution.

#1. break statement:
   - The break statement is used to exit a loop prematurely.
 example of using `break` in a `while` loop:
     while true; do
         read -p "Enter a number (0 to exit): " num
         if [ "$num" -eq 0 ]; then
             echo "Exiting the loop."
             break
         else
             echo "You entered: $num"
         fi
     done

#2. continue statement:
   - The continue statement is used to skip the rest of the commands in the current iteration of a loop and move on to the next iteration.
 example of using `continue` in a `for` loop:

     for i in {1..5}; do
         if [ $i -eq 3 ]; then
             echo "Skipping iteration $i"
             continue
         fi
         echo "Processing iteration $i"
     done


#functions

#local variables


#Function example


#readonly command

#signals and traps

#How to debug a bash script