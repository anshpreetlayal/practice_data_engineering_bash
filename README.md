

# Shell Basics

# pwd: 
Present Working Directory

```bash
pwd
```

# `ls` command
  List the content of a directory
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

# `Mkdir` command
The `mkdir` command in Unix-like operating systems, including Linux, is used to create directories (folders). The name "mkdir" stands for "make directory." The basic syntax of the mkdir command is:

mkdir [options] directory_name

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

# `rmdir` and `rm` command 
The `rmdir` and `rm` commands are used in Unix-like operating systems, including Linux, for removing directories and files. 
rmdir Command:
The `rmdir` command is primarily used for removing empty directories. The basic syntax is:
rmdir [options] directory_name


```bash
# Remove a directory
rmdir filename

# Delete a whole directory structure (removes the file in structure)
rmdir -p a/b/c/d/e

# Display extended info of the command output
ansh@Xubuntu:~/Desktop$ rmdir -pv a/b/c/d/e

rm Command:
The rm command is more versatile and is used for removing files and directories, including non-empty ones. The basic syntax is:
rm [options] file_name

#Verbose Output:
rm -v file_name

#promt before removal
rm -i file_name

#removing a directory and its content
rm -r directory_name

# If a directory contains files, use rm to remove the directory structure
ansh@Xubuntu:~/Desktop$ rm -rv a/b/
ansh@Xubuntu:~/Desktop$ rm -r a
```

# `cp` command
The `cp` command in Unix-like operating systems is used to copy files and directories. The basic syntax is:
syntax: 
 cp options source destination

```bash
# Copy a file to another file
cp filename1 filename2

# Copy a file to a directory
cp filename directoryname

# Use -i flag to prompt before overwriting
cp -i filename filename2 directoryname

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
```


# mv command
The mv command in Unix-like operating systems is used to move or rename files and directories.
 Its basic syntax is as follows:
mv [OPTION] source destination

```bash
# Move the contents of a file to create a new file
mv filename1 filename2 

# Move a file to a specific directory
mv filename directoryname/

# Move a file to a directory that already has a file with a similar name but different content. The 'mv' command overwrites the existing file with the new one. Use the '-i' flag to prompt for permission before overwriting.
mv -i filename directory

# Move all contents from one directory to another
mv directory1/* directory2

#Move Multiple Files to a Directory
mv file1 file2 file3 /path/to/destination/

#Move and Rename a Directory
mv olddirectory newdirectory

#Move a File to the Home Directory
mv filename ~

#to explore more usages for mv command
man mv
```

# less command

```bash
#shows the content from the start
less filename

#to quit less command press "q"

#to explre the usages of less command 
man less
```

# touch command
```bash
#to create a new empty file (cannot create a directory with touch)
touch filename

#to change the timestamp of the file
touch filename
```
# nano command
```bash
#to vreate a file and type its content in it | Press ctrl o to save content |Press ctrl+x to exit nano
nano filename 

#can create code files too
nano filename.extension
```

#sudo command
```bash
#can run the commands as an administrator, for example to create a new directory in a existing directory 
ansh@Xubuntu:/etc$ mkdir newdir
mkdir: cannot create directory ‘newdir’: Permission denied
ansh@Xubuntu:/etc$ sudo mkdir newdir
[sudo] password for ansh: 
ansh@Xubuntu:/etc$ 

# same if you want to install any libraries or other stuff
sudo the install command 

#to go superuser mode
sudo -s
```bash

#top command

```bash
top, press s and type in refresh timing 





















#kill command

#echo command

#File permissions and Symbolic permissions

#directory permissions and chmod 

#Octal and numerical permissions


