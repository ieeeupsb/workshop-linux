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

It's *kernel* responsability to *swap* *pages* from disk to physical memory and vice versa

The *kernel* must allocate memory for each *process*

---

# The Linux kernel
## Software program management

A *process* is a running program. It can run:
- In the background, behind the scenes, without user interaction
- In the foreground, displaying output on a display

On boot, the *kernel* creates a process: the *init* process. It will start all other processes on the system

Linux utilizes *run levels*. They tell `init` to run only certain types of processes.
- Level 1: Only basic system processes are started, along one console terminal process. Used for emergency maintenance.
- Level 3: Runs most application software, enables network
- Level 5: Starts the graphical desktop window manager

---

# The Linux kernel
## Hardware management

A *device driver* or *driver* is a piece of code required by *kernel* to communicate with hardware devices. It acts as middle man between applications and hardware.

Two ways for inserting *driver* code in Linux *kernel*:
- Drivers compiled in the *kernel*
- Driver modules which are loaded and added to the *kernel*

The second is the most common practice by users, as allows to insert *drivers* code into a running *kernel* without recompiling it.

---

# The Linux kernel
## Filesystem management

A *filesystem* controls how data is stored, for example, in a disk.

How to tell if a block of data is a image? Where does the image start and end? How to add metadata such a filename, content-type, lenght? How to manage space? That's up to the filesystem to specify.

Linux *kernel* supports a wide range of filesystems. It has it's own: Linux Extended Filesystem (*ext*). There's a fourth version, *ext4*.

It supports others such *ntfs*, *fat32*, *minix*, etc.
