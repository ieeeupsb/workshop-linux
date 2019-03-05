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

For that, we can use the command `htop`
