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
ansh@Xubuntu:~/Desktop$ 
