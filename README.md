# practice_data_engineering_bash
A repository dedicated to Bash scripts, demonstrating my capability in using scripting languages for automating data pipeline orchestration and various data engineering workflows. Explore my solutions for efficient system automation and data management through sophisticated Bash scripting.


shell :
command line interface:
pwd : present working directory

ls command:
ls: list the content of a direcotry
ls [options] [filename]  and ls filename/ to list contents od a particualr directory
ls ~ = lists content of a home directory
ls -l = list out diretory files in detail

owners rights - group rights - others right
drwxr = directory read write execute rights 

ls -a = shows hidden files ( hidden files starts with a dot)

ls -al = list hidden files in detail
ls -lS = sort your directory by their size

ls [directoryname]/*
ls [directoryname]/*.*
 ls -lS > out.txt ( arrow is the stream indicator) = to move the listed content into a new/other file

ls -d */ = to list out all the directorues

man ls = to lookat all the uses of ls command (man is a command library of sorts)



cd command:
cd = change directory 
cd / = to go to the root directory
cd ~ =
cd .. = goes back one directory/ folder
cd [directory/folder name](relative path) or you cn put in the absolute path / // /

cd Directoryname/Filename/ = to go in a file within a  directory

Three ways open a file witch has space within it
cd My\ Books
cd "My Books"
cd 'My Books'

cat command:
syntax
cat option filename1 filename2 ..

to go out froma  cat command (ctrl+d)

cat filename = displays content of a file
ansh@Xubuntu:~$ ls
code-latest.deb  Documents  hello.txt  Pictures  repos  Templates
Desktop          Downloads  Music      Public    snap   Videos
ansh@Xubuntu:~$ cat hello.txt
ansh@Xubuntu:~$ cat hello.txt
hello cat
spike
legal
nana
dazai

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