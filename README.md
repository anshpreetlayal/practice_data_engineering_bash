

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
cd [directory/foldername]

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
ansh@Xubuntu:~$ cat -b hello.txt
     1  hello cat
     2  spike
     3  legal
     4  nana
     5  dazai

# Display content with line numbers, including empty lines
ansh@Xubuntu:~$ cat -n hello.txt
     1  hello cat
     2  spike
     3  legal
     4  nana
     5
     6  dazai

# I/O Redirection in Linux
# Redirect all output to a file
cat > test.txt

# Append to an existing file
cat >> test.txt

# Combine content of two files into a new one
cat filename1 filename2 > newfile.txt

# Append content from filename1 to filename2
cat filename1 >> filename2

```

# Mkdir command

 Mkdir command

```bash
# Create a directory
mkdir [directoryname]

# Create a subdirectory in a directory
mkdir DirectoryName/SubdirectoryName

# Create a structured directory
mkdir -p names/mark or mkdir --parents names/mark

# Create multiple subdirectories in a directory
mkdir -p names/{john,tom,bob}

```

# rmdir and rm command 
```bash
#removes desired directory
rmdir filename

#to delete a whole directory structure (removes the file in structure)
rmdir -p  a/b/c/d/e

#to display the extended info of the command output
ansh@Xubuntu:~/Desktop$ rmdir -pv  a/b/c/d/e
rmdir: removing directory, 'a/b/c/d/e'
rmdir: removing directory, 'a/b/c/d'
rmdir: removing directory, 'a/b/c'
rmdir: removing directory, 'a/b'
rmdir: removing directory, 'a'

# if directory contains file , we use rm to remove the direcory structure
ansh@Xubuntu:~/Desktop$ rmdir -pv  a/b/c/d/e
rmdir: removing directory, 'a/b/c/d/e'
rmdir: removing directory, 'a/b/c/d'
rmdir: removing directory, 'a/b/c'
rmdir: removing directory, 'a/b'
rmdir: failed to remove directory 'a/b': Directory not empty

ansh@Xubuntu:~/Desktop$ rm -rv a/b/
removed 'a/b/abc.txt'
removed directory 'a/b/'

#above the command has only removed b directory because a is a parent directory here so to remove a too we use

ansh@Xubuntu:~/Desktop$ rm -r a
```

# cp command
syntax: 
 cp options source destination

```bash
#copy a fil to a file 
 cp filename1  filename2

#copy a file to a directory
syntax :cp filename directoryname

ansh@Xubuntu:~/Desktop$ cp one.txt names
ansh@Xubuntu:~/Desktop$ ls names
bob  john  mark  one.txt  tom
ansh@Xubuntu:~/Desktop$ cp two.txt names
ansh@Xubuntu:~/Desktop$ ls names
bob  john  mark  one.txt  tom  two.txt

#to avoid overwriting use this flag because it asks before overwriting
syntax = cp -i filename filename2 directoryname

ansh@Xubuntu:~/Desktop$ cp -i one.txt two.txt names
cp: overwrite 'names/one.txt'? y
cp: overwrite 'names/two.txt'? y
ansh@Xubuntu:~/Desktop$ 

#to copy directory to a new nonexistant directory 
ansh@Xubuntu:~/Desktop$ cp names new
cp: -r not specified; omitting directory 'names'
ansh@Xubuntu:~/Desktop$ cp -R names new
ansh@Xubuntu:~/Desktop$ ls
image  names  new  one.txt  two.txt
ansh@Xubuntu:~/Desktop$ ls new
bob  john  mark  one.txt  tom  two.txt
ansh@Xubuntu:~/Desktop$ 
```
