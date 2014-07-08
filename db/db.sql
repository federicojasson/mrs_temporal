
START TRANSACTION; -- Execute all statements or rollback

-- CLEANUP -----------------------------------------------------------------------------------

-- TODO: drop users

DROP DATABASE IF EXISTS mrs_db

-- INITIALIZATION AND CONFIGURATION ----------------------------------------------------------

CREATE DATABASE IF NOT EXISTS mrs_db
CHARACTER SET utf8;

USE mrs_db;

SET NAMES utf8;

-- TABLES ------------------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS study_types (
	description /* TODO: define type, should be a short string (example: Blood test */,
	id /* TODO: should be of the same type as the type column in table studies */,
	PRIMARY KEY(id)
	-- TODO: add columns
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS studies (
	id BINARY(16), -- UUID: 128 bits = 16 bytes
	observations /* TODO: define type, should be a long string (how long?) */,
	patient BINARY(16), -- UUID: 128 bits = 16 bytes
	type /* TODO: define type, maybe use a character to identify it */,
	PRIMARY KEY(id),
	FOREIGN KEY(type), REFERENCES study_types(id)
	-- TODO: add columns
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS studies_histories (
	datetime DATETIME,
	modification /* TODO: define type, example: Creation, Results attachment, etc. */,
	study BINARY(16),
	PRIMARY KEY (study, datetime),
	FOREIGN KEY(study), REFERENCES studies(id)
	-- TODO: add columns
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS users (
	id /* TODO: define type, maybe a short string, example: fundacion_favaloro (max long?) */,
	PRIMARY KEY(id)
	-- TODO: add columns
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS users_passwords (
	password BINARY(64), -- Hash function: SHA-512
	salt BINARY(16), -- Salt: 128 bits = 16 bytes
	user /* TODO: should be of the same type as the id column in table users */,
	PRIMARY KEY(user),
	FOREIGN KEY(user), REFERENCES users(id)
	-- TODO: add columns
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS patients (
	id BINARY(16), -- UUID: 128 bits = 16 bytes
	user /* TODO: should be of the same type as the id column in table users */,
	PRIMARY KEY(id),
	FOREIGN KEY(user), REFERENCES users(id)
	-- TODO: add columns
) ENGINE = InnoDB;

-- PROCEDURES --------------------------------------------------------------------------------
DELIMITER !

-- TODO: add stored procedures

-- TODO: comments
CREATE PROCEDURE insert_user (
	IN in_id /* TODO: type */,
	-- Hexadecimal representation of the hash of the password
	IN in_hex_password BINARY(128),
	-- Hexadecimal representation of the salt
	IN in_hex_salt BINARY(32)
)
BEGIN
	-- Converts the hexadecimal input data to binary
	DECLARE v_password BINARY(64) DEFAULT UNHEX(in_hex_password);
	DECLARE v_salt BINARY(16) DEFAULT UNHEX(in_hex_salt);
	
	-- TODO: doubt: should this procedure check if the user already exists?
	-- or this should be checked beforehand by the caller
	--
	-- TODO: what happens if the user exists?
	--
	--
	-- If you use the IGNORE keyword, errors that occur while executing the INSERT statement
	-- are ignored. For example, without IGNORE, a row that duplicates an existing UNIQUE
	-- index or PRIMARY KEY value in the table causes a duplicate-key error and the statement
	-- is aborted. With IGNORE, the row still is not inserted, but no error occurs. Ignored
	-- errors may generate warnings instead, although duplicate-key errors do not.
	--
	-- Source: http://dev.mysql.com/doc/refman/5.0/en/insert.html
	
	-- Inserts a new row in the "users" table
	INSERT INTO users (
		id
	) VALUES (
		in_id
	);
	
	-- Inserts a new row in the "users_passwords" table
	INSERT INTO users_passwords (
		password,
		salt,
		user
	) VALUES (
		v_password,
		v_salt,
		in_id
	);
END; !

DELIMITER ;
-- TRIGGERS ----------------------------------------------------------------------------------
DELIMITER !

-- TODO: add triggers

DELIMITER ;
-- USERS AND PRIVILEGES ----------------------------------------------------------------------

-- TODO: add users and privileges

----------------------------------------------------------------------------------------------

COMMIT;
