## Mastering Bash: Essential Commands Repository

Hello and welcome to the **Shell Basics** repository! 🌟 This repository is your ultimate guide to mastering the fundamentals of Bash shell commands. Within these curated notes, you'll find comprehensive coverage of essential operations, ranging from navigating directories to effectively managing files and users.

Whether you're a newcomer seeking guidance or an experienced user looking to refine your skills, this repository is designed to be your reliable reference. Each note aims to provide clarity and insights into the core commands that empower you in the command line world.

Feel free to delve into the content, learn, and enhance your proficiency in Bash shell commands. Happy coding awaits! 🚀

### How to Contribute
Your insights, tips, and new commands are highly encouraged! If you have something valuable to add, simply fork the repository, implement your changes, and submit a pull request. Let's collaboratively build a comprehensive reference for the entire community.

### Acknowledgment
These notes are a product of my own learning journey, inspired by the invaluable insights gained from the [YouTube course](https://www.youtube.com/watch?v=YHFzr-akOas&list=PLS1QulWo1RIb9WVQGJ_vh-RQusbZgO_As&index=1). Special thanks to the course creator for their guidance.

Let's continue to learn, collaborate, and empower one another in the fascinating realm of Bash shell commands. Happy coding! 🚀

<img src="./image.png" alt="Shell Basics Logo" width="300"/>


## Getting Started: Shell Basics

Embark on your journey to mastering essential Bash shell commands. This guide covers fundamental operations and concepts, empowering you to navigate the command line with confidence.

## `pwd`: Print Working Directory

Now, let's explore the first command in our repertoire.

The `pwd` command, short for "Print Working Directory," is a Unix-like operating system command (including Linux and macOS) used to display the current working directory.

When you execute the `pwd` command, it prints the full path of the current directory to the terminal.

```bash
pwd
````

## `ls` Command: Listing Directory Contents

The `ls` command is a powerful tool for listing the contents of a directory. Here are some common usage examples:

```bash
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
```

Feel free to explore additional options and functionalities by referring to the manual:
```bash
man ls
```

## `cd` Command: Change Directory

The `cd` command in the shell is a versatile tool for navigating the file system. It is used to display the name of the current working directory or to change the current directory. Here are some common use cases:

```bash
# Change to the Root Directory:
cd /

# Go to the home directory
cd ~

# Go back one directory/folder
cd ..

# Go to a specific directory or use an absolute path
cd [directory/folder name]

# Navigate to a file within a directory
cd Directoryname/Filename/

# Open a file with spaces using any of these three options
cd My\ Books
cd "My Books"
cd 'My Books'
```


## `cat` Command
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

## `mkdir` command
The `mkdir` command in Linux/Unix is used to create directories (folders). 
 Basic Syntax:
mkdir [options] directoryname

```bash
Create a Single Directory
   mkdir directoryname

Create Multiple Directories
   mkdir directory1 directory2 directory3

Create a Directory with Parent Directories
   mkdir -p parentdirectory/child1/child2
#   The `-p` option is used to create parent directories along with the specified directory.

Create Nested Directories
   mkdir -p top/level/subdirectory
#   This command creates a nested directory structure with the `-p` option.
```

## `Rmdir` and `RM`  Command
`rmdir` Command:
The `rmdir` command is used to remove empty directories. If a directory contains files, `rmdir` alone may not be sufficient. In such cases, you might need to use `rm` to remove the directory and its contents.
Basic syntax:
rmdir directoryname

```bash
#Remove a Single Empty Directory
rmdir dirname

#Remove a Directory Structure
rmdir -p a/b/c
#The `-p` option removes the specified directory structure along with parent directories if they become empty. In this example, it removes the directory structure "a/b/c."

# Display Extended Information
rmdir -pv a/b/c/d/e
#The `-pv` option displays extended information while removing the directory structure "a/b/c/d/e." It shows the step-by-step removal process.
```

## `rm` Command:
The `rm` command is a versatile command used for removing files and directories. The `-r` option removes a directory and its contents recursively. Use it with caution, as it can delete entire directory structures.
basic syntax:
rm filename/directoryname

```bash
# Remove a File:
rm filename

# Remove a Directory and its Contents:
rm -r directoryname

# Prompt Before Overwriting:
rm -i directoryname/*
#The `-i` option asks for confirmation before removing each file in the directory. It provides an additional layer of safety.

#Remove a Non-Empty Directory:
rm -r directoryname

#This command removes a non-empty directory and its contents. Be cautious, as it can delete files and subdirectories.
```

## `cp` command
 The `cp` command in Linux/Unix is used to copy files and directories from one location to another. 
 Basic Syntax:
cp [options] source destination

 ```bash
#Copy a File to Another File:
  cp filename1 filename2
  # This command makes a copy of `filename1` and names the copy `filename2`.

#Copy a File to a Directory
  cp filename directoryname
#   This command copies `filename` into the specified directory.

#Avoid Overwriting (Prompt for Confirmation)
   cp -i filename filename2 directoryname
  
   #The `-i` option prompts for confirmation before overwriting existing files. It's useful to prevent accidental overwrites.

#Copy a Directory and Its Contents Recursively
cp -R sourcedir destinationdir
  # The `-R` option is used to copy directories and their contents recursively.
  
#Copy a file into a directory
 cp document.txt /path/to/directory/


#Copy a directory and its contents to another location
cp -R source_directory/ /path/to/destination/


#Copy a file with confirmation before overwriting
cp -i important_file.txt backup/
 

#Copy multiple files into a directory
cp file1.txt file2.txt file3.txt /path/to/directory/
  ```

## `mv` command
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

## `less` command
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

## `touch` command
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

## `nano` command
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
The `useradd` command is a Unix and Linux command-line utility used to create new user accounts on a system. It is commonly used by system administrators to add users to the system and manage user account information.
 the basic syntax of the useradd command:
 sudo useradd [options] username

```bash
# example
sudo useradd john
```
Common Options:
-c, --comment COMMENT: Add a comment or description for the user.
-d, --home HOME_DIR: Specify the home directory for the new user.
-g, --gid GROUP: Specify the initial login group for the new user.
-G, --groups GROUPS: Specify additional groups for the new user.
-m, --create-home: Create the user's home directory if it does not exist.
-s, --shell SHELL: Specify the login shell for the new user.
-u, --uid UID: Specify the user ID for the new user.

#Always refer to the manual page for useradd (man useradd) for a comprehensive list of options and details about the command.

# `Userdel`
The `userdel` command in Unix and Linux operating systems is used to delete user accounts from the system.
 It removes the user's entry from the system files, including the password file (/etc/passwd), the shadow password file (/etc/shadow), and other relevant user-related files.
the basic syntax of the userdel command:
sudo userdel [options] username

```bash
#example
sudo userdel john
```
Common Options:
-r, --remove: Remove the user's home directory and mail spool.
-f, --force: Force the removal of the user account
#Always refer to the manual page for userdel (man userdel) for a comprehensive list of options and details about the command.


# `Group management`
Group management in Unix and Linux involves creating, modifying, and deleting groups. 
Groups are used to organize users, allowing them to share common permissions and access to files and resources. The key commands for group management include groupadd, groupdel, and gpasswd.
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

# `.bashrc` file
The `.bashrc` file is a script that runs whenever a new interactive Bash shell is started. It is commonly used to customize the behavior of the shell for individual users. Here are some details about the .bashrc file:
Location:
The .bashrc file is typically located in a user's home directory. The file is hidden, which means its name begins with a dot. The full path is usually ~/.bashrc, where ~ represents the user's home directory.
Purpose:
The primary purpose of the .bashrc file is to set up the environment for a user's interactive shell session. This includes defining environment variables, customizing the prompt, and specifying aliases and functions.

```bash
# To look at the file
nano .bashrc

# To edit the file
gedit .bashrc    

# To save  changes after editing the file and, if necessary, apply the changes to the current shell session using:
source ~/.bashrc

```
# Viewing resources (`du`, `df`, `free`)
The commands `du`, `df`, and `free` are used to view information about disk usage and system memory. Here's a brief overview of each:

1. `du` - Disk Usage: 
The du command is used to estimate the space used by a directory or file.
Syntax:
du [options] [directory/file]

```bash
#example
du -sh /path/to/directory
#-s: Display only the total for each specified file or directory.
#-h: Human-readable output (e.g., KB, MB, GB).
```
2. `df` - Disk Free:
The df command shows information about disk space usage on mounted filesystems.
Syntax:
df [options]

```bash
#example
df -h
-h: Human-readable output.
-T: Display the filesystem type along with the disk space information.
```

3. `free` - Display System Memory:
The free command shows information about system memory usage.
Syntax:
free [options]

```bash
#example
free -h
-h: Human-readable output.
-t: Display a line showing the total memory.
```

# `Watch` command
The `watch` command is used to execute a command periodically and display the output in a clear and formatted way.
It is particularly useful for monitoring changes over time. 
The basic syntax of the watch command:
watch [options] command

```bash
# To run the df -h command every 5 seconds (-n 5) and display the output, providing an updating view of disk space usage.
watch -n 5 df -h

#the ls -l command will be executed every second, and differences in the output will be highlighted with this command
watch -n 1 -d ls -l

Common Options:
-n or --interval: Set the update interval in seconds.
-d or --differences: Highlight the differences between successive updates.
-t or --no-title: Turn off the header showing the command and its arguments.

#Press Ctrl+C to exit the watch command.

```

# `Head` command
The `head` command in Unix and Linux is used to display the beginning (head) portion of a text file or the output of a command. By default, it displays the first 10 lines of a file. 
The basic syntax:
head [options] [file(s)]

```bash
# To display the first 10 lines of a file you want to see
head filename

# To customize the lines you want to see, use '-n' flag
head -n3 filename

# Display the first 5 lines of a file
head -n 5 filename

# Display the first 20 bytes of a file
head -c 20 filename

# Display the first 10 lines of multiple files, suppressing headers
head -q file1 file2

Common Options:
-n N or --lines=N: Specify the number of lines to display (replace N with a number).
-c N or --bytes=N: Specify the number of bytes to display.
-q or --quiet, --silent: Suppress the printing of headers when multiple files are specified.

```
# `Tail` command
The `tail` command in Unix and Linux is used to display the last part of a text file or the output of a command. By default, it displays the last 10 lines of a file. 
The basic syntax of the tail command:
tail [options] [file(s)]

```bash
#This command displays the last 10 lines of the specified file.
tail filename

# Display the last 5 lines of a file
tail -n 5 filename

# Display the last 20 bytes of a file
tail -c 20 filename

# Display the last 10 lines of multiple files, suppressing headers
tail -q file1 file2

# Display appended data in real-time (useful for log files)
tail -f logfile

Common Options:
-n N or --lines=N: Specify the number of lines to display (replace N with a number).
-c N or --bytes=N: Specify the number of bytes to display.
-f or --follow: Output appended data as the file grows.
-q or --quiet, --silent: Suppress the printing of headers when multiple files are specified.
```

# `Find` command
The `find` command in Unix and Linux is a powerful tool used for searching and locating files and directories based on various criteria. 
It is commonly used to perform tasks such as finding files by name, type, size, or modified time.
The basic syntax of the find command:
find [path...] [expression]

```bash
# Find all text files in the current directory and its subdirectories
find . -type f -name "*.txt"

# Find all directories with names starting with "backup"
find /path/to/search -type d -name "backup*"

# Find files modified within the last 24 hours
find /path/to/search -mtime -1

# Find and delete all files older than 30 days
find /path/to/search -type f -mtime +30 -exec rm {} \;

Common Expressions:
-name pattern: Match files by name using a wildcard pattern.
-type type: Match files of a specific type (e.g., f for regular files, d for directories).
-size n[cwbkMG]: Match files based on size (e.g., +10M for files larger than 10 megabytes).
-mtime n: Match files based on modification time (e.g., -mtime -7 for files modified within the last 7 days).
-exec command {} +: Execute a command on each matched file.
```

# `wc` command
The `wc` command in Unix and Linux is used to count the number of lines, words, and bytes in a file or input provided through a pipeline.
 It's a versatile tool for obtaining various statistics about the content of text files. 
The basic syntax of the wc command:
wc [options] [file(s)]

```bash
# Count lines, words, and bytes in a file
wc filename

# Count lines in multiple files
wc -l file1 file2

# Count words in a file
wc -w filename

# Count bytes and characters in a file
wc -c -m filename

# Count lines, words, and bytes for input from a pipeline
echo "Hello, World!" | wc

```

# `cal` command
The `cal` command in Unix and Linux is used to display a calendar for a specific month or a whole year.
 It provides a simple and convenient way to view calendar information directly in the terminal. 
The basic syntax of the cal command:
cal [options] [month] [year]

```bash
#This command displays the calendar for the current month.
cal

# Display the calendar for a specific month and year
cal 2 2022

# Display the calendar for the entire year
cal -y 2022

# Display a three-month calendar
cal -3

```

# `date` command
The `date` command in Unix and Linux is used to display the current date and time or to set the system date and time.
The basic syntax of the date command:
date [options]

```bash
# To display the current date and time in the default format.
date

# Display the date and time in a custom format
date +"%Y-%m-%d %H:%M:%S"

# Display the day of the week
date +"%A"

# Set the system date and time (requires superuser privileges)
sudo date MMDDhhmm[[CC]YY][.ss]

```


# How to run multiple terminal commands
Some common ways to run multiple terminal commands sequentially or simultaneously, you can use different methods depending on your requirements. 

Method 1: Sequential Execution using Semicolon (;)
Use a semicolon (;) to separate multiple commands. Commands are executed sequentially, one after the other:
```bash
command1 ; command2 ; command3
```

Method 2: Sequential Execution using Double Ampersand (&&)
Commands are executed sequentially, and the next command runs only if the previous one succeeds (returns exit code 0):
```bash
command1 && command2 && command3
```

Method 3: Sequential Execution using Double Pipe (||)
Commands are executed sequentially, and the next command runs only if the previous one fails (returns a non-zero exit code):
```bash
command1 || command2 || command3
```

Method 4: Running in the Background using Ampersand (&)
To run commands simultaneously in the background, you can use the ampersand (&). The commands will run concurrently:
```bash
command1 & command2 & command3 &
```

Method 5: Running in the Background and Redirecting Output
To run commands in the background and redirect their output to a file:
```bash
(command1 > output1.txt &) ; (command2 > output2.txt &) ; (command3 > output3.txt &)
```

# `apt-get` command
The `apt-get` command is a package management command-line tool in Debian-based systems, including Ubuntu.
 It is used for handling packages—installing, updating, upgrading, and removing software packages.
Some common use cases for the `apt-get` command:

1. Update Package Lists:
To update the local package database with the latest information from the repositories:
```bash
sudo apt-get update
```

2.  Install a Package:
To install a package and its dependencies:

```bash
sudo apt-get install package_name
```

3. Remove a Package:
To remove a package but keep its configuration files:

```bash
sudo apt-get remove package_name
```

4. To remove a package along with its configuration files:

```bash
sudo apt-get purge package_name
```

5. Upgrade Installed Packages:
To upgrade all installed packages to their latest versions:

```bash
sudo apt-get upgrade
```

6. Dist-Upgrade:
To upgrade the distribution to a newer release (use with caution):
```bash
sudo apt-get dist-upgrade
```

7. Search for a Package:
To search for a package based on keywords:

```bash
apt-get search keyword
```

8. Show Package Information:
To display detailed information about a package:

```bash
apt-get show package_name
```

9. Clean Package Cache:
To remove the local cache of retrieved package files:

```bash
sudo apt-get clean
```

10. Autoremove:
To remove packages that were installed as dependencies but are no longer required:

```bash
sudo apt-get autoremove
```

11. Adding Repositories:
To add a new repository:

```bash
sudo add-apt-repository repository_url
sudo apt-get update
```


# `tar` command
The `tar` command in Unix and Linux is used for creating, viewing, and extracting archive files. 
It stands for "tape archive" and is commonly used to bundle multiple files and directories into a single archive file. 
Below are  some common use cases for the `tar` command:

1. Create a Tar Archive:
To create a tar archive:

```bash
tar -cvf archive_name.tar file1 file2 directory1
```
- `-c`: Create a new archive.
- `-v`: Verbose mode (display progress).
- `-f`: Specify the archive file name.

2.  Extract Files from a Tar Archive:
To extract files from a tar archive:

```bash
tar -xvf archive_name.tar
```
- `-x`: Extract files from an archive.
- `-v`: Verbose mode (display progress).
- `-f`: Specify the archive file name.

3.  Create a Gzipped Tar Archive:
To create a tar archive and compress it using gzip:

```bash
tar -czvf archive_name.tar.gz file1 file2 directory1
```
- `-z`: Compress the archive using gzip.

4. Extract Files from a Gzipped Tar Archive:
To extract files from a gzipped tar archive:

```bash
tar -xzvf archive_name.tar.gz
```
- `-z`: Decompress the archive using gzip.

5. Create a Bzipped Tar Archive:
To create a tar archive and compress it using bzip2:

```bash
tar -cjvf archive_name.tar.bz2 file1 file2 directory1
```
- `-j`: Compress the archive using bzip2.

6. Extract Files from a Bzipped Tar Archive:
To extract files from a bzipped tar archive:

```bash
tar -xjvf archive_name.tar.bz2
```
- `-j`: Decompress the archive using bzip2.

7. View Contents of an Archive:
To view the contents of a tar archive without extracting:

```bash
tar -tvf archive_name.tar
```
- `-t`: Display the contents of an archive.

8. Additional Options:
- `-C directory`: Change to the specified directory before performing any operations.
- `--exclude=pattern`: Exclude files or directories that match the specified pattern.
- `--directory`: Specify the directory to extract files into.

# `grep` command
The `grep` command in Unix and Linux is used for searching text patterns within files. 
It allows you to match lines in a file that contain a specified pattern. 
```bash

#To search for a pattern in a file:
grep pattern filename
#- `pattern`: The text pattern you want to search for.
#- `filename`: The name of the file to search.

#Search Recursively in Directories:
To search for a pattern in all files within a directory (recursively):

#grep -r pattern directory
- `-r`: Recursively search in subdirectories.

#To perform a case-insensitive search:
grep -i pattern filename
#- `-i`: Ignore case distinctions in patterns.

#To display line numbers along with matching lines:
grep -n pattern filename
#- `-n`: Show line numbers.

#To display only the part of the line that matches the pattern:
grep -o pattern filename
#- `-o`: Show only the matching part.

# Invert Match (Show Non-Matching Lines):
grep -v pattern filenam
#- `-v`: Invert the match.

# Count the Number of Matching Lines:
grep -c pattern filename
#- `-c`: Count.

#Using Regular Expressions:
grep '^word' filename
#- `^`: Anchors the pattern to the beginning of a line.

#To grep for multiple patterns stored in a file:
grep -f patterns.txt filename
#- `-f patterns.txt`: Read patterns from a file.
```

# `netstat`

 command

The `netstat` command in Unix and Linux is used for displaying various networking-related information, including network connections, routing tables, interface statistics, masquerade connections, and multicast memberships. However, similar to `ifconfig`, `netstat` has been deprecated on many modern Linux distributions, and the recommended replacement is the `ss` command or tools like `ip` and `nstat`. Nevertheless, `netstat` is still available on some systems.

Here are some common use cases for the `netstat` command:

1. Display All Active Network Connections:
To display a list of all active network connections:

```bash
netstat -a
```

2. Display Listening Ports:
To display listening ports and associated programs:

```bash
netstat -l
```

3. Display Network Statistics:
To display network statistics, including incoming and outgoing packets:

```bash
netstat -s
```
