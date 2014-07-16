
START TRANSACTION; -- Execute all statements or rollback

-- CLEANUP -----------------------------------------------------------------------------------

DROP USER mrs_admin@localhost;
DROP USER mrs_doctor@localhost;
DROP USER mrs_researcher@localhost;
DROP DATABASE IF EXISTS mrs_db;


-- INITIALIZATION AND CONFIGURATION ----------------------------------------------------------

CREATE DATABASE IF NOT EXISTS mrs_db
CHARACTER SET utf8;

USE mrs_db;
SET NAMES utf8;


-- TABLES ------------------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS users (
	id VARCHAR(32),
	password BINARY(64), -- Hash function: SHA-512
	role BINARY(1), -- Values: [A, D, R]
	salt BINARY(16), -- Salt: 128 bits = 16 bytes
	PRIMARY KEY(id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS patients (
	birth_date DATE,
	blood_type BINARY(3), -- Values: [A+, A-, AB+, AB-, B+, B-, O+, O-]
	id BINARY(16), -- UUID: 128 bits = 16 bytes
	gender BINARY(1), -- Values: [F, M]
	name VARCHAR(128),
	user VARCHAR(32),
	PRIMARY KEY(id),
	FOREIGN KEY(user) REFERENCES users(id)
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
	PRIMARY KEY(datetime, study),
	FOREIGN KEY(study) REFERENCES studies(id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS studies_files (
	checksum BINARY(16), -- Hash function: MD5
	filename VARCHAR(128),
	study BINARY(16),
	PRIMARY KEY(filename, study),
	FOREIGN KEY(study) REFERENCES studies(id)
) ENGINE = InnoDB;


-- VIEWS -------------------------------------------------------------------------------------

CREATE VIEW admins_authentication AS
SELECT id, password, salt
FROM users
WHERE role = 'A';

CREATE VIEW doctors_authentication AS
SELECT id, password, salt
FROM users
WHERE role = 'D';

CREATE VIEW researchers_authentication AS
SELECT id, password, salt
FROM users
WHERE role = 'R';


-- PROCEDURES --------------------------------------------------------------------------------
DELIMITER !

-- TODO: add stored procedures

/* -- TODO: comments
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
END; !*/

/*
 *	Gets all the study types.
 */
CREATE PROCEDURE get_study_types ()
BEGIN
	SELECT description, id
	FROM study_types;
END; !

/*
 *	Inserts an admin user in the database.
 */
CREATE PROCEDURE insert_admin (
	IN i_id VARCHAR(32),
	IN i_hex_password BINARY(128), -- Hexadecimal representation of the hash of the password
	IN i_hex_salt BINARY(32) -- Hexadecimal representation of the salt
)
BEGIN
	CALL insert_user(
		i_id,
		i_hex_password,
		'A',
		i_hex_salt
	);
END; !

/*
 *	Inserts a dctor user in the database.
 */
CREATE PROCEDURE insert_doctor (
	IN i_id VARCHAR(32),
	IN i_hex_password BINARY(128), -- Hexadecimal representation of the hash of the password
	IN i_hex_salt BINARY(32) -- Hexadecimal representation of the salt
)
BEGIN
	CALL insert_user(
		i_id,
		i_hex_password,
		'D',
		i_hex_salt
	);
END; !

/*
 *	Inserts a researcher user in the database.
 */
CREATE PROCEDURE insert_researcher (
	IN i_id VARCHAR(32),
	IN i_hex_password BINARY(128), -- Hexadecimal representation of the hash of the password
	IN i_hex_salt BINARY(32) -- Hexadecimal representation of the salt
)
BEGIN
	CALL insert_user(
		i_id,
		i_hex_password,
		'R',
		i_hex_salt
	);
END; !

/*
 *	Inserts a study type in the database.
 */
CREATE PROCEDURE insert_study_type (
	IN i_description VARCHAR(32),
	IN i_id BINARY(1)
)
BEGIN
	INSERT INTO study_types (
		description,
		id
	) VALUES (
		i_description,
		i_id
	);
END; !

/*
 *	Inserts a user in the database.
 */
CREATE PROCEDURE insert_user (
	IN i_id VARCHAR(32),
	IN i_hex_password BINARY(128), -- Hexadecimal representation of the hash of the password
	IN i_role BINARY(1),
	IN i_hex_salt BINARY(32) -- Hexadecimal representation of the salt
)
BEGIN
	-- Converts the hexadecimal input data to binary
	DECLARE v_password BINARY(64) DEFAULT UNHEX(i_hex_password);
	DECLARE v_salt BINARY(16) DEFAULT UNHEX(i_hex_salt);
	
	INSERT INTO users (
		id,
		password,
		role,
		salt
	) VALUES (
		i_id,
		v_password,
		i_role,
		v_salt
	);
END; !


DELIMITER ;
-- TRIGGERS ----------------------------------------------------------------------------------
DELIMITER !

-- TODO: add triggers


DELIMITER ;
-- USERS AND PRIVILEGES ----------------------------------------------------------------------

/*
 *	Role: mrs_admin
 */
CREATE USER 'mrs_admin'@'localhost'
IDENTIFIED BY PASSWORD '*9A07BE73FB3B837FA8C1294636D9BBBC6307F8EA';  -- TODO: define

REVOKE ALL PRIVILEGES, GRANT OPTION
FROM 'mrs_admin'@'localhost';

GRANT SELECT
ON TABLE mrs_db.admins_authentication
TO 'mrs_admin'@'localhost';

GRANT EXECUTE
ON PROCEDURE mrs_db.insert_admin
TO 'mrs_admin'@'localhost';

GRANT EXECUTE
ON PROCEDURE mrs_db.insert_doctor
TO 'mrs_admin'@'localhost';

GRANT EXECUTE
ON PROCEDURE mrs_db.insert_researcher
TO 'mrs_admin'@'localhost';

GRANT EXECUTE
ON PROCEDURE mrs_db.insert_study_type
TO 'mrs_admin'@'localhost';

/*
 *	Role: mrs_doctor
 */
CREATE USER 'mrs_doctor'@'localhost'
IDENTIFIED BY PASSWORD '*9A07BE73FB3B837FA8C1294636D9BBBC6307F8EA'; -- TODO: define

REVOKE ALL PRIVILEGES, GRANT OPTION
FROM 'mrs_doctor'@'localhost';

GRANT SELECT
ON TABLE mrs_db.doctors_authentication
TO 'mrs_doctor'@'localhost';

GRANT EXECUTE
ON PROCEDURE mrs_db.get_study_types
TO 'mrs_doctor'@'localhost';

/*
 *	Role: mrs_researcher
 */
CREATE USER 'mrs_researcher'@'localhost'
IDENTIFIED BY PASSWORD '*9A07BE73FB3B837FA8C1294636D9BBBC6307F8EA'; -- TODO: define

REVOKE ALL PRIVILEGES, GRANT OPTION
FROM 'mrs_researcher'@'localhost';

GRANT SELECT
ON TABLE mrs_db.researchers_authentication
TO 'mrs_researcher'@'localhost';


-- INITIAL DATA ------------------------------------------------------------------------------

-- TODO: define default study types
-- CALL insert_study_type ('Estudio de eye tracker', 'A');

-- TODO: insert default admin user
/*CALL insert_admin (
	'admin',
	'C7AD44CBAD762A5DA0A452F9E854FDC1E0E7A52A38015F23F3EAB1D80B931DD472634DFAC71CD34EBC35D16AB7FB8A90C81F975113D6C7538DC69DD8DE9077EC',
	'1ADF99D5B48E22EF7672565352BC817D'
);*/

COMMIT;
