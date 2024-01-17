

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


# `mv` command
The `mv` command in Unix-like operating systems is used to move or rename files and directories.
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

# `less` command
The `less` command is a terminal pager program used to view the contents of a text file in a scrollable and interactive way. It is commonly employed for navigating through large files without loading the entire content into memory. less provides more features compared to the traditional more command, allowing users to move both forward and backward through the file, search for specific text, and perform other actions.

Here are some key features of the less command:

```bash
Paging through Text:

You can use the arrow keys, spacebar, and the 'b' key to move forward and backward through the file.
Search Functionality:

Press '/' followed by a search term to search for a specific pattern in the text.
Press 'n' to move to the next occurrence of the search term.
Exiting less:

Press 'q' to exit the less command.
Viewing File Information:

Press 'g' to go to the beginning of the file.
Press 'G' to go to the end of the file.
Press '=' to display the current line number and other file information.
Other Navigation Options:

Use the 'f' key to forward-scroll an entire screen.
Use the 'Ctrl + F' key combination to move forward by a specified number of lines.
Use the 'Ctrl + B' key combination to move backward by a specified number of lines.


# Display the content of a file from the beginning
less filename

# To exit the 'less' command, press "q"


```

# `touch` command
The `touch` command in Unix-like operating systems is used to create empty files or update the timestamp of existing files.
 Its basic syntax is:
 touch [OPTION]... FILE...

```bash
# Create a new empty file (Note: 'touch' cannot be used to create a directory)
touch filename

#Create Multiple Files
touch file1 file2 file3

#Update Timestamp of an Existing File
touch -c filename

#Create Files in a Specific Directory
touch /path/to/directory/filename

# Change the timestamp of the file
touch filename
```
# `nano` command
The nano command is a simple and user-friendly text editor for Unix-like operating systems. It operates in the terminal and is designed to be accessible to users who may not be familiar with more complex text editors like Vim or Emacs. Here are some common usages of the nano command:

```bash
#Create or Edit a File
nano filename

#This command opens the nano text editor to create or edit the specified file.
#Save Changes:
#To save changes, press Ctrl + O, then press Enter to confirm the filename.

#Exit Nano:
#To exit nano, press Ctrl + X. If there are unsaved changes, it will prompt you to save before exiting.

#Navigate and Edit Text:
#Use the arrow keys to navigate.
#Type directly to insert text.
#Use Backspace/Delete to remove characters.
#Use Ctrl + K to cut the current line.
#Use Ctrl + U to paste the cut or copied text.

#Search for Text:
#Press Ctrl + W to search for text.
#Enter the search term and press Enter.
#Press Ctrl + W again to find the next occurrence.

#Copy and Paste:
#Use Alt + A to mark text for copying.
#Use Ctrl + K to cut the marked text.
#Use Ctrl + U to paste the cut or copied text.
#Open a Specific Line Number:
#Press Ctrl + _ to open a specific line number.
#Enter the line number and press Enter.

#Syntax Highlighting:
#nano provides basic syntax highlighting for various programming languages.
#Read a New File into the Current Buffer:
#Press Ctrl + R to read a new file into the current buffer.

#View Help:
#Press Ctrl + G to display the help menu with additional commands.

#can create code files too
nano filename.extension
```

# `sudo` command
```bash
# Run commands with administrator privileges; for example, to create a new directory in an existing directory
ansh@Xubuntu:/etc$ mkdir newdir
mkdir: cannot create directory ‘newdir’: Permission denied
ansh@Xubuntu:/etc$ sudo mkdir newdir
[sudo] password for ansh: 
ansh@Xubuntu:/etc$ 

# Similarly, use 'sudo' to install libraries or perform other administrative tasks
sudo install-command

# Enter superuser mode
sudo -s
 
```

# `top` command
The top command is a system monitoring utility in Unix-like operating systems that provides real-time information about system performance. When you run the top command in a terminal, it displays a dynamic, interactive view of processes and resource usage. 

```bash
#Start the top Command
top

#This command starts the top utility and displays a continuously updating list of processes along with system resource usage.

#Interactive Commands:
#Press 'q' to quit: Exit the top command.
#Press 'k' to kill a process: Enter the process ID (PID) when prompted.
#Press 'f' to choose columns: Select and order the displayed columns.

#Display Options:
#Press 'z' to toggle colors: Switch between color and monochrome display.
#Press 'b' to toggle bold: Toggle bold text for highlighting.
#Press '1' to show individual CPUs: Display separate CPU usage for each core.

#Sort by Columns:
#Press 'P' to sort by CPU usage: Sort processes by CPU usage.
#Press 'M' to sort by memory usage: Sort processes by memory usage.
#Press 'T' to sort by time: Sort processes by cumulative time.

#Set Refresh Interval:
#Press 's' to set the refresh interval: Enter a new value in seconds.
#Navigate Through Processes:
#Use arrow keys: Move up and down to highlight different processes.
#Use 'Space' to scroll: Scroll through the process list.

#Display Summary Information:
#Press 't' to toggle the summary information at the top: Show or hide the system summary information.
#Filter Processes:
#Press 'u' to filter by user: Enter a username to display processes for that user.
#Press 'n' to filter by process name: Enter a process name to display only matching processes.

```



















#kill command

#echo command

#File permissions and Symbolic permissions

#directory permissions and chmod 

#Octal and numerical permissions


