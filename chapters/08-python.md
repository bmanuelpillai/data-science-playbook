# Python Environments

*Using Poetry and Conda to Manage Dependencies*

## Going from R to Python

R is great, but Python has many packages that R does not, especially when it comes to machine learning (scikit-learn, PyTorch, etc.). One of the biggest sticking points I experienced moving from R to Python was managing virtual environments and dependencies. In R a lot of this is done behind the scenes, and you often do not have to worry about using an explicit package version for your code (the `renv` package is R's version of this). In Python, however, it is important to install specific versions of your dependencies for each project. A virtual environment gives each project its own isolated set of packages, so upgrading a library for one project won't break another, and anyone can recreate the exact setup you used to get your results. One tool I really like is Poetry.

## Poetry Installation

- Download [Python](https://www.python.org/downloads/) onto your computer (it comes with the `pip` package installer)
- Follow these instructions to install [Poetry](https://python-poetry.org/docs/)

## General Workflow Using Poetry

```bash
# Set up Poetry for your project (creates pyproject.toml)
poetry init

# Optional: keep the virtual environment in a .venv folder inside your project
poetry config virtualenvs.in-project true

# Add packages (updates pyproject.toml and the poetry.lock file)
poetry add pandas

# Install everything listed in pyproject.toml
# (run this after cloning someone else's project)
poetry install

# Activate the virtual environment
eval $(poetry env activate)

# Or run a single command inside the environment without activating it
poetry run python my_script.py

# Update packages to the latest versions allowed by pyproject.toml
poetry update
```

Use [`pyenv`](https://github.com/pyenv/pyenv) if you need a different version of Python than the one on your system.

*Alternative:* [`uv`](https://docs.astral.sh/uv/) is a newer, much faster tool that can replace pip, Poetry and pyenv in one.

## Use Conda to Manage Dependencies Beyond Python

Conda is similar to Poetry, but it can install more than just Python packages, including R and system libraries such as CUDA. I think both are really good, and knowing a bit about both allows you to use whatever the rest of your team is using.

```bash
# Create a new conda environment
conda create --name myenv python=3.12

# Activate the environment
conda activate myenv

# Install packages in your conda environment
conda install package_name

# Export environment for reproducibility
conda env export > environment.yaml

# Create environment from file
conda env create -f environment.yaml

# Update all packages in the environment
conda update --all

# Remove an environment
conda env remove --name myenv
```
