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
