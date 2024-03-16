-- Drop the table if it exists
DROP TABLE IF EXISTS user_types;
DROP TABLE IF EXISTS languages;
DROP TABLE IF EXISTS weeks;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS contributions;
DROP TABLE IF EXISTS permissions;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS groups;
DROP TABLE IF EXISTS champions;
DROP TABLE IF EXISTS interview_questions;
DROP TABLE IF EXISTS interview_responses;
DROP TABLE IF EXISTS reviewers;
DROP TABLE IF EXISTS reviews;
DROP TABLE IF EXISTS badges;
DROP TABLE IF EXISTS user_badges;
DROP TABLE IF EXISTS task_masters;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS task_types;
DROP TABLE IF EXISTS tasks;

-- Create tables
CREATE TABLE user_types (
    user_type_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_type_name TEXT NOT NULL
);

CREATE TABLE languages (
    language_id INTEGER PRIMARY KEY AUTOINCREMENT,
    language_name TEXT NOT NULL
);

CREATE TABLE weeks (
    week_id INTEGER PRIMARY KEY AUTOINCREMENT,
    week_name TEXT NOT NULL
);
CREATE TABLE users (
    user_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_type INTEGER NOT NULL,
    user_password TEXT NOT NULL,
    FOREIGN KEY (user_type) REFERENCES user_types(user_type_id)
);


CREATE TABLE contributions (
    contribution_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    language_id INTEGER NOT NULL,
    week_id INTEGER NOT NULL,
    source TEXT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (language_id) REFERENCES languages(language_id),
    FOREIGN KEY (week_id) REFERENCES weeks(week_id)
);

CREATE TABLE permissions (
    permission_id INTEGER PRIMARY KEY AUTOINCREMENT,
    permission_name TEXT NOT NULL
);

CREATE TABLE roles (
    role_id INTEGER PRIMARY KEY AUTOINCREMENT,
    permission_id INTEGER NOT NULL,
    FOREIGN KEY (permission_id) REFERENCES permissions(permission_id)
);

CREATE TABLE groups (
    group_id INTEGER PRIMARY KEY AUTOINCREMENT,
    role_id INTEGER NOT NULL,
    FOREIGN KEY (role_id) REFERENCES roles(role_id)
);

CREATE TABLE champions (
    champion_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    champion_title TEXT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE interview_questions (
    question_id INTEGER PRIMARY KEY AUTOINCREMENT,
    question_text TEXT NOT NULL,
    is_active INTEGER NOT NULL
);

CREATE TABLE interview_responses (
    champion_id INTEGER NOT NULL,
    question_id INTEGER NOT NULL,
    question_response TEXT NOT NULL,
    FOREIGN KEY (champion_id) REFERENCES champions(champion_id),
    FOREIGN KEY (question_id) REFERENCES interview_questions(question_id)
);

CREATE TABLE reviewers (
    reviewer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    language_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (language_id) REFERENCES languages(language_id)
);

CREATE TABLE reviews (
    review_id INTEGER PRIMARY KEY AUTOINCREMENT,
    week_id INTEGER NOT NULL,
    reviewer_id INTEGER NOT NULL,
    FOREIGN KEY (week_id) REFERENCES weeks(week_id),
    FOREIGN KEY (reviewer_id) REFERENCES reviewers(reviewer_id)
);

CREATE TABLE badges (
    badge_id INTEGER PRIMARY KEY AUTOINCREMENT,
    badge_name TEXT NOT NULL,
    badge_icon TEXT NOT NULL
);

CREATE TABLE user_badges (
    user_id INTEGER NOT NULL,
    badge_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (badge_id) REFERENCES badges(badge_id)
);

CREATE TABLE task_masters (
    task_master_id INTEGER PRIMARY KEY AUTOINCREMENT,
    task_master_name TEXT NOT NULL,
    task_master_url TEXT NOT NULL
);

CREATE TABLE comments (
    comment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    contribution_id INTEGER NOT NULL,
    comments_by INTEGER NOT NULL,
    comments TEXT NOT NULL,
    reply_to INTEGER,
    is_approved INTEGER NOT NULL,
    FOREIGN KEY (contribution_id) REFERENCES contributions(contribution_id),
    FOREIGN KEY (comments_by) REFERENCES users(user_id),
    FOREIGN KEY (reply_to) REFERENCES comments(comment_id)
);

CREATE TABLE task_types (
    task_type_id INTEGER PRIMARY KEY AUTOINCREMENT,
    task_type_name TEXT NOT NULL
);

CREATE TABLE tasks (

    task_id INTEGER PRIMARY KEY AUTOINCREMENT,
    week_id INTEGER NOT NULL,
    task_master TEXT NOT NULL,
    task_type TEXT NOT NULL,
    task_description TEXT NOT NULL,
    is_active INTEGER NOT NULL,
     FOREIGN KEY (week_id) REFERENCES weeks(week_id),
    FOREIGN KEY (task_master_id) REFERENCES task_masters(task_master_id),
    FOREIGN KEY (task_type_id) REFERENCES task_types(task_type_id),
    UNIQUE INDEX idx_tasks_week_task_master_task_type (week_id, task_master_id, task_type_id)
);
