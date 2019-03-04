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

.center[<img src="assets/linux-system.png" style="max-width:90%">]

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

# The Manual

Most Linux distributions include a manual for looking up information on shell commands, GNU utilities, Linux API, C libraries and functions, etc.

```bash
$man
```

If you want to know what `cat` command is and what options it has, you can view the manual.

```bash
$man cat
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
$man man
```

---

# The manual
## Tips

### Specific section pages

The `man` utility provides the lowest numbered section for the searched command. This is, if the same command matches entries in different sections, only the first is shown. You can tell the desired section.

```bash
$man 3 printf # show the printf page from section 3 (C library calls)
```

### Lookup for manual pages

The `-f` option allows `man` to display all manual pages that match the name in the input

```bash
$man -f printf
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
$man -k printf
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

# Linux filesystem

**Windows assigns a letter to a each physical disk drive**, e.g. `C:\`. Each drive contains its own directory structure for accessing files stored on it.

**Linux does not use driver letters** in pathnames.

Linux stores files within a single directory structure, which is called *virtual directory*. This *virtual directory* has paths to all storage devices from a single directory structure.

The single directory base is called **root**. This is the one directory from which all other directories branch off from.

Another difference from Windows, is that Windows uses backward slashes, `\`. Linux uses forward slashes `/`.

---

The path below is an example for a file `example.txt` in the directory `Documents` which is under `ieee` directory (which is a user in this case), which is under `home` directory.

```
/home/ieee/Documents/example.txt
```

A tricky part in the Linux virtual directory is how it incorportares storage devices. There's a root drive which contains the virtual directory code, for example, the hard drive where you install the operating system.

If you plug-in removable media or you have multiple hard drives

---

# Linux filesystem
## The directories meaning

| Directory | Description |
| --------- | ----------- |
| `/bin` | Contains the binaries, i.e, some applications and programs that you can run. There are other `/bin` directories in other parts of the file system |
| `/boot` | Contains the boot files, the files required to start your system |
| `/dev` | Contains the *device files*. Recall that *device files* are interfaces for *device drivers* which let applications communicate with peripherals. These files are generated on boot and even on the fly (e.g. when you plug in a webcam) |
| `/etc` | Contains most of system configuration files |
| `/home` | Users' personal directories. For each user typically there's a file under `/home`, like `/home/ieee` |
| `/lib` | Libraries files, which contain code to be used by applications |
| `/media` | This is where external storage is automatically mounted when you plug in storage devices such pendrives, extenal hard disks, etc. |
| `/mnt` | Not often used nowadays, but this is where you would manually mount storage devices and partitions |

---

# Linux filesystem
## The directories meaning


| Directory | Description |
| --------- | ----------- |
| `/proc` | Like `/dev` is a *virtual directory* that contains information about your PC (CPU, kernel, etc.). It's generated on boot or on the fly (things may change) |
| `/root` | The home directory for the supersuser. You shouldn't thouch this folder |
| `/sys` | Another *virtual directory* which also contains informations from devices connected to the computer |
| `/tmp`| Contains temporary files |
| `/var` | Intended to be a folder containing content which changes frequently, altough the virtual directories mentioned also change frequently, thus it's not a great folder name nowadays. Nevertheless, this is where you can find system and application logs |

---

# Linux filesystem
## Traversing directories

To change the current directory use `cd` command:

```bash
$cd <destination>
```

Two kinds of directory references:
- **Absolute** path: Defines exactly where the directory, starting at the root, thus always starts with forward slashes
- **Relative** path: You specify a path relative to your current directory (I am at directory `A`, how can I go to directory `B`?)

Two special characters for relative directories:
- Single dot `.` : symbolic name for the current directory
- Double dot `..` : symbolic name for the parent directory (previous)
	
```bash
$cd /home/ieee/Documents/
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
$pwd # /.../parent/current
$cd ..
$pwd # /.../parent
```

**Tip** : Use `pwd` to know your current absolute path

---

# Linux filesystem
## Examples with relative paths

Or to go from `current` to `dummy`, which are at the same level:

```
$cd ../dummy/ # first we go to parent (..), then we change to dummy/
```

If we are at `current` and we wish to navigate to subfolders like `child`, we can use the relative path:

```
$cd child
```

---

# Linux filesystem
## Listing files and directories

Use `ls` to list files and directories located in your current directory

The list is apalhabetical order and displayed in rows. If your terminal supports colors, different types of entries (files, folders, executables, links, ...) are shown in distinct colors for easier reading.

In addition to colors you can use the `-F` option. Entries with `/` are folders, executables have a `*` at the end, and so on.

---

# Linux filesystem
## Listing files and directories

Some files in Linux are **hidden files**. Their name starts with a dot (`.bashrc`). By default they are not shown by `ls`. If you want to see them, use the `-a` or `--all` option.

```
$ls -a
```

Use `-R` for recursive listing. By default, `ls` only lists entries which are direct child of the current directory. If you want to list entries from subfolders, you must use this option.

```
$ls -R
```

---

# Linux filesystem
## Listing files and directories

Default list doesn't tells us much, it's just a quick overview of the current directory content. If you wish to view more datails use the long listing option, `-l`.

```
$ls -l
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

// TODO: talk about wildcards?
// TODO: Falar já de tab autocomplete?

---

# Linux filesystem
## Creating files

You can create empty files with `touch`

```bash
$touch <filename>
$touch main.c # empty file called main.c
```

You can also use `touch` to create files with specific modification times or change existing files modification times.

---

# Linux filesystem
## Reading files

You can read the contents of a file using the `cat` command.

```bash
$cat <filename>
$cat main.c  # will print the contents of main.c
```

This can be used when you simply want to know what the file holds.

---

# Linux filesystem
## Deleting files

You can delete files and directories with `rm`

```bash
$rm <filename>

# delete file called main.c
$rm main.c

# delete directory called example/
$rm -rf example/
```
To delete an entire folder and it's respective contents, we need to pass in the arguments `r` (recursive, delete each interior file) and `f` (force, as we don't want to be asked 'are you sure?' on each deletion)

---

# Linux filesystem
## Copying files

To copy files and folders from one location to another, you use `cp` command.

```bash
$cp <source> <destination>
```

```bash
$cp filename.txt dst/
```

If the `source` is a file and destination is a folder, the file is copied to that folder. The example above copies the file `filename.txt` to the folder `dst`.

**Note 1:** Notice the **forward slash after `dst`**. It tells that `dst` is a directory. If you run `cp filename.txt dst` it copies `filename.txt` to a file named `dst` in the current directory.

**Note 2:** The `cp` won't create directories, **it only supports pre-existing directories**. You can use `mkdir` before `cp`.

---

# Linux filesystem
## Copying files

The previous example keeps the original filename, but **you can copy the file and give it a new name**.

```bash
$cp filename.txt dst/new.txt
```

---

# Linux filesystem
## Copying files

What if the folder `dst/` has a file named `filename.txt`? **By default, the file would be overwritten silently.**

If you use the `-i` option, the utility will prompt and ask you if you want to overwrite. If you want, just type `y`.

```bash
$cp -i filename.txt dst/
cp: overwrite 'dst/filename.txt'?
```

**Note:** Most modern Linux distributions create an alias and when you run `cp` you are actually running `cp -i`.

---

# Linux filesystem
## Copying folders

In order to copy folders and its content you must use the recursive option, `-r`.

```bash
$cp -r ~/Documents/ /media/backup
```

The `/media/backup` now has a `Documents` folder with a copy of all files and sub-folders.

You can set a new destination folder name as well.

```bash
$cp -r ~/Documents/ /media/backup/01-mar-2019-documents/
```

---

# Linux filesystem
## Using wildcards

You can speed up what you're trying to do with the use of **wildcards**.
A wildcard is a pattern you define accordingly to what you need.

| Wildcard | Meaning | Example |
|-|-|-|
| `*` | Matches any characters | `cp *.pdf ~` |
| `?` | Matches any single character | `cat fe?p.txt` |
| `[]` | Matches any characters inside | `cp [b, c]at ~` |
| `{}` | Use multiple wildcards | `cp {*.pdf, *.png} ~` |

---

# Linux filesystem
## Moving and renaming files

You can move files with `mv`.

`mv` is also used to rename a file's name, because moving the file into another
file with a different name is the same as simply renaming it.

```bash
$mv <filename> <destination>

# move file called main.c into directory folder/
$mv main.c folder/

# rename xample.txt as example.txt
$mv xample.txt example.txt
```


---

# Linux's shell

The most beloved feature of Linux **is the way it's internal shell works**.

After knowing how to create, delete and copy files in Linux, we're going to look into more advanced
features of our shell: **bash**

---

# What is bash?

Bash is what powers the terminal, and what makes it so beautiful.

With it, we can do pretty much everything that we want to do.

---

# What is bash?

Want to delete all pdf files in your current directory?

--

`rm *.pdf`

---

# What is bash?

Want to save your grade from a file full of student grades, into another file?

--

`cat grades.txt | grep -i "john doe" > my_grade.txt`

---

# What is bash?

Want to join 3 different PDF files into a single PDF?

--

`pdfunite f1.pdf f2.pdf f3.pdf final.pdf`

---

# What is bash?

These are just a few examples of what you might want to do in your day-by-day using Linux.

Either it's something pretty easy or something quite complicated, we can *probably* guarantee that there's
a bash command for it.

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

TODO: Example

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
