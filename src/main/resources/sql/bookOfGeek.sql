CREATE DATABASE book_of_geek;

CREATE TABLE user(
	uid INT(16) PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(64) PRIMARY KEY,
	phoneNumbers VARCHAR(64) PRIMARY KEY,
	email VARCHAR(128) PRIMARY KEY,
	password VARCHAR(256) NOT NULL,
	salt VARCHAR(128) NOT NULL
)ENGINE INNODB;

CREATE TABLE article(
	aid INT(32) PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255) NOT NULL,
	content LONGTEXT DEFAULT NULL,
	readedCount INT(16) DEFAULT 0,
	likeCount INT(16) DEFAULT 0,
	startDate DATE NOT NULL,
	endDate DATE DEFAULT NULL
)ENGINE INNODB;

CREATE TABLE user_article(
	uid INT NOT NULL,
	aid INT,
	FOREIGN KEY (uid) REFERENCES user(uid),
	FOREIGN KEY (aid) REFERENCES article(aid)
)
