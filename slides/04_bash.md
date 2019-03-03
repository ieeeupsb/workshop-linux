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
