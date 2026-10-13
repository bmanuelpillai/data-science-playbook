# Version Control Your Code

*Learning Git and GitHub*

## Why You Should Learn Git and GitHub

Git tracks every change you make, allowing you to go back to a previous version of your code, similar to Track Changes or version history in Microsoft Word. GitHub, a cloud-based platform for hosting Git repositories, makes it simple to collaborate with others. Using features like branches, you can work on different parts of a project independently, then merge the changes. As long as you push your work to GitHub regularly, you never have to worry about losing your code.

## General Git Workflow

```bash
# Start tracking Git history for a directory (folder)
git init

# Fetch and merge changes from the remote repository
git pull

# Check the status of your files
git status

# Stage the files you want to commit (you can specify files or use . for all changes)
git add .

# Commit your changes with a descriptive message
git commit -m "Describe what you changed or added"

# Push your commits to the remote repository
git push
```

## Four Levels of Version Control

You don't need to learn everything at once. I think of Git in four levels: the basics with GitHub Desktop, working with branches, advanced Git features, and continuous integration. Each section below covers one level.

## Level 1: Getting Started with GitHub

GitHub Desktop is great for 90% of what you'll be using Git for. Let's start with the basics:

- Create a [GitHub account](https://github.com/)
- Download [GitHub Desktop](https://github.com/apps/desktop)
- Download [Git](https://git-scm.com/downloads)
- Work through the tutorial repository GitHub Desktop offers when you first open it, or the free courses on [GitHub Skills](https://skills.github.com/)

### Two Ways to Start a New Project

#### Option 1: Clone Someone Else's Repository

To clone someone else's repository from GitHub:

- Copy the link to the repo
- Click File \> Clone Repository in GitHub Desktop
- Paste the link and choose where you want to copy the repository locally

#### Option 2: Make Your Own Repository

To make your own version-controlled repository:

- Click File \> New Repository in GitHub Desktop
- Give your repository a name and description
- Choose a local path
- Click "Create Repository"

Three terms you'll use constantly:

- **Committing:** saving changes locally with messages
- **Pushing:** transferring changes to GitHub
- **Pulling:** getting others' changes locally

[More on committing, pushing and pulling](https://gist.github.com/ZoeKHarvey/96cc58d782df8ea1ee5cf4117e66282a)

![git workflow](images/git.png)

## Level 2: Working with Branches

The next step is using branches. A branch is a separate line of development: a safe place to try out changes to your code before adding them to your main code.

### Creating and Using Branches

1.  In GitHub Desktop, click "Branch" in the top menu
2.  Select "New Branch" and give it a name
3.  Make your changes in this branch
4.  Commit the changes to the branch
5.  Push the branch to GitHub

Once the changes you make to the new branch look good, you can merge them into your main branch, usually through a pull request (covered in Level 4). This is especially useful when you are working with other people who each want to make changes to the code and then combine them.

## Level 3: Advanced Git Features

At this point, you understand the basics of Git, and the projects you work on are getting larger. Here are some advanced tips to help you stay organized.

### .gitignore

A file that tells Git which files not to track. This should include large data files and anything containing passwords or API keys that you don't want on GitHub.

More information: [freeCodeCamp's guide to .gitignore](https://www.freecodecamp.org/news/gitignore-what-is-it-and-how-to-add-to-repo/)

### Rebasing vs. Merging

I prefer rebasing over merging because it keeps a linear commit history, so when you want to go back to a previous change, it is easier to see what changed and in what order. Many teams prefer merging, so follow whatever your team uses. One rule always applies: never rebase a branch that other people have already pulled, because rebasing rewrites history.

More information: [Atlassian's merging vs. rebasing tutorial](https://www.atlassian.com/git/tutorials/merging-vs-rebasing)

### Squashing Commits

Before you rebase one branch onto another, it is super useful to squash (combine) your commits into as few as possible. Rebasing works by reapplying commits on top of a new base commit: it takes the commits from branch B and stacks them onto branch A. This is a lot easier with fewer commits, and it also makes it easier later on when you want to look through your commit history and see what you did.

More information: [Git Tower's guide to squashing commits](https://www.git-tower.com/learn/git/faq/git-squash)

### Use Git in the Terminal

Using Git in your editor's built-in terminal is great because you never have to leave your code editor, and it opens up a bunch of advanced features that are harder to use in GitHub Desktop.

A useful tool for using Git in the command line is [lazygit](https://www.freecodecamp.org/news/how-to-use-lazygit-to-improve-your-git-workflow/), which lets you use keyboard shortcuts instead of typing out entire Git commands.

## Level 4: Continuous Integration

Once you start getting into the software side of coding, it is super useful to use advanced Git workflows and automation.

### Pre-commit Hooks

Use [pre-commit](https://pre-commit.com/) to ensure that all code changes are consistent in style, free of common mistakes, and do not include anything unintended before they are committed to your repository.

**Pre-commit** is a framework for managing and maintaining multi-language pre-commit hooks. These hooks run automatically before each commit and can catch issues like formatting errors, unused imports, and more.

You need to install and configure pre-commit in each repository you want it to run in:

```bash
pip install pre-commit   # install the tool once
# add a .pre-commit-config.yaml file to your repository, then:
pre-commit install       # activate the hooks for this repo
```

Once set up, the hooks will run automatically every time you make a commit, helping enforce code quality and consistency across your project.

### Pull Requests

Another advanced feature is to combine pull requests with GitHub's branch protection rules, so that before anyone can add changes to your main branch, certain requirements (such as passing tests or an approving review) must be met.

1.  Create a branch with your changes
2.  Push the branch to GitHub
3.  Go to the repository on GitHub and click "New pull request"
4.  Select your branch to merge into main
5.  Add reviewers and description
6.  Create the pull request

### GitHub Actions

[GitHub Actions](https://docs.github.com/en/actions/about-github-actions/understanding-github-actions) run automated workflows when something happens in your repository, such as a push or a new pull request. They are commonly used with pull requests to run tests before a branch is merged.
