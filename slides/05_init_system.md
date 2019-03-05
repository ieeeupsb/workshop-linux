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
