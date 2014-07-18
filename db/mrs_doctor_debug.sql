
START TRANSACTION; -- Executes all statements or rollbacks

SET NAMES 'utf8';
SET CHARACTER SET utf8;

USE mrs_db

SELECT id, HEX(password) AS password, HEX(salt) AS salt
FROM users_doctors_authentication;

CALL insert_patient (
	'1991-06-25',
	'O+',
	'6c6e05fa4e0845838ed839f913ea06d6',
	'M',
	'Federico',
	'doctor'
);

CALL insert_study (
	'2014-07-16',
	'9c3f374d8ed2443282c21afd974c4a96',
	'Observación 1',
	'6c6e05fa4e0845838ed839f913ea06d6',
	'BT'
);

CALL insert_study_file (
	'333c8e6f0e7f918b944ab997b075a3ee',
	'archivo1.txt',
	'9c3f374d8ed2443282c21afd974c4a96'
);

CALL insert_study_file (
	'c07c2049ed098ce78ff9f0b433d9f6fa',
	'archivo2.txt',
	'9c3f374d8ed2443282c21afd974c4a96'
);

CALL update_study (
	'9c3f374d8ed2443282c21afd974c4a96',
	'Observación 2'
);

CALL delete_study_file (
	'archivo1.txt',
	'9c3f374d8ed2443282c21afd974c4a96'
);

SELECT birth_date, blood_type, HEX(id) AS id, gender, name, user_id
FROM patients
WHERE user_id LIKE BINARY 'doctor';

SELECT date, HEX(id) AS id, observations, HEX(patient_id) AS patient_id, study_type_id
FROM studies
WHERE id = UNHEX('9c3f374d8ed2443282c21afd974c4a96')
ORDER BY date DESC;

SELECT datetime, id, modification, HEX(study_id) AS study_id
FROM studies_histories
WHERE study_id = UNHEX('9c3f374d8ed2443282c21afd974c4a96')
ORDER BY datetime DESC;

SELECT HEX(checksum) AS checksum, filename, HEX(study_id) AS study_id
FROM studies_files
WHERE study_id = UNHEX('9c3f374d8ed2443282c21afd974c4a96');

COMMIT;
