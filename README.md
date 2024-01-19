

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
ansh@Xubuntu:~$ cat -b hello.txt
     1  hello cat
     2  spike
     3  legal
     4  nana
     5  dazai

cat -n hello.txt = adds numbers to all the linesin a file even if ithas line breaks
ansh@Xubuntu:~$ cat -n hello.txt
     1  hello cat
     2  spike
     3  legal
     4  nana
     5
     6  dazai

  cat > test.txt =  I/O Redirection works in Linux, Redirect all output to file    
   cat >> test.txt = to appened to a existing content to a file

   cat filename1 filename2 > newfile.txt = to put together content of two files in a new one

   cat filename1 >> filename2 = to append from filename 1 to filename2


   Mkdir command
#create directory
   mkdir [directoryname]

#create sudirectory in a directory
mkdir DirectoryName/SubdiretoryName

#to create s structured directoyr 

mkdir -p names/mark or mkdir --parents names/mark

#to create multiple subdirectories ina  directory
mkdir -p names/{john,tom,bob}

rmdir 
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

cp command
syntax: 
 cp options source destination

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
The `sudo` command in Unix-like operating systems is used to execute commands with elevated privileges. 
It stands for "superuser do" and is often required when performing actions that require administrative or root-level access.
 The basic syntax of the sudo command is:
 sudo [options] command [arguments]

```bash
# Run commands with administrator privileges; for example, to create a new directory in an existing directory
ansh@Xubuntu:/etc$ mkdir newdir
mkdir: cannot create directory ‘newdir’: Permission denied
ansh@Xubuntu:/etc$ sudo mkdir newdir
[sudo] password for ansh: 
ansh@Xubuntu:/etc$ 

# Enter superuser mode
sudo -s

#Install a package using apt-get (Ubuntu/Debian)
sudo apt-get install packageName

#Edit a system configuration file using a text editor (e.g., nano)
sudo nano /etc/config-file.conf

```

# `top` command
The `top` command is a system monitoring utility in Unix-like operating systems that provides real-time information about system performance. When you run the top command in a terminal, it displays a dynamic, interactive view of processes and resource usage. 

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

# `Kill` command
The `kill` command in Unix-like operating systems is used to terminate or send signals to processes.
 The basic syntax of the kill command is:
 kill [signal] PID
signal: Specifies the signal to be sent. If not specified, the default signal is SIGTERM (terminate). 
You can use numeric signal values or signal names (e.g., TERM for termination, HUP for hang up, KILL for forceful termination).
PID: Specifies the Process ID of the target process.

```bash
# Get the PID of a process
pidof processname

#Send the default signal (SIGTERM) to a process
kill PID

#Send a specific signal (e.g., SIGKILL) to a process
kill -9 PID

#Send a signal to multiple processes
kill -15 PID1 PID2 PID3

# To find out the list of running processes
ps -ux

#Send a signal to all processes in a process group.( You can find the Process Group ID (PGID) using the ps command.)
kill -TERM -<PGID>

#Sending SIGKILL (kill -9) is a forceful termination, and the process won't have an opportunity to perform cleanup actions. It should be used cautiously, especially when a more graceful termination (e.g., SIGTERM) is sufficient.
#Always exercise caution when using the kill command, as terminating processes abruptly may lead to data loss or other unexpected behavior.
```

# `Echo` command
The `echo` command in Unix-like operating systems is used to display messages or variables on the terminal.
 Its basic syntax is:
 echo [options] [string(s)]

```bash
#Print a simple string
echo "Hello, World!"

#Print the value of a variable
myvar="cat"
echo "My variable is $myvar"

#Display text without a newline character (useful for appending to a line)
echo -n "This is on the same line"

#Escape characters
echo "This is a line with a newline.\nThis is the second line."

```

# `File permissions` and `Symbolic permissions`
File permissions in Unix-like operating systems control who can access a file or directory and the type of access they have (read, write, execute). Symbolic permissions are a way to represent and modify these permissions using symbols and operators.

File Permissions:
In Unix-like systems, each file or directory has three sets of permissions for three categories of users:

Owner Permissions (rwx):

r (read): Permission to view the contents of the file.
w (write): Permission to modify or delete the file.
x (execute): Permission to execute the file if it is a program or script.
Group Permissions (rwx):

Same as owner permissions but apply to a specific group of users.
Others Permissions (rwx):

Same as owner permissions but apply to all other users.
Symbolic Permissions:
Symbolic permissions use symbols and operators to represent and modify file permissions.
 The basic syntax is:
 chmod [permissions] file

permissions: A combination of symbols and operators.
file: The file or directory whose permissions are being modified.
Symbols:
r (read)
w (write)
x (execute)
Operators:
+ (add a permission)
- (remove a permission)
= (set the permissions explicitly)
```bash
#Add read permission for the group
chmod g+r filename

#Remove execute permission for others
chmod o-x filename

#Set specific permissions
chmod u=rw,go=r filename

#Add execute permission for the owner and group
chmod ug+x filename

```

# `Directory permissions` and `chmod`
Directory permissions in Unix-like operating systems are similar to file permissions but have a few distinctions. Directories use the same permission bits as files (r, w, and x), but their meanings are slightly different:

r (read): Allows listing the contents of the directory.
w (write): Allows creating, deleting, or renaming files within the directory.
x (execute): Allows access to the contents of the directory.
You can use the chmod command to modify directory permissions using symbolic notation:

```bash
#Add read and execute permissions for the owner
chmod u+rx directoryname

#Remove write permission for the group
chmod g-w directoryname

#Set specific permissions for the owner, group, and others
chmod u=rwx,g=rx,o= directoryname

#Add write and execute permissions for the owner, and read permission for the group and others
chmod u=+wx,g=r,o=r directoryname

```

# `Octal` and `numerical` permissions
In Unix-like operating systems, octal (base-8) notation is another way to represent and set file permissions
. Each permission is assigned a numeric value, and these values are combined to form a three-digit number that represents the permissions for the owner, group, and others.

The numeric values are as follows:

4 corresponds to read (r) permission.
2 corresponds to write (w) permission.
1 corresponds to execute (x) permission.
Octal Permission Values:
4 (read)
2 (write)
1 (execute)

```bash
#Set read and write permissions for the owner, and read-only permissions for the group and others
chmod 644 filename

#Give full permissions to the owner and read-only permissions to the group and others
chmod 744 filename

#Give execute permission to the owner, group, and others
chmod 111 filename
```


# `Which` command
The ` which`  command is used to locate the executable binary file associated with a given command. 
It helps you determine the path of the executable that will be run when you execute a command in the terminal.
 syntax of the which command:
 which command_name

```bash
#example
which ls

#output
/usr/bin/ls
```

# `Whatis` command
The ` Whatis` command in Unix-like operating systems is used to display a brief description of a command or a system call. It provides a short summary or manual page entry related to the specified command.
 the basic syntax:
whatis command_name

```bash
#example
whatis ls

#output
ls (1)               - list directory contents

```

# `Useradd` 

# `Userdel`

# Group management
```bash
# To look at the groups
cat /etc/group

# To add a new group
sudo groupadd groupname

# To delete a group
sudo groupdel groupname

# To add a user to a group
sudo gpasswd -a username groupname
```

# .bashrc file
```bash
# To look at the file
nano .bashrc
# To edit the file
gedit .bashrc    
```
# Viewing resources (du, df, free)
# df tells about available disk space (-h flag used for human-readable)
df -h

# du

#free

# Watch command

# Head command
# First 10 lines
head filename
# To customize the lines you want to see
head -n3 filename

# Tail command
# To customize the lines you want to see
tail -n3 filename
# Last 10 lines
tail filename

# Find command
# Used to search for files in directory hierarchy
# wc command

# cal command

# date command

# How to run multiple terminal commands

# apt-get command

# ifconfig command

# tar command

# grep command


# netstat command








