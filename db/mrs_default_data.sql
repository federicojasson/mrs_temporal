
-- DEFAULT DATA ------------------------------------------------------------------------------

-- Inserts study types
CALL insert_study_type('Estudio de eye tracker', 'ET');
CALL insert_study_type('Análisis de sangre', 'BT');
CALL insert_study_type('Análisis de orina', 'UA');

-- Inserts a user with admin role
CALL insert_user_admin (
	'admin',
	'C7AD44CBAD762A5DA0A452F9E854FDC1E0E7A52A38015F23F3EAB1D80B931DD472634DFAC71CD34EBC35D16AB7FB8A90C81F975113D6C7538DC69DD8DE9077EC',
	'1ADF99D5B48E22EF7672565352BC817D'
);
