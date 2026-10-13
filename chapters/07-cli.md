# Command Line Tools

*Get Fast with the CLI*

## Why Learn Command-Line Tools

After spending some time programming, you'll want to get faster at routine tasks, and you'll want to be able to easily explain what you did to someone else. I think graphical user interfaces are great when you are first learning an application, which is why I started the Version Control chapter with GitHub Desktop. But if you get comfortable with command-line tools, you can work a lot faster and easily have someone reproduce what you did without having to point and click.

## Getting Good with Your Terminal

Learning to navigate your computer's file system with shell commands opens up several doors for you. The main benefit is being able to use an HPC (high-performance computing) cluster. If you are doing any sort of data analysis or machine learning, you will likely want to use a cluster at some point, and the command line is the main way to access one.

### `pwd` (Print Working Directory)

This command shows your current location in the file system.

```bash
$ pwd
/Users/username/Documents
```

### `ls` (List)

Lists all files and directories in your current location.

```bash
$ ls
Desktop  Documents  Downloads  Pictures
```

Add options like `-l` for detailed view or `-a` to show hidden files:

```bash
$ ls -la
```

### `cd` (Change Directory)

Moves you to a different directory.

```bash
$ cd Documents
```

### `cd ..`

Moves up one directory level (to the parent directory).

```bash
$ cd ..
```

## File Management

### `mv` (Move)

Moves files or directories to a new location, or renames them.

```bash
# Move a file
$ mv file.txt Documents/

# Rename a file
$ mv oldname.txt newname.txt
```

### `cp` (Copy)

Copies files, or whole directories with `-r`.

```bash
$ cp file.txt backup.txt
$ cp -r project/ project_backup/
```

### `mkdir` (Make Directory)

Creates a new directory.

```bash
$ mkdir results
```

### `rm` (Remove)

Deletes files, or directories with `-r`. **There is no trash or undo**, so double-check before you run it.

```bash
$ rm old_file.txt
$ rm -r old_folder/
```

### `less` and `cat`

`less` lets you scroll through a file (press `q` to quit); `cat` prints the whole file to the screen.

```bash
$ less data.csv
$ cat notes.txt
```

## Package Management

### `pip`

Package installer for Python. Use it to install Python libraries.

```bash
# Install a package
$ pip install numpy

# List installed packages
$ pip list
```

### `brew` (Homebrew)

Package manager for macOS (and Linux). Use it to install software.

```bash
# Install software
$ brew install git

# Update Homebrew
$ brew update

# Upgrade installed packages
$ brew upgrade
```

## Tips for Effective Terminal Use

- Tab to autocomplete (useful for completing file paths)
- Press the up arrow to recall previous commands
- Press Ctrl+R to search through your command history
- Use `clear` to clear screen
- Create aliases for frequently used commands in your `.bashrc` or `.zshrc` file

## Introduction to Shell Scripts

It is also useful to learn writing shell scripts which can be used to automate tasks such as managing backups, batch-renaming files, setting up development environments, automating data processing pipelines, scheduling repetitive tasks with cron, and even simplifying complex command sequences into single, reusable scripts.

I typically create bash scripts when I want to rerun R scripts with different parameter combinations on a computing cluster.

Here is a good resource on learning bash scripting: [freeCodeCamp's bash scripting tutorial](https://www.freecodecamp.org/news/bash-scripting-tutorial-linux-shell-script-and-command-line-for-beginners/)
