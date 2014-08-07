
-- DEFAULT DATA ------------------------------------------------------------------------------

-- Inserts study types
CALL insert_study_type('Estudio de eye tracker', 'ET');
CALL insert_study_type('Análisis de sangre', 'BT');
CALL insert_study_type('Análisis de orina', 'UA');

-- Inserts a user with doctor role
CALL insert_user (
	'doctor',
	UNHEX('824D072B09534E6B656726D33AB60FEA5CD45B793BE0E82B56668ABCDCC31E3F601A45DC181E3C90BEC995ADE8AF9149F4F180BE3B596DBAF1C77EF76E10531A'),
	'D',
	UNHEX('ADF59DF4453D42190DA5F16CDB4488698865CF74CBA19ABFF258136E0A482BAAC3843A98713D177CB92FC777D1C157F6D2F06A7581EB085B2D1878E8A63C51C1')
);
