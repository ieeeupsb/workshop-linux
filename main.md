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
- **Level 1:** Only basic system processes are started, along one console terminal process. Used for emergency maintenance.
- **Level 3:** Runs most application software, enables network
- **Level 5:** Starts the graphical desktop window manager

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

Windowing systems are responsable to present graphics. They are low-level programs that work directly with the video card and and monitor.

Popular window systems: **X Window Sytem (X11)**, **Wayland**

---

# Desktop environment
## Examples

- KDE
- Gnome
- XFCE
- i3

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

