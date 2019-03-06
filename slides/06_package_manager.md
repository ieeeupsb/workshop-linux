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
