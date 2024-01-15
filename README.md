

# Shell Basics

# pwd: 
- Present Working Directory

```bash
pwd
```

# ls command
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

# cd command
- displays the name of or changes the current directory.

```bash

# Change directory or go to the root directory
cd /

# Go to the root directory
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

# Cat command
- reads each File parameter in sequence and writes it to standard output