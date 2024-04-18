# The Weekly Challenge - Perl & Raku

![github-header-image (1)](https://github.com/baimamboukar/theweeklychallenge/assets/49169158/38b15a3c-8754-4f5f-bcb5-7142cb8e08b6)

[![Perl](https://img.shields.io/badge/perl-logo?style=for-the-badge)](https://www.perl.org/) [![MySQL](https://img.shields.io/badge/mysql-logo?style=for-the-badge&color=blue)](https://dev.mysql.com/doc/) [![Markdown](https://img.shields.io/badge/Markdown-E34F26?style=for-the-badge&logo=Markdown&logoColor=white)](https://daringfireball.net/projects/markdown/) [![JSON](https://img.shields.io/badge/JSON-EDD07A?style=for-the-badge&logo=JSON&logoColor=white)](https://json.org/) [![YAML](https://img.shields.io/badge/YAML-A9B7C6?style=for-the-badge&logo=YAML&logoColor=white)](https://yaml.org/) [![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=white)](https://developer.mozilla.org/docs/Web/JavaScript) [![CSS](https://img.shields.io/badge/CSS-2EC4B6?style=for-the-badge&logo=CSS3&logoColor=white)](https://developer.mozilla.org/docs/Web/CSS) ![Bootstrap](https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white)

#### You don't have to be an expert.

This project is a fun and welcoming space for developers of all skill levels to explore Perl and Raku. We provide weekly challenges to encourage learning, collaboration, and knowledge sharing. Whether you're an expert or a curious beginner, you'll find challenges to suit your skillset. We believe in fostering a supportive community where everyone can learn from each other. Feel free to ask questions, share your progress, and help fellow challengers on their coding journey.

# Features

- Weekly challenges
- Perl Review
- Raku Review

# Technologies

## Backend

- **Dancer2 (Perl)**: A lightweight and powerful web framework written in Perl. It allows for rapid development and provides features like routing, templating, database access, and more.
- **MySQL**: A popular relational database management system (RDBMS) used for storing and managing structured data.

## Frontend

- **Javascript**
- **Template Toolkit**: A templating engine for Perl that allows for separating presentation logic from the application code. This project uses ".tt" files for dynamic HTML generation.

# Getting Started

- ## Prerequisites

- ## Clone
  Use git to clone this repository

```Bash
    git clone https://github.com/ChallengeForge/TheWeeklyChallenge.git
```

- ## Running the Development Server

To ease development processes, we are using `Docker` to effortlessly build and run the backend code for this project. Follow these straightforward steps to start the development server:

1. **Navigate to the root directory of the project**
    ```bash
    $ cd TheWeeklyChallenge
    ```

2. **Build the Docker image**
    ```bash
    $ docker build -t pwc .
    ```

3. **Run the Docker image on your local machine**
    ```bash
    $ docker run -t pwc
    ```

4. **All set**! The development server should now be accessible at [http://127.0.0.1:4000](http://127.0.0.1:4000).


# Contribution

We welcome contributions to The Weekly Challenge! If you have an idea for a new feature, want to fix a bug, or improve the website, please feel free to create a pull request. Refer to the [CONTRIBUTION GUIDE](CONTRIBUTING.md) for more details

# License

This project is licensed under the `Artistic License 2.0` license. Please refer to the [LICENSE](LICENSE) file for details.

---

## Prequequisite to Use and Connect to Database

- Install all of the following modules below

## Setting Up the Database

`To run the database for this project, you'll need to install the following Perl modules :`

1. **Install DBIx::Class**: This module provides a convenient abstraction layer over your database.

3. **Install Dancer2::Plugin::Database**: This module integrates the Dancer2 web framework with your database.

# Runnig Perl Critic

## Description
This code snippet is configured to utilize Perl::Critic for static code analysis with the strictest severity level (`brutal`) and the highest verbosity level (`11`). It's designed to enforce coding standards and best practices by analyzing Perl code against default Perl::Critic policies.

## Setup
1. Make sure you have Perl::Critic installed. If not, you can install it via CPAN or your preferred package manager.
2. Ensure that the `.perlcriticrc` file is present in your project directory with the following configurations:
   - Severity level set to `brutal`
   - Verbosity level set to `11`

## Usage
1. Clone or download the code snippet to your local machine.
2. Navigate to the directory containing the code.
3. Ensure that your Perl scripts are also present in the same directory or its subdirectories.
4. Run Perl::Critic with the provided configurations by executing the following command in your terminal:

```bash
perlcritic . your_perl_script.pl
```

Replace `your_perl_script.pl` with the name of the Perl script you want to analyze.

## Run PerlCritic on Multiple Files
- To run PerlCritc on all the Perl files in a drectiory i.e. files with ".pl" or ".pm" extenstions. Run the following command in your root directory terminal:
```bash
perlcritic .
```

## Additional Information
- The `.perlcriticrc` file included in this repository is preconfigured to use the default Perl::Critic policies.
- No custom policies are added beyond the defaults.
- The severity level is set to `brutal`, indicating the strictest enforcement of coding standards.
- The verbosity level is set to `11`, providing the highest level of detail in the analysis output.

## Dependencies
Ensure that the following dependencies are met:
- Perl::Critic

These dependencies should be installed and configured appropriately.

- Dancer2::Plugin::Database

This module integrates the Dancer2 web framework with your database.

## Contributors

[![](https://contrib.rocks/image?repo=ChallengeForge/TheWeeklyChallenge)](https://github.com/ChallengeForge/TheWeeklyChallenge/graphs/contributors)
[![](https://contrib.rock-s/image?repo=ChallengeForge/TheWeeklyChallenge)](https://github.com/ChallengeForge/TheWeeklyChallenge/graphs/contributors)

[![Visit Website](https://img.shields.io/badge/Visit_Website-brightgreen?style=for-the-badge)](https://theweeklychallenge.org)
