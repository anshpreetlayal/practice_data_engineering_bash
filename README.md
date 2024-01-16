

# Shell Basics

# pwd: 
- Present Working Directory

```bash
pwd
```

# `ls` command
 - List the content of a directory
```bash

ls [options] [filename]  # or ls filename/ to list contents of a particular directory

# List content of the home directory
ls ~

# List directory files in detail
ls -l

# Show hidden files (files starting with a dot)
ls -a

# List hidden files in detail
ls -al

# Sort directory by size
ls -lS

# List all directories
ls -d */

#to explore other usgaes for the ls command type in 
man ls

```

# `cd` Command - Change Directory
The `cd`  command in the shell is a versatile tool for navigating the file system. It is used to display the name of the current working directory or to change the current directory. Below are some common use cases:

```bash

# Change to the Root Directory:
cd /

# Go to the home directory
cd ~

# Go back one directory/folder
cd ..

# Go to a specific directory or use absolute path
cd [directory/folder name]

# Go to a file within a directory
cd Directoryname/Filename/

# To Open a file with spaces, we can use any of these three options
cd My\ Books
cd "My Books"
cd 'My Books'

```

# `cat` Command
The `cat` command in Unix-like operating systems is used to concatenate and display the content of files. It is a versatile command that can be used for various purposes related to file manipulation.

## Basic Syntax

```bash
cat [options] [filename(s)]
```

```bash
# Display content of a file
cat filename

#Concatenate and display the content of multiple files.
cat file1 file2

#Combine the content of files and redirect the output to a new file.
cat file1 file2 > newfile

# Display content with line numbers
cat -n filename

# Display content with line numbers, ignoring empty lines
cat -b filename

# Display content with empty lines squeezed
cat -s filename

```
