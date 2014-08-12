
-- DEFAULT DATA ------------------------------------------------------------------------------

-- Inserts study types
CALL insert_study_type('Biometría hemática', 'BH');
CALL insert_study_type('Química sanguínea', 'QS');
CALL insert_study_type('Perfil de lípidos', 'PL');
CALL insert_study_type('Glucosa', 'GL');
CALL insert_study_type('Colesterol', 'CL');
CALL insert_study_type('Triglicéridos', 'T4');
CALL insert_study_type('Examen general de orina', 'UA');
CALL insert_study_type('Examen general de sangre', 'BT');
CALL insert_study_type('Reacciones febriles', 'RF');
CALL insert_study_type('Exudado faríngeo', 'EF');
CALL insert_study_type('Grupo sanguíneo', 'GS');
CALL insert_study_type('Examen coproparasitoscópico', 'CP');
CALL insert_study_type('Examen coprológico', 'CG');
CALL insert_study_type('Búsqueda de amiba en fresco', 'BA');
CALL insert_study_type('Prueba de embarazo', 'PE');
CALL insert_study_type('VIH', 'VH');
CALL insert_study_type('VDRL', 'VD');
CALL insert_study_type('Tiempos de coagulación', 'TC');
CALL insert_study_type('Perfil reumático', 'PR');
CALL insert_study_type('Pruebas de funcionamiento hepático', 'PH');
CALL insert_study_type('Consulta', 'CS');
CALL insert_study_type('Estudio de eye tracker', 'ET');

-- Inserts a user with doctor role
CALL insert_user (
	'doctor',
	UNHEX('824D072B09534E6B656726D33AB60FEA5CD45B793BE0E82B56668ABCDCC31E3F601A45DC181E3C90BEC995ADE8AF9149F4F180BE3B596DBAF1C77EF76E10531A'),
	'D',
	UNHEX('ADF59DF4453D42190DA5F16CDB4488698865CF74CBA19ABFF258136E0A482BAAC3843A98713D177CB92FC777D1C157F6D2F06A7581EB085B2D1878E8A63C51C1')
);
