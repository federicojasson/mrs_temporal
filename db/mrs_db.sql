
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
	date DATE,
	id BINARY(16), -- UUID: 128 bits = 16 bytes
	observations TEXT,
	patient BINARY(16), -- UUID: 128 bits = 16 bytes
	type BINARY(1),
	PRIMARY KEY(id),
	FOREIGN KEY(patient) REFERENCES patients(id),
	FOREIGN KEY(type) REFERENCES study_types(id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS studies_files (
	checksum BINARY(16), -- Hash function: MD5
	filename VARCHAR(128),
	study BINARY(16),
	PRIMARY KEY(filename, study),
	FOREIGN KEY(study) REFERENCES studies(id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS studies_histories (
	datetime DATETIME,
	modification VARCHAR(32),
	study BINARY(16),
	PRIMARY KEY(datetime, study),
	FOREIGN KEY(study) REFERENCES studies(id)
) ENGINE = InnoDB;


-- VIEWS -------------------------------------------------------------------------------------

CREATE VIEW users_admins_authentication AS
SELECT id, password, salt
FROM users
WHERE role = 'A';

CREATE VIEW users_doctors_authentication AS
SELECT id, password, salt
FROM users
WHERE role = 'D';

CREATE VIEW users_researchers_authentication AS
SELECT id, password, salt
FROM users
WHERE role = 'R';


-- PROCEDURES --------------------------------------------------------------------------------
DELIMITER !

/*
 *	Inserts a patient.
 */
CREATE PROCEDURE insert_patient (
	IN i_birth_date DATE, -- Format: YYYY-MM-DD
	IN i_blood_type BINARY(3),
	IN i_hex_id BINARY(32), -- Hexadecimal representation of the ID
	IN i_gender BINARY(1),
	IN i_name VARCHAR(128),
	IN i_user VARCHAR(32)
)
BEGIN
	-- Converts the hexadecimal input data to binary
	DECLARE v_id BINARY(16) DEFAULT UNHEX(i_hex_id);
	
	INSERT INTO patients (
		birth_date,
		blood_type,
		id,
		gender,
		name,
		user
	) VALUES (
		i_birth_date,
		i_blood_type,
		v_id,
		i_gender,
		i_name,
		i_user
	);
END; !

/*
 *	Inserts a study.
 */
CREATE PROCEDURE insert_study (
	IN i_date DATE, -- Format: YYYY-MM-DD
	IN i_hex_id BINARY(32), -- Hexadecimal representation of the ID
	IN i_observations TEXT,
	IN i_hex_patient BINARY(32), -- Hexadecimal representation of the patient ID
	IN i_type BINARY(1)
)
BEGIN
	-- Converts the hexadecimal input data to binary
	DECLARE v_id BINARY(16) DEFAULT UNHEX(i_hex_id);
	DECLARE v_patient BINARY(16) DEFAULT UNHEX(i_hex_patient);
	
	INSERT INTO studies (
		date,
		id,
		observations,
		patient,
		type
	) VALUES (
		i_date,
		v_id,
		i_observations,
		v_patient,
		i_type
	);
	
	-- TODO: add a studies_histories row for creation?
END; !

/*
 *	Inserts a study's file.
 */
CREATE PROCEDURE insert_study_file (
	IN i_hex_checksum BINARY(32), -- Hexadecimal representation of the checksum
	IN i_filename VARCHAR(128),
	IN i_hex_study BINARY(32) -- Hexadecimal representation of the study ID
)
BEGIN
	-- Converts the hexadecimal input data to binary
	DECLARE v_checksum BINARY(16) DEFAULT UNHEX(i_hex_checksum);
	DECLARE v_study BINARY(16) DEFAULT UNHEX(i_hex_study);
	
	INSERT INTO studies_files (
		checksum,
		filename,
		study
	) VALUES (
		v_checksum,
		i_filename,
		v_study
	);
	
	-- TODO: add a studies_histories row for creation?
END; !

/*
 *	Inserts a study type.
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
 *	Inserts a user.
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

/*
 *	Inserts a user with admin role.
 */
CREATE PROCEDURE insert_user_admin (
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
 *	Inserts a user with doctor role.
 */
CREATE PROCEDURE insert_user_doctor (
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
 *	Inserts a user with researcher role.
 */
CREATE PROCEDURE insert_user_researcher (
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
 *	Updates a study's information.
 */
CREATE PROCEDURE update_study (
	IN i_hex_id BINARY(32), -- Hexadecimal representation of the ID
	IN i_observations TEXT
)
BEGIN
	-- Converts the hexadecimal input data to binary
	DECLARE v_id BINARY(16) DEFAULT UNHEX(i_hex_id);
	
	UPDATE studies
	SET observations = i_observations
	WHERE id = v_id
	LIMIT 1;
	
	-- TODO: add a studies_histories row for modification?
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

GRANT EXECUTE
ON PROCEDURE mrs_db.insert_study_type
TO 'mrs_admin'@'localhost';

GRANT EXECUTE
ON PROCEDURE mrs_db.insert_user_admin
TO 'mrs_admin'@'localhost';

GRANT EXECUTE
ON PROCEDURE mrs_db.insert_user_doctor
TO 'mrs_admin'@'localhost';

GRANT EXECUTE
ON PROCEDURE mrs_db.insert_user_researcher
TO 'mrs_admin'@'localhost';

GRANT SELECT
ON TABLE mrs_db.users_admins_authentication
TO 'mrs_admin'@'localhost';

/*
 *	Role: mrs_doctor
 */
CREATE USER 'mrs_doctor'@'localhost'
IDENTIFIED BY PASSWORD '*9A07BE73FB3B837FA8C1294636D9BBBC6307F8EA'; -- TODO: define

REVOKE ALL PRIVILEGES, GRANT OPTION
FROM 'mrs_doctor'@'localhost';

GRANT EXECUTE
ON PROCEDURE mrs_db.insert_patient
TO 'mrs_doctor'@'localhost';

GRANT EXECUTE
ON PROCEDURE mrs_db.insert_study
TO 'mrs_doctor'@'localhost';

GRANT EXECUTE
ON PROCEDURE mrs_db.insert_study_file
TO 'mrs_doctor'@'localhost';

GRANT EXECUTE
ON PROCEDURE mrs_db.update_study
TO 'mrs_doctor'@'localhost';

GRANT SELECT
ON TABLE mrs_db.studies
TO 'mrs_doctor'@'localhost';

GRANT SELECT
ON TABLE mrs_db.study_types
TO 'mrs_doctor'@'localhost';

GRANT SELECT
ON TABLE mrs_db.users_doctors_authentication
TO 'mrs_doctor'@'localhost';

/*
 *	Role: mrs_researcher
 */
CREATE USER 'mrs_researcher'@'localhost'
IDENTIFIED BY PASSWORD '*9A07BE73FB3B837FA8C1294636D9BBBC6307F8EA'; -- TODO: define

REVOKE ALL PRIVILEGES, GRANT OPTION
FROM 'mrs_researcher'@'localhost';

GRANT SELECT
ON TABLE mrs_db.users_researchers_authentication
TO 'mrs_researcher'@'localhost';


-- INITIAL DATA ------------------------------------------------------------------------------

-- TODO: define default study types
-- CALL insert_study_type ('Estudio de eye tracker', 'A');

-- TODO: insert default admin user
/*CALL insert_user_admin (
	'admin',
	'C7AD44CBAD762A5DA0A452F9E854FDC1E0E7A52A38015F23F3EAB1D80B931DD472634DFAC71CD34EBC35D16AB7FB8A90C81F975113D6C7538DC69DD8DE9077EC',
	'1ADF99D5B48E22EF7672565352BC817D'
);*/

COMMIT;
