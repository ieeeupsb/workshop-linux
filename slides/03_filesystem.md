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

