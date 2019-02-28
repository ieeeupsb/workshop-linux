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

 1. Continue to explore the filesystem tree using cd, ls, pwd and cat. Look in /bin, /usr/bin, /sbin, /tmp and /boot. What do you see?
 1. Explore /dev. Can you identify what devices are available? Which are character-oriented and which are block-oriented? Can you identify your tty (terminal) device (typing who am i might help); who is the owner of your tty (use ls -l)?
 1. Explore /proc. Display the contents of the files interrupts, devices, cpuinfo, meminfo and uptime using cat. Can you see why we say /proc is a pseudo-filesystem which allows access to kernel data structures?
 1. Change to the home directory of another user directly, using cd ~username.
 1. Change back into your home directory.
 1. Make subdirectories called work and play.
 1. Delete the subdirectory called work.
 1. Copy the file /etc/passwd into your home directory.
 1. Move it into the subdirectory play.
 1. Change into subdirectory play and create a symbolic link called terminal that points to your tty device. What happens if you try to make a hard link to the tty device?
 1. What is the difference between listing the contents of directory play with ls -l and ls -L?
 1. Create a file called hello.txt that contains the words "hello world". Can you use "cp" using "terminal" as the source file to achieve the same effect?
 1. Copy hello.txt to terminal. What happens?
 1. Imagine you were working on a system and someone accidentally deleted the ls command (/bin/ls). How could you get a list of the files in the current directory? Try it.
 1. How would you create and then delete a file called "$SHELL"? Try it.
 1. How would you create and then delete a file that begins with the symbol #? Try it.
 1. How would you create and then delete a file that begins with the symbol -? Try it.
 1. What is the output of the command: echo {con,pre}{sent,fer}{s,ed}? Now, from your home directory, copy /etc/passwd and /etc/group into your home directory in one command given that you can only type /etc once.
 1. Still in your home directory, copy the entire directory play to a directory called work, preserving the symbolic link.
 1. Delete the work directory and its contents with one command. Accept no complaints or queries.
 1. Change into a directory that does not belong to you and try to delete all the files (avoid /proc or /dev, just in case!)
 1. Experiment with the options on the ls command. What do the d, i, R and F options do?

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