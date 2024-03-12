-- Drop the database if it exists
DROP DATABASE IF EXISTS pwc;

-- Create the database
CREATE DATABASE pwc;

-- Use the newly created database
USE pwc;

-- Create tables
CREATE TABLE user_types (
    user_type_id INT PRIMARY KEY AUTO_INCREMENT,
    user_type_name VARCHAR(255) NOT NULL,
    UNIQUE INDEX idx_user_types_user_type_name (user_type_name)
);

CREATE TABLE languages (
    language_id INT PRIMARY KEY AUTO_INCREMENT,
    language_name VARCHAR(255) NOT NULL,
    UNIQUE INDEX idx_languages_language_name (language_name)
);

CREATE TABLE weeks (
    week_id INT PRIMARY KEY AUTO_INCREMENT,
    week_name VARCHAR(255) NOT NULL,
    UNIQUE INDEX idx_weeks_week_name (week_name)
);

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_type INT NOT NULL,
    user_password VARCHAR(255) NOT NULL,
    UNIQUE INDEX idx_users_user_type_user_password (user_type, user_password)
);

CREATE TABLE contributions (
    contribution_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    language_id INT NOT NULL,
    week_id INT NOT NULL,
    source TEXT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (language_id) REFERENCES languages(language_id),
    FOREIGN KEY (week_id) REFERENCES weeks(week_id),
    UNIQUE INDEX idx_contributions_user_language_week (user_id, language_id, week_id)
);

CREATE TABLE permissions (
    permission_id INT PRIMARY KEY AUTO_INCREMENT,
    permission_name VARCHAR(255) NOT NULL,
    UNIQUE INDEX idx_permissions_permission_name (permission_name)
);

CREATE TABLE roles (
    role_id INT PRIMARY KEY AUTO_INCREMENT,
    permission_id INT NOT NULL,
    FOREIGN KEY (permission_id) REFERENCES permissions(permission_id),
    UNIQUE INDEX idx_roles_permission_id (permission_id)
);

CREATE TABLE groups (
    group_id INT PRIMARY KEY AUTO_INCREMENT,
    role_id INT NOT NULL,
    FOREIGN KEY (role_id) REFERENCES roles(role_id),
    UNIQUE INDEX idx_groups_role_id (role_id)
);

CREATE TABLE champions (
    champion_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    champion_title VARCHAR(255) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    UNIQUE INDEX idx_champions_user_id (user_id)
);

CREATE TABLE interview_questions (
    question_id INT PRIMARY KEY AUTO_INCREMENT,
    question_text VARCHAR(255) NOT NULL,
    is_active INT NOT NULL,
    UNIQUE INDEX idx_interview_questions_question_text (question_text)
);

CREATE TABLE interview_responses (
    champion_id INT NOT NULL,
    question_id INT NOT NULL,
    question_response VARCHAR(255) NOT NULL,
    FOREIGN KEY (champion_id) REFERENCES champions(champion_id),
    FOREIGN KEY (question_id) REFERENCES interview_questions(question_id),
    UNIQUE INDEX idx_interview_responses_champion_question (champion_id, question_id)
);

CREATE TABLE reviewers (
    reviewer_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    language_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (language_id) REFERENCES languages(language_id),
    UNIQUE INDEX idx_reviewers_user_language (user_id, language_id)
);

CREATE TABLE reviews (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    week_id INT NOT NULL,
    reviewer_id INT NOT NULL,
    FOREIGN KEY (week_id) REFERENCES weeks(week_id),
    FOREIGN KEY (reviewer_id) REFERENCES reviewers(reviewer_id),
    UNIQUE INDEX idx_reviews_week_reviewer (week_id, reviewer_id)
);

CREATE TABLE badges (
    badge_id INT PRIMARY KEY AUTO_INCREMENT,
    badge_name VARCHAR(255) NOT NULL,
    badge_icon VARCHAR(255) NOT NULL,
    UNIQUE INDEX idx_badges_badge_name (badge_name)
);

CREATE TABLE user_badges (
    user_id INT NOT NULL,
    badge_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (badge_id) REFERENCES badges(badge_id),
    UNIQUE INDEX idx_user_badges_user_badge (user_id, badge_id)
);

CREATE TABLE task_masters (
    task_master_id INT PRIMARY KEY AUTO_INCREMENT,
    task_master_name VARCHAR(255) NOT NULL,
    task_master_url VARCHAR(255) NOT NULL,
    UNIQUE INDEX idx_task_masters_task_master_name (task_master_name)
);

CREATE TABLE comments (
    comment_id INT PRIMARY KEY AUTO_INCREMENT,
    contribution_id INT NOT NULL,
    comments_by INT NOT NULL,
    comments TEXT NOT NULL,
    reply_to INT,
    is_approved INT NOT NULL,
    FOREIGN KEY (contribution_id) REFERENCES contributions(contribution_id),
    FOREIGN KEY (comments_by) REFERENCES users(user_id),
    FOREIGN KEY (reply_to) REFERENCES comments(comment_id),
    UNIQUE INDEX idx_comments_contribution_comments_by (contribution_id, comments_by)
);

CREATE TABLE task_types (
    task_type_id INT PRIMARY KEY AUTO_INCREMENT,
    task_type_name VARCHAR(255) NOT NULL,
    UNIQUE INDEX idx_task_types_task_type_name (task_type_name)
);

CREATE TABLE tasks (
    task_id INT PRIMARY KEY AUTO_INCREMENT,
    week_id INT NOT NULL,
    task_master VARCHAR(255) NOT NULL,
    task_type VARCHAR(255) NOT NULL,
    task_description TEXT NOT NULL,
    is_active TINYINT(1) NOT NULL,
    FOREIGN KEY (week_id) REFERENCES weeks(week_id),
    UNIQUE INDEX idx_tasks_week_task_master_task_type (week_id, task_master, task_type)
);