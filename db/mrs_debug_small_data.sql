USE mrs_db

# Se creara el paciente f8248d5a6ef74e0f97587282ad20d997
CALL insert_patient ('1943-03-04','4','F', UNHEX('f8248d5a6ef74e0f97587282ad20d997'),'Tabor, suellen Pamella','Fumador.','doctor');
# Se craran 3 estudios para el paciente f8248d5a6ef74e0f97587282ad20d997
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-11','Diferencial: Resfrio común.',UNHEX('c4789e050d0a493d8af9d485c26b2928'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('f8248d5a6ef74e0f97587282ad20d997'),'UA');
# Se craran 1 archivos para el estudio c4789e050d0a493d8af9d485c26b2928
CALL insert_study_file (UNHEX('f267c69efdc7451684db47f12f206a7c'),'Archivo 0.jpg',UNHEX('c4789e050d0a493d8af9d485c26b2928'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('21a53c5d881b49088b0b1c79234692ad'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('f8248d5a6ef74e0f97587282ad20d997'),'BT');
# Se craran 2 archivos para el estudio 21a53c5d881b49088b0b1c79234692ad
CALL insert_study_file (UNHEX('ccaea69200654ce082e45a008f83957e'),'Archivo 0.doc',UNHEX('21a53c5d881b49088b0b1c79234692ad'));
CALL insert_study_file (UNHEX('132b8998897c4d5289a6de2ac506b158'),'Archivo 1.txt',UNHEX('21a53c5d881b49088b0b1c79234692ad'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('d762b4acdf4e48a7b979b9f7d4fae130'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('f8248d5a6ef74e0f97587282ad20d997'),'UA');
# Se craran 2 archivos para el estudio d762b4acdf4e48a7b979b9f7d4fae130
CALL insert_study_file (UNHEX('cf470d6878974289b2c7283cd1bf4129'),'Archivo 0.doc',UNHEX('d762b4acdf4e48a7b979b9f7d4fae130'));
CALL insert_study_file (UNHEX('98def7aa8fc84ced8e2e43186ebeda93'),'Archivo 1.txt',UNHEX('d762b4acdf4e48a7b979b9f7d4fae130'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 1e048160059b453da248acc5bb599e8d
CALL insert_patient ('1961-07-06','4','M', UNHEX('1e048160059b453da248acc5bb599e8d'),'Fitch, darill ryley','Diabetes.','doctor');
# Se craran 2 estudios para el paciente 1e048160059b453da248acc5bb599e8d
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('32759e5d1efa4e709b5b3c03e6d61ba9'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Programada nueva consulta en 5 días.',UNHEX('1e048160059b453da248acc5bb599e8d'),'ET');
# Se craran 2 archivos para el estudio 32759e5d1efa4e709b5b3c03e6d61ba9
CALL insert_study_file (UNHEX('976589dcff4f497e88ebfe8658dc4b81'),'Archivo 0.pdf',UNHEX('32759e5d1efa4e709b5b3c03e6d61ba9'));
CALL insert_study_file (UNHEX('e1cb5d68dff645b39c7d7a3fa17787fe'),'Archivo 1.doc',UNHEX('32759e5d1efa4e709b5b3c03e6d61ba9'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-11','Gripe estacional.',UNHEX('8f876b2a45a74dc68e2c19dae1b4ce17'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('1e048160059b453da248acc5bb599e8d'),'ET');
# Se craran 2 archivos para el estudio 8f876b2a45a74dc68e2c19dae1b4ce17
CALL insert_study_file (UNHEX('f111507c4f3046e2b6594c4bd0618cc8'),'Archivo 0.doc',UNHEX('8f876b2a45a74dc68e2c19dae1b4ce17'));
CALL insert_study_file (UNHEX('655eb0fe75f6420fa758341c7ff1544b'),'Archivo 1.doc',UNHEX('8f876b2a45a74dc68e2c19dae1b4ce17'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente ea95ef6f654b423086f4f9a38fc44556
CALL insert_patient ('1956-01-25','1','F', UNHEX('ea95ef6f654b423086f4f9a38fc44556'),'Moorman, issy','Anemia falciforme.','doctor');
# Se craran 4 estudios para el paciente ea95ef6f654b423086f4f9a38fc44556
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-10','Diferencial: Resfrio común.',UNHEX('1da4819f21864bd88e0a781b98079fd3'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('ea95ef6f654b423086f4f9a38fc44556'),'UA');
# Se craran 1 archivos para el estudio 1da4819f21864bd88e0a781b98079fd3
CALL insert_study_file (UNHEX('cde7cf099a784da29f649b05d2214ed7'),'Archivo 0.txt',UNHEX('1da4819f21864bd88e0a781b98079fd3'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('2741f3951b644ff79becb4744d1b504a'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('ea95ef6f654b423086f4f9a38fc44556'),'ET');
# Se craran 2 archivos para el estudio 2741f3951b644ff79becb4744d1b504a
CALL insert_study_file (UNHEX('177123433a284ebdae5d48049bcbe094'),'Archivo 0.doc',UNHEX('2741f3951b644ff79becb4744d1b504a'));
CALL insert_study_file (UNHEX('e766f6fff76c4a75a8652e88025a4077'),'Archivo 1.doc',UNHEX('2741f3951b644ff79becb4744d1b504a'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-07','Diferencial: Resfrio común.',UNHEX('3bed4907c6d544d697286382c72e2226'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Programada nueva consulta en 5 días.',UNHEX('ea95ef6f654b423086f4f9a38fc44556'),'BT');
# Se craran 2 archivos para el estudio 3bed4907c6d544d697286382c72e2226
CALL insert_study_file (UNHEX('31f715ee8afe4732a03a914e3e634c38'),'Archivo 0.txt',UNHEX('3bed4907c6d544d697286382c72e2226'));
CALL insert_study_file (UNHEX('dcfd0b5e4fcf4015a747c1f75f2b0a05'),'Archivo 1.txt',UNHEX('3bed4907c6d544d697286382c72e2226'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-06','Diferencial: Gripe H1N1',UNHEX('941c49fc56264c84bd4ef3bec02f3a63'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','Programada nueva consulta en 5 días.',UNHEX('ea95ef6f654b423086f4f9a38fc44556'),'ET');
# Se craran 0 archivos para el estudio 941c49fc56264c84bd4ef3bec02f3a63
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 11369bc49ef846b8850661da26e1a9ad
CALL insert_patient ('1965-01-18','6','F', UNHEX('11369bc49ef846b8850661da26e1a9ad'),'Dame, Gabbi','Diabetes.','doctor');
# Se craran 3 estudios para el paciente 11369bc49ef846b8850661da26e1a9ad
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-06','Posibles alergias estacionales.',UNHEX('a2423cab23d449f0895d25daade6e83b'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('11369bc49ef846b8850661da26e1a9ad'),'BT');
# Se craran 1 archivos para el estudio a2423cab23d449f0895d25daade6e83b
CALL insert_study_file (UNHEX('e1751234df304204a8450f50b745dd32'),'Archivo 0.jpg',UNHEX('a2423cab23d449f0895d25daade6e83b'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-05','',UNHEX('912627bd7d834cb98a99463f8ba83bc0'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('11369bc49ef846b8850661da26e1a9ad'),'UA');
# Se craran 1 archivos para el estudio 912627bd7d834cb98a99463f8ba83bc0
CALL insert_study_file (UNHEX('6de1214b2e7648cf822f3ed52132055e'),'Archivo 0.doc',UNHEX('912627bd7d834cb98a99463f8ba83bc0'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-07','Resfrio común.',UNHEX('b3ba70427f534c5d85f8ebd7e23266a9'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('11369bc49ef846b8850661da26e1a9ad'),'BT');
# Se craran 2 archivos para el estudio b3ba70427f534c5d85f8ebd7e23266a9
CALL insert_study_file (UNHEX('ad8a1cf435cf4f64bb9fd24b8c89ff30'),'Archivo 0.txt',UNHEX('b3ba70427f534c5d85f8ebd7e23266a9'));
CALL insert_study_file (UNHEX('e1c4d6c885fa4a559be324664be1dfe0'),'Archivo 1.pdf',UNHEX('b3ba70427f534c5d85f8ebd7e23266a9'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 67b804c6dee5446687f39565d32c49a7
CALL insert_patient ('1954-10-30','7','M', UNHEX('67b804c6dee5446687f39565d32c49a7'),'Tittarelli, calhoun','Fumador.','doctor');
# Se craran 3 estudios para el paciente 67b804c6dee5446687f39565d32c49a7
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-07','Resfrio común.',UNHEX('c8a6f5ae493b495e8ad575f0812c17df'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('67b804c6dee5446687f39565d32c49a7'),'UA');
# Se craran 2 archivos para el estudio c8a6f5ae493b495e8ad575f0812c17df
CALL insert_study_file (UNHEX('73751d4430254dd5944810af57a51fa5'),'Archivo 0.pdf',UNHEX('c8a6f5ae493b495e8ad575f0812c17df'));
CALL insert_study_file (UNHEX('7ce505b8ea13453fa3c609e034b9b954'),'Archivo 1.doc',UNHEX('c8a6f5ae493b495e8ad575f0812c17df'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-10','Resfrio común.',UNHEX('c2205a72362b49b4bea8ed79bfffe558'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('67b804c6dee5446687f39565d32c49a7'),'ET');
# Se craran 0 archivos para el estudio c2205a72362b49b4bea8ed79bfffe558
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-07','Posibles alergias estacionales.',UNHEX('e0a2dcfa6928476fa4a9beff5af31a62'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Programada nueva consulta en 5 días.',UNHEX('67b804c6dee5446687f39565d32c49a7'),'ET');
# Se craran 1 archivos para el estudio e0a2dcfa6928476fa4a9beff5af31a62
CALL insert_study_file (UNHEX('e60036efb9414d17aae7507a72f8fa07'),'Archivo 0.doc',UNHEX('e0a2dcfa6928476fa4a9beff5af31a62'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente baaf151e39ba4a3f8e4f65c7e2e19d7a
CALL insert_patient ('1935-12-04','5','M', UNHEX('baaf151e39ba4a3f8e4f65c7e2e19d7a'),'La Casce, kennan','Hemocromatosis.','doctor');
# Se craran 3 estudios para el paciente baaf151e39ba4a3f8e4f65c7e2e19d7a
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('bd10d6a64b1c4264bc5a5285de88d35e'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('baaf151e39ba4a3f8e4f65c7e2e19d7a'),'BT');
# Se craran 0 archivos para el estudio bd10d6a64b1c4264bc5a5285de88d35e
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('6a5096f7a40c45008c1e3e8718a5f5d6'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('baaf151e39ba4a3f8e4f65c7e2e19d7a'),'UA');
# Se craran 1 archivos para el estudio 6a5096f7a40c45008c1e3e8718a5f5d6
CALL insert_study_file (UNHEX('0261fb3d94824d5b8cfda772990a122c'),'Archivo 0.txt',UNHEX('6a5096f7a40c45008c1e3e8718a5f5d6'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('6d24b71ac7bb4a01890bdba9c9b6603d'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('baaf151e39ba4a3f8e4f65c7e2e19d7a'),'BT');
# Se craran 0 archivos para el estudio 6d24b71ac7bb4a01890bdba9c9b6603d
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente df29f08e6dec4a63802e33500e013339
CALL insert_patient ('1989-01-31','2','M', UNHEX('df29f08e6dec4a63802e33500e013339'),'Levitt, cordie Demetris','Anemia falciforme.','doctor');
# Se craran 2 estudios para el paciente df29f08e6dec4a63802e33500e013339
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('03bd11a0666144359ad1ec4077424019'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('df29f08e6dec4a63802e33500e013339'),'ET');
# Se craran 1 archivos para el estudio 03bd11a0666144359ad1ec4077424019
CALL insert_study_file (UNHEX('16f8211d714045fcb5b88f7dc3c94469'),'Archivo 0.doc',UNHEX('03bd11a0666144359ad1ec4077424019'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-06','Resfrio común.',UNHEX('eca288bd614140888d1891b16c497f26'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('df29f08e6dec4a63802e33500e013339'),'UA');
# Se craran 2 archivos para el estudio eca288bd614140888d1891b16c497f26
CALL insert_study_file (UNHEX('648d66b06314497088c632d4d3af95b2'),'Archivo 0.doc',UNHEX('eca288bd614140888d1891b16c497f26'));
CALL insert_study_file (UNHEX('4b3d5c45754446fb952e75a9c23d8131'),'Archivo 1.pdf',UNHEX('eca288bd614140888d1891b16c497f26'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 8ab2c7794ea349bf917bae50bc82c683
CALL insert_patient ('1955-10-12','5','M', UNHEX('8ab2c7794ea349bf917bae50bc82c683'),'Trejo, Izaak Hillel','','doctor');
# Se craran 0 estudios para el paciente 8ab2c7794ea349bf917bae50bc82c683
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 7c8180c9ea584825998f2463ebaaa5ac
CALL insert_patient ('1952-08-28','6','M', UNHEX('7c8180c9ea584825998f2463ebaaa5ac'),'Partridge, Ike','','doctor');
# Se craran 3 estudios para el paciente 7c8180c9ea584825998f2463ebaaa5ac
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('2ed3c68965384c13930bce858b6fa6b9'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('7c8180c9ea584825998f2463ebaaa5ac'),'ET');
# Se craran 0 archivos para el estudio 2ed3c68965384c13930bce858b6fa6b9
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('f981e93e895342a1b43638810b84ba2b'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('7c8180c9ea584825998f2463ebaaa5ac'),'UA');
# Se craran 1 archivos para el estudio f981e93e895342a1b43638810b84ba2b
CALL insert_study_file (UNHEX('79d12d05bd914fad80d1109374142344'),'Archivo 0.jpg',UNHEX('f981e93e895342a1b43638810b84ba2b'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-09','Posibles alergias estacionales.',UNHEX('7baa5b995c8b4ae690ceeb03b6bad6ee'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('7c8180c9ea584825998f2463ebaaa5ac'),'ET');
# Se craran 0 archivos para el estudio 7baa5b995c8b4ae690ceeb03b6bad6ee
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 17a309e795d34a899875171092a8eae9
CALL insert_patient ('1952-07-07','2','M', UNHEX('17a309e795d34a899875171092a8eae9'),'Joly, basilio hubert','Diabetes.','doctor');
# Se craran 2 estudios para el paciente 17a309e795d34a899875171092a8eae9
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('6592f8645a364d5887c9736a65e8feec'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('17a309e795d34a899875171092a8eae9'),'ET');
# Se craran 2 archivos para el estudio 6592f8645a364d5887c9736a65e8feec
CALL insert_study_file (UNHEX('0ca178944ca949aeaf30f1557669e615'),'Archivo 0.doc',UNHEX('6592f8645a364d5887c9736a65e8feec'));
CALL insert_study_file (UNHEX('48bb5f47a02f4aa8b42b6310b26a45fc'),'Archivo 1.jpg',UNHEX('6592f8645a364d5887c9736a65e8feec'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-10','Gripe estacional.',UNHEX('dcef5e6625eb47caa1ac187d840b487e'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('17a309e795d34a899875171092a8eae9'),'ET');
# Se craran 0 archivos para el estudio dcef5e6625eb47caa1ac187d840b487e
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



