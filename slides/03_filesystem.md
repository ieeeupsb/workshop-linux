class: center, middle, inverse 

# Linux Filesystem

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

// TODO: talk about wildcards?
// TODO: Falar já de tab autocomplete?

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

class: middle, center

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

Before security was a big concern, system services would run logged in as `root`
- If an unauthorized person broke into one of those services => access to the system as the `root`
- This must be prevented

To solve the issue, every service running in the background has its own user account, with well defined permissions. These are known as **system accounts**

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

The *shadow file* can only be accessed by special programs (e.g login program) and **root**

Contains one record for each user account

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

