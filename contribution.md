# The Weekly Challenge - Perl & Raku
![github-header-image (1)](https://github.com/baimamboukar/theweeklychallenge/assets/49169158/38b15a3c-8754-4f5f-bcb5-7142cb8e08b6)

[![Perl](https://img.shields.io/badge/perl-logo?style=for-the-badge)](https://www.perl.org/) [![MySQL](https://img.shields.io/badge/mysql-logo?style=for-the-badge&color=blue)](https://dev.mysql.com/doc/) [![Markdown](https://img.shields.io/badge/Markdown-E34F26?style=for-the-badge&logo=Markdown&logoColor=white)](https://daringfireball.net/projects/markdown/) [![JSON](https://img.shields.io/badge/JSON-EDD07A?style=for-the-badge&logo=JSON&logoColor=white)](https://json.org/) [![YAML](https://img.shields.io/badge/YAML-A9B7C6?style=for-the-badge&logo=YAML&logoColor=white)](https://yaml.org/) [![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=white)](https://developer.mozilla.org/docs/Web/JavaScript) [![CSS](https://img.shields.io/badge/CSS-2EC4B6?style=for-the-badge&logo=CSS3&logoColor=white)](https://developer.mozilla.org/docs/Web/CSS) ![Bootstrap](https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white)




#### You don't have to be an expert.

# Contribution Guide

## First Time Contribution

1. **Fork the Repository**: Start by forking the repository to your GitHub account.

2. **Clone the Forked Repository**: Clone the forked repository to your local machine.

3. **Create a New Branch**: Checkout from the main branch and create a new branch on your local machine using the command:


```sh
git checkout -b <your_preferred_branch_name>
```


4. **Commit Your Changes**: After working and testing your changes, execute the following commands in order:
   - `git add .` - This adds all your changes.
   - `git commit` - This takes a snapshot of all your changes and makes them ready to be pushed to the remote (online) origin.
   - `git push --set-upstream origin <origin_name_from_step_3>`

5. **Create a Pull Request**: Go online to the forked repository and create a pull request.

## Git Workflow for Keeping Your Branch Updated and Tidy

Maintaining a clean and updated Git workflow is essential for efficient development and collaboration. Follow these steps to keep your local branch up-to-date with the remote master while ensuring a tidy and organized workflow.

### Step 1: Update Your Local Master

Before starting any new work or making changes, ensure your local master branch is up-to-date with the remote repository:


```sh
git checkout master git pull origin master
```


### Step 2: Create or Switch to Your Working Branch

Switch to your existing working branch or create a new one:

```sh
git checkout <branch_name> # Switch to an existing branch
```

**or**

```sh
git checkout -b <new_branch_name> # Create and switch to a new branch
```

### Step 3: Make and Commit Your Changes

Make necessary changes to your code or files and commit them:

```sh
git add . git commit -m "Your commit message here"
```


### Step 4: Rebase Your Working Branch with Local Master

Incorporate the latest changes from the master branch into your working branch:

git checkout <working_branch> git rebase master


### Step 5: Resolve any Conflicts (if applicable)

Resolve conflicts that may arise during the rebase process:

- Resolve conflicts manually using a text editor or Git tool
- `git add .`
- `git rebase --continue`

### Step 6: Push Your Changes to Remote Repository

Push your changes to the remote repository:

```sh
git push origin <working_branch>
```

## Blockers with MacOS Installation

MacOS comes preinstalled with vendor versions of Perl, unfortunately, these Perl versions can't give you access to some packages and Perl internals.

**Example Error**: When trying to install the DBD mysql package, you may get an error like this:


```sh
1 error generated. make: *** [dbdimp.o] Error 1 DVEEDEN/DBD-mysql-5.003.tar.gz /usr/bin/make -- NOT OK Failed during this command: DVEEDEN/DBD-mysql-5.003.tar.gz
```



To resolve this, we can install Perlbrew version:

For a quick installation of Perlbrew, do this:
`\curl -L https://install.perlbrew.pl | bash`



After installing Perlbrew, attach it to your terminal:

1. Open your `~/.bash_profile` file using a text editor. You can do this by running the command:

`nano ~/.bash_profile`


2. Append the following line to the end of the file:

`source ~/perl5/perlbrew/etc/bashrc`

   - Save the changes and exit the text editor.

3. Close your terminal and start a new one. Alternatively, you can run the command:

`source ~/.bash_profile`


Use `ctrl + o` to write to a file and `ctrl + x` to save to a file.


