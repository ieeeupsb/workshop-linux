class: center, middle

# Linux concepts

---

# What is Linux?

Four main parts make up a Linux system:

- The **Linux kernel**
- The **GNU utilities**
- Graphical **desktop environment**
- Applications software

No part is very useful by itself. Each has a specific job in a Linux system.

---

# What is Linux?

.center[<img src="assets/linux-system.png" style="width:80%">]

---

# The Linux kernel

The core of Linux systems is the *kernel*

It controls all the hardware and software on the computer system

The four main functions:

- System memory management
- Software management
- Hardware management
- Filesystem management

---

# The Linux kernel
## Memory management

The *kernel* is responsible to manage the physical memory

Memory locations are grouped in blocks: *pages*

The *kernel* creates and manages the virtual memory (physical memory + *swap*)

It maintains a table of memory pages that indicates which pages are in physical memory and which are *swapped* to disk

It is the *kernel*'s responsability to *swap* *pages* from disk to physical memory and vice versa

The *kernel* must allocate memory for each *process*

---

# The Linux kernel
## Software program management

A *process* is a running program. It can run:
- In the background, behind the scenes, without user interaction
- In the foreground, displaying output on a display

On boot, the *kernel* creates a process: the *init* process. It will start all other processes on the system

Linux utilizes *run levels*. They tell `init` to run only certain types of processes.
- **Level 1:** Only basic system processes are started, along one console terminal process. Used for emergency maintenance.
- **Level 3:** Runs most application software, enables network
- **Level 5:** Starts the graphical desktop window manager

---

# The Linux kernel
## Hardware management

A *device driver* or *driver* is a piece of code required by the *kernel* to communicate with hardware devices. It acts as middle man between applications and hardware.

Two ways for inserting *driver* code in Linux *kernel*:
- Drivers compiled in the *kernel*
- Driver modules which are loaded and added to the *kernel*

The second is the most common practice by users, as allows to insert *drivers* code into a running *kernel* without recompiling it.

---

# The Linux kernel
## Filesystem management

A *filesystem* controls how data is stored, for example, in a disk.

How to tell if a block of data is a image? Where does the image start and end? How to add metadata such a filename, content-type, length? How to manage space? That's up to the filesystem to specify.

Linux *kernel* supports a wide range of filesystems. It has it's own: Linux Extended Filesystem (*ext*). There's a fourth version, *ext4*.

It supports others such *ntfs*, *fat32*, *minix*, etc.

---

# The GNU Utilities

The Linux is "just" the *kernel*. An operating system needs utilities to perform standard fuctions: controlling files and programs, and other tasks.

The GNU organization developed a set of Unix utilities (in a open source software philosophy).

A Linux operating system bundles the Linux *kernel* and the GNU utilities. This is why sometimes are refered as the GNU/Linux.

The core GNU package contains:
- Utilities for handling files
- Utilities for manipulating text
- Utilities for managing processes

---

# The GNU Utilities
## The shell

A shell is an interface for accessing operating system services. It can be a CLI (command-line interface) or GUI (graphical user interface).

The shell provides built-in support for simple tasks: managing files, starting programs, etc.

A CLI shell let's you enter text commands, which are then interpreted, and result in calls to the *kernel* through the *kernel API*. Thus, the shell hides and manages technical aspects of the *kernel*.

Another important feature provided by most shells is **shell scripting**. A shell might define a language that anyone can use to write programs to be interpreted by the shell, and resulting in commands execution.

---

# Desktop environment
## Windowing systems

Your video enviroment is controlled by the video card in the computer and the monitor. In order to display fancy graphics, the operating system needs to know how to talk to both of them.

Windowing systems are responsable for presenting graphics. They are low-level programs that work directly with the video card and and monitor.

## Examples
Popular window systems: **X Window Sytem (X11)**, **Wayland**

---
class: split-50

# Desktop environment
## Examples

.column[
- KDE .de[![KDE](images/KDE_Plasma_5.png)]
- Gnome .de[![KDE](images/gnome.png)]
]
.columnl[
- XFCE .de[![XFCE](images/xfce.png)]
- i3 .de[![i3](images/i3.jpg)]
]

---

# Linux distributions

We have seen the four main components for a Linux-based operating system. Combining these components creates a complete Linux system - **distribution**.

Because components are individual and some of them are widely available, there are a lot of possible combinations, therefore there are many distributions out there.

---

# Linux distributions
## Core Linux Distributions

A core Linux distribution contains:
- *kernel*
- a graphical desktop environment

Examples:
- Red Hat
- Fedora
- Debian
- openSUSE

---

# Linux distributions
## Specialized Linux Distributions

Based on *Core* distributions, contain a subset of applications that would target more specific audiences (home users, developers, etc.).

In addition, they attempt to be more begginer-friendly, autodetect and autoconfigure hardware devices, etc.

Examples:
- Ubuntu
- Manjaro
- Mint

---

class: center, middle, invert

# The manual

---

# The Manual

Most Linux distributions include a manual for looking up information on shell commands, GNU utilities, Linux API, C libraries and functions, etc.

```bash
$ man
```

If you want to know what `cat` command is and what options it has, you can view the manual.

```bash
$ man cat
```

---

# The Manual
## Page's sections

The manual **page** divides information into **separate sections**. Each section has a conventional naming standard.

| Section | Description |
| ------- | ----------- |
| Name | Command name and short description |
| Synopsis | Command syntax |
| Description | Describes the command generally |
| Options | The command option(s) |
| Exit Status | The command exit status indicator(s) |

**Many sections are not listed** in the table above, but the idea is that **information is consistently displayed**, so that you can easily reach the information you need.

---

# The Manual

In addition well structured pages, the manual is organized in **page section areas**

| Section Number | Area contents |
| -------------- | ------------- |
| 1 | Executable programs or shell commands |
| 2 | System calls |
| 3 | Library calls |
| 4 | Special files |
| 5 | File formats and conventions |
| 6 | Games |
| 7 | Overviews, conventions and miscellaneous |
| 8 | Super user and system administration commands |
| 9 | Kernel routines |

You don't need to remember this table! See the **description** of manual for the manual...

```bash
$ man man
```

---

# The manual
## Tips
### Specific section pages

The `man` utility provides the lowest numbered section for the searched command. This is, if the same command matches entries in different sections, only the first is shown. You can tell the desired section.

```bash
$ man 3 printf # show the printf page from section 3 (C library calls)
```

---


# The manual
## Tips
### Lookup for manual pages

The `-f` option allows `man` to display all manual pages that match the name in the input

```bash
$ man -f printf
```

```bash
printf (1)           - format and print data
printf (1p)          - write formatted output
printf (3)           - formatted output conversion
printf (3p)          - print formatted output
```

**Tip**: You can accomplish the same result running `whatis <thing>`

---

# The manual
## Tips
### Searching

Sometimes you forget the exact name for a command. No problem! You can tell `man` to search and list manual pages that match your input (regular expression)

```bash
$ man -k printf
```

---

# The manual
## Tips

### Simplified man pages

Sometimes, when you're in a rush and simply don't remember a specific argument of the command you want to run, you may prefer a simplified and summerized version of a man page.

Chances are that what you need is documented in the simplified version of man: `tldr`.

To know what you need in a simple maner, you just need to run, for example for the command `grep`:
```bash
tldr grep
```

**Note**: `tldr` is a third-party community maintained program, and therefore isn't included in your Linux distribution by default. To install it, use your distribution's package manager.

---

class: center, middle, inverse 

# Linux Filesystem

---

# Linux filesystem

**Windows assigns a letter to each physical disk drive**, e.g. `C:\`. Each drive contains its own directory structure for accessing files stored on it.

**Linux does not use driver letters** in pathnames.

Linux stores files within a single directory structure, which is called *virtual directory*. This *virtual directory* has paths to all storage devices from a single directory structure.

The single directory base is called **root**. This is the one directory from which all other directories branch off from.

Another difference from Windows, is that Windows uses backward slashes, `\`. Linux uses forward slashes `/`.

---

# Linux filesystem

The path below is an example for a file `example.txt` in the directory `Documents` which is under `ieee` directory (which is a user in this case), which is under `home` directory.

```
/home/ieee/Documents/example.txt
```

---

# Linux filesystem
## The directories meaning

| Directory | Description |
| --------- | ----------- |
| `/bin` | Contains the **binaries**, i.e, some applications and programs that you can run. There are other `/bin` directories in other parts of the file system |
| `/boot` | Contains the **boot files**, the files required to start your system |
| `/dev` | Contains the *device files*. Recall that *device files* are interfaces for *device drivers* which let applications communicate with peripherals. These files are generated on boot and even on the fly (e.g. when you plug in a webcam) |
| `/etc` | Contains most of **system configuration files** |
| `/home` | **Users' personal directories**. For each user typically there's a file under `/home`, like `/home/ieee` |
| `/lib` | **Libraries files**, which contain code to be used by applications |
| `/media` | This is where **external storage** is automatically mounted when you plug in storage devices such pendrives, extenal hard disks, etc. |

---

# Linux filesystem
## The directories meaning


| Directory | Description |
| --------- | ----------- |
| `/mnt` | Not often used nowadays, but this is where you would manually mount storage devices and partitions |
| `/proc` | Like `/dev` is a *virtual directory* that contains **information about your PC** (CPU, kernel, etc.). It's generated on boot or on the fly (things may change) |
| `/root` | The **home directory for the supersuser**. You shouldn't thouch this folder |
| `/sys` | Another *virtual directory* which also contains informations from devices connected to the computer |
| `/tmp`| Contains **temporary files** |
| `/var` | Intended to be a folder containing **content which changes frequently**, altough the virtual directories mentioned also change frequently, thus it's not a great folder name nowadays. Nevertheless, this is where you can find **system and application logs** |

---

# Linux filesystem
## Traversing directories

To change the current directory use `cd` command:

```bash
$ cd <destination>
```

Two kinds of directory references:
- **Absolute** path: Defines exactly where the directory, starting at the root, thus always starts with forward slashes
- **Relative** path: You specify a path relative to your current directory (I am at directory `A`, how can I go to directory `B`?)

Two special characters for relative directories:
- Single dot `.` : symbolic name for the current directory
- Double dot `..` : symbolic name for the parent directory (previous)
	
```bash
$ cd /home/ieee/Documents/
```

---

# Linux filesystem
## Examples with relative paths

```
.parent
├── current
│   └── child
└── dummy
```

Assume **you are in the `current` directory.**

In order to go to the upper level, `parent` directory:

```bash
$ pwd # /.../parent/current
$ cd ..
$ pwd # /.../parent
```

**Tip** : Use `pwd` to know your current absolute path

---

# Linux filesystem
## Examples with relative paths

Or to go from `current` to `dummy`, which are at the same level:

```
$ cd ../dummy/ # first we go to parent (..), then we change to dummy/
```

If we are at `current` and we wish to navigate to subfolders like `child`, we can use the relative path:

```
$ cd child
```

---

# Linux filesystem
## Listing files and directories

Use `ls` to list files and directories located in your current directory

The list is in apalhabetical order and displayed in rows. If your terminal supports colors, different types of entries (files, folders, executables, links, ...) are shown in distinct colors for easier reading.

In addition to colors you can use the `-F` option. Entries with `/` are folders, executables have a `*` at the end, and so on.

---

# Linux filesystem
## Listing files and directories

Some files in Linux are **hidden files**. Their name starts with a dot (eg. `.bashrc`). By default they are not shown by `ls`. If you want to see them, use the `-a` or `--all` option.

```
$ ls -a
```

Use `-R` for recursive listing. By default, `ls` only lists entries which are direct child of the current directory. If you want to list entries from subfolders, you must use this option.

```
$ ls -R
```

---

# Linux filesystem
## Listing files and directories

Default list doesn't tells us much, it's just a quick overview of the current directory content. If you wish to view more details, use the long listing option, `-l`.

```
$ ls -l
```

It shows file permissions, size, modification time, etc. The very first character tells you the type of file:

| Character | Description |
| --------- | ----------- |
| `d` | Directory |
| `-` | File |
| `l` | Linked file |
| `c` | Character device |
| `b` | Block device |

???

A parte dos devices tem haver com device files

---

# Linux filesystem
## Listing files and directories

**Tip**: You can mix options parameters like `ls -l -a -R`. Moreover, you don't need to type them separately, you can use `ls -laR`.

---

# Linux filesystem
## Creating files

You can create empty files with `touch`

```bash
$ touch <filename>
$ touch main.c # empty file called main.c
```

You can also use `touch` to create files with specific modification times or change existing files modification times.

---

# Linux filesystem
## Reading files

You can read the contents of a file using the `cat` command.

```bash
$ cat <filename>
$ cat main.c  # will print the contents of main.c
```

This can be used when you simply want to know what the file holds.

---

# Linux filesystem
## Copying files

To copy files and folders from one location to another, you use `cp` command.

```bash
$ cp <source> <destination>
```

```bash
$ cp filename.txt dst/
```

If the `source` is a file and destination is a folder, the file is copied to that folder. The example above copies the file `filename.txt` to the folder `dst`.

**Note 1:** Notice the **forward slash after `dst`**. It tells that `dst` is a directory. If you run `cp filename.txt dst` it copies `filename.txt` to a file named `dst` in the current directory.

**Note 2:** The `cp` won't create directories, **it only supports pre-existing directories**. You can use `mkdir` before `cp`.

---

# Linux filesystem
## Copying files

The previous example keeps the original filename, but **you can copy the file and give it a new name**.

```bash
$ cp filename.txt dst/new.txt
```

---

# Linux filesystem
## Copying files

What if the folder `dst/` has a file named `filename.txt`? **By default, the file would be overwritten silently.**

If you use the `-i` option, the utility will prompt and ask you if you want to overwrite. If you want, just type `y`.

```bash
$ cp -i filename.txt dst/
cp: overwrite 'dst/filename.txt'?
```

**Note:** Most modern Linux distributions create an alias and when you run `cp` you are actually running `cp -i`.

---

# Linux filesystem
## Copying folders

In order to copy folders and its content you must use the recursive option, `-r`.

```bash
$ cp -r ~/Documents/ /media/backup
```

The `/media/backup` now has a `Documents` folder with a copy of all files and sub-folders.

You can set a new destination folder name as well.

```bash
$ cp -r ~/Documents/ /media/backup/01-mar-2019-documents/
```

---

# Linux filesystem
## Moving and renaming files

You can move files with `mv`.

`mv` is also used to rename a file's name, because moving the file into another
file with a different name is the same as simply renaming it.

```bash
$ mv <filename> <destination>

# move file called main.c into directory folder/
$ mv main.c folder/

# rename xample.txt as example.txt
$ mv xample.txt example.txt
```

**Tip:** Like the `cp` command, you can use the `-i` option to be asked before overwriting existing files.

---

# Linux filesystem
## Deleting files

You can delete files with `rm`.

```bash
$ rm <filename>

# delete file called main.c
$ rm main.c
```

**IMPORTANT**: Think twice before removing a file. The shell doesn't have a trashcan. Once you remove it, it's gone "forever".

A good practice is to use the `-i` parameter. It will prompt before removing each file.

However, if you are removing a group of files, the `-i` can be tedious.

---

# Linux filesystem
## Removing directories

The `rm` can be used to remove directories as well. You must use the `-r` or `-R` option, which means recursive.

The commands descends to the directory and removes the files. If it finds sub-directories, it descends to them and removes the files. If no further content is found, it deletes the directory itself.

You can use the `-i` option as well. It will prompt before desceding to any directory. If you confirm, it descends and deletes all files. If no more content is found in that folder, it finally asks if it should delete the directory itself.

If you are deleting large amounts of files and sub directories, the `-i` option can be extremely tedious! Perhaps, you should use a tool such `tree` to get a structured overview of the contents or `ls -r` (`tree` doesn't belong to GNU utilities and might not be installed out of the box).

---

# Linux filesystem
## Creating directories

To create a new directory/folder you use the `mkdir`.

```bash
$ mkdir demo
$ ls -l
total 4
drwxr-xr-x 2 ieee ieee 4096 mar  4 17:01 demo
```

If you attempt to create a bulk of new directories, you get an error:

```bash
$ mkdir dir/subdir/subsubdir
mkdir: cannot create directory ‘dir/subdir/subsubdir’: No such file or directory
```

To make it work, you use the `-p` option, which means *parents*: make parent directories as needed.

---

# Viewing file contents
## File type

To view the file type use the `file` command.

```bash
$ file my_file
my_file: ASCII Text
```

You can use the `-i` option to print MIME type strings rather than traditional human readable ones.

```bash
$ file -i my_file
myfile: text/plain; charset=us-ascii
```

---

# Viewing file contents
## 'more'

For large files, `cat` can be annoying: you can't control what's happening after you start it.

The `more` command displays text files as well, but stops after a page of data.

- At the bottom, left side, it shows how far along in the text file you are (%)
- Use `spacebar` to move forward page by page
- Use `Enter` to move forward line by line
- Use `q` to exit

---

# Viewing file contents
## 'less'

.center["Less is more"]

The `less` utility does everything `more` does, but with extra usefull features.

- You can move backwards, line by line with arrow keys, or page by page with `PageUp`.
- It loads the file as needed (more efficient, specially for large files)
- Supports searching
- Supports jumping

Just use `less` and run `less --help` or `man less` to explore its features!

---

# Viewing file parts
## 'tail'

Sometimes you just want to see information at the top or bottom of the file. GNU offers specialized utilities for that.

The `tail` utility shows the last lines of the file (by default, 10).

```bash
# Show the last 10 lines
$ tail /var/log/pacman.log

# Show the last 20 lines
$ tail -n 20 /var/log/pacman.log

# Output appended data as the file grows
$ tail -f /var/log/pacman.log
```

The `-f`, or `--follow`, option is very cool. It lets you peek the file content while another process is writing to the file. Very handy when analysing and monitoring logs, for example.

---

# Viewing file parts
## 'head'

Similar to `tail`, but instead of showing the file bottom content, it shows the top content.

```bash
# Show the first 10 lines
head example.txt

# Show the first 5 lines
head -n 5 example.txt
```

---

class: middle, center, inverse

# The Linux File Permissions

---

# User accounts

**Each individual** who acesses a Linux system **should have an unique user account assigned.**

Each user account has **different permissions** to objects on the system.

User permissions are tracked using an *user ID (UID)*
- numerical value
- unique for each user
- assigned to an account when it's created

---

# How Linux handles user accounts

All Linux systems have a **root** user account
- Administrator for the system. Has maximum control
- Always assigned with UID 0

Before security was a big concern, system services would run logged in as `root`.
- If an unauthorized person broke into one of those services => access to the system as the `root`;
- This must be prevented.

To solve the issue, every service running in the background has its own user account, with well defined permissions. These are known as **system accounts**.

---

# How Linux handles user accounts

Linux uses a special file that maps login names to UID values: `/etc/passwd`.

If you look at the file, you will see tons of accounts:
- The **root** with UID 0
- **System accounts**, typically with UIDs below 500
- **User accounts**, typically with UIDs above or equal to 500. This includes your own account!

The file has several information:
- The login **username**
- A placeholder for the password (no longer used, typically has a **x** value)
- The UID and GUI
- The **HOME** directory for each user
- Default **shell**
- Among other information

---

# How Linux handles user accounts

Nowadays, Linux stores user passwords in the *shadow file*, located at `/etc/shadow`
- Several programs need to access `/etc/passwd` to get user information
- The password couldn't be stored there

The *shadow file* can only be accessed by special programs (e.g login program) and **root**.

Contains one record for each user account.

For each record, it stores:
- Login name
- Encrypted password
- ...

---

# Linux groups

Some systems are meant to be shared by multiple users, which might share resources and permissions.

Linux introduced the **group** concept. A **group permissions** allow multiple users to share a common set of permissions for an object on the system (files, directories, devices).

Groups have a GID (like users have a UID) and a name.

Groups informations are stored in `/etc/group` file:
- Name
- GID
- List of user accounts that belong to the group

---

# Decoding the file permissions

Do you recall the misterious output of `ls -l`?

Now that you how Linux handles users and groups, let's decode that information.

```bash
$ ls -l
-rw-r--r-- 1 ieee ieee 15205 mar  5 22:58 03_filesystem.md
```

First character defines the type of object: file (`-`), directory (`d`), ...

Next, we have three sets of three characters. Each set of three characters defines an access permisision triplet:

**r** for reading | **w** for writing | **x** for executing 

When one of these permissions is denied, a dash, `-`, appears.

Each set is related with levels of security, in the following order (left to right):
- Owner of the object
- The group that owns the object
- Everyone else on the system

---

# Decoding the file permissions

```bash
$ ls -l
-rw-r--r-- 1 ieee ieee 15205 mar  5 22:58 03_filesystem.md
```

The permissions string is: `rw-r--r--`

- Owner has permissions `rw-`, i.e., reading and writing permission (owner has login name `ieee`)
- The group that owns the object has permissions `r--`, thus only reading access (owner group name is `ieee`)
- Everyone else, has only reading access

---

# Default file permissions

The Linux kernel has default permissions for directories and files
- Directories: `rwx` for owner, group and everyone else
- Files: `rw-` for owner, group and everyone else

However, if you create a new file, it probably doesn't have such permissions. That is because of the `umask`.

Before looking at `umask` value, you need to understand the octal mode for permissions.

---

# Default file permissions
## Octal mode

In the octal representation, we use a 3-bit binary value for the three `rwx` permission values.

Each bit is mapped to the corresponding **read**, **write** and **execute** permissions.

Bits set to 1 enable the permission. Bits set to 0 disable the permission.

A value such 101 enables the read and execute permissions, but disables the write permission.

This binary value is then converted to octal representation, which is base 8 representation, thus each digit from a number ranges from 0 to 7.

The value 7 is octal, has the binary **111**, which enables **read**, **write** and **execute** permission.

But we have three sets of permissions. To represent the permissions in octal, we need three digits: one for the **owner**, one for **group** and one for **others**.

---

# Default file permissions
## The 'umask'

Moreover, octal numbers start with a **0**. 

For instance, the number **0666**, which is the default permission set by the kernel for files, means that owner, group and everyone else has read and write permissions only.

Back to the umask, if you run the command `umask` you may get a value **0022**
- You may think this means your files, when created, have no permissions for the owner (wait, what?), and write-only permissions for the group and everyone else.
- However, if I create a new file it will have permissions **0644**
- In fact, that value is just a mask that affects the default kernel values for permissions

---

# Default file permissions
## The 'umask'

To calculate the permissions that will be set to new files and folders, we need some arithmetic

.center[`<kernel default> & ~<umask>`]

Example:
- **umask** is 0022 (0b 000 010 010)
- Negating the **umask**, we get 0755 (0b 111 101 101)
- default kernel permission for files is 0666 (0b 110 110 110)
- Doing the logical AND operation, we get: 0644 (0b 110 100 100)

Or, just subtract the numbers :)

.center[`<kernel default> - <umask>`]

Example:
- `0666 - 0022 = 0644`

---

# Default file permission
## The 'umask'

You can change the umask by running, `umask <octal value>`

After this, every file or directory you create in that terminal session will have the new permissions accordingly to the new **umask**. 

Once you close that terminal, the new **umask** is lost.

In order to set a new permanent **umask**, you must edit your shell configuration.
- `/etc/profile`
- For bash-shell: `.bashrc`

---

# Changing ownership

Sometimes you may want to change permissions for an existing file.

You can use `chmod`.

```bash
# generic
$ chmod [ugo][+-][permissions] <file>

# add writing permission to user
$ chmod u+w example.txt

# remove writing permission from owner
$ chmod u-w example.txt

# add reading and writing permissions to owner, group, and all other users
$ chmod ugo+rw example.txt

# use octal mode (rw-r--r--)
$ chmod 644 example.txt
```

---

class: center, middle, inverse

# Linux's shell
# The all-mighty Bash

---
class: middle

# Linux's shell

The most beloved feature of Linux **is the way it's internal shell works**.

After knowing how to create, delete and copy files in Linux, we're going to look into more advanced
features of our shell: **bash**

---
class: middle

# What is bash?

Bash is what powers the terminal, and what makes it so beautiful.

With it, we can do pretty much everything that we want to do.

---
class: middle

# What is bash?

Want to delete all pdf files in your current directory?

--

```bash
rm *.pdf
```

---
class: middle

# What is bash?

Want to save your grade from a file full of student grades, into another file?

--

```bash
cat grades.txt | grep -i "john doe" > my_grade.txt
```

---
class: middle

# What is bash?

Want to join 3 different PDF files into a single PDF?

--

```bash
pdfunite f1.pdf f2.pdf f3.pdf final.pdf
```

---
class: middle

These are just a few examples of what you might want to do in your day-by-day using Linux.

Either it's something pretty easy or something quite complicated, we can *probably* guarantee that there's
a bash command for it.

---

# Feature: Using wildcards

You can speed up what you're trying to do with the use of **wildcards**.
A wildcard is a pattern you define accordingly to what you need.

| Wildcard | Meaning | Example |
|-|-|-|
| `*` | Matches any characters | `cp *.pdf ~` |
| `?` | Matches any single character | `cat fe?p.txt` |
| `[]` | Matches any characters inside | `cp [b, c]at ~` |
| `{}` | Use multiple wildcards | `cp {*.pdf, *.png} ~` |

---
# Feature: redirection

Redirection is a way of **sending the output of a program** to somewhere.
The most common use of redirection is when we want to save the output of
a program into a file.

There are 2 main operators:
- **>**, sends the output and overwrites the whole file
- **>>**, appends the output to the file

For example:
```bash
# this prints out the date and time
date

# this saves the output of that program into a file called now.txt
date > now.txt     # now.txt was created

# this appends another date into the file
date >> now.txt
```

After running all of these commands, you should have a file with 2 lines,
each with the current date and time.

---
# Feature: redirection

Both **>** and **>>** would create the file, if it didn't already exist.

The main difference is that **>** **would overwrite the whole file** with that new information, while **>>** **would
just add the new information** in new lines.

---

# Feature: pipes

A pipe is a way of using the **output of a program** as the **input for another program**.

The operator for piping is **`|`**.

```bash
# show only the lines that have "john doe"
cat grades.txt | grep -i "john doe"
```

---

# Feature: multiplicity

In bash, there isn't much of a limit of what you can do.
We talked about using redirection and piping, but we didn't mention
that you can combine these two.

Bash let's you combine whatever you want to combine.

Here's an example

---

# Example of multiplicity

Imagine a friend of yours asked "what songs do you have downloaded?"

--

To reply to this question, you could go into your *windows explorer*, check out every .mp3 file you have in your music folder, and tell him.

--

Or...you could just do this!
```bash
ls ~/Music | grep -i ".mp3" > songs.txt
```

---

# Feature: conditional expressions

Sometimes, you might want to run a certain command if certain conditions are met.

The most common way to do this is using the **`&&`** operator.
This operator only runs the second program if and only if the first one succeeded.

Example:
```bash
# move main.c into Documents/ and speak in case of success
mv move.c Documents/ && espeak "file moved successfully"
```

---

# Feature: conditional expressions

Like the `&&` operator, we also have the following operators available, each with its own meaning:

```bash
A; B        # Run A and then B, regardless of success of A
A && B      # Run B if and only if A succeeded
A || B      # Run B if and only if A failed
```

--

With these new operators, we can extend our example as:
```bash
mv move.c Documents/ && espeak "file moved sucessfully" || espeak "oh no! file was not moved"
```

---

class: center, middle, inverse

# The init system

---

# The init system

## Introduction

The init system is the **first process to start**, when you turn on the computer,
and the **last process to terminate**, when you shut it down.

A computer that fails to start the init system, fails to boot, as **this
is the single centralized program that starts, manages, and stops *all other processes***.

Failure while starting the init system will result in a so called **kernel panic**
(the Linux equivalent of a Windows' *blue screen of death*).

---

# The init system

## Variety of init systems

Although the init system is the godfather of all processes, there exist many
different init systems to choose from.

- **systemd** (the init system used by the most used distributions)
- **SysV init** (the first init system, created for UNIX System V)
- **Upstart**
- **Epoch**

We are going to focus on *systemd*, as it is the default used by: Ubuntu, Debian, Fedora, Arch Linux,
Kali Linux, Red Hat, CentOS, and many more.

---

# The init system

## What is a process?

A process is a term given to **programs in execution**. A program that is
currently running is called a _process_.

???
TODO add more info

---

# The init system

## How processes work in Linux

In Linux, each process is assigned a **PID** (process identification number). This number is
unique to a process throughout all other processes, and it is used to identify a certain process.

The init system, as it is the first program to be started, **is always assigned the PID 1**, as
the PID **assignment is sequencial**.

Using the command `pidof`, we can check which PID(s) a certain program has.

To check the PID of your init system, you could run:
```bash
# SysV init + systemd 
pidof init

# systemd
pidof systemd
```
One of the above commands should return 1, as the PID.

---

# The init system

## Using a task manager

To check which programs you currently have running, you can do:

```bash
ps aux
```

This will print everything that is running on your computer.
But what if we want to explore and kill processes, interactively?

For that, we can use `htop`, an interactive task manager.

**Note**: you may need to install it on your system.

---

# The init system

## Killing processes

To kill a process, you could use `htop`, by selecting the process and pushing the keys `F9` `9` `ENTER`, sequentially.

But this is a Linux workshop, and we want to be really fast at killing things.

For a more effective way of terminating things in execution, use `killall`:

```bash
killall firefox
```

---

# The init system

## Special type of processes: daemons

A daemon is a program that runs as a background process, and is manageable by your init system (enable, disable, start, checking status and stop).

If you have processes that start when you turn on your computer, those are normally seen as daemons, as it was your init system that started it.

A daemon is commonly also refered to as a service.

---

# The init system

## Special type of processes: daemons

When we're talking about daemons, we commonly refer to them as *enabled* and *disabled*.

An **enabled service** is a daemon that starts is started on boot time.

A **disabled service** is exactly the opposite: doesn't start by itself.

---

# The init system

## Managing daemons with `systemctl`

`systemctl` is a `systemd` utility that lets you manage services.

The 5 most useful commands for `systemctl` are the following:

```bash
# start a service
sudo systemctl start nginx.service

# make the service start on boot
sudo systemctl enable nginx.service

# check the status of the service
sudo systemctl status nginx.service

# make the service don't start on boot
sudo systemctl disable nginx.service

# stop the service
sudo systemctl stop nginx.service
```

---

# The init system

## Listing daemons with `systemctl`

You can list the existing daemons on your system with:

```bash
# all
systemctl list-unit-files

# enabled only
systemctl list-unit-files | grep enabled

# disabled only
systemctl list-unit-files | grep disabled
```

---

class: middle, center, invert

# The Package Manager

---

# The Package Manager

## What it is

A package manager is a program that lets you install other programs, in a easy and effective way.

Each distribution normally has its own package manager, but that doesn't mean there aren't common
package managers among distributions.

The most common one, `apt` (Advanced Packaging Tool), also known as `apt-get`, is the one we're
going to focus on, as it's debian's package manager (the distribution Ubuntu derives from).

---

# The Package Manager

## How `apt` works

When you install Ubuntu, for example, it comes with the Canonical's* apt sources.

The list of repositories, available at `/etc/apt/sources.list`, is what tells Ubuntu where
to fetch for information about the packages that exist, and where to download them from.

To tell Ubuntu about which packages exist, we should run:

```bash
sudo apt update
```

\*Canonical is the company behind Ubuntu

---

# The Package Manager

## Installing packages

To install a package with `apt`, we only need to do:

```bash
# try to run the command
sl
bash: sl: command not found

# install the sl package
sudo apt install sl

# try to run again (seriously, try it)
sl
```

---

# The Package Manager

## Upgrading existing packages

When we're upgrading the packages we have installed, it's good practice
to update from the sources first.

This is the only way for Ubuntu to know which packages need to be upgraded:

```bash
# update packages information
sudo apt update

# upgrade the packages
sudo apt upgrade
```

---

# The Package Manager

## Removing packages

To remove packages from Ubuntu, we can use `apt remove` and `apt purge`.

The difference between the two is that `purge` also removes configuration files.

```bash
sudo apt purge sl
```
