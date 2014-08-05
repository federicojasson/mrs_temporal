
-- DEFAULT DATA ------------------------------------------------------------------------------

-- Inserts study types
CALL insert_study_type('Estudio de eye tracker', 'ET');
CALL insert_study_type('Análisis de sangre', 'BT');
CALL insert_study_type('Análisis de orina', 'UA');

-- Inserts a user with admin role
CALL insert_user (
	'admin',
	UNHEX('88B2ED7E2ED1BC7A1E2F9B555B7051270581CCDED2EDCE5D0224A2C051109EAD897042DF8385F98DC6C700774A20597D2D4457F8A1D1438C6125E9027CCB4215'),
	'A',
	UNHEX('1F49AC8FC75B199918AB740DCD829606512E443609A6EF34DA6205E7C2B06BF21D069520C5ED7832487075C57B091288A50D0581161014009F8B00558F039269')
);
