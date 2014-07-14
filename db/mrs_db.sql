
START TRANSACTION; -- Execute all statements or rollback

-- CLEANUP -----------------------------------------------------------------------------------

-- TODO: drop users

DROP USER mrs_user@localhost;
DROP DATABASE IF EXISTS mrs_db;

-- INITIALIZATION AND CONFIGURATION ----------------------------------------------------------

CREATE DATABASE IF NOT EXISTS mrs_db
CHARACTER SET utf8;

USE mrs_db;

SET NAMES utf8;

-- TABLES ------------------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS users (
	id VARCHAR(32),
	PRIMARY KEY(id)
	-- TODO: add columns
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS users_passwords (
	password BINARY(64), -- Hash function: SHA-512
	salt BINARY(16), -- Salt: 128 bits = 16 bytes
	user VARCHAR(32),
	PRIMARY KEY(user),
	FOREIGN KEY(user) REFERENCES users(id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS patients (
	id BINARY(16), -- UUID: 128 bits = 16 bytes
	user VARCHAR(32),
	PRIMARY KEY(id),
	FOREIGN KEY(user) REFERENCES users(id)
	-- TODO: add columns
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS study_types (
	description VARCHAR(32),
	id BINARY(1),
	PRIMARY KEY(id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS studies (
	id BINARY(16), -- UUID: 128 bits = 16 bytes
	observations TEXT,
	patient BINARY(16), -- UUID: 128 bits = 16 bytes
	type BINARY(1),
	PRIMARY KEY(id),
	FOREIGN KEY(patient) REFERENCES patients(id),
	FOREIGN KEY(type) REFERENCES study_types(id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS studies_histories (
	datetime DATETIME,
	modification VARCHAR(32),
	study BINARY(16),
	PRIMARY KEY (study, datetime),
	FOREIGN KEY(study) REFERENCES studies(id)
) ENGINE = InnoDB;

-- PROCEDURES --------------------------------------------------------------------------------
DELIMITER !

-- TODO: add stored procedures

-- TODO: comments
CREATE PROCEDURE get_studies (
	-- Hexadecimal representation of the patient ID
	IN i_hex_patient BINARY(32)
)
BEGIN
	-- Converts the hexadecimal input data to binary
	DECLARE v_patient BINARY(16) DEFAULT UNHEX(i_hex_patient);
	
	SELECT id, observations, patient, type
	FROM studies
	WHERE patient = v_patient;
END; !

-- TODO: comments
CREATE PROCEDURE get_study_types ()
BEGIN
	SELECT description, id
	FROM study_types;
END; !

-- TODO: comments
CREATE PROCEDURE insert_study (
	-- Hexadecimal representation of the ID
	IN i_hex_id BINARY(32),
	IN i_observations TEXT,
	-- Hexadecimal representation of the patient ID
	IN i_hex_patient BINARY(32),
	IN i_type BINARY(1)
)
BEGIN
	-- Converts the hexadecimal input data to binary
	DECLARE v_id BINARY(16) DEFAULT UNHEX(i_hex_id);
	DECLARE v_patient BINARY(16) DEFAULT UNHEX(i_hex_patient);
	
	-- TODO: doubt: should this procedure check if a study with the same ID already exists?
	-- or this should be checked beforehand by the caller
	--
	-- TODO: what happens if the user exists?
	--
	-- TODO: what about foreign keys? (v_patient and i_type)
	--
	-- If you use the IGNORE keyword, errors that occur while executing the INSERT statement
	-- are ignored. For example, without IGNORE, a row that duplicates an existing UNIQUE
	-- index or PRIMARY KEY value in the table causes a duplicate-key error and the statement
	-- is aborted. With IGNORE, the row still is not inserted, but no error occurs. Ignored
	-- errors may generate warnings instead, although duplicate-key errors do not.
	--
	-- Source: http://dev.mysql.com/doc/refman/5.0/en/insert.html
	
	-- Inserts a new row in the "studies" table
	INSERT INTO studies (
		id,
		observations,
		patient,
		type
	) VALUES (
		v_id,
		i_observations,
		v_patient,
		i_type
	);
END; !

-- TODO: comments
CREATE PROCEDURE insert_user (
	IN i_id VARCHAR(32),
	-- Hexadecimal representation of the hash of the password
	IN i_hex_password BINARY(128),
	-- Hexadecimal representation of the salt
	IN i_hex_salt BINARY(32)
)
BEGIN
	-- Converts the hexadecimal input data to binary
	DECLARE v_password BINARY(64) DEFAULT UNHEX(i_hex_password);
	DECLARE v_salt BINARY(16) DEFAULT UNHEX(i_hex_salt);
	
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
		i_id
	);
	
	-- Inserts a new row in the "users_passwords" table
	INSERT INTO users_passwords (
		password,
		salt,
		user
	) VALUES (
		v_password,
		v_salt,
		i_id
	);
END; !

-- TODO: comments
CREATE PROCEDURE update_study (
	-- Hexadecimal representation of the ID
	IN i_hex_id BINARY(32),
	IN i_observations TEXT
)
BEGIN
	-- TODO
END; !

DELIMITER ;
-- TRIGGERS ----------------------------------------------------------------------------------
DELIMITER !

-- TODO: add triggers

CREATE TRIGGER after_insert_study
AFTER INSERT ON studies
FOR EACH ROW
BEGIN
	DECLARE v_datetime TIMESTAMP DEFAULT UTC_TIMESTAMP();
	
	INSERT INTO studies_histories (
		datetime,
		modification,
		study
	) VALUES (
		v_datetime,
		'Creación',
		NEW.id
	);
END; !

DELIMITER ;
-- USERS AND PRIVILEGES ----------------------------------------------------------------------

-- TODO: add users and privileges

CREATE USER 'mrs_user'@'localhost'
IDENTIFIED BY PASSWORD '*9A07BE73FB3B837FA8C1294636D9BBBC6307F8EA';

REVOKE ALL PRIVILEGES, GRANT OPTION
FROM 'mrs_user'@'localhost';

-- INITIAL DATA ------------------------------------------------------------------------------

-- TODO: define study types

INSERT INTO study_types (
	description,
	id
) VALUES (
	'Estudio de eye tracker',
	'A'
);

COMMIT;
