#! /bin/bash


# Bash Shell Scripting 
What is shell?

Types of shell on a operation system
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

What is Bash?



# this is a comment
echo "hello world"

# System variables
echo  our shell name is $BASH 
echo our shell version name is $BASH_VERSION
echo home directory is$HOME
echo our current working directory is $PWD

#output:ansh@Xubuntu:~/Desktop$ ./hello.sh
#hello world
#/bin/bash
#ansh@Xubuntu:~/Desktop$ ./hello.sh
#hello world
#/bin/bash
#5.1.16(1)-release
#/home/ansh
#/home/ansh/Desktop
#ansh@Xubuntu:~/Desktop$ 


name=mark
val=10
echo The name is $name
echo $val


#Read user input

echo "Enter names: "
read name1 name2 name3 
echo "Entered names: $name1 , $name2, $name3"

#to ask for user input using flags
read -p 'username: '  user_var
read -sp 'password: ' pass_var
echo "username : $user_var"
echo "password : $pass_var"

#to tell the system to read an array using flags
echo "Enter names: "
read -a names
echo "Names: ${names[0]}, ${names[1]}"

#Pass arguments to a Bash-Script
 echo $1 $2 $3 '> echo $1 $2 $3'

args=("$@")

echo ${args[1]} ${args[2]} ${args[3]}


#If statement (if ten, if then else, if elif else)
syntax:
if [ condition ]
then 
   statement 
   fi


example:
count=10

if [ $count -eq 9]
then 
  echo "condition is true"
   fi


word=abc

if [[ $word! == "abcc"]]
then 
    echo "condtion is ture"
   fi

#if then else statement
if [[ $word == "abcc"]]
then 
    echo "condtion is ture"
else
    echo "condtion is false"
   fi



#elif statement
if [[ $word == "b"]]
then 
    echo "condition b true"
elif [[ $word == "a"]]
then 
    echo "condition a is true"
else
    echo "condition is false"
   fi


# appending output to the end of text file
echo -e "enter the name of the file : \c"
read file_name

if [ -f $file_name ]
then 
        if [ -w $file_name ]
        then
             echo "Type some text data. To quit press ctrl+d."
             cat >> $file_name
        else
             echo "the file do not have write permission"
        fi
  else
  echo "$file_name not exists"
fi

#logical AND operator
age=50

if [ "$age" -gt 18 ] && [ "$age" -lt 30 ] # or use the second way to use and operator[ "$age" -gt 18  -a "$age" -lt 30 ]
then 
   echo "valid age"
   else 
   echo "age not valid"
fi


#logical OR operator
age=50

if [ "$age" -gt 18 ] || [ "$age" -lt 30 ] # or use the second way to use and operator[ "$age" -gt 18 ] -o [ "$age" -lt 30 ]
then 
   echo "valid age"
   else 
   echo "age not valid"
fi


#performing arithmetic operations 
num1=20
num2=4

echo $(( num1 + num2 ))
echo $(( num1 - num2 ))
echo $(( num1 * num2 ))
echo $(( num1 / num2 ))
echo $(( num1 % num2 ))


#second way to perform arithmetic operations

echo $(expr $num1 + $num2 )
echo $(expr $num1 - $num2 )
echo $(expr $num1 \* $num2 )
echo $(expr $num1 / $num2 )
echo $(expr $num1 % $num2 )



#Using bc command to perform floating point math operations
num1=20.5
num2=4

echo "20.5+5" | bc   # can also do  echo "$num1+$num2" | bc 
echo "20.5-5" | bc
echo "20.5*5" | bc
echo "20.5%5" | bc
echo "scale=20;20.5/5" | bc

num=4 
echo "scale=2;sqrt($num)" | bc -1
echo "scale=2;3^3" | bc -1

