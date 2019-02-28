# workshop-linux — Exercises

## Files

Try the following command sequence:

`cd`

`pwd`

`ls -al`

`cd .`

`pwd`   _(where did that get you?)_

`cd ..`

`pwd`

`ls -al`

`cd ..`

`pwd`

`ls -al`

`cd ..`

`pwd`     _(what happens now)_

`cd /etc`

`ls -al | more`

`cat passwd`

`cd -`

`pwd`

 1. Continue to explore the filesystem tree using `cd`, `ls`, `pwd` and `cat`. Look in `/bin`, `/usr/bin`, `/sbin`, `/tmp` and `/boot`. What do you see?
 1. Explore `/dev`. Can you identify what devices are available? Which are character-oriented and which are block-oriented? Can you identify your tty (terminal) device (typing `who am i` might help); who is the owner of your tty (use `ls -l`)?
 1. Explore `/proc`. Display the contents of the files interrupts, devices, cpuinfo, meminfo and uptime using cat. Can you see why we say /proc is a pseudo-filesystem which allows access to kernel data structures?
 1. Change to the home directory of another user directly, using `cd ~<username>`.
 1. Change back into your home directory.
 1. Make subdirectories called `work` and `play`.
 1. Delete the subdirectory called `work`.
 1. Copy the file `/etc/passwd` into your home directory.
 1. Move it into the subdirectory `play`.
 1. Create a file called `hello.txt` that contains the words `hello world`.
 1. Imagine you were working on a system and someone accidentally deleted the `ls` command (`/bin/ls`). How could you get a list of the files in the current directory? Try it.
 1. How would you create and then delete a file called `$SHELL`? Try it.
 1. How would you create and then delete a file that begins with the symbol `#`? Try it.
 1. How would you create and then delete a file that begins with the symbol `-`? Try it.
 1. What is the output of the command: `echo {con,pre}{sent,fer}{s,ed}`? Now, from your home directory, copy `/etc/passwd` and `/etc/group` into your home directory in one command given that you can only type `/etc` once.
 1. Still in your home directory, copy the entire directory `play` to a directory called `work`.
 1. Delete the `work` directory and its contents with one command. Accept no complaints or queries.
 1. Change into a directory that does not belong to you and try to delete all the files (avoid /proc or /dev, just in case!)
 1. Experiment with the options on the `ls` command. What do the `d`, `i`, `R` and `F` options do?


## File permissions

 1. Describe three different ways of setting the permissions on a file or directory to `r--r--r--`. Create a file and see if this works.
 1. Team up with a partner. Copy `/bin/sh` to your home directory. Type `chmod +s sh`. Check the permissions on sh in the directory listing. Now ask your partner to change into your home directory and run the program ./sh. Ask them to run the id command. What's happened?  Your partner can type exit to return to their shell.
 1. What would happen if the system administrator created a sh file in this way? Why is it sometimes necessary for a system administrator to use this feature using programs other than sh?
 1. Delete sh from your home directory (or at least to do a chmod -s sh).
 1. Modify the permissions on your home directory to make it completely private. Check that your partner can't access your directory. Now put the permissions back to how they were.
 1. Type umask 000 and then create a file called world.txt containing the words "hello world". Look at the permissions on the file. What's happened? Now type umask 022 and create a file called world2.txt. When might this feature be useful?
 1. Create a file called "hello.txt" in your home directory using the command cat -u > hello.txt. Ask your partner to change into your home directory and run tail -f hello.txt. Now type several lines into hello.txt. What appears on your partner's screen?
 1. Use find to display the names of all files in the /home subdirectory tree. Can you do this without displaying errors for files you can't read?
 1. Use find to display the names of all files in the system that are bigger than 1MB.
 1. Use find and file to display all files in the /home subdirectory tree, as well as a guess at what sort of a file they are. Do this in two different ways.
 1. Use grep to isolate the line in /etc/passwd that contains your login details.
 1. Use find and grep and sort to display a sorted list of all files in the /home subdirectory tree that contain the word hello somewhere inside them.
 1. Use locate to find all filenames that contain the word emacs. Can you combine this with grep to avoid displaying all filenames containing the word lib?
 1. Create a file containing some lines that you think would match the regular expression: (^[0-9]{1,5}[a-zA-z ]+$)|none and some lines that you think would not match. Use egrep to see if your intuition is correct.
 1. Archive the contents of your home directory (including any subdirectories) using tar and cpio. Compress the tar archive with compress, and the cpio archive with gzip. Now extract their contents.
 1. On Linux systems, the file /dev/urandom is a constantly generated random stream of characters. Can you use this file with od to printout a random decimal number?
 1. Type mount (with no parameters) and try to interpret the output.


## Processes and standard input/outputs


 1. Archive the contents of your home directory using tar. Compress the tar file with gzip. Now uncompress and unarchive the .tar.gz file using cat, tar and gzip on one command line.
 1. Use find to compile a list of all directories in the system, redirecting the output so that the list of directories ends up in a file called directories.txt and the list of error messages ends up in a file called errors.txt.
 1. Try the command sleep 5. What does this command do?
 1. Run the command in the background using &.
 1. Run sleep 15 in the foreground, suspend it with Ctrl-z and then put it into the background with bg. Type jobs. Type ps. Bring the job back into the foreground with fg.
 1. Run sleep 15 in the background using &, and then use kill to terminate the process by its job number. Repeat, except this time kill the process by specifying its PID.
 1. Run sleep 15 in the background using &, and then use kill to suspend the process. Use bg to continue running the process.
 1. Startup a number of sleep 60 processes in the background, and terminate them all at the same time using the pkill command.
 1. Use ps, w and top to show all processes that are executing.
 1. Use ps -aeH to display the process hierarchy. Look for the init process. See if you can identify important system daemons. Can you also identify your shell and its subprocesses?
 1. Combine ps -fae with grep to show all processes that you are executing, with the exception of the ps -fae and grep commands.
 1. Start a sleep 300 process running in the background. Log off the server, and log back in again. List all the processes that you are running. What happened to your sleep process? Now repeat, except this time start by running nohup sleep 300.
 1. Multiple jobs can be issued from the same command line using the operators ;, && and ||. Try combining the commands cat nonexistent and echo hello using each of these operators. Reverse the order of the commands and try again. What are the rules about when the commands will be executed?
 1. What does the xargs command do? Can you combine it with find and grep to find yet another way of searching all files in the /home subdirectory tree for the word hello?
 1. What does the cut command do? Can you use it together with w to produce a list of login names and CPU times corresponding to each active process? Can you now (all on the same command line) use sort and head or tail to find the user whose process is using the most CPU?

## Messing around

Enter these commands at the linux terminal and try to interpret the output. Ask questions and don't be afraid to experiment, just don't delete any files that you don't know about.
(Also don't be afraid to use man and the --help flags to learn about the commands)

`echo hello world`

`passwd`

`date`

`hostname`

`arch`

`uname -a`

`dmesg | more ` _(you may need to press q to quit)_

`uptime`

`whoami`

`who`

`id`

`last`

`w`

`top` _(you may need to press q to quit)_

`echo $SHELL`

`echo {con,pre}{sent,fer}{s,ed}`

`man ls` _(you may need to press q to quit)_

`man who` _(you may need to press q to quit)_

`clear`

`cal 2000`

`cal 9 1752` (do you notice anything unusual?)

`bc -l` _(type quit or press Ctrl-d to quit)_

`echo 5+4 | bc -l`

`yes please` _(you may need to press Ctrl-c to quit)_

`time sleep 5`

`history`


Explore your filesystem with the following commands:

`cd`

`ls`

`pwd`

`cat`


Try to access the directories that were approached in the presentation (don't alter anything if you're not sure you can/should).