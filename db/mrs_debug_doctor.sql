
USE mrs_db

SELECT id, HEX(password_hash) AS password_hash, HEX(salt) AS salt
FROM users_doctors_authentication_data;

CALL insert_patient (
	'1991-06-25',
	'6',
	0x6c6e05fa4e0845838ed839f913ea06d6b,
	'M',
	'Federico',
	'doctor'
);

CALL insert_study (
	'2014-07-16',
	0x9c3f374d8ed2443282c21afd974c4a96b,
	'Observación 1',
	0x6c6e05fa4e0845838ed839f913ea06d6b,
	'BT'
);

CALL insert_study_file (
	0x333c8e6f0e7f918b944ab997b075a3eeb,
	'archivo1.txt',
	0x9c3f374d8ed2443282c21afd974c4a96b
);

CALL insert_study_file (
	0xc07c2049ed098ce78ff9f0b433d9f6fab,
	'archivo2.txt',
	0x9c3f374d8ed2443282c21afd974c4a96b
);

CALL update_study (
	0x9c3f374d8ed2443282c21afd974c4a96b,
	'Observación 2'
);

CALL delete_study_file (
	'archivo1.txt',
	0x9c3f374d8ed2443282c21afd974c4a96b
);

SELECT birth_date, blood_type, HEX(id) AS id, gender, name, user_id
FROM patients
WHERE user_id LIKE BINARY 'doctor';

SELECT date, HEX(id) AS id, observations, HEX(patient_id) AS patient_id, study_type_id
FROM studies
WHERE id = 0x9c3f374d8ed2443282c21afd974c4a96b
ORDER BY date DESC;

SELECT datetime, id, modification, HEX(study_id) AS study_id
FROM studies_histories
WHERE study_id = 0x9c3f374d8ed2443282c21afd974c4a96b
ORDER BY datetime DESC;

SELECT HEX(checksum) AS checksum, filename, HEX(study_id) AS study_id
FROM studies_files
WHERE study_id = 0x9c3f374d8ed2443282c21afd974c4a96b;
