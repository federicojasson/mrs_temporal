
-- CLEANUP -----------------------------------------------------------------------------------

DROP USER mrs_admin@localhost;
DROP USER mrs_doctor@localhost;
DROP USER mrs_researcher@localhost;
DROP DATABASE IF EXISTS mrs_db;


-- INITIALIZATION AND CONFIGURATION ----------------------------------------------------------

SET NAMES 'utf8';
SET CHARACTER SET utf8;

CREATE DATABASE IF NOT EXISTS mrs_db
CHARACTER SET utf8;

USE mrs_db


-- TABLES ------------------------------------------------------------------------------------

/*
 *	Role allowed values: ['A', 'D', 'R']
 *	'A' = Admin
 *	'D' = Doctor
 *	'R' = Researcher
 */
CREATE TABLE IF NOT EXISTS users (
	id VARCHAR(32),
	password_hash BINARY(64), -- Hash function: SHA-512
	role BINARY(1),
	salt BINARY(64), -- Salt: 512 bits = 64 bytes
	PRIMARY KEY(id)
) ENGINE = InnoDB;

/*
 *	Blood type allowed values: ['0', '1', '2', '3', '4', '5', '6', '7']
 *	'0' = O-
 *	'1' = O+
 *	'2' = A-
 *	'3' = A+
 *	'4' = B-
 *	'5' = B+
 *	'6' = AB-
  *	'7' = AB+
 *
 *	Gender allowed values: ['F', 'M']
 *	'F' = Female
 *	'M' = Male
 */
CREATE TABLE IF NOT EXISTS patients (
	birth_date DATE,
	blood_type BINARY(1),
	id BINARY(16), -- UUID: 128 bits = 16 bytes
	gender BINARY(1),
	name VARCHAR(128),
	user_id VARCHAR(32),
	PRIMARY KEY(id),
	FOREIGN KEY(user_id) REFERENCES users(id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS study_types (
	description VARCHAR(32),
	id BINARY(2),
	PRIMARY KEY(id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS studies (
	date DATE,
	id BINARY(16), -- UUID: 128 bits = 16 bytes
	observations TEXT,
	patient_id BINARY(16), -- UUID: 128 bits = 16 bytes
	study_type_id BINARY(2),
	PRIMARY KEY(id),
	FOREIGN KEY(patient_id) REFERENCES patients(id),
	FOREIGN KEY(study_type_id) REFERENCES study_types(id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS studies_files (
	checksum BINARY(16), -- Hash function: MD5
	filename VARCHAR(128),
	study_id BINARY(16),
	PRIMARY KEY(filename, study_id),
	FOREIGN KEY(study_id) REFERENCES studies(id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS studies_histories (
	datetime DATETIME,
	id BIGINT AUTO_INCREMENT,
	modification VARCHAR(160),
	study_id BINARY(16),
	PRIMARY KEY(id),
	FOREIGN KEY(study_id) REFERENCES studies(id)
) ENGINE = InnoDB;


-- VIEWS -------------------------------------------------------------------------------------

CREATE VIEW users_admins_authentication_data AS
SELECT id, password_hash, salt
FROM users
WHERE role = 'A';

CREATE VIEW users_doctors_authentication_data AS
SELECT id, password_hash, salt
FROM users
WHERE role = 'D';

CREATE VIEW users_researchers_authentication_data AS
SELECT id, password_hash, salt
FROM users
WHERE role = 'R';


-- PROCEDURES --------------------------------------------------------------------------------
DELIMITER !

/*
 *	Deletes a study's file.
 */
CREATE PROCEDURE delete_study_file (
	IN i_filename VARCHAR(128),
	IN i_study_id BINARY(16)
)
BEGIN
	DELETE FROM studies_files
	WHERE study_id = i_study_id AND filename LIKE BINARY i_filename;
END; !

/*
 *	Inserts a patient.
 */
CREATE PROCEDURE insert_patient (
	IN i_birth_date DATE,
	IN i_blood_type BINARY(1),
	IN i_id BINARY(16),
	IN i_gender BINARY(1),
	IN i_name VARCHAR(128),
	IN i_user_id VARCHAR(32)
)
BEGIN
	INSERT INTO patients (
		birth_date,
		blood_type,
		id,
		gender,
		name,
		user_id
	) VALUES (
		i_birth_date,
		i_blood_type,
		i_id,
		i_gender,
		i_name,
		i_user_id
	);
END; !

/*
 *	Inserts a study.
 */
CREATE PROCEDURE insert_study (
	IN i_date DATE,
	IN i_id BINARY(16),
	IN i_observations TEXT,
	IN i_patient_id BINARY(16),
	IN i_study_type_id BINARY(2)
)
BEGIN
	INSERT INTO studies (
		date,
		id,
		observations,
		patient_id,
		study_type_id
	) VALUES (
		i_date,
		i_id,
		i_observations,
		i_patient_id,
		i_study_type_id
	);
END; !

/*
 *	Inserts a study's file.
 */
CREATE PROCEDURE insert_study_file (
	IN i_checksum BINARY(16),
	IN i_filename VARCHAR(128),
	IN i_study_id BINARY(16)
)
BEGIN
	INSERT INTO studies_files (
		checksum,
		filename,
		study_id
	) VALUES (
		i_checksum,
		i_filename,
		i_study_id
	);
END; !

/*
 *	Inserts a study type.
 */
CREATE PROCEDURE insert_study_type (
	IN i_description VARCHAR(32),
	IN i_id BINARY(2)
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
	IN i_password_hash BINARY(64),
	IN i_role BINARY(1),
	IN i_salt BINARY(64)
)
BEGIN
	INSERT INTO users (
		id,
		password_hash,
		role,
		salt
	) VALUES (
		i_id,
		i_password_hash,
		i_role,
		i_salt
	);
END; !

/*
 *	Inserts a user with admin role.
 */
CREATE PROCEDURE insert_user_admin (
	IN i_id VARCHAR(32),
	IN i_password_hash BINARY(64),
	IN i_salt BINARY(64)
)
BEGIN
	-- Initializes the user role
	DECLARE v_role BINARY(1) DEFAULT 'A';
	
	CALL insert_user(
		i_id,
		i_password_hash,
		v_role,
		i_salt
	);
END; !

/*
 *	Inserts a user with doctor role.
 */
CREATE PROCEDURE insert_user_doctor (
	IN i_id VARCHAR(32),
	IN i_password_hash BINARY(64),
	IN i_salt BINARY(64)
)
BEGIN
	-- Initializes the user role
	DECLARE v_role BINARY(1) DEFAULT 'D';
	
	CALL insert_user(
		i_id,
		i_password_hash,
		v_role,
		i_salt
	);
END; !

/*
 *	Inserts a user with researcher role.
 */
CREATE PROCEDURE insert_user_researcher (
	IN i_id VARCHAR(32),
	IN i_password_hash BINARY(64),
	IN i_salt BINARY(64)
)
BEGIN
	-- Initializes the user role
	DECLARE v_role BINARY(1) DEFAULT 'R';
	
	CALL insert_user(
		i_id,
		i_password_hash,
		v_role,
		i_salt
	);
END; !

/*
 *	Updates a study's information.
 */
CREATE PROCEDURE update_study (
	IN i_id BINARY(16),
	IN i_observations TEXT
)
BEGIN
	UPDATE studies
	SET observations = i_observations
	WHERE id = i_id
	LIMIT 1;
END; !


DELIMITER ;
-- TRIGGERS ----------------------------------------------------------------------------------
DELIMITER !

/*
 *	Inserts a history entry to register that a study's file has been deleted.
 */
CREATE TRIGGER after_delete_study_file
AFTER DELETE ON studies_files
FOR EACH ROW
BEGIN
	-- Gets the current date and time
	DECLARE v_datetime DATETIME DEFAULT UTC_TIMESTAMP();
	
	-- Initializes the modification statement and study ID
	DECLARE v_modification VARCHAR(160) DEFAULT CONCAT('Archivo eliminado: ', OLD.filename);
	DECLARE v_study_id BINARY(16) DEFAULT OLD.study_id;
	
	INSERT INTO studies_histories (
		datetime,
		modification,
		study_id
	) VALUES (
		v_datetime,
		v_modification,
		v_study_id
	);
END; !

/*
 *	Inserts a history entry to register that a study has been inserted.
 */
CREATE TRIGGER after_insert_study
AFTER INSERT ON studies
FOR EACH ROW
BEGIN
	-- Gets the current date and time
	DECLARE v_datetime DATETIME DEFAULT UTC_TIMESTAMP();
	
	-- Initializes the modification statement and study ID
	DECLARE v_modification VARCHAR(160) DEFAULT 'Estudio ingresado';
	DECLARE v_id BINARY(16) DEFAULT NEW.id;
	
	INSERT INTO studies_histories (
		datetime,
		modification,
		study_id
	) VALUES (
		v_datetime,
		v_modification,
		v_id
	);
END; !

/*
 *	Inserts a history entry to register that a study's file has been inserted.
 */
CREATE TRIGGER after_insert_study_file
AFTER INSERT ON studies_files
FOR EACH ROW
BEGIN
	-- Gets the current date and time
	DECLARE v_datetime DATETIME DEFAULT UTC_TIMESTAMP();
	
	-- Initializes the modification statement and study_id ID
	DECLARE v_modification VARCHAR(160) DEFAULT CONCAT('Archivo ingresado: ', NEW.filename);
	DECLARE v_study_id BINARY(16) DEFAULT NEW.study_id;
	
	INSERT INTO studies_histories (
		datetime,
		modification,
		study_id
	) VALUES (
		v_datetime,
		v_modification,
		v_study_id
	);
END; !

/*
 *	Inserts a history entry to register that a study's information has been updated.
 */
CREATE TRIGGER after_update_study
AFTER UPDATE ON studies
FOR EACH ROW
BEGIN
	-- Gets the current date and time
	DECLARE v_datetime DATETIME DEFAULT UTC_TIMESTAMP();
	
	-- Initializes the modification statement and study ID
	DECLARE v_modification VARCHAR(160) DEFAULT 'Estudio modificado';
	DECLARE v_study_id BINARY(16) DEFAULT OLD.id;
	
	INSERT INTO studies_histories (
		datetime,
		modification,
		study_id
	) VALUES (
		v_datetime,
		v_modification,
		v_study_id
	);
END; !


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
ON TABLE mrs_db.users_admins_authentication_data
TO 'mrs_admin'@'localhost';

/*
 *	Role: mrs_doctor
 */
CREATE USER 'mrs_doctor'@'localhost'
IDENTIFIED BY PASSWORD '*9A07BE73FB3B837FA8C1294636D9BBBC6307F8EA'; -- TODO: define

REVOKE ALL PRIVILEGES, GRANT OPTION
FROM 'mrs_doctor'@'localhost';

GRANT EXECUTE
ON PROCEDURE mrs_db.delete_study_file
TO 'mrs_doctor'@'localhost';

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
ON TABLE mrs_db.patients
TO 'mrs_doctor'@'localhost';

GRANT SELECT
ON TABLE mrs_db.studies
TO 'mrs_doctor'@'localhost';

GRANT SELECT
ON TABLE mrs_db.studies_files
TO 'mrs_doctor'@'localhost';

GRANT SELECT
ON TABLE mrs_db.studies_histories
TO 'mrs_doctor'@'localhost';

GRANT SELECT
ON TABLE mrs_db.study_types
TO 'mrs_doctor'@'localhost';

GRANT SELECT
ON TABLE mrs_db.users_doctors_authentication_data
TO 'mrs_doctor'@'localhost';

/*
 *	Role: mrs_researcher
 */
CREATE USER 'mrs_researcher'@'localhost'
IDENTIFIED BY PASSWORD '*9A07BE73FB3B837FA8C1294636D9BBBC6307F8EA'; -- TODO: define

REVOKE ALL PRIVILEGES, GRANT OPTION
FROM 'mrs_researcher'@'localhost';

GRANT SELECT
ON TABLE mrs_db.users_researchers_authentication_data
TO 'mrs_researcher'@'localhost';
