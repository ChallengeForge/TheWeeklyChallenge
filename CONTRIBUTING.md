# Contributing to TheWeeklyChallenge

Welcome to the TheWeeklyChallenge project! We appreciate your interest in contributing. By contributing to this project, you're helping us creating a fun and welcoming space for developers of all skill levels to explore Perl and Raku. To ensure a smooth and collaborative experience, please review the guidelines below before making contributions.

## Table of Contents

- [Ways to Contribute](#ways-to-contribute)
- [Contributions Guide](#getting-started)
- [Code Style and Guidelines](#code-style-and-guidelines)
- [Submitting Contributions](#submitting-contributions)
- [Community Guidelines](#community-guidelines)
- [Contact](#contact)

## Ways to Contribute

There are several ways you can contribute to TheWeeklyChallenge:

1. Reporting Issues: If you encounter any bugs or have suggestions for improvements, please [submit an issue](https://github.com/G-Research/TheWeeklyChallenge/issues) in our issue tracker. Provide a clear description and, if possible, steps to reproduce the issue.

2. Feature Requests: If you have ideas for new features or enhancements, you can [submit a feature request](https://github.com/G-Research/TheWeeklyChallenge/issues). Please explain the feature in detail and its potential benefits.

3. Documentation: Help improve the project's developer guide by fixing errors or adding missing information. Submit a pull request with your proposed changes.

4. Bug Fixes and Improvements: If you are familiar with the codebase, you can contribute by fixing bugs or implementing enhancements. Fork the repository, make the changes, and submit a pull request.

## Contributions Guidelines

### First Time Contribution

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

### Git Workflow for Keeping Your Branch Updated and Tidy

Maintaining a clean and updated Git workflow is essential for efficient development and collaboration. Follow these steps to keep your local branch up-to-date with the remote master while ensuring a tidy and organized workflow.

#### Step 1: Update Your Local Master

Before starting any new work or making changes, ensure your local master branch is up-to-date with the remote repository:

```sh
git checkout master git pull origin master
```

#### Step 2: Create or Switch to Your Working Branch

Switch to your existing working branch or create a new one:

```sh
git checkout <branch_name> # Switch to an existing branch
```

**or**

```sh
git checkout -b <new_branch_name> # Create and switch to a new branch
```

#### Step 3: Make and Commit Your Changes

Make necessary changes to your code or files and commit them:

```sh
git add . git commit -m "Your commit message here"
```

#### Step 4: Rebase Your Working Branch with Local Master

Incorporate the latest changes from the master branch into your working branch:

git checkout <working_branch> git rebase master

#### Step 5: Resolve any Conflicts (if applicable)

Resolve conflicts that may arise during the rebase process:

- Resolve conflicts manually using a text editor or Git tool
- `git add .`
- `git rebase --continue`

#### Step 6: Push Your Changes to Remote Repository

Push your changes to the remote repository:

```sh
git push origin <working_branch>
```

### Blockers with MacOS Installation

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

## Code Style and Guidelines

When contributing code to TheWeeklyChallenge, please follow these guidelines:

- Follow the existing code style and naming conventions used in the project.

- Write clear and concise code with appropriate comments where necessary.

- Maintain consistent and meaningful commit messages.

- Document any new or modified functionality appropriately.

For more detailed guidelines, please refer to the [Code of Conduct](CODE_OF_CONDUCT.md).

## Submitting Contributions

To submit your contributions, please follow these steps:

1. Ensure that your code adheres to the project's code style and guidelines.

2. Test your changes thoroughly.

3. Commit your changes with descriptive commit messages.

4. Push your changes to your forked repository.

5. Open a pull request in the main repository, providing a clear description of your changes and any additional information that may be relevant.

## Community Guidelines

To ensure a welcoming and inclusive environment for all contributors and users, we expect everyone involved in the TheWeeklyChallenge community to adhere to our community guidelines:

- Be respectful and considerate of others' opinions and experiences.

- Use inclusive language and avoid any form of discriminatory or offensive behavior.

- Be supportive and helpful to fellow contributors and users.

- Resolve conflicts and disagreements constructively and professionally.

- If you witness any violations of the project's code of conduct, please report them to the project maintainers.

For more details, please refer to the [Code of Conduct](CODE_OF_CONDUCT.md).

## Contact

If you have any questions or need further assistance, you can reach out to the project maintainers.

### We appreciate your contributions and look forward to building an Perl and Raku enthusiasts community together! 🎉

[![Join us on Slack](https://img.shields.io/badge/Join_us-Slack-informational?style=for-the-badge&logo=slack&logoColor=white)](https://join.slack.com/t/theweeklychal-udf4770/shared_invite/zt-2em4g2m29-WGd9LQc1YnNLyn_qHi6xLA)
[![Visit Website](https://img.shields.io/badge/Visit_Website-brightgreen?style=for-the-badge)](https://theweeklychallenge.org)
