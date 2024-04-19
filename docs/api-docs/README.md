# TheWeeklyChallenge APIs Docs

This is the `documentation` for the APIs provided by `TheWeeklyChallenge`. The APIs are developed using the `Dancer2` web framework for `PERL` and are designed to be simple, easy to use.

<span>
  <a href="swagger.yaml" target="_blank">
    <img src="https://img.shields.io/badge/Run-SwaggerUI-green?style=flat&logo=swagger" alt="Run in Swagger" width="200"/>
  </a>
 <a href="postman.json">
  <img src="https://run.pstmn.io/button.svg" alt="Run in Postman"/>
</a>
</span>

## Table of Contents

- [Introduction](#introduction)
- [APIs](#apis-docs)
  - [Public Routes](#public-routes)
  - [Challenge Routes](#challenge-routes)
  - [Authentication Routes](#authentication-routes)
  - [Admin Routes](#admin-routes)

## Introduction

TheWeeklyChallenge APIs are provided in the form of RESTful web services. The APIs are designed to be simple and easy to use. The APIs are provided for free and can be used by anyone. The APIs are provided as is and without any warranty. The APIs are provided for educational and non-commercial use only. The APIs are provided by TheWeeklyChallenge and are not affiliated with any other organization.

## APIs Docs

TheWeeklyChallenge provides the following APIs:

<details>
<summary>🌐 Public Routes</summary>

| **Route**      | **Route Method** | **Description**                                                                                                                                                             |
| -------------- | ---------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `/team`        | 🟢 GET           | Returns the `team` UI template with `TeamList` data. Displaying information about the weekly challenge team.                                                                |
| `/about`       | 🟢 GET           | Returns the `about` page template. Providing information about TheWeeklyChallenge.                                                                                          |
| `/chart`       | 🟢 GET           | Returns the `chart` UI template. Displaying a chart related to TheWeeklyChallenge data.                                                                                     |
| `/faqs`        | 🔵 POST          | Returns the `FAQ` page with `faqList` data. Supports creation via POST. Allows users to get answers to frequently asked questions and contribute new questions and answers. |
|                | 🟢 GET           | Returns the `FAQ` page with `faqList` data. Displays a list of frequently asked questions and their answers.                                                                |
| `/members`     | 🔵 POST          | Returns the `members` page and `membersList` data. Supports creation via POST. Allows users to become members of TheWeeklyChallenge.                                        |
|                | 🟢 GET           | Returns the `members` page and `membersList` data. Displays a list of current members.                                                                                      |
| `/perl-review` | 🟢 GET           | Returns the `Perl` reviews page and `reviewsList` data. Displays reviews related to Perl challenges.                                                                        |
| `/raku-review` | 🟢 GET           | Returns the `Raku` reviews page and `reviewsList` data. Displays reviews related to Raku challenges.                                                                        |
| `/submissions` | 🔵 POST          | Creates a new `submission`. Allows users to submit their entries for challenges.                                                                                            |
|                | 🟢 GET           | Returns a list of user `submissions`. Displays a list of submissions for challenges.                                                                                        |

</details>

<details>
<summary>🏆 Challenge Routes</summary>

All these routes need a valid authentication Bearer token to access.

| **Route**                 | **Route Method** | **Description**                                                                                                        |
| ------------------------- | ---------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `/challenges`             | 🟢 GET           | Returns a list of `challenges`. Displays a list of all available challenges.                                           |
| `/challenges/{id}`        | 🟢 GET           | Returns details for a specific `challenge`. Displays detailed information about a specific challenge.                  |
| `/challenges/{id}/submit` | 🟢 GET           | Returns `submissions` page for a specific `challenge`. Displays a page for submitting entries to a specific challenge. |
| `/challenges/{id}/submit` | 🔵 POST          | Submits a new entry for the specified `challenge`. Allows users to submit their entries for a specific challenge.      |

</details>

<details>
<summary>🔐 Authentication Routes</summary>

| **Route**      | **Route Method** | **Description**                                                                                     |
| -------------- | ---------------- | --------------------------------------------------------------------------------------------------- |
| `/auth/login`  | 🔵 POST          | User login. Returns authentication token. Allows users to log in to their accounts.                 |
| `/auth/logout` | 🔴 DELETE        | User logout. Invalidates authentication token. Allows users to log out of their accounts.           |
| `/auth/signup` | 🔵 POST          | User registration. Creates a new user account. Allows users to create new accounts.                 |
| `/auth/reset`  | 🔵 POST          | Password reset request. Initiates password reset process. Allows users to request a password reset. |
| `/auth/verify` | 🟤 PATCH         | Verifies user email or phone number after registration. Verifies the user's contact information.    |
| `/auth/login`  | 🟢 GET           | Returns the `login` page UI. Displays the login page for users.                                     |
| `/auth/signup` | 🟢 GET           | Returns the `signup` page UI. Displays the signup page for users.                                   |
| `/auth/reset`  | 🟢 GET           | Returns the _password reset_ page                                                                   |

UI. Displays the password reset page for users. |

</details>

<details>
<summary>🔐 Admin Routes</summary>

| **Route**               | **Route Method** | **Description**                                                                                 |
| ----------------------- | ---------------- | ----------------------------------------------------------------------------------------------- |
| `/admin/login`          | 🟢 GET           | Admin login. Returns authentication page for _admin_. Displays the admin login page.            |
| `/admin/dashboard`      | 🟢 GET           | Returns the _admin_ dashboard UI. Displays the admin dashboard with relevant information.       |
| `/admin/users`          | 🟢 GET           | Returns a list of all _users_. Displays a list of all users for admin management.               |
| `/admin/users`          | 🔵 POST          | Creates a new _user_. Allows admin to create a new user account.                                |
| `/admin/user/{id}`      | 🟢 GET           | Returns user information. Displays detailed information about a specific user.                  |
|                         | 🟤 PATCH         | Updates user information. Allows admin to update user details.                                  |
|                         | 🔴 DELETE        | Deletes user information. Allows admin to delete a user account.                                |
| `/admin/challenges`     | 🟢 GET           | Returns a list of challenges. Displays a list of all available challenges for admin management. |
| `/admin/challenges`     | 🔵 POST          | Creates a new challenge. Allows admin to create a new challenge.                                |
| `/admin/challenge/{id}` | 🟢 GET           | Returns challenge information. Displays detailed information about a specific challenge.        |
|                         | 🟤 PATCH         | Updates challenge information. Allows admin to update challenge details.                        |
|                         | 🔴 DELETE        | Deletes challenge information.                                                                  |
