
USE mrs_db

SELECT id, HEX(password_hash) AS password_hash, HEX(salt) AS salt
FROM users_doctors_authentication_data;

CALL insert_patient (
	'1991-06-25',
	'6',
	'M',
	UNHEX('6c6e05fa4e0845838ed839f913ea06d6'),
	'Federico',
	'Observaciones del paciente',
	'doctor'
);

CALL insert_study (
	'Síntomas',
	'2014-07-16',
	'Diagnóstico',
	UNHEX('9c3f374d8ed2443282c21afd974c4a96'),
	'Indicaciones',
	'Observación 1',
	UNHEX('6c6e05fa4e0845838ed839f913ea06d6'),
	'BT'
);

CALL insert_study (
	'Síntomas',
	'2014-07-16',
	'Diagnóstico',
	UNHEX('8f3f374d8ed2443282c21afd974c4a96'),
	'Indicaciones',
	'Observación 2',
	UNHEX('6c6e05fa4e0845838ed839f913ea06d6'),
	'BT'
);

CALL insert_study (
	'Síntomas',
	'2014-07-16',
	'Diagnóstico',
	UNHEX('223f374d8ed2443282c21afd974c4a96'),
	'Indicaciones',
	'Observación 3',
	UNHEX('6c6e05fa4e0845838ed839f913ea06d6'),
	'ET'
);

CALL insert_study_file (
	UNHEX('333c8e6f0e7f918b944ab997b075a3ee'),
	'archivo1.txt',
	UNHEX('9c3f374d8ed2443282c21afd974c4a96')
);

CALL insert_study_file (
	UNHEX('c07c2049ed098ce78ff9f0b433d9f6fa'),
	'archivo2.txt',
	UNHEX('9c3f374d8ed2443282c21afd974c4a96')
);

CALL update_study (
	'Síntomas',
	'Diagnóstico',
	UNHEX('9c3f374d8ed2443282c21afd974c4a96'),
	'Indicaciones',
	'Observación 1'
);

CALL delete_study_file (
	'archivo1.txt',
	UNHEX('9c3f374d8ed2443282c21afd974c4a96')
);

SELECT birth_date, blood_type, gender, HEX(id) AS id, name, observations, user_id
FROM patients
WHERE user_id LIKE BINARY 'doctor';

SELECT causes, date, diagnosis, HEX(id) AS id, indications, observations, HEX(patient_id) AS patient_id, study_type_id
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
