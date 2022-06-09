CREATE DATABASE wdcEventDB;

USE wdcEventDB;

CREATE TABLE Website_About_Info (
    website_info_id INT AUTO_INCREMENT,
    website_purpose VARCHAR(256),
    website_ip VARCHAR(63),
    PRIMARY KEY (website_info_id, website_ip)
);

CREATE TABLE Users (
    user_id INT AUTO_INCREMENT,
    name VARCHAR(63),
    username VARCHAR(63),
    password VARCHAR(63),
    PRIMARY KEY (user_id)
);

CREATE TABLE Profile (
    profile_id INT AUTO_INCREMENT,
    biography VARCHAR(500),
    contact_info VARCHAR(200),
    user_id INT,
    PRIMARY KEY (profile_id),
    FOREIGN KEY (user_id) REFERENCES Users (user_id)
);

INSERT INTO `Profile` VALUES (1, 'hey hey', '00000000', 1);

CREATE TABLE Website_Home_Page (
    website_ip VARCHAR(63),
    published_date DATE,
    update_date DATE,
    PRIMARY KEY (website_ip)
);

CREATE TABLE Event_Planner (
    event_id INT AUTO_INCREMENT,
    timestamp_of_updates DATE,
    shared_users VARCHAR(63),
    website_ip VARCHAR(63),
    PRIMARY KEY (event_id),
    FOREIGN KEY (website_ip) REFERENCES Website_Home_Page (website_ip)
);

CREATE TABLE Event_Finder (
    event_finder_id INT AUTO_INCREMENT,
    searchbar VARCHAR(63),
    website_ip VARCHAR(63),
    PRIMARY KEY (event_finder_id),
    FOREIGN KEY (website_ip) REFERENCES Website_Home_Page (website_ip)
);

CREATE TABLE Home_Page_Signup (
    user_id INT AUTO_INCREMENT,
    email VARCHAR(63),
    password VARCHAR(63),
    website_ip VARCHAR(63),
    PRIMARY KEY (user_id),
    FOREIGN KEY (website_ip) REFERENCES Website_Home_Page (website_ip)
);

CREATE TABLE Website_Contact_Info (
    website_contact_id INT AUTO_INCREMENT,
    address VARCHAR(63),
    email VARCHAR(63),
    website_ip VARCHAR(63),
    PRIMARY KEY (website_contact_id),
    FOREIGN KEY (website_ip) REFERENCES Website_Home_Page (website_ip)
);

CREATE TABLE Home_Page_Login (
    attempt_id INT AUTO_INCREMENT,
    timestamp_of_attempt DATE,
    login_ip VARCHAR(63),
    login_successful INT,
    user_id INT,
    user_id_signup INT,
    website_ip VARCHAR(63),
    PRIMARY KEY (attempt_id),
    FOREIGN KEY (user_id) REFERENCES Users (user_id),
    FOREIGN KEY (user_id_signup) REFERENCES Home_Page_Signup (user_id),
    FOREIGN KEY (website_ip) REFERENCES Website_Home_Page (website_ip)
);

CREATE TABLE System_Login_Records (
    record_id INT AUTO_INCREMENT,
    attempt_id INT,
    PRIMARY KEY (record_id),
    FOREIGN KEY (attempt_id) REFERENCES Home_Page_Login (attempt_id)
);

