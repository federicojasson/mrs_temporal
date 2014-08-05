USE mrs_db

# Se creara el paciente be4ab472797b4e17935d6b2e28b26a84
CALL insert_patient ('1978-05-22','3','F', UNHEX('be4ab472797b4e17935d6b2e28b26a84'),'Ariosto, martynne','Hemocromatosis.','doctor');
# Se craran 18 estudios para el paciente be4ab472797b4e17935d6b2e28b26a84
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('53e8b390b8f840d88f605f6185cd2d1a'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Tolerancia muy baja a los sintomas gripales.',UNHEX('be4ab472797b4e17935d6b2e28b26a84'),'ET');
# Se craran 4 archivos para el estudio 53e8b390b8f840d88f605f6185cd2d1a
CALL insert_study_file (UNHEX('6e338612e99a471eaa5c1446f6340b20'),'Archivo 0.txt',UNHEX('53e8b390b8f840d88f605f6185cd2d1a'));
CALL insert_study_file (UNHEX('ef90197ab31c420a8c39a0d2a22c0675'),'Archivo 1.pdf',UNHEX('53e8b390b8f840d88f605f6185cd2d1a'));
CALL insert_study_file (UNHEX('6f9639ee9c2e468083de769696370a7d'),'Archivo 2.txt',UNHEX('53e8b390b8f840d88f605f6185cd2d1a'));
CALL insert_study_file (UNHEX('bc91df2787454deab0551bf68ca072a3'),'Archivo 3.txt',UNHEX('53e8b390b8f840d88f605f6185cd2d1a'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('763174eb0a5049a2b6e11d68dbf6b910'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Tolerancia muy baja a los sintomas gripales.',UNHEX('be4ab472797b4e17935d6b2e28b26a84'),'BT');
# Se craran 5 archivos para el estudio 763174eb0a5049a2b6e11d68dbf6b910
CALL insert_study_file (UNHEX('ced3d5e371474f56afc736729d9bc0bd'),'Archivo 0.txt',UNHEX('763174eb0a5049a2b6e11d68dbf6b910'));
CALL insert_study_file (UNHEX('47bbe9ddabd04ccb995ffa938367e671'),'Archivo 1.txt',UNHEX('763174eb0a5049a2b6e11d68dbf6b910'));
CALL insert_study_file (UNHEX('cfaa76c8728b484189eabb6f6bca7d2e'),'Archivo 2.doc',UNHEX('763174eb0a5049a2b6e11d68dbf6b910'));
CALL insert_study_file (UNHEX('2bef769616b549629c16e83e8e81d3da'),'Archivo 3.pdf',UNHEX('763174eb0a5049a2b6e11d68dbf6b910'));
CALL insert_study_file (UNHEX('80dc9440d60449d888abdb679f54ba71'),'Archivo 4.doc',UNHEX('763174eb0a5049a2b6e11d68dbf6b910'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-08','Diferencial: Resfrio común.',UNHEX('415262219f7b47d8a5aaca46450f4999'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('be4ab472797b4e17935d6b2e28b26a84'),'ET');
# Se craran 8 archivos para el estudio 415262219f7b47d8a5aaca46450f4999
CALL insert_study_file (UNHEX('82a15969dd6049d6898661328414d068'),'Archivo 0.jpg',UNHEX('415262219f7b47d8a5aaca46450f4999'));
CALL insert_study_file (UNHEX('e107ee0fbbeb4482b58487a3b61e3099'),'Archivo 1.pdf',UNHEX('415262219f7b47d8a5aaca46450f4999'));
CALL insert_study_file (UNHEX('6539595b9ee34f4faf0156c5413886f9'),'Archivo 2.doc',UNHEX('415262219f7b47d8a5aaca46450f4999'));
CALL insert_study_file (UNHEX('538a02609bcf4c038bcb6f66f46dacfe'),'Archivo 3.pdf',UNHEX('415262219f7b47d8a5aaca46450f4999'));
CALL insert_study_file (UNHEX('90c32539c3424869958e19c7bf3f60f1'),'Archivo 4.txt',UNHEX('415262219f7b47d8a5aaca46450f4999'));
CALL insert_study_file (UNHEX('d42ba7f70b864fbb9c45d90edef953ac'),'Archivo 5.jpg',UNHEX('415262219f7b47d8a5aaca46450f4999'));
CALL insert_study_file (UNHEX('c9192c2b4ad74596a3734e6d03a8a7ce'),'Archivo 6.txt',UNHEX('415262219f7b47d8a5aaca46450f4999'));
CALL insert_study_file (UNHEX('611c3f15335e4b90ab090cea99df4b29'),'Archivo 7.doc',UNHEX('415262219f7b47d8a5aaca46450f4999'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-06','Diferencial: Resfrio común.',UNHEX('86387d2e01014569b57c2635b7622755'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('be4ab472797b4e17935d6b2e28b26a84'),'ET');
# Se craran 1 archivos para el estudio 86387d2e01014569b57c2635b7622755
CALL insert_study_file (UNHEX('2cf214bb608a482d8a6d0cbb77d3fbff'),'Archivo 0.jpg',UNHEX('86387d2e01014569b57c2635b7622755'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('9812f36c063445da88542389372c1514'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('be4ab472797b4e17935d6b2e28b26a84'),'BT');
# Se craran 5 archivos para el estudio 9812f36c063445da88542389372c1514
CALL insert_study_file (UNHEX('75b89d7ea5e740d4a92c26fb2b5ea45d'),'Archivo 0.jpg',UNHEX('9812f36c063445da88542389372c1514'));
CALL insert_study_file (UNHEX('0544325384a4448490139318ab00a9f7'),'Archivo 1.txt',UNHEX('9812f36c063445da88542389372c1514'));
CALL insert_study_file (UNHEX('1494ccd80c5f411a848b82445f814cba'),'Archivo 2.doc',UNHEX('9812f36c063445da88542389372c1514'));
CALL insert_study_file (UNHEX('3d2a93432c8a4293aafb252050e5a3e6'),'Archivo 3.pdf',UNHEX('9812f36c063445da88542389372c1514'));
CALL insert_study_file (UNHEX('d22622f8273245d4b32620ae6e340997'),'Archivo 4.jpg',UNHEX('9812f36c063445da88542389372c1514'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('4b520a262d8d4d7c8348b07ac8824bdd'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('be4ab472797b4e17935d6b2e28b26a84'),'UA');
# Se craran 5 archivos para el estudio 4b520a262d8d4d7c8348b07ac8824bdd
CALL insert_study_file (UNHEX('96536a6058fb47b8ac7e82782996f308'),'Archivo 0.pdf',UNHEX('4b520a262d8d4d7c8348b07ac8824bdd'));
CALL insert_study_file (UNHEX('6713af850f8b4721b77568435a0b5f86'),'Archivo 1.pdf',UNHEX('4b520a262d8d4d7c8348b07ac8824bdd'));
CALL insert_study_file (UNHEX('8fc181f7fc6f42efbf5d106a034f3da8'),'Archivo 2.jpg',UNHEX('4b520a262d8d4d7c8348b07ac8824bdd'));
CALL insert_study_file (UNHEX('728c2e2b6eaf458c85a68db2908d54bb'),'Archivo 3.pdf',UNHEX('4b520a262d8d4d7c8348b07ac8824bdd'));
CALL insert_study_file (UNHEX('9eafaaae370f4620bb347eb07fd93cc3'),'Archivo 4.doc',UNHEX('4b520a262d8d4d7c8348b07ac8824bdd'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-09','Diferencial: Resfrio común.',UNHEX('b7af7b2bd8ce4aa79d491a0e4ba35caf'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('be4ab472797b4e17935d6b2e28b26a84'),'BT');
# Se craran 8 archivos para el estudio b7af7b2bd8ce4aa79d491a0e4ba35caf
CALL insert_study_file (UNHEX('7ffaafcda27049b0b14f1205b38d9f14'),'Archivo 0.txt',UNHEX('b7af7b2bd8ce4aa79d491a0e4ba35caf'));
CALL insert_study_file (UNHEX('a561f80d0edc4c0e860e8e32ede06523'),'Archivo 1.pdf',UNHEX('b7af7b2bd8ce4aa79d491a0e4ba35caf'));
CALL insert_study_file (UNHEX('e7e2f18704584b0d9bcfcdc9dfa5e9dc'),'Archivo 2.jpg',UNHEX('b7af7b2bd8ce4aa79d491a0e4ba35caf'));
CALL insert_study_file (UNHEX('17e6d98a63724ae99ea1ca29ce8b3baa'),'Archivo 3.txt',UNHEX('b7af7b2bd8ce4aa79d491a0e4ba35caf'));
CALL insert_study_file (UNHEX('b14c24c4e10747629fa6d6f7f83b1444'),'Archivo 4.pdf',UNHEX('b7af7b2bd8ce4aa79d491a0e4ba35caf'));
CALL insert_study_file (UNHEX('6472466488dd44f8861a141f555dbcb7'),'Archivo 5.jpg',UNHEX('b7af7b2bd8ce4aa79d491a0e4ba35caf'));
CALL insert_study_file (UNHEX('54f7240792a7413e9a29db2f8c30a337'),'Archivo 6.jpg',UNHEX('b7af7b2bd8ce4aa79d491a0e4ba35caf'));
CALL insert_study_file (UNHEX('d16886409432487fb6fd07560942c10b'),'Archivo 7.pdf',UNHEX('b7af7b2bd8ce4aa79d491a0e4ba35caf'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-11','Diferencial: Resfrio común.',UNHEX('273c5a559df64ffb986215f626c0b10d'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Tolerancia muy baja a los sintomas gripales.',UNHEX('be4ab472797b4e17935d6b2e28b26a84'),'UA');
# Se craran 8 archivos para el estudio 273c5a559df64ffb986215f626c0b10d
CALL insert_study_file (UNHEX('f212762d1f284897be40ccc9c2a7b555'),'Archivo 0.jpg',UNHEX('273c5a559df64ffb986215f626c0b10d'));
CALL insert_study_file (UNHEX('4a2b7a91e87d4664bc5f32c845998a14'),'Archivo 1.jpg',UNHEX('273c5a559df64ffb986215f626c0b10d'));
CALL insert_study_file (UNHEX('2da54244b0fb44a595e5ab99511b291d'),'Archivo 2.pdf',UNHEX('273c5a559df64ffb986215f626c0b10d'));
CALL insert_study_file (UNHEX('7a9e04579b954b36bf5ecda776b76f76'),'Archivo 3.pdf',UNHEX('273c5a559df64ffb986215f626c0b10d'));
CALL insert_study_file (UNHEX('6b412a2b3ef24ff0bbce250de102a718'),'Archivo 4.txt',UNHEX('273c5a559df64ffb986215f626c0b10d'));
CALL insert_study_file (UNHEX('d6e8ec21d639468086371957e33190cd'),'Archivo 5.txt',UNHEX('273c5a559df64ffb986215f626c0b10d'));
CALL insert_study_file (UNHEX('2ce253958e4a4767beb7f07565ff225e'),'Archivo 6.pdf',UNHEX('273c5a559df64ffb986215f626c0b10d'));
CALL insert_study_file (UNHEX('06d0812644534c6593e41b1109c117e9'),'Archivo 7.txt',UNHEX('273c5a559df64ffb986215f626c0b10d'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-07','Resfrio común.',UNHEX('15dd832260844dcba1179ff885e2d860'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Tolerancia muy baja a los sintomas gripales.',UNHEX('be4ab472797b4e17935d6b2e28b26a84'),'ET');
# Se craran 1 archivos para el estudio 15dd832260844dcba1179ff885e2d860
CALL insert_study_file (UNHEX('43c222a7ce0f4aecbe4638b9b54f61e7'),'Archivo 0.jpg',UNHEX('15dd832260844dcba1179ff885e2d860'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('cfd7997e067a43edb909c98fd4a6622e'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('be4ab472797b4e17935d6b2e28b26a84'),'ET');
# Se craran 6 archivos para el estudio cfd7997e067a43edb909c98fd4a6622e
CALL insert_study_file (UNHEX('e8d5d6d682cc406584105c3e05afc0de'),'Archivo 0.txt',UNHEX('cfd7997e067a43edb909c98fd4a6622e'));
CALL insert_study_file (UNHEX('460ce96e17584e0f8c36b3d62f90c2a0'),'Archivo 1.txt',UNHEX('cfd7997e067a43edb909c98fd4a6622e'));
CALL insert_study_file (UNHEX('2ebfb0bc8b9146c18b00c90875e17baa'),'Archivo 2.doc',UNHEX('cfd7997e067a43edb909c98fd4a6622e'));
CALL insert_study_file (UNHEX('dcc5b80faf4440aa8236b0394fa8b860'),'Archivo 3.pdf',UNHEX('cfd7997e067a43edb909c98fd4a6622e'));
CALL insert_study_file (UNHEX('15e4c0fedd3f41a196897b6adeebff8f'),'Archivo 4.doc',UNHEX('cfd7997e067a43edb909c98fd4a6622e'));
CALL insert_study_file (UNHEX('8061f64c8e444af1986e278340ebd7e1'),'Archivo 5.txt',UNHEX('cfd7997e067a43edb909c98fd4a6622e'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-09','Resfrio común.',UNHEX('fe2e734ec9d94934a4fafc71f52d1f79'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Programada nueva consulta en 5 días.',UNHEX('be4ab472797b4e17935d6b2e28b26a84'),'UA');
# Se craran 5 archivos para el estudio fe2e734ec9d94934a4fafc71f52d1f79
CALL insert_study_file (UNHEX('887de4f700f8482892713093a6e63597'),'Archivo 0.txt',UNHEX('fe2e734ec9d94934a4fafc71f52d1f79'));
CALL insert_study_file (UNHEX('690ef14ff9064c4493d7857c1001744a'),'Archivo 1.pdf',UNHEX('fe2e734ec9d94934a4fafc71f52d1f79'));
CALL insert_study_file (UNHEX('57ed0c3b137343378e8a86da0cd7205c'),'Archivo 2.txt',UNHEX('fe2e734ec9d94934a4fafc71f52d1f79'));
CALL insert_study_file (UNHEX('85ce3116c7934a4f8e9c0039d21d6a85'),'Archivo 3.pdf',UNHEX('fe2e734ec9d94934a4fafc71f52d1f79'));
CALL insert_study_file (UNHEX('978e669112dd491bb40a392d5590b5ed'),'Archivo 4.pdf',UNHEX('fe2e734ec9d94934a4fafc71f52d1f79'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('210678c5e86a4646807e81402e9c5029'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('be4ab472797b4e17935d6b2e28b26a84'),'UA');
# Se craran 6 archivos para el estudio 210678c5e86a4646807e81402e9c5029
CALL insert_study_file (UNHEX('cea465b01cc741128e2cec89776fb872'),'Archivo 0.pdf',UNHEX('210678c5e86a4646807e81402e9c5029'));
CALL insert_study_file (UNHEX('8e789179ac9442e1ba68bf5b69ec334b'),'Archivo 1.doc',UNHEX('210678c5e86a4646807e81402e9c5029'));
CALL insert_study_file (UNHEX('827cb9612c334f26861c15d01069a725'),'Archivo 2.jpg',UNHEX('210678c5e86a4646807e81402e9c5029'));
CALL insert_study_file (UNHEX('534444b00eb948cb9925e43053abd35e'),'Archivo 3.txt',UNHEX('210678c5e86a4646807e81402e9c5029'));
CALL insert_study_file (UNHEX('f7be3c136b394558a2fb7b7f80d1f8bb'),'Archivo 4.txt',UNHEX('210678c5e86a4646807e81402e9c5029'));
CALL insert_study_file (UNHEX('9109dc22a17b4c57b05a8bc57de719e0'),'Archivo 5.doc',UNHEX('210678c5e86a4646807e81402e9c5029'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-06','Resfrio común.',UNHEX('e0b81bc5379d44c38a6da10a2a59bfab'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Programada nueva consulta en 5 días.',UNHEX('be4ab472797b4e17935d6b2e28b26a84'),'ET');
# Se craran 2 archivos para el estudio e0b81bc5379d44c38a6da10a2a59bfab
CALL insert_study_file (UNHEX('61b31e9a8fe7440cbcba687e6164a014'),'Archivo 0.jpg',UNHEX('e0b81bc5379d44c38a6da10a2a59bfab'));
CALL insert_study_file (UNHEX('b318abe94049429badc0a233533c5018'),'Archivo 1.jpg',UNHEX('e0b81bc5379d44c38a6da10a2a59bfab'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-07','Resfrio común.',UNHEX('efe12643683542bbab507ff8d65692c6'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('be4ab472797b4e17935d6b2e28b26a84'),'ET');
# Se craran 6 archivos para el estudio efe12643683542bbab507ff8d65692c6
CALL insert_study_file (UNHEX('d1019fa2878f46269f865626aa6bd2fe'),'Archivo 0.doc',UNHEX('efe12643683542bbab507ff8d65692c6'));
CALL insert_study_file (UNHEX('a3536c34e35d439fa075a4aa4c0c8461'),'Archivo 1.pdf',UNHEX('efe12643683542bbab507ff8d65692c6'));
CALL insert_study_file (UNHEX('fe61d516431c411bbe3cac68dc849dc2'),'Archivo 2.pdf',UNHEX('efe12643683542bbab507ff8d65692c6'));
CALL insert_study_file (UNHEX('45ead6f1674f4445a78be6e2a3780e3d'),'Archivo 3.pdf',UNHEX('efe12643683542bbab507ff8d65692c6'));
CALL insert_study_file (UNHEX('856e98ff38634133b1f4b21ee7ab7534'),'Archivo 4.txt',UNHEX('efe12643683542bbab507ff8d65692c6'));
CALL insert_study_file (UNHEX('7797c602698b4f02a730a587ce2a6f3b'),'Archivo 5.jpg',UNHEX('efe12643683542bbab507ff8d65692c6'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('f0b725b48e0b49088900b9fea83b071b'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('be4ab472797b4e17935d6b2e28b26a84'),'BT');
# Se craran 7 archivos para el estudio f0b725b48e0b49088900b9fea83b071b
CALL insert_study_file (UNHEX('24acaeb5e4434590a4abc1ebba406564'),'Archivo 0.jpg',UNHEX('f0b725b48e0b49088900b9fea83b071b'));
CALL insert_study_file (UNHEX('e319c0d5ae1043da809d1a8b975e2c9f'),'Archivo 1.jpg',UNHEX('f0b725b48e0b49088900b9fea83b071b'));
CALL insert_study_file (UNHEX('90dff4564b114c6e8d45770d2aca3638'),'Archivo 2.jpg',UNHEX('f0b725b48e0b49088900b9fea83b071b'));
CALL insert_study_file (UNHEX('a9c3bde2a08a4c7599914a969ee4328c'),'Archivo 3.jpg',UNHEX('f0b725b48e0b49088900b9fea83b071b'));
CALL insert_study_file (UNHEX('898dde306db24539ad5b76ba0cd47f00'),'Archivo 4.txt',UNHEX('f0b725b48e0b49088900b9fea83b071b'));
CALL insert_study_file (UNHEX('a22b8280f4d54e1f909d84d031560d4c'),'Archivo 5.jpg',UNHEX('f0b725b48e0b49088900b9fea83b071b'));
CALL insert_study_file (UNHEX('65b4647f738a4ee6993decf4d61ca209'),'Archivo 6.txt',UNHEX('f0b725b48e0b49088900b9fea83b071b'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('f46f09c93dad47a08e151655d011adae'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('be4ab472797b4e17935d6b2e28b26a84'),'UA');
# Se craran 3 archivos para el estudio f46f09c93dad47a08e151655d011adae
CALL insert_study_file (UNHEX('a4bf4ad752c14e4e952568c23264f009'),'Archivo 0.pdf',UNHEX('f46f09c93dad47a08e151655d011adae'));
CALL insert_study_file (UNHEX('e8b9db7b4f9a426b9a7d8aed33e0c0cc'),'Archivo 1.txt',UNHEX('f46f09c93dad47a08e151655d011adae'));
CALL insert_study_file (UNHEX('1a63f427f653471f8c296217d5056707'),'Archivo 2.pdf',UNHEX('f46f09c93dad47a08e151655d011adae'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('cc303b015fca42daa7538f250e842c02'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Tolerancia muy baja a los sintomas gripales.',UNHEX('be4ab472797b4e17935d6b2e28b26a84'),'BT');
# Se craran 7 archivos para el estudio cc303b015fca42daa7538f250e842c02
CALL insert_study_file (UNHEX('6615600028874f9286619552ef514bb7'),'Archivo 0.doc',UNHEX('cc303b015fca42daa7538f250e842c02'));
CALL insert_study_file (UNHEX('fc5624a13bfe42139075f85f8fe19937'),'Archivo 1.pdf',UNHEX('cc303b015fca42daa7538f250e842c02'));
CALL insert_study_file (UNHEX('d78a81c81fc644b48c2864cd962b88fe'),'Archivo 2.doc',UNHEX('cc303b015fca42daa7538f250e842c02'));
CALL insert_study_file (UNHEX('b4437c83df34422ea25d3b6a3d527c8a'),'Archivo 3.txt',UNHEX('cc303b015fca42daa7538f250e842c02'));
CALL insert_study_file (UNHEX('6761f072bdb245409c4b802b03848638'),'Archivo 4.pdf',UNHEX('cc303b015fca42daa7538f250e842c02'));
CALL insert_study_file (UNHEX('7b97f8c0a0614fa98ce4a6a5c33b90c8'),'Archivo 5.jpg',UNHEX('cc303b015fca42daa7538f250e842c02'));
CALL insert_study_file (UNHEX('97325f8fc82443f4b5e7017089ef1af0'),'Archivo 6.pdf',UNHEX('cc303b015fca42daa7538f250e842c02'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('508e264d8c254ca2956b034cb9bdd740'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Tolerancia muy baja a los sintomas gripales.',UNHEX('be4ab472797b4e17935d6b2e28b26a84'),'ET');
# Se craran 7 archivos para el estudio 508e264d8c254ca2956b034cb9bdd740
CALL insert_study_file (UNHEX('006fadd7ece9456591c18fd97afc0a06'),'Archivo 0.pdf',UNHEX('508e264d8c254ca2956b034cb9bdd740'));
CALL insert_study_file (UNHEX('f078b28c2f564018a65fc9c72b0482ce'),'Archivo 1.doc',UNHEX('508e264d8c254ca2956b034cb9bdd740'));
CALL insert_study_file (UNHEX('11e62de7326d4143a4a865fb8215c962'),'Archivo 2.pdf',UNHEX('508e264d8c254ca2956b034cb9bdd740'));
CALL insert_study_file (UNHEX('bc560c1b177446ed983a20a66f34215a'),'Archivo 3.txt',UNHEX('508e264d8c254ca2956b034cb9bdd740'));
CALL insert_study_file (UNHEX('0f287c8a069a498d8db2e93d4deb89f4'),'Archivo 4.doc',UNHEX('508e264d8c254ca2956b034cb9bdd740'));
CALL insert_study_file (UNHEX('8f773c9a37c6463da8022f4ace210c2b'),'Archivo 5.txt',UNHEX('508e264d8c254ca2956b034cb9bdd740'));
CALL insert_study_file (UNHEX('73d8df43a3f949178417960a419356ea'),'Archivo 6.txt',UNHEX('508e264d8c254ca2956b034cb9bdd740'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 3d954c5735554e2982e0ebfe7047e769
CALL insert_patient ('1957-05-11','6','F', UNHEX('3d954c5735554e2982e0ebfe7047e769'),'Zak, Adah','Diabetes.','doctor');
# Se craran 14 estudios para el paciente 3d954c5735554e2982e0ebfe7047e769
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('87a3b0405fc649beb46e58cab73625d5'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('3d954c5735554e2982e0ebfe7047e769'),'BT');
# Se craran 8 archivos para el estudio 87a3b0405fc649beb46e58cab73625d5
CALL insert_study_file (UNHEX('4fffa5acd5a5415da89ee535e85a1fff'),'Archivo 0.doc',UNHEX('87a3b0405fc649beb46e58cab73625d5'));
CALL insert_study_file (UNHEX('f7f2cea14b8c45a19fc0185f1ec2e40e'),'Archivo 1.doc',UNHEX('87a3b0405fc649beb46e58cab73625d5'));
CALL insert_study_file (UNHEX('16b8d3dc4cb340faa164e6c0be92937d'),'Archivo 2.pdf',UNHEX('87a3b0405fc649beb46e58cab73625d5'));
CALL insert_study_file (UNHEX('7804d625a95a4caba139ca27561ca1c6'),'Archivo 3.jpg',UNHEX('87a3b0405fc649beb46e58cab73625d5'));
CALL insert_study_file (UNHEX('58cc920ca5bb424aa1a445f37b45b3be'),'Archivo 4.pdf',UNHEX('87a3b0405fc649beb46e58cab73625d5'));
CALL insert_study_file (UNHEX('315048779e2543f9933cce7ae6990856'),'Archivo 5.pdf',UNHEX('87a3b0405fc649beb46e58cab73625d5'));
CALL insert_study_file (UNHEX('b2992a9a7ee04a169c1804390da5d14e'),'Archivo 6.jpg',UNHEX('87a3b0405fc649beb46e58cab73625d5'));
CALL insert_study_file (UNHEX('c16ee8f5fb5d4791825e31dd4399cb7e'),'Archivo 7.jpg',UNHEX('87a3b0405fc649beb46e58cab73625d5'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('00eeebd27ceb47b69bc748906e068ca8'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Tolerancia muy baja a los sintomas gripales.',UNHEX('3d954c5735554e2982e0ebfe7047e769'),'ET');
# Se craran 3 archivos para el estudio 00eeebd27ceb47b69bc748906e068ca8
CALL insert_study_file (UNHEX('68e3f74b5b954fa58ad2ba191eb8ca2c'),'Archivo 0.pdf',UNHEX('00eeebd27ceb47b69bc748906e068ca8'));
CALL insert_study_file (UNHEX('4bbe851f1cac472fa66fe4779f2460ed'),'Archivo 1.jpg',UNHEX('00eeebd27ceb47b69bc748906e068ca8'));
CALL insert_study_file (UNHEX('de6c2ded3b6443ac9a6d35229e467bf1'),'Archivo 2.jpg',UNHEX('00eeebd27ceb47b69bc748906e068ca8'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('d1db999d578249dfbbb4d6d5cb20c041'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Tolerancia muy baja a los sintomas gripales.',UNHEX('3d954c5735554e2982e0ebfe7047e769'),'UA');
# Se craran 7 archivos para el estudio d1db999d578249dfbbb4d6d5cb20c041
CALL insert_study_file (UNHEX('4200f7de5be04d899b1d7a3a7842eb02'),'Archivo 0.txt',UNHEX('d1db999d578249dfbbb4d6d5cb20c041'));
CALL insert_study_file (UNHEX('9af289aa44424f229cfe9200e70a09b7'),'Archivo 1.doc',UNHEX('d1db999d578249dfbbb4d6d5cb20c041'));
CALL insert_study_file (UNHEX('221b5e861575474abdfc18b48b1d7a06'),'Archivo 2.txt',UNHEX('d1db999d578249dfbbb4d6d5cb20c041'));
CALL insert_study_file (UNHEX('33b20e871c5743618216e7264f5220d1'),'Archivo 3.txt',UNHEX('d1db999d578249dfbbb4d6d5cb20c041'));
CALL insert_study_file (UNHEX('7f1e2f8583224fcd806272a44e1c5eaa'),'Archivo 4.jpg',UNHEX('d1db999d578249dfbbb4d6d5cb20c041'));
CALL insert_study_file (UNHEX('49ea7fb90dc3481585a581812f87ecf3'),'Archivo 5.txt',UNHEX('d1db999d578249dfbbb4d6d5cb20c041'));
CALL insert_study_file (UNHEX('4ca3bcf37aa7481eab15b6d0637bbd04'),'Archivo 6.pdf',UNHEX('d1db999d578249dfbbb4d6d5cb20c041'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('d8619d909a864c18a941c119c41ad73e'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('3d954c5735554e2982e0ebfe7047e769'),'BT');
# Se craran 2 archivos para el estudio d8619d909a864c18a941c119c41ad73e
CALL insert_study_file (UNHEX('102f325237c84c98a01ed3931996037c'),'Archivo 0.pdf',UNHEX('d8619d909a864c18a941c119c41ad73e'));
CALL insert_study_file (UNHEX('e972a04826c1437b8ff84e24292df8e7'),'Archivo 1.pdf',UNHEX('d8619d909a864c18a941c119c41ad73e'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-11','Diferencial: Gripe H1N1',UNHEX('15f3e8f380304078aa3e1a670668a2de'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','---',UNHEX('3d954c5735554e2982e0ebfe7047e769'),'UA');
# Se craran 0 archivos para el estudio 15f3e8f380304078aa3e1a670668a2de
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-10','Gripe estacional.',UNHEX('f17d0d6fc7df4d229a34a748cf6884d6'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('3d954c5735554e2982e0ebfe7047e769'),'BT');
# Se craran 8 archivos para el estudio f17d0d6fc7df4d229a34a748cf6884d6
CALL insert_study_file (UNHEX('c2652c20a8a844febab4be22c9dc51d2'),'Archivo 0.doc',UNHEX('f17d0d6fc7df4d229a34a748cf6884d6'));
CALL insert_study_file (UNHEX('5de004782099489b836cd06d14590a51'),'Archivo 1.pdf',UNHEX('f17d0d6fc7df4d229a34a748cf6884d6'));
CALL insert_study_file (UNHEX('0ba2fa1caa88411d90b2b8fbc00a8d29'),'Archivo 2.txt',UNHEX('f17d0d6fc7df4d229a34a748cf6884d6'));
CALL insert_study_file (UNHEX('eacee4ed69734347b0003fcaaa1379a5'),'Archivo 3.pdf',UNHEX('f17d0d6fc7df4d229a34a748cf6884d6'));
CALL insert_study_file (UNHEX('0a4a62f772e742f4b1e5ce0895569ce1'),'Archivo 4.txt',UNHEX('f17d0d6fc7df4d229a34a748cf6884d6'));
CALL insert_study_file (UNHEX('442fc4da3fc3418991e4b8775fdc0856'),'Archivo 5.doc',UNHEX('f17d0d6fc7df4d229a34a748cf6884d6'));
CALL insert_study_file (UNHEX('0f28b874f58848e5b88060db15d9e1c4'),'Archivo 6.pdf',UNHEX('f17d0d6fc7df4d229a34a748cf6884d6'));
CALL insert_study_file (UNHEX('80a3faf6e5274fb4bc99fa3cdf98eb49'),'Archivo 7.pdf',UNHEX('f17d0d6fc7df4d229a34a748cf6884d6'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-10','Gripe estacional.',UNHEX('e4800cfb67fe4e61ac87df592970f901'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Tolerancia muy baja a los sintomas gripales.',UNHEX('3d954c5735554e2982e0ebfe7047e769'),'UA');
# Se craran 6 archivos para el estudio e4800cfb67fe4e61ac87df592970f901
CALL insert_study_file (UNHEX('7cc073662f044393aa7d758125330b6c'),'Archivo 0.doc',UNHEX('e4800cfb67fe4e61ac87df592970f901'));
CALL insert_study_file (UNHEX('bc83245caf0648e98bc0c1c70c7e795f'),'Archivo 1.doc',UNHEX('e4800cfb67fe4e61ac87df592970f901'));
CALL insert_study_file (UNHEX('a24b838ab7204bd29605bffcbead6336'),'Archivo 2.pdf',UNHEX('e4800cfb67fe4e61ac87df592970f901'));
CALL insert_study_file (UNHEX('1116d753e921402bae51243e4768e0a6'),'Archivo 3.pdf',UNHEX('e4800cfb67fe4e61ac87df592970f901'));
CALL insert_study_file (UNHEX('3c5101615c104b36be9adfda0dda76c9'),'Archivo 4.pdf',UNHEX('e4800cfb67fe4e61ac87df592970f901'));
CALL insert_study_file (UNHEX('77ba91934f7a4e45a952b7532e559606'),'Archivo 5.doc',UNHEX('e4800cfb67fe4e61ac87df592970f901'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('f7d78feeacd5425f9e6344397469837d'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('3d954c5735554e2982e0ebfe7047e769'),'ET');
# Se craran 1 archivos para el estudio f7d78feeacd5425f9e6344397469837d
CALL insert_study_file (UNHEX('d28348142d654533b8d76bc9d454ed94'),'Archivo 0.txt',UNHEX('f7d78feeacd5425f9e6344397469837d'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('d69cc911ac224b089d545ec524fb8537'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('3d954c5735554e2982e0ebfe7047e769'),'ET');
# Se craran 4 archivos para el estudio d69cc911ac224b089d545ec524fb8537
CALL insert_study_file (UNHEX('a15f68b6889d4967ae27fe4105927b99'),'Archivo 0.pdf',UNHEX('d69cc911ac224b089d545ec524fb8537'));
CALL insert_study_file (UNHEX('9556c2d37527443680b5d09d0a1beadb'),'Archivo 1.doc',UNHEX('d69cc911ac224b089d545ec524fb8537'));
CALL insert_study_file (UNHEX('dd870e23c78349a58019d77594795df8'),'Archivo 2.jpg',UNHEX('d69cc911ac224b089d545ec524fb8537'));
CALL insert_study_file (UNHEX('c748d488c7ea42ecbd7862bbce3d00db'),'Archivo 3.doc',UNHEX('d69cc911ac224b089d545ec524fb8537'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('c9d3cf37032a462db39eb66a3d5a9d53'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('3d954c5735554e2982e0ebfe7047e769'),'ET');
# Se craran 1 archivos para el estudio c9d3cf37032a462db39eb66a3d5a9d53
CALL insert_study_file (UNHEX('c0ba3ebd7d7447449da78fc51e54eac5'),'Archivo 0.doc',UNHEX('c9d3cf37032a462db39eb66a3d5a9d53'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-09','Diferencial: Gripe H1N1',UNHEX('0002ba3095f54b0e88d98c44406bbed7'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','Programada nueva consulta en 5 días.',UNHEX('3d954c5735554e2982e0ebfe7047e769'),'UA');
# Se craran 8 archivos para el estudio 0002ba3095f54b0e88d98c44406bbed7
CALL insert_study_file (UNHEX('97f9ba08313f42b1be7fe2d3e9782fb3'),'Archivo 0.pdf',UNHEX('0002ba3095f54b0e88d98c44406bbed7'));
CALL insert_study_file (UNHEX('e71db89152e1466785642e7963096256'),'Archivo 1.pdf',UNHEX('0002ba3095f54b0e88d98c44406bbed7'));
CALL insert_study_file (UNHEX('e1a1f01e800f46cdb12f57f2325ca6ef'),'Archivo 2.txt',UNHEX('0002ba3095f54b0e88d98c44406bbed7'));
CALL insert_study_file (UNHEX('5cedd07610a14c7abd3d5a697ae6be6d'),'Archivo 3.doc',UNHEX('0002ba3095f54b0e88d98c44406bbed7'));
CALL insert_study_file (UNHEX('8bbf9bed05a74de2a8fc082249a2147d'),'Archivo 4.pdf',UNHEX('0002ba3095f54b0e88d98c44406bbed7'));
CALL insert_study_file (UNHEX('baf8446b3e374e09b2746271640a4784'),'Archivo 5.pdf',UNHEX('0002ba3095f54b0e88d98c44406bbed7'));
CALL insert_study_file (UNHEX('31887cfaf53d475cb5362e41808d5754'),'Archivo 6.txt',UNHEX('0002ba3095f54b0e88d98c44406bbed7'));
CALL insert_study_file (UNHEX('ab5a4e9bf7384053be7c23b3d92b010a'),'Archivo 7.doc',UNHEX('0002ba3095f54b0e88d98c44406bbed7'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('7dbe9e8bec68411bb67e27a2a1be549c'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('3d954c5735554e2982e0ebfe7047e769'),'ET');
# Se craran 4 archivos para el estudio 7dbe9e8bec68411bb67e27a2a1be549c
CALL insert_study_file (UNHEX('a1e6f60977c845eab36e60f80eda8cd4'),'Archivo 0.jpg',UNHEX('7dbe9e8bec68411bb67e27a2a1be549c'));
CALL insert_study_file (UNHEX('fa2fdb4c896146b3a2ad6cbcb2d73e3f'),'Archivo 1.pdf',UNHEX('7dbe9e8bec68411bb67e27a2a1be549c'));
CALL insert_study_file (UNHEX('b336e40fc62d4444bad483aa67e64399'),'Archivo 2.txt',UNHEX('7dbe9e8bec68411bb67e27a2a1be549c'));
CALL insert_study_file (UNHEX('3766711d6652453c8aa92c008444c078'),'Archivo 3.doc',UNHEX('7dbe9e8bec68411bb67e27a2a1be549c'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('be4809be86b04e79ba538b293daf2d3a'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('3d954c5735554e2982e0ebfe7047e769'),'UA');
# Se craran 0 archivos para el estudio be4809be86b04e79ba538b293daf2d3a
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('c91b16195c6949e68ad3af08c665b3d4'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('3d954c5735554e2982e0ebfe7047e769'),'UA');
# Se craran 6 archivos para el estudio c91b16195c6949e68ad3af08c665b3d4
CALL insert_study_file (UNHEX('69a00f693f9e4166b9986ea1f1a06a59'),'Archivo 0.pdf',UNHEX('c91b16195c6949e68ad3af08c665b3d4'));
CALL insert_study_file (UNHEX('d5d2242e8a524db9b211913130a6903c'),'Archivo 1.jpg',UNHEX('c91b16195c6949e68ad3af08c665b3d4'));
CALL insert_study_file (UNHEX('4c1b1e4c2c364107955a7d5ee2ce1d45'),'Archivo 2.pdf',UNHEX('c91b16195c6949e68ad3af08c665b3d4'));
CALL insert_study_file (UNHEX('e8b7e30b101e437788fda3162f1aeb0e'),'Archivo 3.doc',UNHEX('c91b16195c6949e68ad3af08c665b3d4'));
CALL insert_study_file (UNHEX('31f68b57972146cf8d5770609289b62e'),'Archivo 4.jpg',UNHEX('c91b16195c6949e68ad3af08c665b3d4'));
CALL insert_study_file (UNHEX('773bcab25fe447b99725930b193c5607'),'Archivo 5.doc',UNHEX('c91b16195c6949e68ad3af08c665b3d4'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente a516ab2a8ae5457599940e4d6d0206ca
CALL insert_patient ('1937-11-30','4','M', UNHEX('a516ab2a8ae5457599940e4d6d0206ca'),'Monti, valentijn quill','','doctor');
# Se craran 13 estudios para el paciente a516ab2a8ae5457599940e4d6d0206ca
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-08','Gripe estacional.',UNHEX('1e8616d46f4844e8bc03af2b565a1a21'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('a516ab2a8ae5457599940e4d6d0206ca'),'UA');
# Se craran 9 archivos para el estudio 1e8616d46f4844e8bc03af2b565a1a21
CALL insert_study_file (UNHEX('73e8bbeea7744b0eb8402ce45762bfaf'),'Archivo 0.doc',UNHEX('1e8616d46f4844e8bc03af2b565a1a21'));
CALL insert_study_file (UNHEX('549827746428462daf0c0d8d30e960e9'),'Archivo 1.pdf',UNHEX('1e8616d46f4844e8bc03af2b565a1a21'));
CALL insert_study_file (UNHEX('ed8ea8fa7b584828a7aaba896e2f7d53'),'Archivo 2.txt',UNHEX('1e8616d46f4844e8bc03af2b565a1a21'));
CALL insert_study_file (UNHEX('b8feead19fc14e429c1691f2877e50e4'),'Archivo 3.txt',UNHEX('1e8616d46f4844e8bc03af2b565a1a21'));
CALL insert_study_file (UNHEX('9c1e90eacccb4cefa2cdcce889bc8aa2'),'Archivo 4.pdf',UNHEX('1e8616d46f4844e8bc03af2b565a1a21'));
CALL insert_study_file (UNHEX('3434ee14f9ca4a86af10c26554ddf1b6'),'Archivo 5.pdf',UNHEX('1e8616d46f4844e8bc03af2b565a1a21'));
CALL insert_study_file (UNHEX('d553af85061f4fee821cd592f5fa321c'),'Archivo 6.pdf',UNHEX('1e8616d46f4844e8bc03af2b565a1a21'));
CALL insert_study_file (UNHEX('7c3d7e4de81d4d15b8adf10a0e783d8f'),'Archivo 7.pdf',UNHEX('1e8616d46f4844e8bc03af2b565a1a21'));
CALL insert_study_file (UNHEX('0e56213e148b4747bb736e4e4ddb64c2'),'Archivo 8.doc',UNHEX('1e8616d46f4844e8bc03af2b565a1a21'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('67653a38730545238e2f69748f41502f'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('a516ab2a8ae5457599940e4d6d0206ca'),'ET');
# Se craran 8 archivos para el estudio 67653a38730545238e2f69748f41502f
CALL insert_study_file (UNHEX('b256018cc1e548d79272f7f52c5cef03'),'Archivo 0.txt',UNHEX('67653a38730545238e2f69748f41502f'));
CALL insert_study_file (UNHEX('88d2f4872db54eb49fb53e75fe7e1458'),'Archivo 1.txt',UNHEX('67653a38730545238e2f69748f41502f'));
CALL insert_study_file (UNHEX('dc3ed437d8ee445b99eafbce4abe9cc9'),'Archivo 2.txt',UNHEX('67653a38730545238e2f69748f41502f'));
CALL insert_study_file (UNHEX('6619e80b4506480cbecd1ae9547d07eb'),'Archivo 3.txt',UNHEX('67653a38730545238e2f69748f41502f'));
CALL insert_study_file (UNHEX('b93aea00d6c34e8796e1bee18c86a43a'),'Archivo 4.txt',UNHEX('67653a38730545238e2f69748f41502f'));
CALL insert_study_file (UNHEX('a0c87f15abd64251a831f5bd2cc3ddf8'),'Archivo 5.pdf',UNHEX('67653a38730545238e2f69748f41502f'));
CALL insert_study_file (UNHEX('584c1978554943a983220303d4ce2fa2'),'Archivo 6.pdf',UNHEX('67653a38730545238e2f69748f41502f'));
CALL insert_study_file (UNHEX('ee4d3653a0b9446d8294ed547d257153'),'Archivo 7.pdf',UNHEX('67653a38730545238e2f69748f41502f'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('75f91a7c99124931a42be56eb1133fc5'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('a516ab2a8ae5457599940e4d6d0206ca'),'ET');
# Se craran 1 archivos para el estudio 75f91a7c99124931a42be56eb1133fc5
CALL insert_study_file (UNHEX('7b0aa8da4cdd45d496e02f8fcfd31c98'),'Archivo 0.jpg',UNHEX('75f91a7c99124931a42be56eb1133fc5'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('ff647939c50a4343ad7b97ba4d17e9a0'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('a516ab2a8ae5457599940e4d6d0206ca'),'UA');
# Se craran 6 archivos para el estudio ff647939c50a4343ad7b97ba4d17e9a0
CALL insert_study_file (UNHEX('86db6c9480384626afdda682e0a64b03'),'Archivo 0.jpg',UNHEX('ff647939c50a4343ad7b97ba4d17e9a0'));
CALL insert_study_file (UNHEX('b9beae8ab4fc460f87c83d229ca98736'),'Archivo 1.jpg',UNHEX('ff647939c50a4343ad7b97ba4d17e9a0'));
CALL insert_study_file (UNHEX('ecc2ac2e9758481abdd1e7803ea6107e'),'Archivo 2.pdf',UNHEX('ff647939c50a4343ad7b97ba4d17e9a0'));
CALL insert_study_file (UNHEX('dea58ef8fe1247dcb8d0656f12e59ed3'),'Archivo 3.doc',UNHEX('ff647939c50a4343ad7b97ba4d17e9a0'));
CALL insert_study_file (UNHEX('9c174ce3133b4ff7883a6af16baea33a'),'Archivo 4.doc',UNHEX('ff647939c50a4343ad7b97ba4d17e9a0'));
CALL insert_study_file (UNHEX('0e11a765dddd4744a74f24e2cb28e464'),'Archivo 5.txt',UNHEX('ff647939c50a4343ad7b97ba4d17e9a0'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('dbd19df827b24bdb943c22d92d58259a'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('a516ab2a8ae5457599940e4d6d0206ca'),'ET');
# Se craran 7 archivos para el estudio dbd19df827b24bdb943c22d92d58259a
CALL insert_study_file (UNHEX('11961efbecca4f75adef291a46671291'),'Archivo 0.jpg',UNHEX('dbd19df827b24bdb943c22d92d58259a'));
CALL insert_study_file (UNHEX('ddb60dade0a04a71a1b610d9d1a56ecc'),'Archivo 1.jpg',UNHEX('dbd19df827b24bdb943c22d92d58259a'));
CALL insert_study_file (UNHEX('0c9cb8ff34fc4767aec68f43fb53f313'),'Archivo 2.pdf',UNHEX('dbd19df827b24bdb943c22d92d58259a'));
CALL insert_study_file (UNHEX('318a4a26677a4dc581019583e515815b'),'Archivo 3.txt',UNHEX('dbd19df827b24bdb943c22d92d58259a'));
CALL insert_study_file (UNHEX('3ae59dc15b414f7a92505835bf0840d0'),'Archivo 4.jpg',UNHEX('dbd19df827b24bdb943c22d92d58259a'));
CALL insert_study_file (UNHEX('7fd1ffc712bf4869918f4a449a7e1cbf'),'Archivo 5.pdf',UNHEX('dbd19df827b24bdb943c22d92d58259a'));
CALL insert_study_file (UNHEX('1a11ca774edd4894bbd8a671614d3509'),'Archivo 6.txt',UNHEX('dbd19df827b24bdb943c22d92d58259a'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-09','Resfrio común.',UNHEX('3b817be2bb9949ab94531224606cb306'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('a516ab2a8ae5457599940e4d6d0206ca'),'BT');
# Se craran 0 archivos para el estudio 3b817be2bb9949ab94531224606cb306
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('9d172eba5ab04f8880ff02dc73ef2c68'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('a516ab2a8ae5457599940e4d6d0206ca'),'BT');
# Se craran 5 archivos para el estudio 9d172eba5ab04f8880ff02dc73ef2c68
CALL insert_study_file (UNHEX('2c12806e95014ed1840259f13be95664'),'Archivo 0.txt',UNHEX('9d172eba5ab04f8880ff02dc73ef2c68'));
CALL insert_study_file (UNHEX('7e42801e5c414c82adb8cd945c79ecec'),'Archivo 1.txt',UNHEX('9d172eba5ab04f8880ff02dc73ef2c68'));
CALL insert_study_file (UNHEX('72c10ac128b341e9865d2ca376d21269'),'Archivo 2.txt',UNHEX('9d172eba5ab04f8880ff02dc73ef2c68'));
CALL insert_study_file (UNHEX('48029ffe58a1440988531ce300f41e26'),'Archivo 3.jpg',UNHEX('9d172eba5ab04f8880ff02dc73ef2c68'));
CALL insert_study_file (UNHEX('4488bcd585484651a694a2ff81dae1ce'),'Archivo 4.txt',UNHEX('9d172eba5ab04f8880ff02dc73ef2c68'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-09','Gripe estacional.',UNHEX('04fb272e472b46769dee97ca7bebff4e'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('a516ab2a8ae5457599940e4d6d0206ca'),'BT');
# Se craran 9 archivos para el estudio 04fb272e472b46769dee97ca7bebff4e
CALL insert_study_file (UNHEX('a35c5cdb6f4341669b6cc9fd60c73eab'),'Archivo 0.pdf',UNHEX('04fb272e472b46769dee97ca7bebff4e'));
CALL insert_study_file (UNHEX('205010a57ccb44248fc03222984625db'),'Archivo 1.pdf',UNHEX('04fb272e472b46769dee97ca7bebff4e'));
CALL insert_study_file (UNHEX('14808acdfcfb4e8f96ab5c9c2696ed75'),'Archivo 2.pdf',UNHEX('04fb272e472b46769dee97ca7bebff4e'));
CALL insert_study_file (UNHEX('3c599b09e34141a585e76100eef76f26'),'Archivo 3.pdf',UNHEX('04fb272e472b46769dee97ca7bebff4e'));
CALL insert_study_file (UNHEX('5294a69d59264acb831495a00b356ab1'),'Archivo 4.pdf',UNHEX('04fb272e472b46769dee97ca7bebff4e'));
CALL insert_study_file (UNHEX('a5f4a4a9a20644efb3ee300fbf6646df'),'Archivo 5.pdf',UNHEX('04fb272e472b46769dee97ca7bebff4e'));
CALL insert_study_file (UNHEX('afc81df37f584790a09020556ec7ae42'),'Archivo 6.doc',UNHEX('04fb272e472b46769dee97ca7bebff4e'));
CALL insert_study_file (UNHEX('3c9a8f2da7544e60beb10a7d345e4f45'),'Archivo 7.txt',UNHEX('04fb272e472b46769dee97ca7bebff4e'));
CALL insert_study_file (UNHEX('c4c57ebf89b34079bf139adeb745cc6d'),'Archivo 8.txt',UNHEX('04fb272e472b46769dee97ca7bebff4e'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('4f28b00f227f4b429474cb16f27255d2'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('a516ab2a8ae5457599940e4d6d0206ca'),'UA');
# Se craran 0 archivos para el estudio 4f28b00f227f4b429474cb16f27255d2
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-12','Resfrio común.',UNHEX('6999122b91b64fc7a8e37293c433fa74'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('a516ab2a8ae5457599940e4d6d0206ca'),'BT');
# Se craran 3 archivos para el estudio 6999122b91b64fc7a8e37293c433fa74
CALL insert_study_file (UNHEX('45e4cbae103f4713b33c6b7a2960fcdc'),'Archivo 0.pdf',UNHEX('6999122b91b64fc7a8e37293c433fa74'));
CALL insert_study_file (UNHEX('22156270663a44bd87a28edefb4f801d'),'Archivo 1.pdf',UNHEX('6999122b91b64fc7a8e37293c433fa74'));
CALL insert_study_file (UNHEX('7255448a83964961839a36e82c50c797'),'Archivo 2.jpg',UNHEX('6999122b91b64fc7a8e37293c433fa74'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-07','Gripe estacional.',UNHEX('3a3b814b449442268a11cf4b8067f0dd'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('a516ab2a8ae5457599940e4d6d0206ca'),'UA');
# Se craran 8 archivos para el estudio 3a3b814b449442268a11cf4b8067f0dd
CALL insert_study_file (UNHEX('69c0e36b3fab4d1f9ddfbcb71decd8ac'),'Archivo 0.doc',UNHEX('3a3b814b449442268a11cf4b8067f0dd'));
CALL insert_study_file (UNHEX('faf6176828b541609413f648a3483d7c'),'Archivo 1.jpg',UNHEX('3a3b814b449442268a11cf4b8067f0dd'));
CALL insert_study_file (UNHEX('71d8fa90ac9a4695a27e69a20809a9af'),'Archivo 2.doc',UNHEX('3a3b814b449442268a11cf4b8067f0dd'));
CALL insert_study_file (UNHEX('0b41c16f6e104bf7954bc32bc05b2912'),'Archivo 3.pdf',UNHEX('3a3b814b449442268a11cf4b8067f0dd'));
CALL insert_study_file (UNHEX('d43cda6fde9847f196e7cff942487112'),'Archivo 4.txt',UNHEX('3a3b814b449442268a11cf4b8067f0dd'));
CALL insert_study_file (UNHEX('42acd7022f7f43b7beaa37ad6d641e5e'),'Archivo 5.doc',UNHEX('3a3b814b449442268a11cf4b8067f0dd'));
CALL insert_study_file (UNHEX('2f921ab12fb9427dbf69d9fa9a776a7b'),'Archivo 6.doc',UNHEX('3a3b814b449442268a11cf4b8067f0dd'));
CALL insert_study_file (UNHEX('40e6328e4e1549648dff01acec2e25ac'),'Archivo 7.doc',UNHEX('3a3b814b449442268a11cf4b8067f0dd'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('bbaee26449b14270886e388a320d5741'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('a516ab2a8ae5457599940e4d6d0206ca'),'UA');
# Se craran 1 archivos para el estudio bbaee26449b14270886e388a320d5741
CALL insert_study_file (UNHEX('7dd2d866afce49739a0d0cee3f769a3e'),'Archivo 0.pdf',UNHEX('bbaee26449b14270886e388a320d5741'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-12','Diferencial: Gripe H1N1',UNHEX('351586f570c04324817a2497ab133d96'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','Tolerancia muy baja a los sintomas gripales.',UNHEX('a516ab2a8ae5457599940e4d6d0206ca'),'UA');
# Se craran 6 archivos para el estudio 351586f570c04324817a2497ab133d96
CALL insert_study_file (UNHEX('0b17858d5c664d318356db7be89f1180'),'Archivo 0.doc',UNHEX('351586f570c04324817a2497ab133d96'));
CALL insert_study_file (UNHEX('decb636a1dcd450e9195f5986922797b'),'Archivo 1.pdf',UNHEX('351586f570c04324817a2497ab133d96'));
CALL insert_study_file (UNHEX('5124a48c7ec148688344b1b6e0212d32'),'Archivo 2.pdf',UNHEX('351586f570c04324817a2497ab133d96'));
CALL insert_study_file (UNHEX('1fbe6ecfdffb4dd7ba17be65e5e9b24f'),'Archivo 3.txt',UNHEX('351586f570c04324817a2497ab133d96'));
CALL insert_study_file (UNHEX('e22cfe61c3fc4036b2d9df3d0d845e01'),'Archivo 4.doc',UNHEX('351586f570c04324817a2497ab133d96'));
CALL insert_study_file (UNHEX('f94bf17a679b4623993f4eb742cfde05'),'Archivo 5.pdf',UNHEX('351586f570c04324817a2497ab133d96'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente bf63d1a6f5cd4641af4fec47a00b7ea8
CALL insert_patient ('1970-03-04','1','F', UNHEX('bf63d1a6f5cd4641af4fec47a00b7ea8'),'Poehler, Jelene Rowe','Anemia falciforme.','doctor');
# Se craran 15 estudios para el paciente bf63d1a6f5cd4641af4fec47a00b7ea8
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-11','Gripe estacional.',UNHEX('a16e2f9372504a5791c351c5bc4c0e41'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('bf63d1a6f5cd4641af4fec47a00b7ea8'),'BT');
# Se craran 6 archivos para el estudio a16e2f9372504a5791c351c5bc4c0e41
CALL insert_study_file (UNHEX('b9c527bf522746a9bfc30cfe50f3ee66'),'Archivo 0.txt',UNHEX('a16e2f9372504a5791c351c5bc4c0e41'));
CALL insert_study_file (UNHEX('8cecfd4d7b134242817f878068a4bea3'),'Archivo 1.doc',UNHEX('a16e2f9372504a5791c351c5bc4c0e41'));
CALL insert_study_file (UNHEX('fb872ed5253a468080c2d80fc955b3d6'),'Archivo 2.doc',UNHEX('a16e2f9372504a5791c351c5bc4c0e41'));
CALL insert_study_file (UNHEX('41cf8052293242ba94593e657ce21ce5'),'Archivo 3.pdf',UNHEX('a16e2f9372504a5791c351c5bc4c0e41'));
CALL insert_study_file (UNHEX('0e5694cf9c8d4a4ebd1507ffdb21c848'),'Archivo 4.doc',UNHEX('a16e2f9372504a5791c351c5bc4c0e41'));
CALL insert_study_file (UNHEX('b23e34351dc742a6bb24613894934135'),'Archivo 5.doc',UNHEX('a16e2f9372504a5791c351c5bc4c0e41'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-11','Posibles alergias estacionales.',UNHEX('b19549e7f8e4469ca04016ebf612037e'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('bf63d1a6f5cd4641af4fec47a00b7ea8'),'UA');
# Se craran 3 archivos para el estudio b19549e7f8e4469ca04016ebf612037e
CALL insert_study_file (UNHEX('62195c03471b412cbda10246ca8f2ed5'),'Archivo 0.pdf',UNHEX('b19549e7f8e4469ca04016ebf612037e'));
CALL insert_study_file (UNHEX('799fa24c9012479897777f5a0aa17f94'),'Archivo 1.doc',UNHEX('b19549e7f8e4469ca04016ebf612037e'));
CALL insert_study_file (UNHEX('94ed331e079d4dd38181eda0e27c7ac5'),'Archivo 2.txt',UNHEX('b19549e7f8e4469ca04016ebf612037e'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-08','Gripe estacional.',UNHEX('40bd808f782a4de0bbbf27ba2479d86d'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('bf63d1a6f5cd4641af4fec47a00b7ea8'),'BT');
# Se craran 1 archivos para el estudio 40bd808f782a4de0bbbf27ba2479d86d
CALL insert_study_file (UNHEX('78b768259a82412aae674ebb27ed3375'),'Archivo 0.pdf',UNHEX('40bd808f782a4de0bbbf27ba2479d86d'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('5b507b1b0a0d49019efbed20fd11a9b2'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('bf63d1a6f5cd4641af4fec47a00b7ea8'),'UA');
# Se craran 7 archivos para el estudio 5b507b1b0a0d49019efbed20fd11a9b2
CALL insert_study_file (UNHEX('e79965efd26c4d76be3fdff35753cb1e'),'Archivo 0.txt',UNHEX('5b507b1b0a0d49019efbed20fd11a9b2'));
CALL insert_study_file (UNHEX('b3c00fef80724e869feaea5515fcc394'),'Archivo 1.txt',UNHEX('5b507b1b0a0d49019efbed20fd11a9b2'));
CALL insert_study_file (UNHEX('440101c7a41f4a758f48a7352a32ea8e'),'Archivo 2.jpg',UNHEX('5b507b1b0a0d49019efbed20fd11a9b2'));
CALL insert_study_file (UNHEX('9761692a25ad4365ba708ac8de36b655'),'Archivo 3.pdf',UNHEX('5b507b1b0a0d49019efbed20fd11a9b2'));
CALL insert_study_file (UNHEX('529c93ebc07c4251be8b6ebe8b808bbf'),'Archivo 4.jpg',UNHEX('5b507b1b0a0d49019efbed20fd11a9b2'));
CALL insert_study_file (UNHEX('987c742047b6474da7520e8865ac3378'),'Archivo 5.pdf',UNHEX('5b507b1b0a0d49019efbed20fd11a9b2'));
CALL insert_study_file (UNHEX('3190b8740a584b87b99b3062a635d759'),'Archivo 6.txt',UNHEX('5b507b1b0a0d49019efbed20fd11a9b2'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('9e0b6146d58744b287e3189800a8fffc'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('bf63d1a6f5cd4641af4fec47a00b7ea8'),'BT');
# Se craran 9 archivos para el estudio 9e0b6146d58744b287e3189800a8fffc
CALL insert_study_file (UNHEX('3513df62094649d0aaac518ef0b3b87c'),'Archivo 0.pdf',UNHEX('9e0b6146d58744b287e3189800a8fffc'));
CALL insert_study_file (UNHEX('76b865b75f5147dd8aaff8eac7113021'),'Archivo 1.jpg',UNHEX('9e0b6146d58744b287e3189800a8fffc'));
CALL insert_study_file (UNHEX('c5eb6b0568e7408e97ac254e6a73b04f'),'Archivo 2.jpg',UNHEX('9e0b6146d58744b287e3189800a8fffc'));
CALL insert_study_file (UNHEX('d050ea3a9a224f16b0e8ccf4075eff7c'),'Archivo 3.jpg',UNHEX('9e0b6146d58744b287e3189800a8fffc'));
CALL insert_study_file (UNHEX('a0191a15541345b79cdc025191a95eb8'),'Archivo 4.pdf',UNHEX('9e0b6146d58744b287e3189800a8fffc'));
CALL insert_study_file (UNHEX('5079aed81e1b4607832a6aea067538f7'),'Archivo 5.pdf',UNHEX('9e0b6146d58744b287e3189800a8fffc'));
CALL insert_study_file (UNHEX('177a41a8aa8743d79bf5d0312cf2e56e'),'Archivo 6.pdf',UNHEX('9e0b6146d58744b287e3189800a8fffc'));
CALL insert_study_file (UNHEX('d95327486b654f7f85233d867a269c37'),'Archivo 7.pdf',UNHEX('9e0b6146d58744b287e3189800a8fffc'));
CALL insert_study_file (UNHEX('7f06a9c985bb45739b6e44b833b4102a'),'Archivo 8.jpg',UNHEX('9e0b6146d58744b287e3189800a8fffc'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-11','Posibles alergias estacionales.',UNHEX('9889ad206ee54747b2e775524de908f7'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Programada nueva consulta en 5 días.',UNHEX('bf63d1a6f5cd4641af4fec47a00b7ea8'),'BT');
# Se craran 6 archivos para el estudio 9889ad206ee54747b2e775524de908f7
CALL insert_study_file (UNHEX('838bc5a0a2d342a0a2eaac54503e8b19'),'Archivo 0.txt',UNHEX('9889ad206ee54747b2e775524de908f7'));
CALL insert_study_file (UNHEX('d121f7cc80af492dbe64704669a30c35'),'Archivo 1.doc',UNHEX('9889ad206ee54747b2e775524de908f7'));
CALL insert_study_file (UNHEX('cd4210ba61cd4638a3290b6f6973202d'),'Archivo 2.pdf',UNHEX('9889ad206ee54747b2e775524de908f7'));
CALL insert_study_file (UNHEX('33db280fe9c746c2b353d6d67b3a1fc4'),'Archivo 3.doc',UNHEX('9889ad206ee54747b2e775524de908f7'));
CALL insert_study_file (UNHEX('b55d50f0c1ff456eb8a12e5360e792a6'),'Archivo 4.pdf',UNHEX('9889ad206ee54747b2e775524de908f7'));
CALL insert_study_file (UNHEX('91065ef8e7c948618391d8e49e4d321f'),'Archivo 5.doc',UNHEX('9889ad206ee54747b2e775524de908f7'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-09','Resfrio común.',UNHEX('32c47020992c4a938c04b6d2b6438452'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('bf63d1a6f5cd4641af4fec47a00b7ea8'),'ET');
# Se craran 1 archivos para el estudio 32c47020992c4a938c04b6d2b6438452
CALL insert_study_file (UNHEX('d1df778cd3ed42f2ab208e19662b7108'),'Archivo 0.jpg',UNHEX('32c47020992c4a938c04b6d2b6438452'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('db85c2988db041f9bff13df8544292d1'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Programada nueva consulta en 5 días.',UNHEX('bf63d1a6f5cd4641af4fec47a00b7ea8'),'UA');
# Se craran 0 archivos para el estudio db85c2988db041f9bff13df8544292d1
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('8cddb6dfab664a3f85bc4e7172d24ea4'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('bf63d1a6f5cd4641af4fec47a00b7ea8'),'UA');
# Se craran 6 archivos para el estudio 8cddb6dfab664a3f85bc4e7172d24ea4
CALL insert_study_file (UNHEX('7bc258923c40479ca6dd771dde63be4e'),'Archivo 0.jpg',UNHEX('8cddb6dfab664a3f85bc4e7172d24ea4'));
CALL insert_study_file (UNHEX('7dd06fb76e84499e9436c5966310af05'),'Archivo 1.jpg',UNHEX('8cddb6dfab664a3f85bc4e7172d24ea4'));
CALL insert_study_file (UNHEX('e9a1a539f66440fe9a274c0f28af6908'),'Archivo 2.pdf',UNHEX('8cddb6dfab664a3f85bc4e7172d24ea4'));
CALL insert_study_file (UNHEX('732abf2391cb49d8b3fc5d55337ff036'),'Archivo 3.txt',UNHEX('8cddb6dfab664a3f85bc4e7172d24ea4'));
CALL insert_study_file (UNHEX('a79653bb0971461089f9b7648fad5cf0'),'Archivo 4.doc',UNHEX('8cddb6dfab664a3f85bc4e7172d24ea4'));
CALL insert_study_file (UNHEX('fdb5126e9a6c439d9d7b453f3ac1cef7'),'Archivo 5.txt',UNHEX('8cddb6dfab664a3f85bc4e7172d24ea4'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('efcc852ad77a4268ba8f23d9b6ed4a69'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('bf63d1a6f5cd4641af4fec47a00b7ea8'),'ET');
# Se craran 9 archivos para el estudio efcc852ad77a4268ba8f23d9b6ed4a69
CALL insert_study_file (UNHEX('064e0e442b4f4f7b9e7b2d85277c41fb'),'Archivo 0.pdf',UNHEX('efcc852ad77a4268ba8f23d9b6ed4a69'));
CALL insert_study_file (UNHEX('c8c522caca9f404796c3d88d2ab914a5'),'Archivo 1.jpg',UNHEX('efcc852ad77a4268ba8f23d9b6ed4a69'));
CALL insert_study_file (UNHEX('4f476517b26a4bd49b2958a939ccfd15'),'Archivo 2.jpg',UNHEX('efcc852ad77a4268ba8f23d9b6ed4a69'));
CALL insert_study_file (UNHEX('f9bf95b5880048e6aa6e055789e69668'),'Archivo 3.txt',UNHEX('efcc852ad77a4268ba8f23d9b6ed4a69'));
CALL insert_study_file (UNHEX('3f5ac7982483495096fba29818837ad2'),'Archivo 4.pdf',UNHEX('efcc852ad77a4268ba8f23d9b6ed4a69'));
CALL insert_study_file (UNHEX('c2a2401c85964d2182145715edecde2b'),'Archivo 5.jpg',UNHEX('efcc852ad77a4268ba8f23d9b6ed4a69'));
CALL insert_study_file (UNHEX('9b3c5f0eb0ec4fb9bfe2e58b46935163'),'Archivo 6.jpg',UNHEX('efcc852ad77a4268ba8f23d9b6ed4a69'));
CALL insert_study_file (UNHEX('27f3b7d4263d4a0089da2d15b5232220'),'Archivo 7.doc',UNHEX('efcc852ad77a4268ba8f23d9b6ed4a69'));
CALL insert_study_file (UNHEX('db0d7321dedf4e7498ce1675659a3b88'),'Archivo 8.doc',UNHEX('efcc852ad77a4268ba8f23d9b6ed4a69'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('35075c02404d42758e7141317db9396d'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('bf63d1a6f5cd4641af4fec47a00b7ea8'),'UA');
# Se craran 1 archivos para el estudio 35075c02404d42758e7141317db9396d
CALL insert_study_file (UNHEX('8671e1c8443342acae4ffa6c0c97262a'),'Archivo 0.txt',UNHEX('35075c02404d42758e7141317db9396d'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-05','Resfrio común.',UNHEX('ef629ee36bd74167ba05feacb1844fd7'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('bf63d1a6f5cd4641af4fec47a00b7ea8'),'BT');
# Se craran 7 archivos para el estudio ef629ee36bd74167ba05feacb1844fd7
CALL insert_study_file (UNHEX('0a5b9412dd524deeb3b41fb0f0fdb138'),'Archivo 0.pdf',UNHEX('ef629ee36bd74167ba05feacb1844fd7'));
CALL insert_study_file (UNHEX('ae985994bad64bb58cefc79210dc701d'),'Archivo 1.pdf',UNHEX('ef629ee36bd74167ba05feacb1844fd7'));
CALL insert_study_file (UNHEX('8173d983a7c34f3ca1a2b22dad615707'),'Archivo 2.txt',UNHEX('ef629ee36bd74167ba05feacb1844fd7'));
CALL insert_study_file (UNHEX('681a4663462f4a1cb0beeffeaf5e9c73'),'Archivo 3.doc',UNHEX('ef629ee36bd74167ba05feacb1844fd7'));
CALL insert_study_file (UNHEX('24af217a44f844acaf3ba9da39a14ffe'),'Archivo 4.jpg',UNHEX('ef629ee36bd74167ba05feacb1844fd7'));
CALL insert_study_file (UNHEX('e5c9845ff3004e41b8706dd7c3a8ba68'),'Archivo 5.doc',UNHEX('ef629ee36bd74167ba05feacb1844fd7'));
CALL insert_study_file (UNHEX('555838dd72b74e1bb8c0d648bc4d5d73'),'Archivo 6.jpg',UNHEX('ef629ee36bd74167ba05feacb1844fd7'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-05','Diferencial: Gripe H1N1',UNHEX('fb686894004a47099c25f6f972100aec'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','---',UNHEX('bf63d1a6f5cd4641af4fec47a00b7ea8'),'ET');
# Se craran 7 archivos para el estudio fb686894004a47099c25f6f972100aec
CALL insert_study_file (UNHEX('1b6b67749930475d86dcad1df703b1ab'),'Archivo 0.pdf',UNHEX('fb686894004a47099c25f6f972100aec'));
CALL insert_study_file (UNHEX('ebd00231625b492fa722787a7a7b3485'),'Archivo 1.jpg',UNHEX('fb686894004a47099c25f6f972100aec'));
CALL insert_study_file (UNHEX('b5b2d92414074744b5f604de99428aea'),'Archivo 2.pdf',UNHEX('fb686894004a47099c25f6f972100aec'));
CALL insert_study_file (UNHEX('b902ac66061841fa9a9bdd26478882a2'),'Archivo 3.txt',UNHEX('fb686894004a47099c25f6f972100aec'));
CALL insert_study_file (UNHEX('5e0d743f354b4f858470e488b60a731b'),'Archivo 4.txt',UNHEX('fb686894004a47099c25f6f972100aec'));
CALL insert_study_file (UNHEX('ba704f9056a64f95bcf9d0e9cb812c33'),'Archivo 5.doc',UNHEX('fb686894004a47099c25f6f972100aec'));
CALL insert_study_file (UNHEX('13d6d69794ae45e4bc9b0182b47e9676'),'Archivo 6.jpg',UNHEX('fb686894004a47099c25f6f972100aec'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('a7f9be20ab3b4518a98abf8f9a083235'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('bf63d1a6f5cd4641af4fec47a00b7ea8'),'BT');
# Se craran 2 archivos para el estudio a7f9be20ab3b4518a98abf8f9a083235
CALL insert_study_file (UNHEX('5b7cc2f7e84d492e8a68566821b1edd2'),'Archivo 0.jpg',UNHEX('a7f9be20ab3b4518a98abf8f9a083235'));
CALL insert_study_file (UNHEX('073a1c0c1dc74c43921996a6121e7923'),'Archivo 1.pdf',UNHEX('a7f9be20ab3b4518a98abf8f9a083235'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('9ac617fbee9149f29de1cad2f3f9d183'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Tolerancia muy baja a los sintomas gripales.',UNHEX('bf63d1a6f5cd4641af4fec47a00b7ea8'),'ET');
# Se craran 3 archivos para el estudio 9ac617fbee9149f29de1cad2f3f9d183
CALL insert_study_file (UNHEX('35dac7a7e4964b6c95125a43691c725f'),'Archivo 0.txt',UNHEX('9ac617fbee9149f29de1cad2f3f9d183'));
CALL insert_study_file (UNHEX('a5d3e4576f4c43889e46ab4b90b16473'),'Archivo 1.pdf',UNHEX('9ac617fbee9149f29de1cad2f3f9d183'));
CALL insert_study_file (UNHEX('c7fd598e4bd24c91a7e81a5ab5a03ba5'),'Archivo 2.pdf',UNHEX('9ac617fbee9149f29de1cad2f3f9d183'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente f735b147b07247a3b555d241756fa26f
CALL insert_patient ('1970-01-12','6','M', UNHEX('f735b147b07247a3b555d241756fa26f'),'Mintz, Jaime','','doctor');
# Se craran 19 estudios para el paciente f735b147b07247a3b555d241756fa26f
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('79c256dc22fd4bbb96dd1db02fbda873'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('f735b147b07247a3b555d241756fa26f'),'UA');
# Se craran 5 archivos para el estudio 79c256dc22fd4bbb96dd1db02fbda873
CALL insert_study_file (UNHEX('afadd185a415468b8fd6b854081b1faf'),'Archivo 0.txt',UNHEX('79c256dc22fd4bbb96dd1db02fbda873'));
CALL insert_study_file (UNHEX('ad27a4c7df7f45b9aef693ee4e939a9f'),'Archivo 1.doc',UNHEX('79c256dc22fd4bbb96dd1db02fbda873'));
CALL insert_study_file (UNHEX('01d5f107ddb2494cb7877480e7014c67'),'Archivo 2.txt',UNHEX('79c256dc22fd4bbb96dd1db02fbda873'));
CALL insert_study_file (UNHEX('9bd6f4e2f3db4fb09afd083ece9d5fc7'),'Archivo 3.jpg',UNHEX('79c256dc22fd4bbb96dd1db02fbda873'));
CALL insert_study_file (UNHEX('987276b28b11411b983787aae120ba18'),'Archivo 4.doc',UNHEX('79c256dc22fd4bbb96dd1db02fbda873'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-07','Diferencial: Resfrio común.',UNHEX('1fcd3596a20646ceb53d574ddfd3866b'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('f735b147b07247a3b555d241756fa26f'),'UA');
# Se craran 2 archivos para el estudio 1fcd3596a20646ceb53d574ddfd3866b
CALL insert_study_file (UNHEX('880cb1a7d59c4f048ec5d576492b011a'),'Archivo 0.doc',UNHEX('1fcd3596a20646ceb53d574ddfd3866b'));
CALL insert_study_file (UNHEX('e9c4b8189565446fba04dabbfa8b9ba7'),'Archivo 1.pdf',UNHEX('1fcd3596a20646ceb53d574ddfd3866b'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('0df8da3df8b4485d8d2fec20c61a66cb'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('f735b147b07247a3b555d241756fa26f'),'UA');
# Se craran 9 archivos para el estudio 0df8da3df8b4485d8d2fec20c61a66cb
CALL insert_study_file (UNHEX('ccd8549a818e40a7b96558070da3b0a2'),'Archivo 0.pdf',UNHEX('0df8da3df8b4485d8d2fec20c61a66cb'));
CALL insert_study_file (UNHEX('927f43efde0545f2894519805e2a33d2'),'Archivo 1.txt',UNHEX('0df8da3df8b4485d8d2fec20c61a66cb'));
CALL insert_study_file (UNHEX('34fd62b75eb549a7857b82604ab851c6'),'Archivo 2.jpg',UNHEX('0df8da3df8b4485d8d2fec20c61a66cb'));
CALL insert_study_file (UNHEX('83d5a6a57fb44796a25c0feacdbd2d40'),'Archivo 3.txt',UNHEX('0df8da3df8b4485d8d2fec20c61a66cb'));
CALL insert_study_file (UNHEX('ab9ff4991fb34c219802fc95853014d7'),'Archivo 4.txt',UNHEX('0df8da3df8b4485d8d2fec20c61a66cb'));
CALL insert_study_file (UNHEX('616439a607ea4130baf9bb1bc94bc887'),'Archivo 5.pdf',UNHEX('0df8da3df8b4485d8d2fec20c61a66cb'));
CALL insert_study_file (UNHEX('c2ca7b7170ac4bc5a6bcc0eb185a28f9'),'Archivo 6.jpg',UNHEX('0df8da3df8b4485d8d2fec20c61a66cb'));
CALL insert_study_file (UNHEX('0a3e05a3198f44c39605d7a68bd88630'),'Archivo 7.txt',UNHEX('0df8da3df8b4485d8d2fec20c61a66cb'));
CALL insert_study_file (UNHEX('20ed00a2678c47769fb22d4b9569cf58'),'Archivo 8.pdf',UNHEX('0df8da3df8b4485d8d2fec20c61a66cb'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-06','Gripe estacional.',UNHEX('c58fd90905ef48a48e828b7d6acbd3cc'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('f735b147b07247a3b555d241756fa26f'),'ET');
# Se craran 6 archivos para el estudio c58fd90905ef48a48e828b7d6acbd3cc
CALL insert_study_file (UNHEX('baafbe6c69eb4e88ba45e03b4d65190f'),'Archivo 0.jpg',UNHEX('c58fd90905ef48a48e828b7d6acbd3cc'));
CALL insert_study_file (UNHEX('c1b8a601293845b886ad24d0a9d3d9ed'),'Archivo 1.doc',UNHEX('c58fd90905ef48a48e828b7d6acbd3cc'));
CALL insert_study_file (UNHEX('2a5dccfcbdb84b42b935ac6c65536ac6'),'Archivo 2.pdf',UNHEX('c58fd90905ef48a48e828b7d6acbd3cc'));
CALL insert_study_file (UNHEX('8e73d66bee404d1eae54e94567ce6c95'),'Archivo 3.jpg',UNHEX('c58fd90905ef48a48e828b7d6acbd3cc'));
CALL insert_study_file (UNHEX('9d41c9058f9244c08b3e3b6a22f000d0'),'Archivo 4.pdf',UNHEX('c58fd90905ef48a48e828b7d6acbd3cc'));
CALL insert_study_file (UNHEX('b7aec270653d41dab6fe2129cd0c2387'),'Archivo 5.doc',UNHEX('c58fd90905ef48a48e828b7d6acbd3cc'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('64ad012957064210a1d1bafe4d4a80d5'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('f735b147b07247a3b555d241756fa26f'),'ET');
# Se craran 4 archivos para el estudio 64ad012957064210a1d1bafe4d4a80d5
CALL insert_study_file (UNHEX('913c80034409458db8891d8d56f7e035'),'Archivo 0.doc',UNHEX('64ad012957064210a1d1bafe4d4a80d5'));
CALL insert_study_file (UNHEX('033d62b28bc642dfaa83c3e5d34f1078'),'Archivo 1.doc',UNHEX('64ad012957064210a1d1bafe4d4a80d5'));
CALL insert_study_file (UNHEX('9032a80f10b2438abc740898a8698f28'),'Archivo 2.txt',UNHEX('64ad012957064210a1d1bafe4d4a80d5'));
CALL insert_study_file (UNHEX('7f25fb2814054a36ad935f4c09c38927'),'Archivo 3.doc',UNHEX('64ad012957064210a1d1bafe4d4a80d5'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-06','Gripe estacional.',UNHEX('11a1c6d2c7c347519684242da0d6cd6b'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Tolerancia muy baja a los sintomas gripales.',UNHEX('f735b147b07247a3b555d241756fa26f'),'ET');
# Se craran 6 archivos para el estudio 11a1c6d2c7c347519684242da0d6cd6b
CALL insert_study_file (UNHEX('6a1bc9428ece464fb43bbf38b3dbb02c'),'Archivo 0.jpg',UNHEX('11a1c6d2c7c347519684242da0d6cd6b'));
CALL insert_study_file (UNHEX('cedf3c1457ee4d2683c102a3ed14d6c4'),'Archivo 1.pdf',UNHEX('11a1c6d2c7c347519684242da0d6cd6b'));
CALL insert_study_file (UNHEX('c50f384741b0403a992ee789181048b3'),'Archivo 2.doc',UNHEX('11a1c6d2c7c347519684242da0d6cd6b'));
CALL insert_study_file (UNHEX('eed180f3cc1d40849292f3d08a7b6b23'),'Archivo 3.jpg',UNHEX('11a1c6d2c7c347519684242da0d6cd6b'));
CALL insert_study_file (UNHEX('07f5399d0eb045a294d0a1fece03c901'),'Archivo 4.pdf',UNHEX('11a1c6d2c7c347519684242da0d6cd6b'));
CALL insert_study_file (UNHEX('34ef8f7926bf42fda59351c87ec50c1f'),'Archivo 5.jpg',UNHEX('11a1c6d2c7c347519684242da0d6cd6b'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-09','Diferencial: Gripe H1N1',UNHEX('70c6699215f243f98ee5067ab33fa973'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','Tolerancia muy baja a los sintomas gripales.',UNHEX('f735b147b07247a3b555d241756fa26f'),'ET');
# Se craran 3 archivos para el estudio 70c6699215f243f98ee5067ab33fa973
CALL insert_study_file (UNHEX('b12b07fee4074f83a625bf31b6f643c4'),'Archivo 0.doc',UNHEX('70c6699215f243f98ee5067ab33fa973'));
CALL insert_study_file (UNHEX('ee4a85e2b70f49d7a25aada15062a472'),'Archivo 1.jpg',UNHEX('70c6699215f243f98ee5067ab33fa973'));
CALL insert_study_file (UNHEX('96404d6ed5f84227b64b2770b669391e'),'Archivo 2.jpg',UNHEX('70c6699215f243f98ee5067ab33fa973'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('af88d6e5023f413e8482cf6bb3eb5bb5'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('f735b147b07247a3b555d241756fa26f'),'ET');
# Se craran 2 archivos para el estudio af88d6e5023f413e8482cf6bb3eb5bb5
CALL insert_study_file (UNHEX('bab5492d964241499e98eaafb6638326'),'Archivo 0.doc',UNHEX('af88d6e5023f413e8482cf6bb3eb5bb5'));
CALL insert_study_file (UNHEX('48b7c9a8447f490a9dac26ed46a19111'),'Archivo 1.txt',UNHEX('af88d6e5023f413e8482cf6bb3eb5bb5'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('7f9d710b97824d9d97b39247653cc3b0'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('f735b147b07247a3b555d241756fa26f'),'ET');
# Se craran 7 archivos para el estudio 7f9d710b97824d9d97b39247653cc3b0
CALL insert_study_file (UNHEX('34cb44592fba4a40bf7a26c937fccf8d'),'Archivo 0.jpg',UNHEX('7f9d710b97824d9d97b39247653cc3b0'));
CALL insert_study_file (UNHEX('94d5d0dc3b3d4474b6e4fed6c66877dc'),'Archivo 1.pdf',UNHEX('7f9d710b97824d9d97b39247653cc3b0'));
CALL insert_study_file (UNHEX('1bbee28373014898a0655315fa81ca37'),'Archivo 2.doc',UNHEX('7f9d710b97824d9d97b39247653cc3b0'));
CALL insert_study_file (UNHEX('4773376187aa4960ab804e9fc899aa68'),'Archivo 3.txt',UNHEX('7f9d710b97824d9d97b39247653cc3b0'));
CALL insert_study_file (UNHEX('71fbf654179649b2aafb2aebfae70161'),'Archivo 4.pdf',UNHEX('7f9d710b97824d9d97b39247653cc3b0'));
CALL insert_study_file (UNHEX('1744ae6ef96a46d4b1bcf560f14e6de7'),'Archivo 5.jpg',UNHEX('7f9d710b97824d9d97b39247653cc3b0'));
CALL insert_study_file (UNHEX('d7ea7e6bd65f4435ad293373bcebe5ee'),'Archivo 6.doc',UNHEX('7f9d710b97824d9d97b39247653cc3b0'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-06','Resfrio común.',UNHEX('e4ed7b82d7204f8eba9e302eac02a0b5'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('f735b147b07247a3b555d241756fa26f'),'BT');
# Se craran 3 archivos para el estudio e4ed7b82d7204f8eba9e302eac02a0b5
CALL insert_study_file (UNHEX('3631d3e5563e4badb4f5194bc0b83587'),'Archivo 0.pdf',UNHEX('e4ed7b82d7204f8eba9e302eac02a0b5'));
CALL insert_study_file (UNHEX('735ebeef6dec4e5c811c7b0ec62c0b48'),'Archivo 1.jpg',UNHEX('e4ed7b82d7204f8eba9e302eac02a0b5'));
CALL insert_study_file (UNHEX('6f2fcf1471ac431ebc337195704a2bdb'),'Archivo 2.txt',UNHEX('e4ed7b82d7204f8eba9e302eac02a0b5'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('8caedc8089dd4f33be027766a8e9a208'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('f735b147b07247a3b555d241756fa26f'),'UA');
# Se craran 2 archivos para el estudio 8caedc8089dd4f33be027766a8e9a208
CALL insert_study_file (UNHEX('618787d6b60747e5927f47da5ea021a6'),'Archivo 0.jpg',UNHEX('8caedc8089dd4f33be027766a8e9a208'));
CALL insert_study_file (UNHEX('fb90f99fa924425ba1c9f0632108a104'),'Archivo 1.pdf',UNHEX('8caedc8089dd4f33be027766a8e9a208'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-11','Diferencial: Resfrio común.',UNHEX('52ab4905e1574b7c8728a325f39d1825'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('f735b147b07247a3b555d241756fa26f'),'ET');
# Se craran 9 archivos para el estudio 52ab4905e1574b7c8728a325f39d1825
CALL insert_study_file (UNHEX('d558d00800a54f6595147521f7f67e1a'),'Archivo 0.txt',UNHEX('52ab4905e1574b7c8728a325f39d1825'));
CALL insert_study_file (UNHEX('e1816496d6fd44f2854004dd316471e0'),'Archivo 1.doc',UNHEX('52ab4905e1574b7c8728a325f39d1825'));
CALL insert_study_file (UNHEX('453fda2572f34466aa2ce517a2936e55'),'Archivo 2.doc',UNHEX('52ab4905e1574b7c8728a325f39d1825'));
CALL insert_study_file (UNHEX('3dfb8b9ce7d14ea1b084a7bb292186e1'),'Archivo 3.txt',UNHEX('52ab4905e1574b7c8728a325f39d1825'));
CALL insert_study_file (UNHEX('6fff741c194e4bcda08ff61c82c908ac'),'Archivo 4.doc',UNHEX('52ab4905e1574b7c8728a325f39d1825'));
CALL insert_study_file (UNHEX('a90faa4bbcc14ad59192881e214f0536'),'Archivo 5.pdf',UNHEX('52ab4905e1574b7c8728a325f39d1825'));
CALL insert_study_file (UNHEX('81307acf0d66498c8b3621f94ce4c460'),'Archivo 6.jpg',UNHEX('52ab4905e1574b7c8728a325f39d1825'));
CALL insert_study_file (UNHEX('c22e1e8a60554db59a70cf09d1ea7815'),'Archivo 7.jpg',UNHEX('52ab4905e1574b7c8728a325f39d1825'));
CALL insert_study_file (UNHEX('de40418c96d24c618207ed63d2132a3b'),'Archivo 8.txt',UNHEX('52ab4905e1574b7c8728a325f39d1825'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('0a762eee0b9b48f1891117ae551e7ee9'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('f735b147b07247a3b555d241756fa26f'),'BT');
# Se craran 6 archivos para el estudio 0a762eee0b9b48f1891117ae551e7ee9
CALL insert_study_file (UNHEX('1bff13e4373a410093fb06487c7a571d'),'Archivo 0.pdf',UNHEX('0a762eee0b9b48f1891117ae551e7ee9'));
CALL insert_study_file (UNHEX('40b40001eaa74d3caa22a0712b3dec3a'),'Archivo 1.doc',UNHEX('0a762eee0b9b48f1891117ae551e7ee9'));
CALL insert_study_file (UNHEX('d6807585bf1d4ae985ded8b7a3f1fd6e'),'Archivo 2.txt',UNHEX('0a762eee0b9b48f1891117ae551e7ee9'));
CALL insert_study_file (UNHEX('562b1588f9c944cf87033e887e3b8fa9'),'Archivo 3.jpg',UNHEX('0a762eee0b9b48f1891117ae551e7ee9'));
CALL insert_study_file (UNHEX('53c00e8c144c4469b0ec1a1eb7d5df7e'),'Archivo 4.pdf',UNHEX('0a762eee0b9b48f1891117ae551e7ee9'));
CALL insert_study_file (UNHEX('e78236a1248644da92f32e46d0a6000c'),'Archivo 5.pdf',UNHEX('0a762eee0b9b48f1891117ae551e7ee9'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('cdd5ad1b4930434585f938902b23b67c'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('f735b147b07247a3b555d241756fa26f'),'UA');
# Se craran 5 archivos para el estudio cdd5ad1b4930434585f938902b23b67c
CALL insert_study_file (UNHEX('2f7d27eacc8242729e08107045e272c0'),'Archivo 0.jpg',UNHEX('cdd5ad1b4930434585f938902b23b67c'));
CALL insert_study_file (UNHEX('ad1ee5c56c454003b9d225217ce83cf8'),'Archivo 1.pdf',UNHEX('cdd5ad1b4930434585f938902b23b67c'));
CALL insert_study_file (UNHEX('3b41ea2a4594434cbb316b146d85d1cb'),'Archivo 2.doc',UNHEX('cdd5ad1b4930434585f938902b23b67c'));
CALL insert_study_file (UNHEX('fee106b39b3a4b4081656033942f994e'),'Archivo 3.doc',UNHEX('cdd5ad1b4930434585f938902b23b67c'));
CALL insert_study_file (UNHEX('a8a051e1cf164792928b1ef1e07650a3'),'Archivo 4.txt',UNHEX('cdd5ad1b4930434585f938902b23b67c'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('80e7069793af4d79a515bb52243f7436'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('f735b147b07247a3b555d241756fa26f'),'ET');
# Se craran 5 archivos para el estudio 80e7069793af4d79a515bb52243f7436
CALL insert_study_file (UNHEX('bafbc2e998dd445baf328f18d6eb9f02'),'Archivo 0.jpg',UNHEX('80e7069793af4d79a515bb52243f7436'));
CALL insert_study_file (UNHEX('be7b360fc66c4615a2b1e09b9a357c3d'),'Archivo 1.doc',UNHEX('80e7069793af4d79a515bb52243f7436'));
CALL insert_study_file (UNHEX('0162f0c7995c4b5785f3b2cebd9a7b52'),'Archivo 2.txt',UNHEX('80e7069793af4d79a515bb52243f7436'));
CALL insert_study_file (UNHEX('499e187733b8439585f63928cddab2c8'),'Archivo 3.doc',UNHEX('80e7069793af4d79a515bb52243f7436'));
CALL insert_study_file (UNHEX('8e95624dc4a04447aad4eaaf146d080f'),'Archivo 4.pdf',UNHEX('80e7069793af4d79a515bb52243f7436'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-09','Diferencial: Resfrio común.',UNHEX('dd228778ae9a41419cb8cf2d6656afdb'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('f735b147b07247a3b555d241756fa26f'),'UA');
# Se craran 8 archivos para el estudio dd228778ae9a41419cb8cf2d6656afdb
CALL insert_study_file (UNHEX('349d302e12d14d928d405186a3cede93'),'Archivo 0.txt',UNHEX('dd228778ae9a41419cb8cf2d6656afdb'));
CALL insert_study_file (UNHEX('e10a7ac74e5742ed95b15e841d6b59fe'),'Archivo 1.jpg',UNHEX('dd228778ae9a41419cb8cf2d6656afdb'));
CALL insert_study_file (UNHEX('4457e3c885924dbeac5abed096eb947c'),'Archivo 2.txt',UNHEX('dd228778ae9a41419cb8cf2d6656afdb'));
CALL insert_study_file (UNHEX('590a4ae0ddd941038f588fdac249a6dd'),'Archivo 3.pdf',UNHEX('dd228778ae9a41419cb8cf2d6656afdb'));
CALL insert_study_file (UNHEX('a989a680af414e3e9cebb0131297053e'),'Archivo 4.doc',UNHEX('dd228778ae9a41419cb8cf2d6656afdb'));
CALL insert_study_file (UNHEX('8c6de38cf4aa4034bb19ae0c6ff4c33c'),'Archivo 5.doc',UNHEX('dd228778ae9a41419cb8cf2d6656afdb'));
CALL insert_study_file (UNHEX('88d067349c3b4a89872cc946292ccbd1'),'Archivo 6.jpg',UNHEX('dd228778ae9a41419cb8cf2d6656afdb'));
CALL insert_study_file (UNHEX('308a1630205b4f9ea93f8e6be6382205'),'Archivo 7.txt',UNHEX('dd228778ae9a41419cb8cf2d6656afdb'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('c7244f1271104737985b4c2c65dad65d'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('f735b147b07247a3b555d241756fa26f'),'UA');
# Se craran 1 archivos para el estudio c7244f1271104737985b4c2c65dad65d
CALL insert_study_file (UNHEX('6f30e4c923754b9ab4ba4f3ccf8a7423'),'Archivo 0.jpg',UNHEX('c7244f1271104737985b4c2c65dad65d'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-07','Resfrio común.',UNHEX('fa9f53052d684ea3a1afaa3b3bb3ce1c'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('f735b147b07247a3b555d241756fa26f'),'ET');
# Se craran 4 archivos para el estudio fa9f53052d684ea3a1afaa3b3bb3ce1c
CALL insert_study_file (UNHEX('1f77a743776b4916acebce3767fb27d5'),'Archivo 0.txt',UNHEX('fa9f53052d684ea3a1afaa3b3bb3ce1c'));
CALL insert_study_file (UNHEX('7dcc7daa5f68469c96b83c3622d404e2'),'Archivo 1.doc',UNHEX('fa9f53052d684ea3a1afaa3b3bb3ce1c'));
CALL insert_study_file (UNHEX('71b80278e929443aba74f5625cd7ec33'),'Archivo 2.txt',UNHEX('fa9f53052d684ea3a1afaa3b3bb3ce1c'));
CALL insert_study_file (UNHEX('bad50dfc52f2494592bbb53362b5866a'),'Archivo 3.doc',UNHEX('fa9f53052d684ea3a1afaa3b3bb3ce1c'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('295fb262ad3d4de19963a328565b5204'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('f735b147b07247a3b555d241756fa26f'),'UA');
# Se craran 3 archivos para el estudio 295fb262ad3d4de19963a328565b5204
CALL insert_study_file (UNHEX('d69e54b9cc2c453f9fb1d6e7d2e0c419'),'Archivo 0.jpg',UNHEX('295fb262ad3d4de19963a328565b5204'));
CALL insert_study_file (UNHEX('f06759441c324661841343b628f16533'),'Archivo 1.doc',UNHEX('295fb262ad3d4de19963a328565b5204'));
CALL insert_study_file (UNHEX('ae034fe45e2e44db8b2cd524e9761994'),'Archivo 2.jpg',UNHEX('295fb262ad3d4de19963a328565b5204'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 73a8aa6a78f442d690d1d5768f433862
CALL insert_patient ('1970-09-30','5','M', UNHEX('73a8aa6a78f442d690d1d5768f433862'),'Gunning, orbadiah','','doctor');
# Se craran 7 estudios para el paciente 73a8aa6a78f442d690d1d5768f433862
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('b19ffd34089942ce86e7e7f329eee147'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Tolerancia muy baja a los sintomas gripales.',UNHEX('73a8aa6a78f442d690d1d5768f433862'),'ET');
# Se craran 9 archivos para el estudio b19ffd34089942ce86e7e7f329eee147
CALL insert_study_file (UNHEX('8b171b74ecd740dabcc97c5b64b515c9'),'Archivo 0.jpg',UNHEX('b19ffd34089942ce86e7e7f329eee147'));
CALL insert_study_file (UNHEX('2f316f13367b43bbba24aa707332d939'),'Archivo 1.doc',UNHEX('b19ffd34089942ce86e7e7f329eee147'));
CALL insert_study_file (UNHEX('92bf28c0e2434b4b8bc6d8142d45a644'),'Archivo 2.jpg',UNHEX('b19ffd34089942ce86e7e7f329eee147'));
CALL insert_study_file (UNHEX('8442642e7f554740afee234b1421bc8b'),'Archivo 3.txt',UNHEX('b19ffd34089942ce86e7e7f329eee147'));
CALL insert_study_file (UNHEX('98ff37191914432293dcba20caf6de50'),'Archivo 4.jpg',UNHEX('b19ffd34089942ce86e7e7f329eee147'));
CALL insert_study_file (UNHEX('f873f23fd6844d8dadf66fa0572632c0'),'Archivo 5.txt',UNHEX('b19ffd34089942ce86e7e7f329eee147'));
CALL insert_study_file (UNHEX('aa04b16f10ca49c69c8c40e495b3981b'),'Archivo 6.txt',UNHEX('b19ffd34089942ce86e7e7f329eee147'));
CALL insert_study_file (UNHEX('04cf9b6a0db54a579df85cdea41de815'),'Archivo 7.txt',UNHEX('b19ffd34089942ce86e7e7f329eee147'));
CALL insert_study_file (UNHEX('1206b2576f3f4a80a035dda7636ff4e6'),'Archivo 8.txt',UNHEX('b19ffd34089942ce86e7e7f329eee147'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-12','Diferencial: Gripe H1N1',UNHEX('906aeae1641b4b35a1854f12a8fad7e0'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','---',UNHEX('73a8aa6a78f442d690d1d5768f433862'),'ET');
# Se craran 5 archivos para el estudio 906aeae1641b4b35a1854f12a8fad7e0
CALL insert_study_file (UNHEX('23b85367915543f784ed4e9b49e939cb'),'Archivo 0.txt',UNHEX('906aeae1641b4b35a1854f12a8fad7e0'));
CALL insert_study_file (UNHEX('9135ea86debf454bac8bffe6bbc267b7'),'Archivo 1.doc',UNHEX('906aeae1641b4b35a1854f12a8fad7e0'));
CALL insert_study_file (UNHEX('214d4a85b7684c2d9d5239deaef337b0'),'Archivo 2.doc',UNHEX('906aeae1641b4b35a1854f12a8fad7e0'));
CALL insert_study_file (UNHEX('528a3ff347fe40fa9d565c90c31e538f'),'Archivo 3.txt',UNHEX('906aeae1641b4b35a1854f12a8fad7e0'));
CALL insert_study_file (UNHEX('1243f1229ddd4f61a67c030c4e75e1b3'),'Archivo 4.txt',UNHEX('906aeae1641b4b35a1854f12a8fad7e0'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('5565f572dc5b4c5fa3dc50d7b7d324a6'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('73a8aa6a78f442d690d1d5768f433862'),'BT');
# Se craran 7 archivos para el estudio 5565f572dc5b4c5fa3dc50d7b7d324a6
CALL insert_study_file (UNHEX('f228404142b14ec3a0fc51a52a781d97'),'Archivo 0.jpg',UNHEX('5565f572dc5b4c5fa3dc50d7b7d324a6'));
CALL insert_study_file (UNHEX('fab644b38b2049f1af0a6deef1cdf563'),'Archivo 1.pdf',UNHEX('5565f572dc5b4c5fa3dc50d7b7d324a6'));
CALL insert_study_file (UNHEX('cd441ccee9a8408b826a137ff94f8f83'),'Archivo 2.pdf',UNHEX('5565f572dc5b4c5fa3dc50d7b7d324a6'));
CALL insert_study_file (UNHEX('4de5c137b9304fd88c6e949c8e20eeb6'),'Archivo 3.txt',UNHEX('5565f572dc5b4c5fa3dc50d7b7d324a6'));
CALL insert_study_file (UNHEX('8c428c361824453894c1d2defb38b1b0'),'Archivo 4.txt',UNHEX('5565f572dc5b4c5fa3dc50d7b7d324a6'));
CALL insert_study_file (UNHEX('d8b57cc52d93439493f70a2700f2c45a'),'Archivo 5.txt',UNHEX('5565f572dc5b4c5fa3dc50d7b7d324a6'));
CALL insert_study_file (UNHEX('038b5e05b03b4aa4b1dde9e707a1dfe9'),'Archivo 6.txt',UNHEX('5565f572dc5b4c5fa3dc50d7b7d324a6'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-12','Posibles alergias estacionales.',UNHEX('7957551220404703ac75155ff30e2cba'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('73a8aa6a78f442d690d1d5768f433862'),'ET');
# Se craran 2 archivos para el estudio 7957551220404703ac75155ff30e2cba
CALL insert_study_file (UNHEX('7357a07d43c84c29bf2ba714ebae7d0e'),'Archivo 0.txt',UNHEX('7957551220404703ac75155ff30e2cba'));
CALL insert_study_file (UNHEX('85b2a840436649a2a5fe2d745e6281c9'),'Archivo 1.txt',UNHEX('7957551220404703ac75155ff30e2cba'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-06','Diferencial: Gripe H1N1',UNHEX('b90205bdc6474f5e9a547e1084e0ec35'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','---',UNHEX('73a8aa6a78f442d690d1d5768f433862'),'BT');
# Se craran 4 archivos para el estudio b90205bdc6474f5e9a547e1084e0ec35
CALL insert_study_file (UNHEX('0d03a33d7e114fbf9b3e8d65fc4571af'),'Archivo 0.pdf',UNHEX('b90205bdc6474f5e9a547e1084e0ec35'));
CALL insert_study_file (UNHEX('002f92a58e554de1bae5f7d0bb796f1a'),'Archivo 1.jpg',UNHEX('b90205bdc6474f5e9a547e1084e0ec35'));
CALL insert_study_file (UNHEX('b5564030a406465b8563c8889a04bcea'),'Archivo 2.jpg',UNHEX('b90205bdc6474f5e9a547e1084e0ec35'));
CALL insert_study_file (UNHEX('1ffbfd3ed3fe4852939298409c730912'),'Archivo 3.pdf',UNHEX('b90205bdc6474f5e9a547e1084e0ec35'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-09','Resfrio común.',UNHEX('642afa2288204c21ae7f91f2d68c56bb'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('73a8aa6a78f442d690d1d5768f433862'),'BT');
# Se craran 2 archivos para el estudio 642afa2288204c21ae7f91f2d68c56bb
CALL insert_study_file (UNHEX('1df7e5d10cf94047a76dadc55e4f1045'),'Archivo 0.doc',UNHEX('642afa2288204c21ae7f91f2d68c56bb'));
CALL insert_study_file (UNHEX('d4e26b8cb4ae4d77a41450869deb00f7'),'Archivo 1.txt',UNHEX('642afa2288204c21ae7f91f2d68c56bb'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-09','Resfrio común.',UNHEX('87a7cf0f99e240efb3840b6da8f0c0a4'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('73a8aa6a78f442d690d1d5768f433862'),'ET');
# Se craran 7 archivos para el estudio 87a7cf0f99e240efb3840b6da8f0c0a4
CALL insert_study_file (UNHEX('8f41592f0bae42b3862c3be9caf30dcd'),'Archivo 0.jpg',UNHEX('87a7cf0f99e240efb3840b6da8f0c0a4'));
CALL insert_study_file (UNHEX('27cc3c06108e4e7d86195d630d396755'),'Archivo 1.jpg',UNHEX('87a7cf0f99e240efb3840b6da8f0c0a4'));
CALL insert_study_file (UNHEX('7b985d8e2f7b4e47ab789eaa6f288d80'),'Archivo 2.jpg',UNHEX('87a7cf0f99e240efb3840b6da8f0c0a4'));
CALL insert_study_file (UNHEX('bd1841dbfcff49f88b963416c98c7cbb'),'Archivo 3.jpg',UNHEX('87a7cf0f99e240efb3840b6da8f0c0a4'));
CALL insert_study_file (UNHEX('d353f328be474a629490336994428981'),'Archivo 4.pdf',UNHEX('87a7cf0f99e240efb3840b6da8f0c0a4'));
CALL insert_study_file (UNHEX('c833f6ad9ef6493ea12f87cc632e6e5c'),'Archivo 5.pdf',UNHEX('87a7cf0f99e240efb3840b6da8f0c0a4'));
CALL insert_study_file (UNHEX('d967baec3e25469ba352555896b1fc71'),'Archivo 6.txt',UNHEX('87a7cf0f99e240efb3840b6da8f0c0a4'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente c14e731e9f1e4116bbbea83492e297bb
CALL insert_patient ('1966-02-28','3','M', UNHEX('c14e731e9f1e4116bbbea83492e297bb'),'Schutjer, claus gordon','','doctor');
# Se craran 19 estudios para el paciente c14e731e9f1e4116bbbea83492e297bb
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-10','Resfrio común.',UNHEX('6a59fd539c7544148f9a9d657ba94c68'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('c14e731e9f1e4116bbbea83492e297bb'),'UA');
# Se craran 9 archivos para el estudio 6a59fd539c7544148f9a9d657ba94c68
CALL insert_study_file (UNHEX('84c7870a461342098a3f0aad330cd071'),'Archivo 0.pdf',UNHEX('6a59fd539c7544148f9a9d657ba94c68'));
CALL insert_study_file (UNHEX('30785aa157c743b796c9a0d9987f2b11'),'Archivo 1.jpg',UNHEX('6a59fd539c7544148f9a9d657ba94c68'));
CALL insert_study_file (UNHEX('5185f18cecdf4e2eaa22e5d6330d14ee'),'Archivo 2.doc',UNHEX('6a59fd539c7544148f9a9d657ba94c68'));
CALL insert_study_file (UNHEX('6933ba64d51f48cdad40bef6bfd8c97e'),'Archivo 3.doc',UNHEX('6a59fd539c7544148f9a9d657ba94c68'));
CALL insert_study_file (UNHEX('93b7f64333ee43109cf92c2724d45bf9'),'Archivo 4.pdf',UNHEX('6a59fd539c7544148f9a9d657ba94c68'));
CALL insert_study_file (UNHEX('6113905ec207417cb4f2a15396531336'),'Archivo 5.jpg',UNHEX('6a59fd539c7544148f9a9d657ba94c68'));
CALL insert_study_file (UNHEX('7a176dfaf9ad4cfdbeaa9bc94351c3c8'),'Archivo 6.jpg',UNHEX('6a59fd539c7544148f9a9d657ba94c68'));
CALL insert_study_file (UNHEX('35d7478e66ca45f48d20d94e93901021'),'Archivo 7.txt',UNHEX('6a59fd539c7544148f9a9d657ba94c68'));
CALL insert_study_file (UNHEX('c2d58b992a624e0484a2b7cc4ce35345'),'Archivo 8.pdf',UNHEX('6a59fd539c7544148f9a9d657ba94c68'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-10','Resfrio común.',UNHEX('3ae43fdbcae649a4bffb66602baa0cf1'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('c14e731e9f1e4116bbbea83492e297bb'),'ET');
# Se craran 0 archivos para el estudio 3ae43fdbcae649a4bffb66602baa0cf1
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('048de6fcc2a5420e819a300722341a2c'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('c14e731e9f1e4116bbbea83492e297bb'),'ET');
# Se craran 6 archivos para el estudio 048de6fcc2a5420e819a300722341a2c
CALL insert_study_file (UNHEX('4569b8dd23704b56957f26ce4a8ed40b'),'Archivo 0.pdf',UNHEX('048de6fcc2a5420e819a300722341a2c'));
CALL insert_study_file (UNHEX('c1fe3754cc55461cba58165acd16cb64'),'Archivo 1.txt',UNHEX('048de6fcc2a5420e819a300722341a2c'));
CALL insert_study_file (UNHEX('988565c156d341d586341bc61222e7d1'),'Archivo 2.pdf',UNHEX('048de6fcc2a5420e819a300722341a2c'));
CALL insert_study_file (UNHEX('6ff5f7adb6df4ac6b73115708c617665'),'Archivo 3.doc',UNHEX('048de6fcc2a5420e819a300722341a2c'));
CALL insert_study_file (UNHEX('0676cc61f00944a4934504ef26ed5a0c'),'Archivo 4.pdf',UNHEX('048de6fcc2a5420e819a300722341a2c'));
CALL insert_study_file (UNHEX('740adcf0cc044e609306703e89f51f4d'),'Archivo 5.pdf',UNHEX('048de6fcc2a5420e819a300722341a2c'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-06','Gripe estacional.',UNHEX('dec4f9c6ecd34eff9d520746f8d6976d'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Programada nueva consulta en 5 días.',UNHEX('c14e731e9f1e4116bbbea83492e297bb'),'ET');
# Se craran 7 archivos para el estudio dec4f9c6ecd34eff9d520746f8d6976d
CALL insert_study_file (UNHEX('9e90ae8beaa04602b23834bac7abc74c'),'Archivo 0.jpg',UNHEX('dec4f9c6ecd34eff9d520746f8d6976d'));
CALL insert_study_file (UNHEX('69542a5b51d4414e98bfaa3f6f678934'),'Archivo 1.pdf',UNHEX('dec4f9c6ecd34eff9d520746f8d6976d'));
CALL insert_study_file (UNHEX('a550063fa741498daf947617018f27ef'),'Archivo 2.txt',UNHEX('dec4f9c6ecd34eff9d520746f8d6976d'));
CALL insert_study_file (UNHEX('7a41e766b40748ce80c43c9179070850'),'Archivo 3.txt',UNHEX('dec4f9c6ecd34eff9d520746f8d6976d'));
CALL insert_study_file (UNHEX('f6048cb4f4994c8d84f0cd0f2764b58f'),'Archivo 4.jpg',UNHEX('dec4f9c6ecd34eff9d520746f8d6976d'));
CALL insert_study_file (UNHEX('95d5fe53c25d41349aa3235116d03ac1'),'Archivo 5.doc',UNHEX('dec4f9c6ecd34eff9d520746f8d6976d'));
CALL insert_study_file (UNHEX('50a8d4b5be2a40209ffb0ea6db75aa03'),'Archivo 6.jpg',UNHEX('dec4f9c6ecd34eff9d520746f8d6976d'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('67f01b3eed7e4628bebcce939ec6c564'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('c14e731e9f1e4116bbbea83492e297bb'),'UA');
# Se craran 4 archivos para el estudio 67f01b3eed7e4628bebcce939ec6c564
CALL insert_study_file (UNHEX('47d8a74806d944c09d6b50b1da148133'),'Archivo 0.jpg',UNHEX('67f01b3eed7e4628bebcce939ec6c564'));
CALL insert_study_file (UNHEX('acf75360645a4df984805a00a214d50a'),'Archivo 1.pdf',UNHEX('67f01b3eed7e4628bebcce939ec6c564'));
CALL insert_study_file (UNHEX('38d191f9b29c419c9a8d6a9105a9472f'),'Archivo 2.doc',UNHEX('67f01b3eed7e4628bebcce939ec6c564'));
CALL insert_study_file (UNHEX('b247e8ab75e445a89b4fa5a22917ceba'),'Archivo 3.doc',UNHEX('67f01b3eed7e4628bebcce939ec6c564'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('a940ba2c85144e6cb7149190dc4d9fb8'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('c14e731e9f1e4116bbbea83492e297bb'),'ET');
# Se craran 7 archivos para el estudio a940ba2c85144e6cb7149190dc4d9fb8
CALL insert_study_file (UNHEX('b52a3df869c649f486d7a72de127cda1'),'Archivo 0.txt',UNHEX('a940ba2c85144e6cb7149190dc4d9fb8'));
CALL insert_study_file (UNHEX('bf35d5d056c74c60bd9dbe93e0e988e0'),'Archivo 1.doc',UNHEX('a940ba2c85144e6cb7149190dc4d9fb8'));
CALL insert_study_file (UNHEX('ccaaed79496d4ec08eb9319121b7fb93'),'Archivo 2.doc',UNHEX('a940ba2c85144e6cb7149190dc4d9fb8'));
CALL insert_study_file (UNHEX('6d0759f49677414ea9800a8bf607eee4'),'Archivo 3.txt',UNHEX('a940ba2c85144e6cb7149190dc4d9fb8'));
CALL insert_study_file (UNHEX('0c177de7440c4c32959999e34c42aa25'),'Archivo 4.txt',UNHEX('a940ba2c85144e6cb7149190dc4d9fb8'));
CALL insert_study_file (UNHEX('3e4b284f04bb436faee0e5112f46b024'),'Archivo 5.doc',UNHEX('a940ba2c85144e6cb7149190dc4d9fb8'));
CALL insert_study_file (UNHEX('902ad81bb4164aa49b4aaa3c0a85b34d'),'Archivo 6.pdf',UNHEX('a940ba2c85144e6cb7149190dc4d9fb8'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-09','Diferencial: Resfrio común.',UNHEX('e7da28b3df10491181a350af24fc8c06'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('c14e731e9f1e4116bbbea83492e297bb'),'ET');
# Se craran 9 archivos para el estudio e7da28b3df10491181a350af24fc8c06
CALL insert_study_file (UNHEX('c0570f7c24fa428d8e0c15f07343e3fe'),'Archivo 0.jpg',UNHEX('e7da28b3df10491181a350af24fc8c06'));
CALL insert_study_file (UNHEX('cbf602d9f8c841be914341e9f892e2ba'),'Archivo 1.txt',UNHEX('e7da28b3df10491181a350af24fc8c06'));
CALL insert_study_file (UNHEX('e9d5bdeeaea84bb98b8294b93f4337a5'),'Archivo 2.txt',UNHEX('e7da28b3df10491181a350af24fc8c06'));
CALL insert_study_file (UNHEX('f08b342d7ee646bda0184c0e9ebc0ed9'),'Archivo 3.txt',UNHEX('e7da28b3df10491181a350af24fc8c06'));
CALL insert_study_file (UNHEX('1f0e67f4333d447ea08cce836cdd0867'),'Archivo 4.pdf',UNHEX('e7da28b3df10491181a350af24fc8c06'));
CALL insert_study_file (UNHEX('77333f8eb5234798b5b395b61916ae15'),'Archivo 5.jpg',UNHEX('e7da28b3df10491181a350af24fc8c06'));
CALL insert_study_file (UNHEX('d12f0fec5f28461fb54d589516f45662'),'Archivo 6.doc',UNHEX('e7da28b3df10491181a350af24fc8c06'));
CALL insert_study_file (UNHEX('69e4485649a5482c9952d1035c0d43f0'),'Archivo 7.txt',UNHEX('e7da28b3df10491181a350af24fc8c06'));
CALL insert_study_file (UNHEX('75c5c35b585843f7b72e80a8576dad2d'),'Archivo 8.pdf',UNHEX('e7da28b3df10491181a350af24fc8c06'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('14015305cffd40d6af51c917f18ec8d3'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('c14e731e9f1e4116bbbea83492e297bb'),'BT');
# Se craran 0 archivos para el estudio 14015305cffd40d6af51c917f18ec8d3
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('04baf97fa27048fd89fe44ba5d2733b6'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('c14e731e9f1e4116bbbea83492e297bb'),'ET');
# Se craran 8 archivos para el estudio 04baf97fa27048fd89fe44ba5d2733b6
CALL insert_study_file (UNHEX('dae3a2d4ba504c2db8c932c6aca9fad3'),'Archivo 0.doc',UNHEX('04baf97fa27048fd89fe44ba5d2733b6'));
CALL insert_study_file (UNHEX('65c16553bf624ad1b3424d942a138a66'),'Archivo 1.txt',UNHEX('04baf97fa27048fd89fe44ba5d2733b6'));
CALL insert_study_file (UNHEX('80dc14546247472f872442198b79fb66'),'Archivo 2.pdf',UNHEX('04baf97fa27048fd89fe44ba5d2733b6'));
CALL insert_study_file (UNHEX('35842b2e45654df38f9d3e432f644897'),'Archivo 3.txt',UNHEX('04baf97fa27048fd89fe44ba5d2733b6'));
CALL insert_study_file (UNHEX('65a82f754dab4a9fa6c042900c459b4a'),'Archivo 4.jpg',UNHEX('04baf97fa27048fd89fe44ba5d2733b6'));
CALL insert_study_file (UNHEX('8b7fb38bef59419ca9efe1e03a79bcb3'),'Archivo 5.doc',UNHEX('04baf97fa27048fd89fe44ba5d2733b6'));
CALL insert_study_file (UNHEX('1f6e3dfed1d147fc98c15992082895a9'),'Archivo 6.doc',UNHEX('04baf97fa27048fd89fe44ba5d2733b6'));
CALL insert_study_file (UNHEX('2fb316f6a6094f8980c63d597472cfd2'),'Archivo 7.pdf',UNHEX('04baf97fa27048fd89fe44ba5d2733b6'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('5c95263c93dd47b99c50f86317222b49'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('c14e731e9f1e4116bbbea83492e297bb'),'ET');
# Se craran 1 archivos para el estudio 5c95263c93dd47b99c50f86317222b49
CALL insert_study_file (UNHEX('ef878aef37c74f58809362f6090d7860'),'Archivo 0.pdf',UNHEX('5c95263c93dd47b99c50f86317222b49'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-07','Diferencial: Gripe H1N1',UNHEX('1fe6d3ffcf19412eb007f1d78f2c7b1f'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','---',UNHEX('c14e731e9f1e4116bbbea83492e297bb'),'UA');
# Se craran 8 archivos para el estudio 1fe6d3ffcf19412eb007f1d78f2c7b1f
CALL insert_study_file (UNHEX('674651fd12f148af99eb725fecc179a8'),'Archivo 0.doc',UNHEX('1fe6d3ffcf19412eb007f1d78f2c7b1f'));
CALL insert_study_file (UNHEX('5921f724770a47a19e21a05b26813d59'),'Archivo 1.doc',UNHEX('1fe6d3ffcf19412eb007f1d78f2c7b1f'));
CALL insert_study_file (UNHEX('ce31557f676945b5b3dc91a006a2076c'),'Archivo 2.pdf',UNHEX('1fe6d3ffcf19412eb007f1d78f2c7b1f'));
CALL insert_study_file (UNHEX('c172652890fb4cfd969271da0b399f25'),'Archivo 3.doc',UNHEX('1fe6d3ffcf19412eb007f1d78f2c7b1f'));
CALL insert_study_file (UNHEX('cc5b830af88746fca83e01113bc9f6a0'),'Archivo 4.jpg',UNHEX('1fe6d3ffcf19412eb007f1d78f2c7b1f'));
CALL insert_study_file (UNHEX('10b9b491c6ab4689aa6ddabfc5cdf10a'),'Archivo 5.doc',UNHEX('1fe6d3ffcf19412eb007f1d78f2c7b1f'));
CALL insert_study_file (UNHEX('571ba265a4524592b07eadf90868f771'),'Archivo 6.doc',UNHEX('1fe6d3ffcf19412eb007f1d78f2c7b1f'));
CALL insert_study_file (UNHEX('5ba45db414ff4967a88662b0124ab304'),'Archivo 7.txt',UNHEX('1fe6d3ffcf19412eb007f1d78f2c7b1f'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('ac3380cb82344ebf9ce35a0bf7212e88'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('c14e731e9f1e4116bbbea83492e297bb'),'ET');
# Se craran 2 archivos para el estudio ac3380cb82344ebf9ce35a0bf7212e88
CALL insert_study_file (UNHEX('afff6a97c8b84517b3ec48578a677f99'),'Archivo 0.doc',UNHEX('ac3380cb82344ebf9ce35a0bf7212e88'));
CALL insert_study_file (UNHEX('180c7daf32c84ed98ba3719a8eff6e18'),'Archivo 1.jpg',UNHEX('ac3380cb82344ebf9ce35a0bf7212e88'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-09','Resfrio común.',UNHEX('3d2ddaa5e1be4d5e9f433fb8e153dc86'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Tolerancia muy baja a los sintomas gripales.',UNHEX('c14e731e9f1e4116bbbea83492e297bb'),'UA');
# Se craran 3 archivos para el estudio 3d2ddaa5e1be4d5e9f433fb8e153dc86
CALL insert_study_file (UNHEX('ea8585d2fd9c472390ad93ccdbacf798'),'Archivo 0.pdf',UNHEX('3d2ddaa5e1be4d5e9f433fb8e153dc86'));
CALL insert_study_file (UNHEX('b19dcf4532244574ba0638fb85b0ec35'),'Archivo 1.jpg',UNHEX('3d2ddaa5e1be4d5e9f433fb8e153dc86'));
CALL insert_study_file (UNHEX('ce98be43e5974118a17479f428555fd4'),'Archivo 2.pdf',UNHEX('3d2ddaa5e1be4d5e9f433fb8e153dc86'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-05','Posibles alergias estacionales.',UNHEX('211e16b66f364821a9dae75d89b40db4'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('c14e731e9f1e4116bbbea83492e297bb'),'BT');
# Se craran 2 archivos para el estudio 211e16b66f364821a9dae75d89b40db4
CALL insert_study_file (UNHEX('da643f0e8ec34b1a9ed407e83a8d3f6e'),'Archivo 0.pdf',UNHEX('211e16b66f364821a9dae75d89b40db4'));
CALL insert_study_file (UNHEX('9dbfd47393e0421b97a579763bf64976'),'Archivo 1.doc',UNHEX('211e16b66f364821a9dae75d89b40db4'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-08','Resfrio común.',UNHEX('277f3154ba5b472da435f9905965b2d6'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('c14e731e9f1e4116bbbea83492e297bb'),'BT');
# Se craran 5 archivos para el estudio 277f3154ba5b472da435f9905965b2d6
CALL insert_study_file (UNHEX('ea81d4b0120b42d282f3116f808f3771'),'Archivo 0.pdf',UNHEX('277f3154ba5b472da435f9905965b2d6'));
CALL insert_study_file (UNHEX('4208b1555b4645a1bdb67b7111e4cdf7'),'Archivo 1.doc',UNHEX('277f3154ba5b472da435f9905965b2d6'));
CALL insert_study_file (UNHEX('fe2297bd24da4eb1976004332110976f'),'Archivo 2.doc',UNHEX('277f3154ba5b472da435f9905965b2d6'));
CALL insert_study_file (UNHEX('89fd4e09a7f54d45a95e5834687699a2'),'Archivo 3.doc',UNHEX('277f3154ba5b472da435f9905965b2d6'));
CALL insert_study_file (UNHEX('7f9c4b3cfd5841dfaceda1fbb542ca20'),'Archivo 4.pdf',UNHEX('277f3154ba5b472da435f9905965b2d6'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-09','Gripe estacional.',UNHEX('f2d47701b7f24f9fb717bc1dbf3cc0a4'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('c14e731e9f1e4116bbbea83492e297bb'),'UA');
# Se craran 6 archivos para el estudio f2d47701b7f24f9fb717bc1dbf3cc0a4
CALL insert_study_file (UNHEX('9c1c6842bd7b465db304fc5eb9fe2cc4'),'Archivo 0.doc',UNHEX('f2d47701b7f24f9fb717bc1dbf3cc0a4'));
CALL insert_study_file (UNHEX('40fed9e51485468aa3768c3b0d239045'),'Archivo 1.pdf',UNHEX('f2d47701b7f24f9fb717bc1dbf3cc0a4'));
CALL insert_study_file (UNHEX('4bec20d5f0f2422194ccd83bcd9f93fc'),'Archivo 2.jpg',UNHEX('f2d47701b7f24f9fb717bc1dbf3cc0a4'));
CALL insert_study_file (UNHEX('bc72d0dc57a94926b21359be3e9400f7'),'Archivo 3.pdf',UNHEX('f2d47701b7f24f9fb717bc1dbf3cc0a4'));
CALL insert_study_file (UNHEX('d3ef527aa8144745a9fec70d0184c144'),'Archivo 4.doc',UNHEX('f2d47701b7f24f9fb717bc1dbf3cc0a4'));
CALL insert_study_file (UNHEX('d1c5da9c161d4921b8078d9d1b160fe0'),'Archivo 5.doc',UNHEX('f2d47701b7f24f9fb717bc1dbf3cc0a4'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('b15fb5e290724a428437184efdc99a1d'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Tolerancia muy baja a los sintomas gripales.',UNHEX('c14e731e9f1e4116bbbea83492e297bb'),'UA');
# Se craran 2 archivos para el estudio b15fb5e290724a428437184efdc99a1d
CALL insert_study_file (UNHEX('0a569694b399433eaae51d3cd21029ca'),'Archivo 0.doc',UNHEX('b15fb5e290724a428437184efdc99a1d'));
CALL insert_study_file (UNHEX('1893c2dfebb44af58f49401a46487225'),'Archivo 1.jpg',UNHEX('b15fb5e290724a428437184efdc99a1d'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-10','Diferencial: Gripe H1N1',UNHEX('119800c886d549d0873935278f567919'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','---',UNHEX('c14e731e9f1e4116bbbea83492e297bb'),'UA');
# Se craran 5 archivos para el estudio 119800c886d549d0873935278f567919
CALL insert_study_file (UNHEX('47d506df9be34f7799a2d25faed8ceae'),'Archivo 0.pdf',UNHEX('119800c886d549d0873935278f567919'));
CALL insert_study_file (UNHEX('0fec8d47b1e245bfb7b80137c4062c2d'),'Archivo 1.txt',UNHEX('119800c886d549d0873935278f567919'));
CALL insert_study_file (UNHEX('f8da3a6968b24582b2680153381f1bad'),'Archivo 2.jpg',UNHEX('119800c886d549d0873935278f567919'));
CALL insert_study_file (UNHEX('bf6239cd3f504c0b8d8bd597cbaa2255'),'Archivo 3.doc',UNHEX('119800c886d549d0873935278f567919'));
CALL insert_study_file (UNHEX('e7d1df140f704ff2bf849d00e80d845c'),'Archivo 4.jpg',UNHEX('119800c886d549d0873935278f567919'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('46f394dd63e9486584aee506fdce3179'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('c14e731e9f1e4116bbbea83492e297bb'),'BT');
# Se craran 6 archivos para el estudio 46f394dd63e9486584aee506fdce3179
CALL insert_study_file (UNHEX('bb57ef1150c34f97bad18b397674c344'),'Archivo 0.pdf',UNHEX('46f394dd63e9486584aee506fdce3179'));
CALL insert_study_file (UNHEX('7f18ee3241584cd981b8f1c4c9cc3747'),'Archivo 1.pdf',UNHEX('46f394dd63e9486584aee506fdce3179'));
CALL insert_study_file (UNHEX('bf4f80db302a4c70aab3294edc3b916c'),'Archivo 2.pdf',UNHEX('46f394dd63e9486584aee506fdce3179'));
CALL insert_study_file (UNHEX('09b7c9540d1e44debbbaf03f7ac62fac'),'Archivo 3.txt',UNHEX('46f394dd63e9486584aee506fdce3179'));
CALL insert_study_file (UNHEX('8c8b964aee314e24b851d3b3a8f11b15'),'Archivo 4.pdf',UNHEX('46f394dd63e9486584aee506fdce3179'));
CALL insert_study_file (UNHEX('f8438589c2bd42dd8cc825c3995ef169'),'Archivo 5.pdf',UNHEX('46f394dd63e9486584aee506fdce3179'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente d1de8d5cae094028a3dfc250f0558669
CALL insert_patient ('1934-07-01','6','F', UNHEX('d1de8d5cae094028a3dfc250f0558669'),'Barbosa, galina ursula','Hemocromatosis.','doctor');
# Se craran 1 estudios para el paciente d1de8d5cae094028a3dfc250f0558669
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-07','Gripe estacional.',UNHEX('7bdbb5443c974089aa2c2f5b5435a4f2'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Tolerancia muy baja a los sintomas gripales.',UNHEX('d1de8d5cae094028a3dfc250f0558669'),'ET');
# Se craran 1 archivos para el estudio 7bdbb5443c974089aa2c2f5b5435a4f2
CALL insert_study_file (UNHEX('919b07a64e07435b91d2f7443da21fe1'),'Archivo 0.jpg',UNHEX('7bdbb5443c974089aa2c2f5b5435a4f2'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 774b5647a71a4fb2bb43900756d312b3
CALL insert_patient ('1947-03-17','1','F', UNHEX('774b5647a71a4fb2bb43900756d312b3'),'Greenfeld, Fulvia marnia','Diabetes.','doctor');
# Se craran 17 estudios para el paciente 774b5647a71a4fb2bb43900756d312b3
CALL insert_study ('Control de rutina.','2014-08-05','',UNHEX('18475f4e265f493b88f3fde034bfa900'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('774b5647a71a4fb2bb43900756d312b3'),'UA');
# Se craran 5 archivos para el estudio 18475f4e265f493b88f3fde034bfa900
CALL insert_study_file (UNHEX('aafffe5b6a584af69fb3ee77ce182055'),'Archivo 0.pdf',UNHEX('18475f4e265f493b88f3fde034bfa900'));
CALL insert_study_file (UNHEX('8ab5df8247bc41548fbf1fe66bc14327'),'Archivo 1.txt',UNHEX('18475f4e265f493b88f3fde034bfa900'));
CALL insert_study_file (UNHEX('ac133f711a6f4cf99d6e18fe1e5a5b3c'),'Archivo 2.jpg',UNHEX('18475f4e265f493b88f3fde034bfa900'));
CALL insert_study_file (UNHEX('94b85ec9fb7c42e7b9d4f59a7c28a714'),'Archivo 3.txt',UNHEX('18475f4e265f493b88f3fde034bfa900'));
CALL insert_study_file (UNHEX('5390f769d4be483f9683920e63e0c3e5'),'Archivo 4.doc',UNHEX('18475f4e265f493b88f3fde034bfa900'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('662de61b9c4d4d6eb3c981258b0bf763'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('774b5647a71a4fb2bb43900756d312b3'),'BT');
# Se craran 3 archivos para el estudio 662de61b9c4d4d6eb3c981258b0bf763
CALL insert_study_file (UNHEX('0007fa43547d4fcb8679172237cc95ca'),'Archivo 0.jpg',UNHEX('662de61b9c4d4d6eb3c981258b0bf763'));
CALL insert_study_file (UNHEX('1082c3f6f7944a2d9012cb0c087fa62e'),'Archivo 1.jpg',UNHEX('662de61b9c4d4d6eb3c981258b0bf763'));
CALL insert_study_file (UNHEX('d86e36e2d502469eb80278b4be94acad'),'Archivo 2.jpg',UNHEX('662de61b9c4d4d6eb3c981258b0bf763'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-10','Resfrio común.',UNHEX('cdbb578d1b224486bdc7dd1ba569f520'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('774b5647a71a4fb2bb43900756d312b3'),'ET');
# Se craran 7 archivos para el estudio cdbb578d1b224486bdc7dd1ba569f520
CALL insert_study_file (UNHEX('6c569eaaae614b1ea76bc8fd2cc0e535'),'Archivo 0.pdf',UNHEX('cdbb578d1b224486bdc7dd1ba569f520'));
CALL insert_study_file (UNHEX('fe7b96650a944ddc95df0aa11a6ab863'),'Archivo 1.jpg',UNHEX('cdbb578d1b224486bdc7dd1ba569f520'));
CALL insert_study_file (UNHEX('f3792ffb19e74a378e4090d34375c72f'),'Archivo 2.pdf',UNHEX('cdbb578d1b224486bdc7dd1ba569f520'));
CALL insert_study_file (UNHEX('45557497834244cf91fe3d892f53c69c'),'Archivo 3.txt',UNHEX('cdbb578d1b224486bdc7dd1ba569f520'));
CALL insert_study_file (UNHEX('139c936682d04fbfb551540638317d77'),'Archivo 4.doc',UNHEX('cdbb578d1b224486bdc7dd1ba569f520'));
CALL insert_study_file (UNHEX('223224c3cd9f479d838effd013d7fd67'),'Archivo 5.pdf',UNHEX('cdbb578d1b224486bdc7dd1ba569f520'));
CALL insert_study_file (UNHEX('f87b32d572c5441ea267a6b47a38bfdc'),'Archivo 6.pdf',UNHEX('cdbb578d1b224486bdc7dd1ba569f520'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('43ae37021c6b4382bd74729eb1f2222d'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('774b5647a71a4fb2bb43900756d312b3'),'BT');
# Se craran 5 archivos para el estudio 43ae37021c6b4382bd74729eb1f2222d
CALL insert_study_file (UNHEX('c9c37ef7f3814b17b695d7d4f2bd983d'),'Archivo 0.pdf',UNHEX('43ae37021c6b4382bd74729eb1f2222d'));
CALL insert_study_file (UNHEX('1b3b54c8fc3346528512efa691610899'),'Archivo 1.doc',UNHEX('43ae37021c6b4382bd74729eb1f2222d'));
CALL insert_study_file (UNHEX('6a071bc79828488b97e5c35105debc69'),'Archivo 2.doc',UNHEX('43ae37021c6b4382bd74729eb1f2222d'));
CALL insert_study_file (UNHEX('b3ae6d4fe708470395dd99e8cb53d914'),'Archivo 3.doc',UNHEX('43ae37021c6b4382bd74729eb1f2222d'));
CALL insert_study_file (UNHEX('63a99ebf01fe4a7e9314c71dafd24683'),'Archivo 4.jpg',UNHEX('43ae37021c6b4382bd74729eb1f2222d'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('12327148cc3a4c4e9c1570779c070b80'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('774b5647a71a4fb2bb43900756d312b3'),'ET');
# Se craran 8 archivos para el estudio 12327148cc3a4c4e9c1570779c070b80
CALL insert_study_file (UNHEX('ab4a1f6ca1b1493997bdd1650db92050'),'Archivo 0.doc',UNHEX('12327148cc3a4c4e9c1570779c070b80'));
CALL insert_study_file (UNHEX('a770540df73d4f48a17ce9fef6f441f6'),'Archivo 1.doc',UNHEX('12327148cc3a4c4e9c1570779c070b80'));
CALL insert_study_file (UNHEX('568cb366fc784d07962a9d8fe7cdf1b1'),'Archivo 2.doc',UNHEX('12327148cc3a4c4e9c1570779c070b80'));
CALL insert_study_file (UNHEX('b495f7e6afa345539e518f74f709f4ce'),'Archivo 3.doc',UNHEX('12327148cc3a4c4e9c1570779c070b80'));
CALL insert_study_file (UNHEX('91d4175dad174f838c860e81b0cfb504'),'Archivo 4.txt',UNHEX('12327148cc3a4c4e9c1570779c070b80'));
CALL insert_study_file (UNHEX('b5b9e153e16f475c849409f503abfeee'),'Archivo 5.txt',UNHEX('12327148cc3a4c4e9c1570779c070b80'));
CALL insert_study_file (UNHEX('1d972516f6da4e51955fdf5f16e60e07'),'Archivo 6.jpg',UNHEX('12327148cc3a4c4e9c1570779c070b80'));
CALL insert_study_file (UNHEX('192aea3a179f4e90a0b83cbb1e93ccd7'),'Archivo 7.jpg',UNHEX('12327148cc3a4c4e9c1570779c070b80'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('609f25e431244389a4a780008511a25a'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('774b5647a71a4fb2bb43900756d312b3'),'UA');
# Se craran 6 archivos para el estudio 609f25e431244389a4a780008511a25a
CALL insert_study_file (UNHEX('efff9519fbe14f6eac33ec705a9e4072'),'Archivo 0.jpg',UNHEX('609f25e431244389a4a780008511a25a'));
CALL insert_study_file (UNHEX('d93ca7cb06d3427daa548a10a9c05f5f'),'Archivo 1.doc',UNHEX('609f25e431244389a4a780008511a25a'));
CALL insert_study_file (UNHEX('d2a3c96b79d7482fb51481c09ad84c46'),'Archivo 2.jpg',UNHEX('609f25e431244389a4a780008511a25a'));
CALL insert_study_file (UNHEX('31bb8ac4aad64effa712ac13525cf9b3'),'Archivo 3.jpg',UNHEX('609f25e431244389a4a780008511a25a'));
CALL insert_study_file (UNHEX('632bbd58dcfb4f8ea545d060763a7126'),'Archivo 4.pdf',UNHEX('609f25e431244389a4a780008511a25a'));
CALL insert_study_file (UNHEX('50e362338f884cb48cf4239b8f91c302'),'Archivo 5.pdf',UNHEX('609f25e431244389a4a780008511a25a'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-06','Gripe estacional.',UNHEX('d7964266216f4f7c91bc76825766f2a8'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('774b5647a71a4fb2bb43900756d312b3'),'UA');
# Se craran 1 archivos para el estudio d7964266216f4f7c91bc76825766f2a8
CALL insert_study_file (UNHEX('f9a4fd016a49476080e3f86fc737cef1'),'Archivo 0.doc',UNHEX('d7964266216f4f7c91bc76825766f2a8'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-11','Posibles alergias estacionales.',UNHEX('ae7d5d3032394ee3b22223971af28ca2'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('774b5647a71a4fb2bb43900756d312b3'),'BT');
# Se craran 6 archivos para el estudio ae7d5d3032394ee3b22223971af28ca2
CALL insert_study_file (UNHEX('a5f6be42efac4d278b13dacf51da608f'),'Archivo 0.jpg',UNHEX('ae7d5d3032394ee3b22223971af28ca2'));
CALL insert_study_file (UNHEX('288dc4fc01804b069d536213772e3efb'),'Archivo 1.jpg',UNHEX('ae7d5d3032394ee3b22223971af28ca2'));
CALL insert_study_file (UNHEX('c947a012e982471da16c8f2aa2f2caab'),'Archivo 2.doc',UNHEX('ae7d5d3032394ee3b22223971af28ca2'));
CALL insert_study_file (UNHEX('eb23a5af864340a0971a62d22eaf042e'),'Archivo 3.txt',UNHEX('ae7d5d3032394ee3b22223971af28ca2'));
CALL insert_study_file (UNHEX('9c1fdda8063c4459b2637d2cd852a0c7'),'Archivo 4.jpg',UNHEX('ae7d5d3032394ee3b22223971af28ca2'));
CALL insert_study_file (UNHEX('f66e1d0ebf5548608952db3a3e6b4cbb'),'Archivo 5.jpg',UNHEX('ae7d5d3032394ee3b22223971af28ca2'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-05','Diferencial: Gripe H1N1',UNHEX('aa09811c3e5442d4bb1d0b0a8b93669e'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','Tolerancia muy baja a los sintomas gripales.',UNHEX('774b5647a71a4fb2bb43900756d312b3'),'UA');
# Se craran 4 archivos para el estudio aa09811c3e5442d4bb1d0b0a8b93669e
CALL insert_study_file (UNHEX('f6fb923cb28c490f89a3b22aab9f7e78'),'Archivo 0.doc',UNHEX('aa09811c3e5442d4bb1d0b0a8b93669e'));
CALL insert_study_file (UNHEX('46c6005bb92d4ba2b1394cb09a464265'),'Archivo 1.pdf',UNHEX('aa09811c3e5442d4bb1d0b0a8b93669e'));
CALL insert_study_file (UNHEX('f7114d0e0b9c4b7991f125dcb628c9c4'),'Archivo 2.jpg',UNHEX('aa09811c3e5442d4bb1d0b0a8b93669e'));
CALL insert_study_file (UNHEX('c9d9ba011c374052abcb7b69c52ef324'),'Archivo 3.jpg',UNHEX('aa09811c3e5442d4bb1d0b0a8b93669e'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('cce918fc4d4c406a83fb481672ef8252'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('774b5647a71a4fb2bb43900756d312b3'),'UA');
# Se craran 5 archivos para el estudio cce918fc4d4c406a83fb481672ef8252
CALL insert_study_file (UNHEX('3202269c7ad7475e99b2949fe4e564f1'),'Archivo 0.pdf',UNHEX('cce918fc4d4c406a83fb481672ef8252'));
CALL insert_study_file (UNHEX('997591a2821547898092e1fac10c5dfb'),'Archivo 1.txt',UNHEX('cce918fc4d4c406a83fb481672ef8252'));
CALL insert_study_file (UNHEX('074aee86c080454580f0af5046c24b3c'),'Archivo 2.doc',UNHEX('cce918fc4d4c406a83fb481672ef8252'));
CALL insert_study_file (UNHEX('160c2442406d4c9ba96cccf3bc2fd907'),'Archivo 3.pdf',UNHEX('cce918fc4d4c406a83fb481672ef8252'));
CALL insert_study_file (UNHEX('3e66310be5764f02be8f9b838840e807'),'Archivo 4.jpg',UNHEX('cce918fc4d4c406a83fb481672ef8252'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-05','',UNHEX('edb89a7f6d3540fca6bc9a8fa7f79bd4'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('774b5647a71a4fb2bb43900756d312b3'),'UA');
# Se craran 3 archivos para el estudio edb89a7f6d3540fca6bc9a8fa7f79bd4
CALL insert_study_file (UNHEX('d337c801e73d4f88b9fc6fbd3544137b'),'Archivo 0.doc',UNHEX('edb89a7f6d3540fca6bc9a8fa7f79bd4'));
CALL insert_study_file (UNHEX('336b8a3c7be8476da81c1e617875a5be'),'Archivo 1.jpg',UNHEX('edb89a7f6d3540fca6bc9a8fa7f79bd4'));
CALL insert_study_file (UNHEX('97fbc4454dcc4f1792ee91278fff9029'),'Archivo 2.txt',UNHEX('edb89a7f6d3540fca6bc9a8fa7f79bd4'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('f9179625a69f4d9a8990e00464dcbaf1'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('774b5647a71a4fb2bb43900756d312b3'),'UA');
# Se craran 9 archivos para el estudio f9179625a69f4d9a8990e00464dcbaf1
CALL insert_study_file (UNHEX('10df303a33ca4c61a00ca6bc6b5107e9'),'Archivo 0.txt',UNHEX('f9179625a69f4d9a8990e00464dcbaf1'));
CALL insert_study_file (UNHEX('d045198c3b4c4d6eb2dd40c16f37fb70'),'Archivo 1.pdf',UNHEX('f9179625a69f4d9a8990e00464dcbaf1'));
CALL insert_study_file (UNHEX('9ae767af322c4f6892c811c54b6ca168'),'Archivo 2.jpg',UNHEX('f9179625a69f4d9a8990e00464dcbaf1'));
CALL insert_study_file (UNHEX('9e6f033c0f54495c965a136b98971f67'),'Archivo 3.txt',UNHEX('f9179625a69f4d9a8990e00464dcbaf1'));
CALL insert_study_file (UNHEX('6290ed829ee74adfb8a51a0ed00fcbca'),'Archivo 4.txt',UNHEX('f9179625a69f4d9a8990e00464dcbaf1'));
CALL insert_study_file (UNHEX('437556fccbc040398f81e97499e54bb2'),'Archivo 5.doc',UNHEX('f9179625a69f4d9a8990e00464dcbaf1'));
CALL insert_study_file (UNHEX('25c341aa1cd44b8f99fc0617efd266d5'),'Archivo 6.jpg',UNHEX('f9179625a69f4d9a8990e00464dcbaf1'));
CALL insert_study_file (UNHEX('e6b54dc6fb8d4feeb61f5b57d6f9346d'),'Archivo 7.doc',UNHEX('f9179625a69f4d9a8990e00464dcbaf1'));
CALL insert_study_file (UNHEX('035f27148f8d4c90b00825b662aa4822'),'Archivo 8.pdf',UNHEX('f9179625a69f4d9a8990e00464dcbaf1'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('ce9f0a0d5bcf448faa83c47a9064ab4d'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('774b5647a71a4fb2bb43900756d312b3'),'UA');
# Se craran 5 archivos para el estudio ce9f0a0d5bcf448faa83c47a9064ab4d
CALL insert_study_file (UNHEX('29a9de6d1bb9409eb49955c98787f9e8'),'Archivo 0.pdf',UNHEX('ce9f0a0d5bcf448faa83c47a9064ab4d'));
CALL insert_study_file (UNHEX('4ea545b853194bfdaeb6e32931980881'),'Archivo 1.doc',UNHEX('ce9f0a0d5bcf448faa83c47a9064ab4d'));
CALL insert_study_file (UNHEX('d674a03c1a6c4d9e8881e862897d6b3f'),'Archivo 2.jpg',UNHEX('ce9f0a0d5bcf448faa83c47a9064ab4d'));
CALL insert_study_file (UNHEX('d6551a0f9f36492ba8efd4b9a625279f'),'Archivo 3.jpg',UNHEX('ce9f0a0d5bcf448faa83c47a9064ab4d'));
CALL insert_study_file (UNHEX('c406a5e16c254694877507e2f50c70a3'),'Archivo 4.pdf',UNHEX('ce9f0a0d5bcf448faa83c47a9064ab4d'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-06','Diferencial: Resfrio común.',UNHEX('24f1fe42c3d24c40bb35d2f2fb625c1b'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('774b5647a71a4fb2bb43900756d312b3'),'ET');
# Se craran 7 archivos para el estudio 24f1fe42c3d24c40bb35d2f2fb625c1b
CALL insert_study_file (UNHEX('912c82a61bd04e8ca9df50d380da2e72'),'Archivo 0.doc',UNHEX('24f1fe42c3d24c40bb35d2f2fb625c1b'));
CALL insert_study_file (UNHEX('46bdae99e6e34ee0a4bb6b8cb64ee150'),'Archivo 1.pdf',UNHEX('24f1fe42c3d24c40bb35d2f2fb625c1b'));
CALL insert_study_file (UNHEX('20d554c91a7a4238a50ce7be612c8ad8'),'Archivo 2.jpg',UNHEX('24f1fe42c3d24c40bb35d2f2fb625c1b'));
CALL insert_study_file (UNHEX('5b62525e368049eeb54838f702ec3dd9'),'Archivo 3.txt',UNHEX('24f1fe42c3d24c40bb35d2f2fb625c1b'));
CALL insert_study_file (UNHEX('e315de10aeb14b6485dc42a9cca50b59'),'Archivo 4.pdf',UNHEX('24f1fe42c3d24c40bb35d2f2fb625c1b'));
CALL insert_study_file (UNHEX('27bad423f3b54fc9b57280a09ce6eec0'),'Archivo 5.jpg',UNHEX('24f1fe42c3d24c40bb35d2f2fb625c1b'));
CALL insert_study_file (UNHEX('24c83337c17c4ac28a0fe3c8fa5408db'),'Archivo 6.doc',UNHEX('24f1fe42c3d24c40bb35d2f2fb625c1b'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('08477b2774144b5a87539b7a70b72c80'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('774b5647a71a4fb2bb43900756d312b3'),'UA');
# Se craran 4 archivos para el estudio 08477b2774144b5a87539b7a70b72c80
CALL insert_study_file (UNHEX('30d962dc7c7e4943ac31021e653b3cf3'),'Archivo 0.pdf',UNHEX('08477b2774144b5a87539b7a70b72c80'));
CALL insert_study_file (UNHEX('37dee5f1d14a4bb6a4431cf0c73cddda'),'Archivo 1.doc',UNHEX('08477b2774144b5a87539b7a70b72c80'));
CALL insert_study_file (UNHEX('4c4c64c0edff4dcaad95ed3b30f29b8f'),'Archivo 2.jpg',UNHEX('08477b2774144b5a87539b7a70b72c80'));
CALL insert_study_file (UNHEX('ac04ead1692446c2be8c926e76127911'),'Archivo 3.pdf',UNHEX('08477b2774144b5a87539b7a70b72c80'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-09','Posibles alergias estacionales.',UNHEX('34b0c85b578946d29866a0432969b121'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('774b5647a71a4fb2bb43900756d312b3'),'ET');
# Se craran 6 archivos para el estudio 34b0c85b578946d29866a0432969b121
CALL insert_study_file (UNHEX('f97f8c3089854ab3b14d74232fdb549f'),'Archivo 0.jpg',UNHEX('34b0c85b578946d29866a0432969b121'));
CALL insert_study_file (UNHEX('d313d0f0e917400fa7afd6f3ce48eade'),'Archivo 1.txt',UNHEX('34b0c85b578946d29866a0432969b121'));
CALL insert_study_file (UNHEX('5752e26c343d4c7983d97f49c2f1d513'),'Archivo 2.doc',UNHEX('34b0c85b578946d29866a0432969b121'));
CALL insert_study_file (UNHEX('d69204436f1749fa80d8fca45903d1ff'),'Archivo 3.doc',UNHEX('34b0c85b578946d29866a0432969b121'));
CALL insert_study_file (UNHEX('02e926511463453aad2bde0d6453c3a0'),'Archivo 4.txt',UNHEX('34b0c85b578946d29866a0432969b121'));
CALL insert_study_file (UNHEX('36a34281a7cb4a22a9b15a49f4960880'),'Archivo 5.txt',UNHEX('34b0c85b578946d29866a0432969b121'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('deea7d026b9c4db8b2675bf292293aa1'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('774b5647a71a4fb2bb43900756d312b3'),'ET');
# Se craran 8 archivos para el estudio deea7d026b9c4db8b2675bf292293aa1
CALL insert_study_file (UNHEX('a712326c17354fc6a134c0cf76628d7b'),'Archivo 0.jpg',UNHEX('deea7d026b9c4db8b2675bf292293aa1'));
CALL insert_study_file (UNHEX('53b46ca7ddf748a68a11f7dc9130bc3e'),'Archivo 1.txt',UNHEX('deea7d026b9c4db8b2675bf292293aa1'));
CALL insert_study_file (UNHEX('594264c0b56c470285302ab4b330e661'),'Archivo 2.jpg',UNHEX('deea7d026b9c4db8b2675bf292293aa1'));
CALL insert_study_file (UNHEX('b636bd1f89bb4666814c081d073d2afa'),'Archivo 3.doc',UNHEX('deea7d026b9c4db8b2675bf292293aa1'));
CALL insert_study_file (UNHEX('0579029fbfca4b419ba899749795e4e8'),'Archivo 4.txt',UNHEX('deea7d026b9c4db8b2675bf292293aa1'));
CALL insert_study_file (UNHEX('ddc029891f874d33a921a23c00e7d9b1'),'Archivo 5.txt',UNHEX('deea7d026b9c4db8b2675bf292293aa1'));
CALL insert_study_file (UNHEX('57151081d1854a59afb6580bc9eaa800'),'Archivo 6.pdf',UNHEX('deea7d026b9c4db8b2675bf292293aa1'));
CALL insert_study_file (UNHEX('a90505e7e85b432cb3d2cea9a89c577a'),'Archivo 7.jpg',UNHEX('deea7d026b9c4db8b2675bf292293aa1'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 266df0cc5581433d962b554673ce13f2
CALL insert_patient ('1981-04-19','6','M', UNHEX('266df0cc5581433d962b554673ce13f2'),'Lenzi, claiborn Izaak','Diabetes.','doctor');
# Se craran 18 estudios para el paciente 266df0cc5581433d962b554673ce13f2
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-10','Gripe estacional.',UNHEX('bcdaf23141724c8db1474f89246f11b8'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('266df0cc5581433d962b554673ce13f2'),'BT');
# Se craran 5 archivos para el estudio bcdaf23141724c8db1474f89246f11b8
CALL insert_study_file (UNHEX('155932ffb0e24f0a88966625105a2148'),'Archivo 0.txt',UNHEX('bcdaf23141724c8db1474f89246f11b8'));
CALL insert_study_file (UNHEX('19cefc7619c943f8827d4ba4790c9c68'),'Archivo 1.pdf',UNHEX('bcdaf23141724c8db1474f89246f11b8'));
CALL insert_study_file (UNHEX('d62c7f53439a4aedb97b5c1daca10bea'),'Archivo 2.jpg',UNHEX('bcdaf23141724c8db1474f89246f11b8'));
CALL insert_study_file (UNHEX('51347417c422481398ce3f966cdab447'),'Archivo 3.pdf',UNHEX('bcdaf23141724c8db1474f89246f11b8'));
CALL insert_study_file (UNHEX('d306ea42a0b349c7b0ac26474b18ecb7'),'Archivo 4.pdf',UNHEX('bcdaf23141724c8db1474f89246f11b8'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('a9dab07a839b48b6a31ea25b5e5c3864'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('266df0cc5581433d962b554673ce13f2'),'UA');
# Se craran 8 archivos para el estudio a9dab07a839b48b6a31ea25b5e5c3864
CALL insert_study_file (UNHEX('011a497397ca416abc7e1988220bdd46'),'Archivo 0.doc',UNHEX('a9dab07a839b48b6a31ea25b5e5c3864'));
CALL insert_study_file (UNHEX('33966061db824873a9eb1b9780063b25'),'Archivo 1.doc',UNHEX('a9dab07a839b48b6a31ea25b5e5c3864'));
CALL insert_study_file (UNHEX('b90f748d028842f5ac8bbb90fbe744c2'),'Archivo 2.txt',UNHEX('a9dab07a839b48b6a31ea25b5e5c3864'));
CALL insert_study_file (UNHEX('5f16534faf7a4af78e407f975558686e'),'Archivo 3.jpg',UNHEX('a9dab07a839b48b6a31ea25b5e5c3864'));
CALL insert_study_file (UNHEX('4074c92de29f4765ad7b408b8aef970b'),'Archivo 4.jpg',UNHEX('a9dab07a839b48b6a31ea25b5e5c3864'));
CALL insert_study_file (UNHEX('8aa315a4678b43d98e98f0155da8ec3c'),'Archivo 5.txt',UNHEX('a9dab07a839b48b6a31ea25b5e5c3864'));
CALL insert_study_file (UNHEX('4b3c0ae710a5446db762d8bc85a5a6a8'),'Archivo 6.txt',UNHEX('a9dab07a839b48b6a31ea25b5e5c3864'));
CALL insert_study_file (UNHEX('366f022a1f9f4761a4d3be3b0f9c3524'),'Archivo 7.jpg',UNHEX('a9dab07a839b48b6a31ea25b5e5c3864'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-12','Posibles alergias estacionales.',UNHEX('424e53e2fbf549debc02bf727d8ee448'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('266df0cc5581433d962b554673ce13f2'),'ET');
# Se craran 9 archivos para el estudio 424e53e2fbf549debc02bf727d8ee448
CALL insert_study_file (UNHEX('ab58e7b073c74d67b7f8b666df15ea9f'),'Archivo 0.txt',UNHEX('424e53e2fbf549debc02bf727d8ee448'));
CALL insert_study_file (UNHEX('f4ad9ad8fe9f40ca81deb3381a33a325'),'Archivo 1.pdf',UNHEX('424e53e2fbf549debc02bf727d8ee448'));
CALL insert_study_file (UNHEX('ee28536d48bb4edfa8dea51037ee5c95'),'Archivo 2.txt',UNHEX('424e53e2fbf549debc02bf727d8ee448'));
CALL insert_study_file (UNHEX('ec24f058693b4eafae3216e26d59c568'),'Archivo 3.jpg',UNHEX('424e53e2fbf549debc02bf727d8ee448'));
CALL insert_study_file (UNHEX('88e7ff391bcc48c9a8a44caa4ddd0fd8'),'Archivo 4.txt',UNHEX('424e53e2fbf549debc02bf727d8ee448'));
CALL insert_study_file (UNHEX('ee9098d62d2b4e90b3d2e26b0fe34ea4'),'Archivo 5.doc',UNHEX('424e53e2fbf549debc02bf727d8ee448'));
CALL insert_study_file (UNHEX('bdf7e9fd43bf4cb8936bbcc4447fb69c'),'Archivo 6.doc',UNHEX('424e53e2fbf549debc02bf727d8ee448'));
CALL insert_study_file (UNHEX('963c4d14124944f497b60a8c6dcb150d'),'Archivo 7.pdf',UNHEX('424e53e2fbf549debc02bf727d8ee448'));
CALL insert_study_file (UNHEX('8808d38b1e5e426f8c9f27e5c5d50a7a'),'Archivo 8.txt',UNHEX('424e53e2fbf549debc02bf727d8ee448'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-08','Resfrio común.',UNHEX('77155dc94bf24eb1b243af6cad2a906c'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('266df0cc5581433d962b554673ce13f2'),'UA');
# Se craran 8 archivos para el estudio 77155dc94bf24eb1b243af6cad2a906c
CALL insert_study_file (UNHEX('e8580f098a6d4dac910afb54aee89369'),'Archivo 0.txt',UNHEX('77155dc94bf24eb1b243af6cad2a906c'));
CALL insert_study_file (UNHEX('dc19de0449464aa5b920af4768def73e'),'Archivo 1.pdf',UNHEX('77155dc94bf24eb1b243af6cad2a906c'));
CALL insert_study_file (UNHEX('cce5c23b995e42fe9af128796ea2c690'),'Archivo 2.jpg',UNHEX('77155dc94bf24eb1b243af6cad2a906c'));
CALL insert_study_file (UNHEX('23b41ca96ce84ad3b1ab3d8902806fdb'),'Archivo 3.jpg',UNHEX('77155dc94bf24eb1b243af6cad2a906c'));
CALL insert_study_file (UNHEX('9bf07e2941de49538a565e19e2608e1b'),'Archivo 4.txt',UNHEX('77155dc94bf24eb1b243af6cad2a906c'));
CALL insert_study_file (UNHEX('c524213c833b49d688d6f06893ede6ce'),'Archivo 5.doc',UNHEX('77155dc94bf24eb1b243af6cad2a906c'));
CALL insert_study_file (UNHEX('1b0e7233ca814befae245a2affeac329'),'Archivo 6.jpg',UNHEX('77155dc94bf24eb1b243af6cad2a906c'));
CALL insert_study_file (UNHEX('f13d81576b0243138302df12f3a3e74d'),'Archivo 7.pdf',UNHEX('77155dc94bf24eb1b243af6cad2a906c'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-09','Diferencial: Resfrio común.',UNHEX('055beb2b57124a15a612e6771e4596e9'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('266df0cc5581433d962b554673ce13f2'),'BT');
# Se craran 5 archivos para el estudio 055beb2b57124a15a612e6771e4596e9
CALL insert_study_file (UNHEX('8f1d9fce18a847c2b51eefca0bf1886e'),'Archivo 0.txt',UNHEX('055beb2b57124a15a612e6771e4596e9'));
CALL insert_study_file (UNHEX('49b1e35c5fd44e2f8c4fe09584faf546'),'Archivo 1.jpg',UNHEX('055beb2b57124a15a612e6771e4596e9'));
CALL insert_study_file (UNHEX('6219fb7a2a544e0ab561c0cced6dda80'),'Archivo 2.doc',UNHEX('055beb2b57124a15a612e6771e4596e9'));
CALL insert_study_file (UNHEX('1c10fd4b0c2d4530a2025ad651fcda16'),'Archivo 3.jpg',UNHEX('055beb2b57124a15a612e6771e4596e9'));
CALL insert_study_file (UNHEX('01524e8d6a76426ba4491eaff207e091'),'Archivo 4.jpg',UNHEX('055beb2b57124a15a612e6771e4596e9'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-09','Diferencial: Gripe H1N1',UNHEX('2cf43167c12249f18bd5b92c1c31ff76'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','---',UNHEX('266df0cc5581433d962b554673ce13f2'),'BT');
# Se craran 9 archivos para el estudio 2cf43167c12249f18bd5b92c1c31ff76
CALL insert_study_file (UNHEX('7de6d6a7ee704b04a5cea51f3e8c139d'),'Archivo 0.jpg',UNHEX('2cf43167c12249f18bd5b92c1c31ff76'));
CALL insert_study_file (UNHEX('694e661548624a829815d555b2fc372e'),'Archivo 1.pdf',UNHEX('2cf43167c12249f18bd5b92c1c31ff76'));
CALL insert_study_file (UNHEX('9b4e0835b78248eab25e9317ceddef8a'),'Archivo 2.txt',UNHEX('2cf43167c12249f18bd5b92c1c31ff76'));
CALL insert_study_file (UNHEX('97395ede52b84e2bbf7f46f3d0431cca'),'Archivo 3.txt',UNHEX('2cf43167c12249f18bd5b92c1c31ff76'));
CALL insert_study_file (UNHEX('3265eb525bfe4f02ad37cb2d58b371cd'),'Archivo 4.txt',UNHEX('2cf43167c12249f18bd5b92c1c31ff76'));
CALL insert_study_file (UNHEX('9b7452382a324d25938520aaa9d0376b'),'Archivo 5.jpg',UNHEX('2cf43167c12249f18bd5b92c1c31ff76'));
CALL insert_study_file (UNHEX('86077071603042f69e39e76cc848e6c3'),'Archivo 6.pdf',UNHEX('2cf43167c12249f18bd5b92c1c31ff76'));
CALL insert_study_file (UNHEX('97527a8ae3f6487e918e6552556c84ae'),'Archivo 7.pdf',UNHEX('2cf43167c12249f18bd5b92c1c31ff76'));
CALL insert_study_file (UNHEX('0774f553ed94400a9157584eabc9d535'),'Archivo 8.txt',UNHEX('2cf43167c12249f18bd5b92c1c31ff76'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('f7fb188a766c40b7b5f1a623cb1f0be8'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('266df0cc5581433d962b554673ce13f2'),'UA');
# Se craran 9 archivos para el estudio f7fb188a766c40b7b5f1a623cb1f0be8
CALL insert_study_file (UNHEX('2586ac89692b4d9b9082cca850cb0d65'),'Archivo 0.txt',UNHEX('f7fb188a766c40b7b5f1a623cb1f0be8'));
CALL insert_study_file (UNHEX('04f7164a18e24dc795be70880aca61fb'),'Archivo 1.pdf',UNHEX('f7fb188a766c40b7b5f1a623cb1f0be8'));
CALL insert_study_file (UNHEX('4937c1d594b44514b1d23bef4f04d24e'),'Archivo 2.jpg',UNHEX('f7fb188a766c40b7b5f1a623cb1f0be8'));
CALL insert_study_file (UNHEX('eb2212cdaf9c45bea74b05247a4d0d66'),'Archivo 3.doc',UNHEX('f7fb188a766c40b7b5f1a623cb1f0be8'));
CALL insert_study_file (UNHEX('14ea452f795e46dc93cea28213527e19'),'Archivo 4.txt',UNHEX('f7fb188a766c40b7b5f1a623cb1f0be8'));
CALL insert_study_file (UNHEX('14eed422eef54b73a3a6f2dfd1a32800'),'Archivo 5.txt',UNHEX('f7fb188a766c40b7b5f1a623cb1f0be8'));
CALL insert_study_file (UNHEX('3e6b80f47f244623a6a036c718b3e0d4'),'Archivo 6.doc',UNHEX('f7fb188a766c40b7b5f1a623cb1f0be8'));
CALL insert_study_file (UNHEX('7f7a6e934619463bba5bb982d2f02e91'),'Archivo 7.doc',UNHEX('f7fb188a766c40b7b5f1a623cb1f0be8'));
CALL insert_study_file (UNHEX('1015418ab1994077a33c68b86fbc567b'),'Archivo 8.txt',UNHEX('f7fb188a766c40b7b5f1a623cb1f0be8'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-05','Diferencial: Gripe H1N1',UNHEX('f56124f5fc2a4965a4efe112eabc683d'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','Tolerancia muy baja a los sintomas gripales.',UNHEX('266df0cc5581433d962b554673ce13f2'),'UA');
# Se craran 7 archivos para el estudio f56124f5fc2a4965a4efe112eabc683d
CALL insert_study_file (UNHEX('0e71ec9f8c464ec0a8a233b35208b998'),'Archivo 0.txt',UNHEX('f56124f5fc2a4965a4efe112eabc683d'));
CALL insert_study_file (UNHEX('dd1dab3d895b428c939a098c9c1aa1aa'),'Archivo 1.doc',UNHEX('f56124f5fc2a4965a4efe112eabc683d'));
CALL insert_study_file (UNHEX('01f720beec8f4bb4bab5f145a8e4b65d'),'Archivo 2.doc',UNHEX('f56124f5fc2a4965a4efe112eabc683d'));
CALL insert_study_file (UNHEX('1ba633a4ed9a44a2ac1eedddf06ec161'),'Archivo 3.pdf',UNHEX('f56124f5fc2a4965a4efe112eabc683d'));
CALL insert_study_file (UNHEX('1dc6a121e6a14675b0198cf902e13532'),'Archivo 4.pdf',UNHEX('f56124f5fc2a4965a4efe112eabc683d'));
CALL insert_study_file (UNHEX('8d4a2378ecfb4665a1fe6082cc6f5f77'),'Archivo 5.txt',UNHEX('f56124f5fc2a4965a4efe112eabc683d'));
CALL insert_study_file (UNHEX('de0adf65eeb54db8b790fd4f79e143bb'),'Archivo 6.jpg',UNHEX('f56124f5fc2a4965a4efe112eabc683d'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('185411034f4b470787a304258fd5fdef'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('266df0cc5581433d962b554673ce13f2'),'UA');
# Se craran 5 archivos para el estudio 185411034f4b470787a304258fd5fdef
CALL insert_study_file (UNHEX('c61b85ad34274a2b8d95d8ba25329c96'),'Archivo 0.doc',UNHEX('185411034f4b470787a304258fd5fdef'));
CALL insert_study_file (UNHEX('beb4b65d33174b3f8aeab933321f2462'),'Archivo 1.doc',UNHEX('185411034f4b470787a304258fd5fdef'));
CALL insert_study_file (UNHEX('dc01cb2f2c3d4582a7e776a3d3f9395e'),'Archivo 2.pdf',UNHEX('185411034f4b470787a304258fd5fdef'));
CALL insert_study_file (UNHEX('f2fa3aabeb7842d4809a481b7fe22294'),'Archivo 3.pdf',UNHEX('185411034f4b470787a304258fd5fdef'));
CALL insert_study_file (UNHEX('9a70aa43ad784a8d852e1188927c136f'),'Archivo 4.doc',UNHEX('185411034f4b470787a304258fd5fdef'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-10','Resfrio común.',UNHEX('968a2c1865574428a6e504abc57de038'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('266df0cc5581433d962b554673ce13f2'),'BT');
# Se craran 0 archivos para el estudio 968a2c1865574428a6e504abc57de038
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('92db2cdf9a6a4689a5c7ec626f5cab9b'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('266df0cc5581433d962b554673ce13f2'),'ET');
# Se craran 4 archivos para el estudio 92db2cdf9a6a4689a5c7ec626f5cab9b
CALL insert_study_file (UNHEX('9c71dab608734c5286dc72260f09495d'),'Archivo 0.jpg',UNHEX('92db2cdf9a6a4689a5c7ec626f5cab9b'));
CALL insert_study_file (UNHEX('30efaaa645c8430f81755558653d57da'),'Archivo 1.doc',UNHEX('92db2cdf9a6a4689a5c7ec626f5cab9b'));
CALL insert_study_file (UNHEX('210c584018ab495c8195322b9359ee98'),'Archivo 2.jpg',UNHEX('92db2cdf9a6a4689a5c7ec626f5cab9b'));
CALL insert_study_file (UNHEX('cbe82c31b7f24390bd8ca9f29f8a26fe'),'Archivo 3.pdf',UNHEX('92db2cdf9a6a4689a5c7ec626f5cab9b'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-11','Resfrio común.',UNHEX('2502a1495e7e4fc49283cb3f2ddf334a'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('266df0cc5581433d962b554673ce13f2'),'BT');
# Se craran 4 archivos para el estudio 2502a1495e7e4fc49283cb3f2ddf334a
CALL insert_study_file (UNHEX('f518c8e8018743fa9b105b54c1daa47b'),'Archivo 0.pdf',UNHEX('2502a1495e7e4fc49283cb3f2ddf334a'));
CALL insert_study_file (UNHEX('8004d5e2dd8a4638a1100c55db810572'),'Archivo 1.doc',UNHEX('2502a1495e7e4fc49283cb3f2ddf334a'));
CALL insert_study_file (UNHEX('4ba0696274324a11aab4c2e9cf49243f'),'Archivo 2.doc',UNHEX('2502a1495e7e4fc49283cb3f2ddf334a'));
CALL insert_study_file (UNHEX('dc9cea78a3b645faa97d8bce527a8cd6'),'Archivo 3.pdf',UNHEX('2502a1495e7e4fc49283cb3f2ddf334a'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-06','Resfrio común.',UNHEX('d1d71b0f972d4aeaad28274d339d0944'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('266df0cc5581433d962b554673ce13f2'),'BT');
# Se craran 2 archivos para el estudio d1d71b0f972d4aeaad28274d339d0944
CALL insert_study_file (UNHEX('adccfee436294f55aaab6142532490d3'),'Archivo 0.doc',UNHEX('d1d71b0f972d4aeaad28274d339d0944'));
CALL insert_study_file (UNHEX('92b6b58f00dd4930a0d80f5477630a5a'),'Archivo 1.pdf',UNHEX('d1d71b0f972d4aeaad28274d339d0944'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-09','Resfrio común.',UNHEX('b8bd1b39f4684c7db3601da0c0ccfa40'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('266df0cc5581433d962b554673ce13f2'),'BT');
# Se craran 9 archivos para el estudio b8bd1b39f4684c7db3601da0c0ccfa40
CALL insert_study_file (UNHEX('b416814463fb48ecbc1d2a25c3ba863e'),'Archivo 0.pdf',UNHEX('b8bd1b39f4684c7db3601da0c0ccfa40'));
CALL insert_study_file (UNHEX('fa2f7d37398e44c984b0ce511331044e'),'Archivo 1.jpg',UNHEX('b8bd1b39f4684c7db3601da0c0ccfa40'));
CALL insert_study_file (UNHEX('7e6f8f9f8cf346dbb6fb452f42177e13'),'Archivo 2.doc',UNHEX('b8bd1b39f4684c7db3601da0c0ccfa40'));
CALL insert_study_file (UNHEX('ceffe8c715934d68bd64d1e1a8f42aa0'),'Archivo 3.doc',UNHEX('b8bd1b39f4684c7db3601da0c0ccfa40'));
CALL insert_study_file (UNHEX('228dd0f80c154a8cb52734f7567eadcb'),'Archivo 4.pdf',UNHEX('b8bd1b39f4684c7db3601da0c0ccfa40'));
CALL insert_study_file (UNHEX('f270d11949c34b00a1f442e7b698aa11'),'Archivo 5.txt',UNHEX('b8bd1b39f4684c7db3601da0c0ccfa40'));
CALL insert_study_file (UNHEX('538a0290976847cca26d8ec1c9c86582'),'Archivo 6.txt',UNHEX('b8bd1b39f4684c7db3601da0c0ccfa40'));
CALL insert_study_file (UNHEX('c4fc4194e1d44023bc36afa7918d033b'),'Archivo 7.txt',UNHEX('b8bd1b39f4684c7db3601da0c0ccfa40'));
CALL insert_study_file (UNHEX('e2993ac00b2a4a4497d3e527b76a1b6e'),'Archivo 8.jpg',UNHEX('b8bd1b39f4684c7db3601da0c0ccfa40'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-08','Resfrio común.',UNHEX('bc6182d97f0343c7ad1282154d4eee3e'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('266df0cc5581433d962b554673ce13f2'),'UA');
# Se craran 4 archivos para el estudio bc6182d97f0343c7ad1282154d4eee3e
CALL insert_study_file (UNHEX('89aa861a82e14481a5548532555205df'),'Archivo 0.doc',UNHEX('bc6182d97f0343c7ad1282154d4eee3e'));
CALL insert_study_file (UNHEX('ba4d5f16384440caa4c87f8d7529d985'),'Archivo 1.jpg',UNHEX('bc6182d97f0343c7ad1282154d4eee3e'));
CALL insert_study_file (UNHEX('7e792ce545a54c7f8e6d603bfaeb5c83'),'Archivo 2.txt',UNHEX('bc6182d97f0343c7ad1282154d4eee3e'));
CALL insert_study_file (UNHEX('7089db8e9b84401881df4cc2d1eb66b1'),'Archivo 3.pdf',UNHEX('bc6182d97f0343c7ad1282154d4eee3e'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-08','Diferencial: Gripe H1N1',UNHEX('4f958e6426b44d408e922dc5635c44ff'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','Programada nueva consulta en 5 días.',UNHEX('266df0cc5581433d962b554673ce13f2'),'UA');
# Se craran 3 archivos para el estudio 4f958e6426b44d408e922dc5635c44ff
CALL insert_study_file (UNHEX('2590a7d3316c41879e2ee75f587a76f6'),'Archivo 0.doc',UNHEX('4f958e6426b44d408e922dc5635c44ff'));
CALL insert_study_file (UNHEX('619cc707b4964bc6a5e4d329af510e35'),'Archivo 1.doc',UNHEX('4f958e6426b44d408e922dc5635c44ff'));
CALL insert_study_file (UNHEX('44e7559d0f2d4a04b6ce51deb941cb5c'),'Archivo 2.jpg',UNHEX('4f958e6426b44d408e922dc5635c44ff'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-05','',UNHEX('18c25e3713864469b4d059c2f9431290'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('266df0cc5581433d962b554673ce13f2'),'BT');
# Se craran 0 archivos para el estudio 18c25e3713864469b4d059c2f9431290
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-07','Gripe estacional.',UNHEX('ca376e5bb6564c3285c420fe8ad73725'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('266df0cc5581433d962b554673ce13f2'),'UA');
# Se craran 7 archivos para el estudio ca376e5bb6564c3285c420fe8ad73725
CALL insert_study_file (UNHEX('3270b78ede6f420b80fd750e03dd338d'),'Archivo 0.doc',UNHEX('ca376e5bb6564c3285c420fe8ad73725'));
CALL insert_study_file (UNHEX('0d54ceec20cd44f4a5dcb468ded20fef'),'Archivo 1.doc',UNHEX('ca376e5bb6564c3285c420fe8ad73725'));
CALL insert_study_file (UNHEX('8f16ef4bb2944d66a2fc4df194f3f91f'),'Archivo 2.jpg',UNHEX('ca376e5bb6564c3285c420fe8ad73725'));
CALL insert_study_file (UNHEX('580476e30d6a4e46ba5d5fd9a652f0e7'),'Archivo 3.txt',UNHEX('ca376e5bb6564c3285c420fe8ad73725'));
CALL insert_study_file (UNHEX('504919d199924c3dac6d6013c1257bbb'),'Archivo 4.doc',UNHEX('ca376e5bb6564c3285c420fe8ad73725'));
CALL insert_study_file (UNHEX('24526519e5d54eab8becbf1f981a70a8'),'Archivo 5.pdf',UNHEX('ca376e5bb6564c3285c420fe8ad73725'));
CALL insert_study_file (UNHEX('8753e96ee2b14e138350a57b37b0b204'),'Archivo 6.txt',UNHEX('ca376e5bb6564c3285c420fe8ad73725'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente cc0531916cb04005a539b615085d50b8
CALL insert_patient ('1958-05-25','2','M', UNHEX('cc0531916cb04005a539b615085d50b8'),'Custi, den','Fumador.','doctor');
# Se craran 16 estudios para el paciente cc0531916cb04005a539b615085d50b8
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('fda94682e183406ba57a310f1d9ed751'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Tolerancia muy baja a los sintomas gripales.',UNHEX('cc0531916cb04005a539b615085d50b8'),'UA');
# Se craran 2 archivos para el estudio fda94682e183406ba57a310f1d9ed751
CALL insert_study_file (UNHEX('3dc87e47362b47fe8c3e80595acb9e06'),'Archivo 0.pdf',UNHEX('fda94682e183406ba57a310f1d9ed751'));
CALL insert_study_file (UNHEX('45160919a6e34abf8c88093df768fe24'),'Archivo 1.pdf',UNHEX('fda94682e183406ba57a310f1d9ed751'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('2e10cf157fe44ea884f771f05d16e8a1'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('cc0531916cb04005a539b615085d50b8'),'BT');
# Se craran 2 archivos para el estudio 2e10cf157fe44ea884f771f05d16e8a1
CALL insert_study_file (UNHEX('dd97df91d69e40e38f6efa2b8446dd49'),'Archivo 0.doc',UNHEX('2e10cf157fe44ea884f771f05d16e8a1'));
CALL insert_study_file (UNHEX('5786142a81e2441f9b6149866d497be0'),'Archivo 1.pdf',UNHEX('2e10cf157fe44ea884f771f05d16e8a1'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-09','Resfrio común.',UNHEX('e7eb66828f054c518c4c2c67b95ead7d'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('cc0531916cb04005a539b615085d50b8'),'UA');
# Se craran 4 archivos para el estudio e7eb66828f054c518c4c2c67b95ead7d
CALL insert_study_file (UNHEX('5c0225d104494c1a9ec0b842b0cb6586'),'Archivo 0.pdf',UNHEX('e7eb66828f054c518c4c2c67b95ead7d'));
CALL insert_study_file (UNHEX('5219612cf35745ad83c4b1a7756b1528'),'Archivo 1.jpg',UNHEX('e7eb66828f054c518c4c2c67b95ead7d'));
CALL insert_study_file (UNHEX('51debea2ff8448c6b73ebbe1da4e32fb'),'Archivo 2.jpg',UNHEX('e7eb66828f054c518c4c2c67b95ead7d'));
CALL insert_study_file (UNHEX('25fb1b12266e464fada6d4f6a457d47c'),'Archivo 3.pdf',UNHEX('e7eb66828f054c518c4c2c67b95ead7d'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('4c00f321bef64d738da8e855b1760897'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('cc0531916cb04005a539b615085d50b8'),'BT');
# Se craran 8 archivos para el estudio 4c00f321bef64d738da8e855b1760897
CALL insert_study_file (UNHEX('6b72290d1f584ec08ce90794cbac6a8a'),'Archivo 0.pdf',UNHEX('4c00f321bef64d738da8e855b1760897'));
CALL insert_study_file (UNHEX('2cd2e26a072f4099940ca52852235ae9'),'Archivo 1.pdf',UNHEX('4c00f321bef64d738da8e855b1760897'));
CALL insert_study_file (UNHEX('86197b68c6be408090b5414a6bf01f48'),'Archivo 2.pdf',UNHEX('4c00f321bef64d738da8e855b1760897'));
CALL insert_study_file (UNHEX('5adc835a52b14fd5a0e25ad5c15ff930'),'Archivo 3.jpg',UNHEX('4c00f321bef64d738da8e855b1760897'));
CALL insert_study_file (UNHEX('8a4a08bf0d4f42e1be0c233bd2cb0a0a'),'Archivo 4.txt',UNHEX('4c00f321bef64d738da8e855b1760897'));
CALL insert_study_file (UNHEX('2ef8b30261c243bda82b649f637401f6'),'Archivo 5.txt',UNHEX('4c00f321bef64d738da8e855b1760897'));
CALL insert_study_file (UNHEX('e995f8ccccc440f796511e863ff79983'),'Archivo 6.txt',UNHEX('4c00f321bef64d738da8e855b1760897'));
CALL insert_study_file (UNHEX('b1adcb95a8e943bf935732557359a39b'),'Archivo 7.pdf',UNHEX('4c00f321bef64d738da8e855b1760897'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('d4c77207cbfe46519a50b3ec15f3d1d9'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('cc0531916cb04005a539b615085d50b8'),'UA');
# Se craran 1 archivos para el estudio d4c77207cbfe46519a50b3ec15f3d1d9
CALL insert_study_file (UNHEX('96fe2e0b38fa4d729468d99aac938512'),'Archivo 0.jpg',UNHEX('d4c77207cbfe46519a50b3ec15f3d1d9'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-10','Diferencial: Resfrio común.',UNHEX('650fb9d5521748f59877d14640c31983'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('cc0531916cb04005a539b615085d50b8'),'ET');
# Se craran 9 archivos para el estudio 650fb9d5521748f59877d14640c31983
CALL insert_study_file (UNHEX('8c67645ea22a4e33b2220e24c28cf689'),'Archivo 0.txt',UNHEX('650fb9d5521748f59877d14640c31983'));
CALL insert_study_file (UNHEX('28f8f7369e6a4e428cd60d1c0b3fec5e'),'Archivo 1.doc',UNHEX('650fb9d5521748f59877d14640c31983'));
CALL insert_study_file (UNHEX('fceeb76f05bb455496ce7b1ae9c2716e'),'Archivo 2.jpg',UNHEX('650fb9d5521748f59877d14640c31983'));
CALL insert_study_file (UNHEX('cbebe2642fe546e2b830fbe800f18f8f'),'Archivo 3.pdf',UNHEX('650fb9d5521748f59877d14640c31983'));
CALL insert_study_file (UNHEX('a7a2b7fa8539407d967b7f0ab569eeeb'),'Archivo 4.doc',UNHEX('650fb9d5521748f59877d14640c31983'));
CALL insert_study_file (UNHEX('a35ccda88ab744ebac7e887d03d443e7'),'Archivo 5.doc',UNHEX('650fb9d5521748f59877d14640c31983'));
CALL insert_study_file (UNHEX('8cc177479a164df3871b94e6feb8e5e5'),'Archivo 6.doc',UNHEX('650fb9d5521748f59877d14640c31983'));
CALL insert_study_file (UNHEX('f274a9626ff3417c8bdfe4c95356bea5'),'Archivo 7.txt',UNHEX('650fb9d5521748f59877d14640c31983'));
CALL insert_study_file (UNHEX('ba9267c32dbb4aa797b472eb31f0002f'),'Archivo 8.doc',UNHEX('650fb9d5521748f59877d14640c31983'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-12','Gripe estacional.',UNHEX('6fcca0af68f84a65b92580e441238c64'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('cc0531916cb04005a539b615085d50b8'),'UA');
# Se craran 8 archivos para el estudio 6fcca0af68f84a65b92580e441238c64
CALL insert_study_file (UNHEX('ce2d25f12be54291be69239393b85325'),'Archivo 0.doc',UNHEX('6fcca0af68f84a65b92580e441238c64'));
CALL insert_study_file (UNHEX('019fa66418034a76ac9eeca5a461108e'),'Archivo 1.doc',UNHEX('6fcca0af68f84a65b92580e441238c64'));
CALL insert_study_file (UNHEX('4d7405608b804851bc2ca70aa409b29a'),'Archivo 2.txt',UNHEX('6fcca0af68f84a65b92580e441238c64'));
CALL insert_study_file (UNHEX('00f48e46c3254e4792c6d8bd242707e3'),'Archivo 3.jpg',UNHEX('6fcca0af68f84a65b92580e441238c64'));
CALL insert_study_file (UNHEX('036d795d257540f8a10c8a9ce41b6bb8'),'Archivo 4.doc',UNHEX('6fcca0af68f84a65b92580e441238c64'));
CALL insert_study_file (UNHEX('b1dd92a099994580a36535863361a79b'),'Archivo 5.txt',UNHEX('6fcca0af68f84a65b92580e441238c64'));
CALL insert_study_file (UNHEX('cd95432acc98488eb14a4c4ce78d60f3'),'Archivo 6.pdf',UNHEX('6fcca0af68f84a65b92580e441238c64'));
CALL insert_study_file (UNHEX('dd39500f9bc0468099cb3bf8f2117a81'),'Archivo 7.pdf',UNHEX('6fcca0af68f84a65b92580e441238c64'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-06','Diferencial: Gripe H1N1',UNHEX('6da568bf465a401d9d1fdcb0aef0333c'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','Tolerancia muy baja a los sintomas gripales.',UNHEX('cc0531916cb04005a539b615085d50b8'),'ET');
# Se craran 1 archivos para el estudio 6da568bf465a401d9d1fdcb0aef0333c
CALL insert_study_file (UNHEX('8c631c04f9354c8ea4ce9bc6ac4cf737'),'Archivo 0.doc',UNHEX('6da568bf465a401d9d1fdcb0aef0333c'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('79cee2092d154361883a88e8b5a36fb7'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('cc0531916cb04005a539b615085d50b8'),'UA');
# Se craran 5 archivos para el estudio 79cee2092d154361883a88e8b5a36fb7
CALL insert_study_file (UNHEX('3d33ff6bed0e40bd9fcb2e4002306691'),'Archivo 0.doc',UNHEX('79cee2092d154361883a88e8b5a36fb7'));
CALL insert_study_file (UNHEX('cbfbdef2cf614380a37d66b766fb83b9'),'Archivo 1.jpg',UNHEX('79cee2092d154361883a88e8b5a36fb7'));
CALL insert_study_file (UNHEX('0a8fdbb7c8fe4e4d914d2565168a3b5a'),'Archivo 2.pdf',UNHEX('79cee2092d154361883a88e8b5a36fb7'));
CALL insert_study_file (UNHEX('cd1b1c78ec5d4f60b32c0e324f1cf643'),'Archivo 3.txt',UNHEX('79cee2092d154361883a88e8b5a36fb7'));
CALL insert_study_file (UNHEX('ff65fd49f7674271b724b41a816967ef'),'Archivo 4.pdf',UNHEX('79cee2092d154361883a88e8b5a36fb7'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-11','Diferencial: Gripe H1N1',UNHEX('aaa17e3374c544bcbd3207fdf702c0f6'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','---',UNHEX('cc0531916cb04005a539b615085d50b8'),'ET');
# Se craran 8 archivos para el estudio aaa17e3374c544bcbd3207fdf702c0f6
CALL insert_study_file (UNHEX('263d88d15919492cb91f62be32efd793'),'Archivo 0.jpg',UNHEX('aaa17e3374c544bcbd3207fdf702c0f6'));
CALL insert_study_file (UNHEX('947bf7098b384f039e73bf48fe03cd58'),'Archivo 1.txt',UNHEX('aaa17e3374c544bcbd3207fdf702c0f6'));
CALL insert_study_file (UNHEX('e0e9ec55ac124f2996a1e9204c1044d7'),'Archivo 2.txt',UNHEX('aaa17e3374c544bcbd3207fdf702c0f6'));
CALL insert_study_file (UNHEX('4f495311b06f498db7a98deb126e07fe'),'Archivo 3.jpg',UNHEX('aaa17e3374c544bcbd3207fdf702c0f6'));
CALL insert_study_file (UNHEX('027ec216d16148b498fc726f108ed5c7'),'Archivo 4.pdf',UNHEX('aaa17e3374c544bcbd3207fdf702c0f6'));
CALL insert_study_file (UNHEX('4e24ebcc32264ac1a16487c0f667b97d'),'Archivo 5.pdf',UNHEX('aaa17e3374c544bcbd3207fdf702c0f6'));
CALL insert_study_file (UNHEX('6bb6b7938338487bb056298587a2dd8d'),'Archivo 6.txt',UNHEX('aaa17e3374c544bcbd3207fdf702c0f6'));
CALL insert_study_file (UNHEX('55f70365df034e1583931962f0fa799f'),'Archivo 7.jpg',UNHEX('aaa17e3374c544bcbd3207fdf702c0f6'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-11','Posibles alergias estacionales.',UNHEX('e2dd0147e4ec4ff7abef8a1cda38bab0'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Tolerancia muy baja a los sintomas gripales.',UNHEX('cc0531916cb04005a539b615085d50b8'),'ET');
# Se craran 9 archivos para el estudio e2dd0147e4ec4ff7abef8a1cda38bab0
CALL insert_study_file (UNHEX('40fa7f7fe53541639bf414a87631c6f9'),'Archivo 0.pdf',UNHEX('e2dd0147e4ec4ff7abef8a1cda38bab0'));
CALL insert_study_file (UNHEX('8e22ad7fbef945f197575453446c4d8b'),'Archivo 1.pdf',UNHEX('e2dd0147e4ec4ff7abef8a1cda38bab0'));
CALL insert_study_file (UNHEX('ea4f9c0789dd43638a66716ef42841f1'),'Archivo 2.pdf',UNHEX('e2dd0147e4ec4ff7abef8a1cda38bab0'));
CALL insert_study_file (UNHEX('a943d89876384e8fb312e3d5d6e89823'),'Archivo 3.doc',UNHEX('e2dd0147e4ec4ff7abef8a1cda38bab0'));
CALL insert_study_file (UNHEX('db9ee6a3612a434484df9443e6ef11e5'),'Archivo 4.txt',UNHEX('e2dd0147e4ec4ff7abef8a1cda38bab0'));
CALL insert_study_file (UNHEX('9b7b8769c7604ce49c189ee3d543151d'),'Archivo 5.doc',UNHEX('e2dd0147e4ec4ff7abef8a1cda38bab0'));
CALL insert_study_file (UNHEX('b8f2e4c86c184b5d9663b5f180e1a1da'),'Archivo 6.jpg',UNHEX('e2dd0147e4ec4ff7abef8a1cda38bab0'));
CALL insert_study_file (UNHEX('74ea7eed24a749dd8ae0a6b69b5e3f80'),'Archivo 7.doc',UNHEX('e2dd0147e4ec4ff7abef8a1cda38bab0'));
CALL insert_study_file (UNHEX('084b5b2413f64e398c63d73ef37f0e7d'),'Archivo 8.jpg',UNHEX('e2dd0147e4ec4ff7abef8a1cda38bab0'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-11','Gripe estacional.',UNHEX('3085b6e50e9a4cb1b468ec2535441609'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('cc0531916cb04005a539b615085d50b8'),'UA');
# Se craran 4 archivos para el estudio 3085b6e50e9a4cb1b468ec2535441609
CALL insert_study_file (UNHEX('3a0ce4869b234bcb8aeb62dda5c659b3'),'Archivo 0.doc',UNHEX('3085b6e50e9a4cb1b468ec2535441609'));
CALL insert_study_file (UNHEX('30dfd4135ae8481c8a7ba1d2b3ae1871'),'Archivo 1.pdf',UNHEX('3085b6e50e9a4cb1b468ec2535441609'));
CALL insert_study_file (UNHEX('1b73ac3bcaa14124826b7e7e454183b0'),'Archivo 2.pdf',UNHEX('3085b6e50e9a4cb1b468ec2535441609'));
CALL insert_study_file (UNHEX('56197d1a2af5415db3ea4ddcb538879a'),'Archivo 3.doc',UNHEX('3085b6e50e9a4cb1b468ec2535441609'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-07','Diferencial: Resfrio común.',UNHEX('c9bbad5699d84f1b9f93877b5a9c979d'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('cc0531916cb04005a539b615085d50b8'),'BT');
# Se craran 1 archivos para el estudio c9bbad5699d84f1b9f93877b5a9c979d
CALL insert_study_file (UNHEX('92a9a26f6fc34cac9f973ee3745c6e0e'),'Archivo 0.pdf',UNHEX('c9bbad5699d84f1b9f93877b5a9c979d'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('d200b974b28145209cbb7df3414697a8'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Programada nueva consulta en 5 días.',UNHEX('cc0531916cb04005a539b615085d50b8'),'BT');
# Se craran 2 archivos para el estudio d200b974b28145209cbb7df3414697a8
CALL insert_study_file (UNHEX('055d8bf4e7564f5e9c999aeee56965a2'),'Archivo 0.jpg',UNHEX('d200b974b28145209cbb7df3414697a8'));
CALL insert_study_file (UNHEX('87112438f4694df8aff08c7ce7dd7287'),'Archivo 1.pdf',UNHEX('d200b974b28145209cbb7df3414697a8'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('dc3d09df58d84924b683deb6f21ec9b3'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('cc0531916cb04005a539b615085d50b8'),'BT');
# Se craran 4 archivos para el estudio dc3d09df58d84924b683deb6f21ec9b3
CALL insert_study_file (UNHEX('8557a1ab0f0840bb8941fb1f0deb4e58'),'Archivo 0.txt',UNHEX('dc3d09df58d84924b683deb6f21ec9b3'));
CALL insert_study_file (UNHEX('bb637aee542242089515b39959281f5a'),'Archivo 1.txt',UNHEX('dc3d09df58d84924b683deb6f21ec9b3'));
CALL insert_study_file (UNHEX('d2443ecf45e64e89a1cd22fafa229fe8'),'Archivo 2.doc',UNHEX('dc3d09df58d84924b683deb6f21ec9b3'));
CALL insert_study_file (UNHEX('006eacebcf3041f2acf14675bc300373'),'Archivo 3.jpg',UNHEX('dc3d09df58d84924b683deb6f21ec9b3'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('f225273ff4cf4d01a40c823ff5facc57'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Tolerancia muy baja a los sintomas gripales.',UNHEX('cc0531916cb04005a539b615085d50b8'),'ET');
# Se craran 4 archivos para el estudio f225273ff4cf4d01a40c823ff5facc57
CALL insert_study_file (UNHEX('2f06474683884430a6e128d07d780c1f'),'Archivo 0.jpg',UNHEX('f225273ff4cf4d01a40c823ff5facc57'));
CALL insert_study_file (UNHEX('22d2f4c21508445ea34a9ea3dfcbe7ee'),'Archivo 1.pdf',UNHEX('f225273ff4cf4d01a40c823ff5facc57'));
CALL insert_study_file (UNHEX('402c138020124382a5d13331671e9240'),'Archivo 2.jpg',UNHEX('f225273ff4cf4d01a40c823ff5facc57'));
CALL insert_study_file (UNHEX('2310be4069f24b708f0d3797de0f6008'),'Archivo 3.doc',UNHEX('f225273ff4cf4d01a40c823ff5facc57'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente ce5e0dfd29bd4668957b3ec18cef5bdb
CALL insert_patient ('1943-01-29','7','F', UNHEX('ce5e0dfd29bd4668957b3ec18cef5bdb'),'Keul, Lise Alysa','Anemia falciforme.','doctor');
# Se craran 12 estudios para el paciente ce5e0dfd29bd4668957b3ec18cef5bdb
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-05','Diferencial: Gripe H1N1',UNHEX('060a6f2ef97649d39c3c414320a929c1'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','---',UNHEX('ce5e0dfd29bd4668957b3ec18cef5bdb'),'BT');
# Se craran 8 archivos para el estudio 060a6f2ef97649d39c3c414320a929c1
CALL insert_study_file (UNHEX('3482e9799b9f4ba8916caa8ff756a88e'),'Archivo 0.txt',UNHEX('060a6f2ef97649d39c3c414320a929c1'));
CALL insert_study_file (UNHEX('dc95da78efdd4c1389ecc51610886ac0'),'Archivo 1.doc',UNHEX('060a6f2ef97649d39c3c414320a929c1'));
CALL insert_study_file (UNHEX('b441f96bb23d4eaea0e23e8a5612845f'),'Archivo 2.pdf',UNHEX('060a6f2ef97649d39c3c414320a929c1'));
CALL insert_study_file (UNHEX('5c99e0bdda824c4c8b61fce9ae506adb'),'Archivo 3.jpg',UNHEX('060a6f2ef97649d39c3c414320a929c1'));
CALL insert_study_file (UNHEX('4edde6dbbeaf42cfbeff0b6c67d617ae'),'Archivo 4.jpg',UNHEX('060a6f2ef97649d39c3c414320a929c1'));
CALL insert_study_file (UNHEX('ace67a0c91b942bea6293e210a501302'),'Archivo 5.txt',UNHEX('060a6f2ef97649d39c3c414320a929c1'));
CALL insert_study_file (UNHEX('3546732063c444b8a911e02b533c04dd'),'Archivo 6.jpg',UNHEX('060a6f2ef97649d39c3c414320a929c1'));
CALL insert_study_file (UNHEX('67e1f45032844c2c97e66a8feec7b624'),'Archivo 7.doc',UNHEX('060a6f2ef97649d39c3c414320a929c1'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-11','Posibles alergias estacionales.',UNHEX('dbbad0a3cf8848989d4be5560b573b11'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Tolerancia muy baja a los sintomas gripales.',UNHEX('ce5e0dfd29bd4668957b3ec18cef5bdb'),'ET');
# Se craran 3 archivos para el estudio dbbad0a3cf8848989d4be5560b573b11
CALL insert_study_file (UNHEX('679f06ff6ab948fb93786993194393c6'),'Archivo 0.txt',UNHEX('dbbad0a3cf8848989d4be5560b573b11'));
CALL insert_study_file (UNHEX('524070a1173642ddbd23fb18cad6edf9'),'Archivo 1.doc',UNHEX('dbbad0a3cf8848989d4be5560b573b11'));
CALL insert_study_file (UNHEX('eacdfbeba2ca410fb9da1cc40e26b3e5'),'Archivo 2.jpg',UNHEX('dbbad0a3cf8848989d4be5560b573b11'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('29a68aa0b25b444a892af3f06594a8a6'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('ce5e0dfd29bd4668957b3ec18cef5bdb'),'BT');
# Se craran 2 archivos para el estudio 29a68aa0b25b444a892af3f06594a8a6
CALL insert_study_file (UNHEX('81c770e47b6947e58d737c5ecfdc9500'),'Archivo 0.doc',UNHEX('29a68aa0b25b444a892af3f06594a8a6'));
CALL insert_study_file (UNHEX('409d663f67a54055ad0e27692b3b9b17'),'Archivo 1.txt',UNHEX('29a68aa0b25b444a892af3f06594a8a6'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-06','Diferencial: Gripe H1N1',UNHEX('571694c3c9bb494c9f1fad846fa3b837'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','Programada nueva consulta en 5 días.',UNHEX('ce5e0dfd29bd4668957b3ec18cef5bdb'),'UA');
# Se craran 7 archivos para el estudio 571694c3c9bb494c9f1fad846fa3b837
CALL insert_study_file (UNHEX('6f6f8beb6e7643e7b042fba611ee8ec7'),'Archivo 0.txt',UNHEX('571694c3c9bb494c9f1fad846fa3b837'));
CALL insert_study_file (UNHEX('b7b892baa7f34e4c902befc99499e244'),'Archivo 1.pdf',UNHEX('571694c3c9bb494c9f1fad846fa3b837'));
CALL insert_study_file (UNHEX('22234de5536043ac90aa5c64972b1fcc'),'Archivo 2.txt',UNHEX('571694c3c9bb494c9f1fad846fa3b837'));
CALL insert_study_file (UNHEX('d3e50d8d7b834499a237bc1670485073'),'Archivo 3.pdf',UNHEX('571694c3c9bb494c9f1fad846fa3b837'));
CALL insert_study_file (UNHEX('71c856c59e5c490dbede11b0b35aa56a'),'Archivo 4.doc',UNHEX('571694c3c9bb494c9f1fad846fa3b837'));
CALL insert_study_file (UNHEX('1ad0f0aa2f6540aba1062e6be4946211'),'Archivo 5.pdf',UNHEX('571694c3c9bb494c9f1fad846fa3b837'));
CALL insert_study_file (UNHEX('3a41e50e334546aeb41fbcd43ccbc2bd'),'Archivo 6.doc',UNHEX('571694c3c9bb494c9f1fad846fa3b837'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('4d601d051f9c4fc8985dc2277c277f37'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('ce5e0dfd29bd4668957b3ec18cef5bdb'),'BT');
# Se craran 0 archivos para el estudio 4d601d051f9c4fc8985dc2277c277f37
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-08','Diferencial: Resfrio común.',UNHEX('5ed6079d95f24615b2c7b2e9da7db59a'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('ce5e0dfd29bd4668957b3ec18cef5bdb'),'BT');
# Se craran 6 archivos para el estudio 5ed6079d95f24615b2c7b2e9da7db59a
CALL insert_study_file (UNHEX('6c8b2fcc77634b528b1a002c2cebda61'),'Archivo 0.doc',UNHEX('5ed6079d95f24615b2c7b2e9da7db59a'));
CALL insert_study_file (UNHEX('c18fb90fbe1b4750b08039553f157aa6'),'Archivo 1.jpg',UNHEX('5ed6079d95f24615b2c7b2e9da7db59a'));
CALL insert_study_file (UNHEX('4713c852c7d64de29cf49d943b271c4d'),'Archivo 2.pdf',UNHEX('5ed6079d95f24615b2c7b2e9da7db59a'));
CALL insert_study_file (UNHEX('6fe226cbef9840dfaf3e958b64335f83'),'Archivo 3.txt',UNHEX('5ed6079d95f24615b2c7b2e9da7db59a'));
CALL insert_study_file (UNHEX('fff79c37a85f46409e377610d365bdbe'),'Archivo 4.pdf',UNHEX('5ed6079d95f24615b2c7b2e9da7db59a'));
CALL insert_study_file (UNHEX('df3b9d739c214f23958922c360f04b46'),'Archivo 5.doc',UNHEX('5ed6079d95f24615b2c7b2e9da7db59a'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-05','',UNHEX('92fdd21995e4405298c5474de8e6d5f8'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('ce5e0dfd29bd4668957b3ec18cef5bdb'),'ET');
# Se craran 1 archivos para el estudio 92fdd21995e4405298c5474de8e6d5f8
CALL insert_study_file (UNHEX('4e14b543f10c4058bd859007b4a64019'),'Archivo 0.txt',UNHEX('92fdd21995e4405298c5474de8e6d5f8'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-11','Posibles alergias estacionales.',UNHEX('dbd53916b7db433c8916cf963cdb307d'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('ce5e0dfd29bd4668957b3ec18cef5bdb'),'ET');
# Se craran 8 archivos para el estudio dbd53916b7db433c8916cf963cdb307d
CALL insert_study_file (UNHEX('fb51314ebdfb4e828532246864c275dd'),'Archivo 0.txt',UNHEX('dbd53916b7db433c8916cf963cdb307d'));
CALL insert_study_file (UNHEX('da7b21accc70477089833399faefd708'),'Archivo 1.pdf',UNHEX('dbd53916b7db433c8916cf963cdb307d'));
CALL insert_study_file (UNHEX('7e3c51c422324e34abe990e8ae5a08e6'),'Archivo 2.doc',UNHEX('dbd53916b7db433c8916cf963cdb307d'));
CALL insert_study_file (UNHEX('d85167d1022d4bfcb5b1feae0c74648d'),'Archivo 3.txt',UNHEX('dbd53916b7db433c8916cf963cdb307d'));
CALL insert_study_file (UNHEX('0f1c3da7ba244c298b23a7c3b6f38e6f'),'Archivo 4.txt',UNHEX('dbd53916b7db433c8916cf963cdb307d'));
CALL insert_study_file (UNHEX('3ee23517872443f390d09bbddade19d1'),'Archivo 5.jpg',UNHEX('dbd53916b7db433c8916cf963cdb307d'));
CALL insert_study_file (UNHEX('d915eb7896c348f281a9741a922819a4'),'Archivo 6.doc',UNHEX('dbd53916b7db433c8916cf963cdb307d'));
CALL insert_study_file (UNHEX('c7b339c41b754b819376d77cea08834c'),'Archivo 7.jpg',UNHEX('dbd53916b7db433c8916cf963cdb307d'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-10','Diferencial: Resfrio común.',UNHEX('94e94d3b1037450fb91c10a5dd3e8b0e'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('ce5e0dfd29bd4668957b3ec18cef5bdb'),'BT');
# Se craran 5 archivos para el estudio 94e94d3b1037450fb91c10a5dd3e8b0e
CALL insert_study_file (UNHEX('f393c2d5864b47cabde9d31f4958209e'),'Archivo 0.doc',UNHEX('94e94d3b1037450fb91c10a5dd3e8b0e'));
CALL insert_study_file (UNHEX('505a9915c13d460590ff8457b79109bb'),'Archivo 1.pdf',UNHEX('94e94d3b1037450fb91c10a5dd3e8b0e'));
CALL insert_study_file (UNHEX('4f415364406c4679b9f0e6f12f3e17ce'),'Archivo 2.jpg',UNHEX('94e94d3b1037450fb91c10a5dd3e8b0e'));
CALL insert_study_file (UNHEX('1e98d94f0c1546f3bfa807893a96e869'),'Archivo 3.jpg',UNHEX('94e94d3b1037450fb91c10a5dd3e8b0e'));
CALL insert_study_file (UNHEX('28e8d6f36a42472594614364f3facde3'),'Archivo 4.pdf',UNHEX('94e94d3b1037450fb91c10a5dd3e8b0e'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-11','Posibles alergias estacionales.',UNHEX('1986df1107f9449580e6c738d660ec57'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Tolerancia muy baja a los sintomas gripales.',UNHEX('ce5e0dfd29bd4668957b3ec18cef5bdb'),'ET');
# Se craran 1 archivos para el estudio 1986df1107f9449580e6c738d660ec57
CALL insert_study_file (UNHEX('5c1ee9b760874e47b874b859a45628d0'),'Archivo 0.jpg',UNHEX('1986df1107f9449580e6c738d660ec57'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-12','Posibles alergias estacionales.',UNHEX('2f062be380af4250a84cae841a1cc986'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('ce5e0dfd29bd4668957b3ec18cef5bdb'),'BT');
# Se craran 1 archivos para el estudio 2f062be380af4250a84cae841a1cc986
CALL insert_study_file (UNHEX('8ae321dcb6454a498bc9649fb692d977'),'Archivo 0.pdf',UNHEX('2f062be380af4250a84cae841a1cc986'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-08','Resfrio común.',UNHEX('6f1ae9e1dd5f4e53b9fe6b1ed4f86b9b'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('ce5e0dfd29bd4668957b3ec18cef5bdb'),'UA');
# Se craran 2 archivos para el estudio 6f1ae9e1dd5f4e53b9fe6b1ed4f86b9b
CALL insert_study_file (UNHEX('bbf01dd606b74ffba0b8e70525dc8000'),'Archivo 0.jpg',UNHEX('6f1ae9e1dd5f4e53b9fe6b1ed4f86b9b'));
CALL insert_study_file (UNHEX('81a577f5dea3404da0c7b232501a623e'),'Archivo 1.txt',UNHEX('6f1ae9e1dd5f4e53b9fe6b1ed4f86b9b'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente bd0e11baf93f4f20a0106a9383609ffc
CALL insert_patient ('1945-10-09','7','F', UNHEX('bd0e11baf93f4f20a0106a9383609ffc'),'Kishlansky, Jillane','Diabetes.','doctor');
# Se craran 5 estudios para el paciente bd0e11baf93f4f20a0106a9383609ffc
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('ba045e4834414d00b969a8396023514b'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('bd0e11baf93f4f20a0106a9383609ffc'),'BT');
# Se craran 0 archivos para el estudio ba045e4834414d00b969a8396023514b
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('f7f6e86bde744d2888d39b7062041e6b'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('bd0e11baf93f4f20a0106a9383609ffc'),'BT');
# Se craran 5 archivos para el estudio f7f6e86bde744d2888d39b7062041e6b
CALL insert_study_file (UNHEX('1f91d3ff69b24fd28500797b3b019ed7'),'Archivo 0.doc',UNHEX('f7f6e86bde744d2888d39b7062041e6b'));
CALL insert_study_file (UNHEX('ff83f1605e6f4ceca33928004b7c48cc'),'Archivo 1.doc',UNHEX('f7f6e86bde744d2888d39b7062041e6b'));
CALL insert_study_file (UNHEX('849afb98658f4f928d0f56b37e1ab55f'),'Archivo 2.txt',UNHEX('f7f6e86bde744d2888d39b7062041e6b'));
CALL insert_study_file (UNHEX('5b2d30b0105b46ab8a106d788209b57d'),'Archivo 3.txt',UNHEX('f7f6e86bde744d2888d39b7062041e6b'));
CALL insert_study_file (UNHEX('5494c141d4b74e4eb8a2b4359a1956ad'),'Archivo 4.txt',UNHEX('f7f6e86bde744d2888d39b7062041e6b'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('9c8d8bde6135427095f9a1a063f6365d'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('bd0e11baf93f4f20a0106a9383609ffc'),'UA');
# Se craran 5 archivos para el estudio 9c8d8bde6135427095f9a1a063f6365d
CALL insert_study_file (UNHEX('50b6e8c6b4264abf9d20bae3f4a03214'),'Archivo 0.pdf',UNHEX('9c8d8bde6135427095f9a1a063f6365d'));
CALL insert_study_file (UNHEX('0863d3866ef84910b7ed16bd18eb2076'),'Archivo 1.pdf',UNHEX('9c8d8bde6135427095f9a1a063f6365d'));
CALL insert_study_file (UNHEX('b2813ed692d843c59a4a93c73c69ae55'),'Archivo 2.txt',UNHEX('9c8d8bde6135427095f9a1a063f6365d'));
CALL insert_study_file (UNHEX('e6842f07084c4d4498216fa9c1f17689'),'Archivo 3.pdf',UNHEX('9c8d8bde6135427095f9a1a063f6365d'));
CALL insert_study_file (UNHEX('1c847fc1cf2b49b18f44007408a19447'),'Archivo 4.doc',UNHEX('9c8d8bde6135427095f9a1a063f6365d'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('6f7e5ed35e814b2c980df5f0eab784b2'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('bd0e11baf93f4f20a0106a9383609ffc'),'UA');
# Se craran 9 archivos para el estudio 6f7e5ed35e814b2c980df5f0eab784b2
CALL insert_study_file (UNHEX('a4ce6d3138204c3c8a2e3485d2d01414'),'Archivo 0.txt',UNHEX('6f7e5ed35e814b2c980df5f0eab784b2'));
CALL insert_study_file (UNHEX('1a6e0b1c482d42ccab14e3fee202908c'),'Archivo 1.doc',UNHEX('6f7e5ed35e814b2c980df5f0eab784b2'));
CALL insert_study_file (UNHEX('041be04f73314f20bfbe19439f5bfb7f'),'Archivo 2.doc',UNHEX('6f7e5ed35e814b2c980df5f0eab784b2'));
CALL insert_study_file (UNHEX('bed180332f944fb685786c886d4c78d1'),'Archivo 3.pdf',UNHEX('6f7e5ed35e814b2c980df5f0eab784b2'));
CALL insert_study_file (UNHEX('2528b931d68a462ba68d7a05d077ad35'),'Archivo 4.jpg',UNHEX('6f7e5ed35e814b2c980df5f0eab784b2'));
CALL insert_study_file (UNHEX('a6744f050cf8476c9e6ade5aa794d845'),'Archivo 5.pdf',UNHEX('6f7e5ed35e814b2c980df5f0eab784b2'));
CALL insert_study_file (UNHEX('eb425969308b44f1851c69daf9c448ff'),'Archivo 6.jpg',UNHEX('6f7e5ed35e814b2c980df5f0eab784b2'));
CALL insert_study_file (UNHEX('42c3afa6b98142d3ad9bb6f1d2c917aa'),'Archivo 7.doc',UNHEX('6f7e5ed35e814b2c980df5f0eab784b2'));
CALL insert_study_file (UNHEX('b5f1da4cb15a4b6c8fda96b9751adfef'),'Archivo 8.doc',UNHEX('6f7e5ed35e814b2c980df5f0eab784b2'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-07','Diferencial: Gripe H1N1',UNHEX('d896858d85d94b1ba4114b48270fdf5f'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','---',UNHEX('bd0e11baf93f4f20a0106a9383609ffc'),'BT');
# Se craran 5 archivos para el estudio d896858d85d94b1ba4114b48270fdf5f
CALL insert_study_file (UNHEX('8f50c910a0084e5ebd02edde0561d980'),'Archivo 0.pdf',UNHEX('d896858d85d94b1ba4114b48270fdf5f'));
CALL insert_study_file (UNHEX('b074723ccd1447f8a587365bed799d62'),'Archivo 1.doc',UNHEX('d896858d85d94b1ba4114b48270fdf5f'));
CALL insert_study_file (UNHEX('4d38530452e94505a64f8f7a28df6130'),'Archivo 2.jpg',UNHEX('d896858d85d94b1ba4114b48270fdf5f'));
CALL insert_study_file (UNHEX('4f19b70852124289bde2f7ccb08e2582'),'Archivo 3.doc',UNHEX('d896858d85d94b1ba4114b48270fdf5f'));
CALL insert_study_file (UNHEX('a18a2108b2e74f0c8b926c11c14f5357'),'Archivo 4.txt',UNHEX('d896858d85d94b1ba4114b48270fdf5f'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 810758400511422794d01dc2fa88c034
CALL insert_patient ('1973-01-18','3','F', UNHEX('810758400511422794d01dc2fa88c034'),'Oliphant, Merlina','','doctor');
# Se craran 14 estudios para el paciente 810758400511422794d01dc2fa88c034
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('be9f2e9942fe415995c36721b657be18'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Tolerancia muy baja a los sintomas gripales.',UNHEX('810758400511422794d01dc2fa88c034'),'BT');
# Se craran 8 archivos para el estudio be9f2e9942fe415995c36721b657be18
CALL insert_study_file (UNHEX('42ab2ccca26143419328c945e25dfc7a'),'Archivo 0.pdf',UNHEX('be9f2e9942fe415995c36721b657be18'));
CALL insert_study_file (UNHEX('3cde425f8e874dfe97da0889db6b4130'),'Archivo 1.doc',UNHEX('be9f2e9942fe415995c36721b657be18'));
CALL insert_study_file (UNHEX('ee68ec7e86684a238f3cdd17cc65ae0a'),'Archivo 2.doc',UNHEX('be9f2e9942fe415995c36721b657be18'));
CALL insert_study_file (UNHEX('602c2e3e4f7f4eb185825ee4b5075fec'),'Archivo 3.pdf',UNHEX('be9f2e9942fe415995c36721b657be18'));
CALL insert_study_file (UNHEX('7582335550594e3696d2503feab5974e'),'Archivo 4.pdf',UNHEX('be9f2e9942fe415995c36721b657be18'));
CALL insert_study_file (UNHEX('abf8209658604ff8ad50dd87733c8b60'),'Archivo 5.pdf',UNHEX('be9f2e9942fe415995c36721b657be18'));
CALL insert_study_file (UNHEX('485f72edc55f48e08956c96b4c0e19e0'),'Archivo 6.doc',UNHEX('be9f2e9942fe415995c36721b657be18'));
CALL insert_study_file (UNHEX('54cf0a64987048ebb417dc6d3c94fd3f'),'Archivo 7.doc',UNHEX('be9f2e9942fe415995c36721b657be18'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-06','Resfrio común.',UNHEX('aafdd4b0484e44a7b14353096d218ccd'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('810758400511422794d01dc2fa88c034'),'BT');
# Se craran 2 archivos para el estudio aafdd4b0484e44a7b14353096d218ccd
CALL insert_study_file (UNHEX('8d98d578fcde41e8a168137e85a410a6'),'Archivo 0.pdf',UNHEX('aafdd4b0484e44a7b14353096d218ccd'));
CALL insert_study_file (UNHEX('1b2fcb78f1fc4fdaa1f7240bd1d424d1'),'Archivo 1.jpg',UNHEX('aafdd4b0484e44a7b14353096d218ccd'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-08','Gripe estacional.',UNHEX('52a820712b5348ea9be779f3ac5b1e8a'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('810758400511422794d01dc2fa88c034'),'BT');
# Se craran 9 archivos para el estudio 52a820712b5348ea9be779f3ac5b1e8a
CALL insert_study_file (UNHEX('d879e418dad84ab3b44400dd7568f8e0'),'Archivo 0.txt',UNHEX('52a820712b5348ea9be779f3ac5b1e8a'));
CALL insert_study_file (UNHEX('9b3e5aecdd3f47c0a1e775660f65e123'),'Archivo 1.doc',UNHEX('52a820712b5348ea9be779f3ac5b1e8a'));
CALL insert_study_file (UNHEX('9bcea737fb5a495db0deb8179f3d61a1'),'Archivo 2.doc',UNHEX('52a820712b5348ea9be779f3ac5b1e8a'));
CALL insert_study_file (UNHEX('dae141003c004eb3b227c6b23f15c037'),'Archivo 3.pdf',UNHEX('52a820712b5348ea9be779f3ac5b1e8a'));
CALL insert_study_file (UNHEX('87836cbb8be041d2b11b53c50fb980f3'),'Archivo 4.txt',UNHEX('52a820712b5348ea9be779f3ac5b1e8a'));
CALL insert_study_file (UNHEX('7128c5d4e2704f5e847f8e6806efb9de'),'Archivo 5.doc',UNHEX('52a820712b5348ea9be779f3ac5b1e8a'));
CALL insert_study_file (UNHEX('a747e69288e249ce82fbac2fd89c82e5'),'Archivo 6.txt',UNHEX('52a820712b5348ea9be779f3ac5b1e8a'));
CALL insert_study_file (UNHEX('8ac453cde3f54d648ebb57e21af2cd08'),'Archivo 7.txt',UNHEX('52a820712b5348ea9be779f3ac5b1e8a'));
CALL insert_study_file (UNHEX('543d190a18ee4a1fb7366337385c9dbf'),'Archivo 8.doc',UNHEX('52a820712b5348ea9be779f3ac5b1e8a'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-11','Gripe estacional.',UNHEX('71aeb35c802a4597b8cb015ee4ce6562'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('810758400511422794d01dc2fa88c034'),'UA');
# Se craran 0 archivos para el estudio 71aeb35c802a4597b8cb015ee4ce6562
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-11','Gripe estacional.',UNHEX('fd4fd375647446a4aea862c205466644'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('810758400511422794d01dc2fa88c034'),'BT');
# Se craran 9 archivos para el estudio fd4fd375647446a4aea862c205466644
CALL insert_study_file (UNHEX('376714e024da4a41ac6fc64e5a49ca01'),'Archivo 0.jpg',UNHEX('fd4fd375647446a4aea862c205466644'));
CALL insert_study_file (UNHEX('637611f9eb2949d6a17fcf732f1bdb43'),'Archivo 1.txt',UNHEX('fd4fd375647446a4aea862c205466644'));
CALL insert_study_file (UNHEX('d8c176c5cda94558a1aed70ad105d921'),'Archivo 2.pdf',UNHEX('fd4fd375647446a4aea862c205466644'));
CALL insert_study_file (UNHEX('d4be4d8745ad4c3dbcc213cec213bcff'),'Archivo 3.pdf',UNHEX('fd4fd375647446a4aea862c205466644'));
CALL insert_study_file (UNHEX('65fb64b8ea6d487f8bdf6d7fa2fafcfd'),'Archivo 4.doc',UNHEX('fd4fd375647446a4aea862c205466644'));
CALL insert_study_file (UNHEX('0a05f30aacec4a3e8cab8c04b1a28d63'),'Archivo 5.pdf',UNHEX('fd4fd375647446a4aea862c205466644'));
CALL insert_study_file (UNHEX('0ea05675d976467392f9c9cd9cc26048'),'Archivo 6.pdf',UNHEX('fd4fd375647446a4aea862c205466644'));
CALL insert_study_file (UNHEX('d172801b30754d74afb0afc479d688cf'),'Archivo 7.pdf',UNHEX('fd4fd375647446a4aea862c205466644'));
CALL insert_study_file (UNHEX('7cb66fc816484e3da9e90a4983594ccd'),'Archivo 8.txt',UNHEX('fd4fd375647446a4aea862c205466644'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('678f27eab63b436d87c0015c71e1db5f'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('810758400511422794d01dc2fa88c034'),'ET');
# Se craran 8 archivos para el estudio 678f27eab63b436d87c0015c71e1db5f
CALL insert_study_file (UNHEX('c3c8c4d9a4f041e48380848c9765e385'),'Archivo 0.pdf',UNHEX('678f27eab63b436d87c0015c71e1db5f'));
CALL insert_study_file (UNHEX('0795df414ae14dea8a4b83ff3a57f045'),'Archivo 1.txt',UNHEX('678f27eab63b436d87c0015c71e1db5f'));
CALL insert_study_file (UNHEX('162448fc46b046539d1b8adba5746615'),'Archivo 2.doc',UNHEX('678f27eab63b436d87c0015c71e1db5f'));
CALL insert_study_file (UNHEX('359258192ba94e1bb8b18836246870ff'),'Archivo 3.pdf',UNHEX('678f27eab63b436d87c0015c71e1db5f'));
CALL insert_study_file (UNHEX('45b5ac0082ec41c09f7676248f3a47e6'),'Archivo 4.jpg',UNHEX('678f27eab63b436d87c0015c71e1db5f'));
CALL insert_study_file (UNHEX('764732136b6a45ff933de0bd5450dc75'),'Archivo 5.doc',UNHEX('678f27eab63b436d87c0015c71e1db5f'));
CALL insert_study_file (UNHEX('12f9df4f807e4bbca9b77c730f2b9e78'),'Archivo 6.pdf',UNHEX('678f27eab63b436d87c0015c71e1db5f'));
CALL insert_study_file (UNHEX('f3b96dd2d2f0483aa2d7a2e29b1e8056'),'Archivo 7.jpg',UNHEX('678f27eab63b436d87c0015c71e1db5f'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-05','',UNHEX('95f662f4234c43babd1d89dcbbe548a7'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('810758400511422794d01dc2fa88c034'),'UA');
# Se craran 4 archivos para el estudio 95f662f4234c43babd1d89dcbbe548a7
CALL insert_study_file (UNHEX('e14f45970bd24ead83013276393513fa'),'Archivo 0.doc',UNHEX('95f662f4234c43babd1d89dcbbe548a7'));
CALL insert_study_file (UNHEX('e6441f83cd4f4966833a7f853bf04c10'),'Archivo 1.txt',UNHEX('95f662f4234c43babd1d89dcbbe548a7'));
CALL insert_study_file (UNHEX('8456acdc6ad04ba19802e17ebe6f11b9'),'Archivo 2.doc',UNHEX('95f662f4234c43babd1d89dcbbe548a7'));
CALL insert_study_file (UNHEX('5a063e67f2bb4e2c8a0e4b1a5283db89'),'Archivo 3.pdf',UNHEX('95f662f4234c43babd1d89dcbbe548a7'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('229b0b4d575e40af9be2889b2f07f19a'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('810758400511422794d01dc2fa88c034'),'BT');
# Se craran 6 archivos para el estudio 229b0b4d575e40af9be2889b2f07f19a
CALL insert_study_file (UNHEX('d162f341bf3e4534be947bc7bbfbd6e0'),'Archivo 0.jpg',UNHEX('229b0b4d575e40af9be2889b2f07f19a'));
CALL insert_study_file (UNHEX('ba4688864c5e4b2bbb4c42b3e4a187a7'),'Archivo 1.doc',UNHEX('229b0b4d575e40af9be2889b2f07f19a'));
CALL insert_study_file (UNHEX('780970f75c694b839c830482aa3e1c9f'),'Archivo 2.pdf',UNHEX('229b0b4d575e40af9be2889b2f07f19a'));
CALL insert_study_file (UNHEX('788cd54888a548fa94fc537cf3317dd0'),'Archivo 3.jpg',UNHEX('229b0b4d575e40af9be2889b2f07f19a'));
CALL insert_study_file (UNHEX('80538cb562684a2daae3513c0e06853a'),'Archivo 4.doc',UNHEX('229b0b4d575e40af9be2889b2f07f19a'));
CALL insert_study_file (UNHEX('afd37a6e43f54786b324676f0e31dacd'),'Archivo 5.jpg',UNHEX('229b0b4d575e40af9be2889b2f07f19a'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-07','Diferencial: Resfrio común.',UNHEX('c9b92bdf32104452b3c95900476edbc5'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('810758400511422794d01dc2fa88c034'),'UA');
# Se craran 2 archivos para el estudio c9b92bdf32104452b3c95900476edbc5
CALL insert_study_file (UNHEX('ffdc2102166e4d51874a23c12bf52488'),'Archivo 0.txt',UNHEX('c9b92bdf32104452b3c95900476edbc5'));
CALL insert_study_file (UNHEX('f7e047b1e1604bf7b5e097c18f015947'),'Archivo 1.jpg',UNHEX('c9b92bdf32104452b3c95900476edbc5'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('0ba791a111074d9b8fda18caca788e82'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('810758400511422794d01dc2fa88c034'),'ET');
# Se craran 0 archivos para el estudio 0ba791a111074d9b8fda18caca788e82
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-09','Resfrio común.',UNHEX('d8d104175ae7446585ed9334ad139bf3'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('810758400511422794d01dc2fa88c034'),'ET');
# Se craran 5 archivos para el estudio d8d104175ae7446585ed9334ad139bf3
CALL insert_study_file (UNHEX('dd598dc3bba446fa844e5b7bba2305eb'),'Archivo 0.pdf',UNHEX('d8d104175ae7446585ed9334ad139bf3'));
CALL insert_study_file (UNHEX('6273f02b435a4ba1a9fea27c7313e38b'),'Archivo 1.jpg',UNHEX('d8d104175ae7446585ed9334ad139bf3'));
CALL insert_study_file (UNHEX('9872c12497594851a44137a246a2be0f'),'Archivo 2.pdf',UNHEX('d8d104175ae7446585ed9334ad139bf3'));
CALL insert_study_file (UNHEX('8b13658fdf2d4d799843aeeb39aa39ac'),'Archivo 3.doc',UNHEX('d8d104175ae7446585ed9334ad139bf3'));
CALL insert_study_file (UNHEX('821a04af109448b089095924259ca0ba'),'Archivo 4.doc',UNHEX('d8d104175ae7446585ed9334ad139bf3'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-05','Resfrio común.',UNHEX('dd38b731cdae470c84e38afbfdde0a9e'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('810758400511422794d01dc2fa88c034'),'ET');
# Se craran 0 archivos para el estudio dd38b731cdae470c84e38afbfdde0a9e
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('555494c6af0c48a18498b6e732c3ae21'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('810758400511422794d01dc2fa88c034'),'BT');
# Se craran 1 archivos para el estudio 555494c6af0c48a18498b6e732c3ae21
CALL insert_study_file (UNHEX('d1049f5c9db547f9b78ba8e068b68400'),'Archivo 0.doc',UNHEX('555494c6af0c48a18498b6e732c3ae21'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-07','Resfrio común.',UNHEX('b6888c46f8564f66880b1685ac8a767d'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('810758400511422794d01dc2fa88c034'),'UA');
# Se craran 4 archivos para el estudio b6888c46f8564f66880b1685ac8a767d
CALL insert_study_file (UNHEX('98f377c4a41c4c31ad49f8a1628b1dd8'),'Archivo 0.jpg',UNHEX('b6888c46f8564f66880b1685ac8a767d'));
CALL insert_study_file (UNHEX('f9d4e77a56b84ca088c4b2550b2ea35c'),'Archivo 1.pdf',UNHEX('b6888c46f8564f66880b1685ac8a767d'));
CALL insert_study_file (UNHEX('c6de71590f8f47a1af185837fc44ca4d'),'Archivo 2.txt',UNHEX('b6888c46f8564f66880b1685ac8a767d'));
CALL insert_study_file (UNHEX('65677124c71745d18bc0b52e65b59e7b'),'Archivo 3.txt',UNHEX('b6888c46f8564f66880b1685ac8a767d'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 0c5d325a60304e00bca23b484b3bac59
CALL insert_patient ('1962-05-27','0','F', UNHEX('0c5d325a60304e00bca23b484b3bac59'),'Mcclure, willa Shaylyn','Diabetes.','doctor');
# Se craran 10 estudios para el paciente 0c5d325a60304e00bca23b484b3bac59
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('5a64ebd2e31a42f298609db3d5b9942f'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Programada nueva consulta en 5 días.',UNHEX('0c5d325a60304e00bca23b484b3bac59'),'ET');
# Se craran 5 archivos para el estudio 5a64ebd2e31a42f298609db3d5b9942f
CALL insert_study_file (UNHEX('47146fc761ed42608f49ec13021cd89e'),'Archivo 0.doc',UNHEX('5a64ebd2e31a42f298609db3d5b9942f'));
CALL insert_study_file (UNHEX('9523dfddc0fc4ce1a3667ecc6561dd5c'),'Archivo 1.pdf',UNHEX('5a64ebd2e31a42f298609db3d5b9942f'));
CALL insert_study_file (UNHEX('83c19cd736bf44cdb9209cfe13885ffa'),'Archivo 2.txt',UNHEX('5a64ebd2e31a42f298609db3d5b9942f'));
CALL insert_study_file (UNHEX('945c44d1198644579023447e83439adf'),'Archivo 3.pdf',UNHEX('5a64ebd2e31a42f298609db3d5b9942f'));
CALL insert_study_file (UNHEX('66f3f2b64a8945b4b35de5305ac6cc77'),'Archivo 4.pdf',UNHEX('5a64ebd2e31a42f298609db3d5b9942f'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-09','Posibles alergias estacionales.',UNHEX('db79aa394a1c415aa0e46d5e2d5b35fe'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('0c5d325a60304e00bca23b484b3bac59'),'BT');
# Se craran 7 archivos para el estudio db79aa394a1c415aa0e46d5e2d5b35fe
CALL insert_study_file (UNHEX('7cefb26587ca4e2780a972aadbed713b'),'Archivo 0.txt',UNHEX('db79aa394a1c415aa0e46d5e2d5b35fe'));
CALL insert_study_file (UNHEX('25a56015ac5d4815b244de357de590e0'),'Archivo 1.txt',UNHEX('db79aa394a1c415aa0e46d5e2d5b35fe'));
CALL insert_study_file (UNHEX('3cee575027114a95814d67b8389cb426'),'Archivo 2.jpg',UNHEX('db79aa394a1c415aa0e46d5e2d5b35fe'));
CALL insert_study_file (UNHEX('318ef686a8fe49d8a80acfe656d1182d'),'Archivo 3.pdf',UNHEX('db79aa394a1c415aa0e46d5e2d5b35fe'));
CALL insert_study_file (UNHEX('71773f4a8eeb4a0b80805ba1e0a1a7be'),'Archivo 4.txt',UNHEX('db79aa394a1c415aa0e46d5e2d5b35fe'));
CALL insert_study_file (UNHEX('9befbeea227a4ec885a4feb1c9e35870'),'Archivo 5.pdf',UNHEX('db79aa394a1c415aa0e46d5e2d5b35fe'));
CALL insert_study_file (UNHEX('64cbab26a0c047279f1b767b6c5f2aba'),'Archivo 6.pdf',UNHEX('db79aa394a1c415aa0e46d5e2d5b35fe'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('1349ad9cea27474fa74a6fa0c092bcc6'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('0c5d325a60304e00bca23b484b3bac59'),'BT');
# Se craran 3 archivos para el estudio 1349ad9cea27474fa74a6fa0c092bcc6
CALL insert_study_file (UNHEX('6d37b85100874302910bd0e665d64ed0'),'Archivo 0.doc',UNHEX('1349ad9cea27474fa74a6fa0c092bcc6'));
CALL insert_study_file (UNHEX('899ae728fa5849bd86834185a8853343'),'Archivo 1.doc',UNHEX('1349ad9cea27474fa74a6fa0c092bcc6'));
CALL insert_study_file (UNHEX('2272fd16f2ad4b59967e17c39c095582'),'Archivo 2.jpg',UNHEX('1349ad9cea27474fa74a6fa0c092bcc6'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('8c0232c96c7146cd9b476154f229b1bf'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('0c5d325a60304e00bca23b484b3bac59'),'BT');
# Se craran 5 archivos para el estudio 8c0232c96c7146cd9b476154f229b1bf
CALL insert_study_file (UNHEX('040b72921c4e48a780356b1e3b4d0729'),'Archivo 0.pdf',UNHEX('8c0232c96c7146cd9b476154f229b1bf'));
CALL insert_study_file (UNHEX('008aef5684d249b8805a2b27d5f7b477'),'Archivo 1.jpg',UNHEX('8c0232c96c7146cd9b476154f229b1bf'));
CALL insert_study_file (UNHEX('26c7b0a05417483093d62947ff4d21e6'),'Archivo 2.txt',UNHEX('8c0232c96c7146cd9b476154f229b1bf'));
CALL insert_study_file (UNHEX('30dd02d3d47f4a35b172947578850e0b'),'Archivo 3.doc',UNHEX('8c0232c96c7146cd9b476154f229b1bf'));
CALL insert_study_file (UNHEX('f97cc6fed9f843fbad00c7e6d5500c1b'),'Archivo 4.pdf',UNHEX('8c0232c96c7146cd9b476154f229b1bf'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-08','Diferencial: Resfrio común.',UNHEX('c2a26cc9c9e84e34b6e7c5d246db46a2'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('0c5d325a60304e00bca23b484b3bac59'),'ET');
# Se craran 9 archivos para el estudio c2a26cc9c9e84e34b6e7c5d246db46a2
CALL insert_study_file (UNHEX('fd2fbcf65135466e9a6a7278e8cd4d2a'),'Archivo 0.doc',UNHEX('c2a26cc9c9e84e34b6e7c5d246db46a2'));
CALL insert_study_file (UNHEX('1607a3179bb34acf9d46da4b1b00ea34'),'Archivo 1.txt',UNHEX('c2a26cc9c9e84e34b6e7c5d246db46a2'));
CALL insert_study_file (UNHEX('a3c26237818c4fb095f69f758ee9e480'),'Archivo 2.pdf',UNHEX('c2a26cc9c9e84e34b6e7c5d246db46a2'));
CALL insert_study_file (UNHEX('18505aac3e5e4f5fbd16467a7f73d5f3'),'Archivo 3.pdf',UNHEX('c2a26cc9c9e84e34b6e7c5d246db46a2'));
CALL insert_study_file (UNHEX('e088a528334842e49d106159c89af5c1'),'Archivo 4.pdf',UNHEX('c2a26cc9c9e84e34b6e7c5d246db46a2'));
CALL insert_study_file (UNHEX('995c54da5fb742c78e4d49914cbbe641'),'Archivo 5.jpg',UNHEX('c2a26cc9c9e84e34b6e7c5d246db46a2'));
CALL insert_study_file (UNHEX('9113add72fd643cda2d071593f0e61bb'),'Archivo 6.doc',UNHEX('c2a26cc9c9e84e34b6e7c5d246db46a2'));
CALL insert_study_file (UNHEX('4dff1445455944d180beae9cbcc7086a'),'Archivo 7.jpg',UNHEX('c2a26cc9c9e84e34b6e7c5d246db46a2'));
CALL insert_study_file (UNHEX('22bbf691533c49789e893df0314d850b'),'Archivo 8.jpg',UNHEX('c2a26cc9c9e84e34b6e7c5d246db46a2'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-07','Diferencial: Gripe H1N1',UNHEX('8580331a62d04760861b4d56c860d7b0'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','---',UNHEX('0c5d325a60304e00bca23b484b3bac59'),'BT');
# Se craran 0 archivos para el estudio 8580331a62d04760861b4d56c860d7b0
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('dc0172caaaeb4d3596c67726753f860e'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('0c5d325a60304e00bca23b484b3bac59'),'UA');
# Se craran 2 archivos para el estudio dc0172caaaeb4d3596c67726753f860e
CALL insert_study_file (UNHEX('b88156f18a924ed49d8a035a8f54f9c5'),'Archivo 0.pdf',UNHEX('dc0172caaaeb4d3596c67726753f860e'));
CALL insert_study_file (UNHEX('0d257b3bdebc4ede9ac38bbdc6df26c2'),'Archivo 1.txt',UNHEX('dc0172caaaeb4d3596c67726753f860e'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-11','Gripe estacional.',UNHEX('3fa4923d458e40488230f7f08fb64fa2'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('0c5d325a60304e00bca23b484b3bac59'),'ET');
# Se craran 3 archivos para el estudio 3fa4923d458e40488230f7f08fb64fa2
CALL insert_study_file (UNHEX('4e4cea6c76954320a82926ddd19b0d98'),'Archivo 0.doc',UNHEX('3fa4923d458e40488230f7f08fb64fa2'));
CALL insert_study_file (UNHEX('687ba0db563e4e9db3b54f64bf1cec79'),'Archivo 1.doc',UNHEX('3fa4923d458e40488230f7f08fb64fa2'));
CALL insert_study_file (UNHEX('2c9f12cd288d482abc33cdcf0b542b0a'),'Archivo 2.jpg',UNHEX('3fa4923d458e40488230f7f08fb64fa2'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('a311d2d14a244321b2d1dbe48a815ea2'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('0c5d325a60304e00bca23b484b3bac59'),'UA');
# Se craran 9 archivos para el estudio a311d2d14a244321b2d1dbe48a815ea2
CALL insert_study_file (UNHEX('7e84af1236cb414687a542bfe9dac05e'),'Archivo 0.jpg',UNHEX('a311d2d14a244321b2d1dbe48a815ea2'));
CALL insert_study_file (UNHEX('d3ded27b05474a7993af70b6cd08bd45'),'Archivo 1.jpg',UNHEX('a311d2d14a244321b2d1dbe48a815ea2'));
CALL insert_study_file (UNHEX('f060dd7818e5413982bcaa71ebc35f71'),'Archivo 2.jpg',UNHEX('a311d2d14a244321b2d1dbe48a815ea2'));
CALL insert_study_file (UNHEX('60f1568e939a4928af74e7a6cd007381'),'Archivo 3.doc',UNHEX('a311d2d14a244321b2d1dbe48a815ea2'));
CALL insert_study_file (UNHEX('11bcf915c68341e6a0fdcef4b712a59d'),'Archivo 4.pdf',UNHEX('a311d2d14a244321b2d1dbe48a815ea2'));
CALL insert_study_file (UNHEX('4cce2e35deb743eaa34d1203fec81a31'),'Archivo 5.doc',UNHEX('a311d2d14a244321b2d1dbe48a815ea2'));
CALL insert_study_file (UNHEX('702c3ca178394dd698f8d892d1b70af9'),'Archivo 6.jpg',UNHEX('a311d2d14a244321b2d1dbe48a815ea2'));
CALL insert_study_file (UNHEX('f6ac6e1cb503495a80a5fb7df97555c0'),'Archivo 7.jpg',UNHEX('a311d2d14a244321b2d1dbe48a815ea2'));
CALL insert_study_file (UNHEX('96872f25be7c46c3b725ec4a569c4bd7'),'Archivo 8.txt',UNHEX('a311d2d14a244321b2d1dbe48a815ea2'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-07','Gripe estacional.',UNHEX('7e687717f3cf41488cdab0669eb60190'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('0c5d325a60304e00bca23b484b3bac59'),'BT');
# Se craran 9 archivos para el estudio 7e687717f3cf41488cdab0669eb60190
CALL insert_study_file (UNHEX('dd43e79e4f1147ed88a4db4d79aced2c'),'Archivo 0.txt',UNHEX('7e687717f3cf41488cdab0669eb60190'));
CALL insert_study_file (UNHEX('6be9b18b37d04b1892034cb3bfdbdf98'),'Archivo 1.pdf',UNHEX('7e687717f3cf41488cdab0669eb60190'));
CALL insert_study_file (UNHEX('0a4e746dcb2443bb82e3a2723db16249'),'Archivo 2.pdf',UNHEX('7e687717f3cf41488cdab0669eb60190'));
CALL insert_study_file (UNHEX('c9624d58ebdb4f01b653bf711758b401'),'Archivo 3.pdf',UNHEX('7e687717f3cf41488cdab0669eb60190'));
CALL insert_study_file (UNHEX('efb98eb2f12849aca5c2c54af3bac2ea'),'Archivo 4.doc',UNHEX('7e687717f3cf41488cdab0669eb60190'));
CALL insert_study_file (UNHEX('451c1d4f4aa24aea8e0180c602e1ad09'),'Archivo 5.doc',UNHEX('7e687717f3cf41488cdab0669eb60190'));
CALL insert_study_file (UNHEX('0fee2a750e2a49d4b4c01abb173c3766'),'Archivo 6.pdf',UNHEX('7e687717f3cf41488cdab0669eb60190'));
CALL insert_study_file (UNHEX('338c22aeda53443597171adfc4b0fb24'),'Archivo 7.pdf',UNHEX('7e687717f3cf41488cdab0669eb60190'));
CALL insert_study_file (UNHEX('b26b0e39dbcf4f599b1ce080043d06c4'),'Archivo 8.jpg',UNHEX('7e687717f3cf41488cdab0669eb60190'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 650f0fe325c44baaa5c38ca955435e84
CALL insert_patient ('1960-04-25','4','F', UNHEX('650f0fe325c44baaa5c38ca955435e84'),'Salvaterra, Cheslie','Anemia falciforme.','doctor');
# Se craran 6 estudios para el paciente 650f0fe325c44baaa5c38ca955435e84
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-11','Resfrio común.',UNHEX('1ea56ebc41db4fcea3ba0a59c9da3994'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('650f0fe325c44baaa5c38ca955435e84'),'UA');
# Se craran 1 archivos para el estudio 1ea56ebc41db4fcea3ba0a59c9da3994
CALL insert_study_file (UNHEX('a09e335856984218aef33092ebe245ad'),'Archivo 0.doc',UNHEX('1ea56ebc41db4fcea3ba0a59c9da3994'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-11','Resfrio común.',UNHEX('ad3370ca1024426faefae3d3c09ebfa4'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('650f0fe325c44baaa5c38ca955435e84'),'ET');
# Se craran 7 archivos para el estudio ad3370ca1024426faefae3d3c09ebfa4
CALL insert_study_file (UNHEX('15b403fe77f145f5b12f74fa6feb3c1c'),'Archivo 0.txt',UNHEX('ad3370ca1024426faefae3d3c09ebfa4'));
CALL insert_study_file (UNHEX('9a7bcea650004bd794a23627c50bc86a'),'Archivo 1.jpg',UNHEX('ad3370ca1024426faefae3d3c09ebfa4'));
CALL insert_study_file (UNHEX('7a5d3ee8e45947129321b720ca038d74'),'Archivo 2.jpg',UNHEX('ad3370ca1024426faefae3d3c09ebfa4'));
CALL insert_study_file (UNHEX('5b89796974a24162b65177b3a5d18552'),'Archivo 3.pdf',UNHEX('ad3370ca1024426faefae3d3c09ebfa4'));
CALL insert_study_file (UNHEX('641f2e8ac0b441ca95b5f85044ee0b8f'),'Archivo 4.txt',UNHEX('ad3370ca1024426faefae3d3c09ebfa4'));
CALL insert_study_file (UNHEX('e2a314a9ee104d87b6a781f8607afcac'),'Archivo 5.txt',UNHEX('ad3370ca1024426faefae3d3c09ebfa4'));
CALL insert_study_file (UNHEX('65b3990d4c6c4c8ab9951882c34a84cb'),'Archivo 6.pdf',UNHEX('ad3370ca1024426faefae3d3c09ebfa4'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-06','Resfrio común.',UNHEX('fbce3845189a4f48b8ee0912bd7db063'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('650f0fe325c44baaa5c38ca955435e84'),'UA');
# Se craran 7 archivos para el estudio fbce3845189a4f48b8ee0912bd7db063
CALL insert_study_file (UNHEX('0daf2f554fe649c2a4678600baf94f29'),'Archivo 0.jpg',UNHEX('fbce3845189a4f48b8ee0912bd7db063'));
CALL insert_study_file (UNHEX('3dad800d348a46deae6a7f731d468cf8'),'Archivo 1.doc',UNHEX('fbce3845189a4f48b8ee0912bd7db063'));
CALL insert_study_file (UNHEX('e20fb0f976324e00acf4c6a567005ef7'),'Archivo 2.jpg',UNHEX('fbce3845189a4f48b8ee0912bd7db063'));
CALL insert_study_file (UNHEX('3e6203a8aa604caeab928f9aaa7d9e88'),'Archivo 3.pdf',UNHEX('fbce3845189a4f48b8ee0912bd7db063'));
CALL insert_study_file (UNHEX('cc926c0ae1444571afb3371103952768'),'Archivo 4.txt',UNHEX('fbce3845189a4f48b8ee0912bd7db063'));
CALL insert_study_file (UNHEX('eeea7bfbfdb9406aa96d90f2cd9f1e97'),'Archivo 5.pdf',UNHEX('fbce3845189a4f48b8ee0912bd7db063'));
CALL insert_study_file (UNHEX('123cccac5f8247f2903fa881839afd29'),'Archivo 6.pdf',UNHEX('fbce3845189a4f48b8ee0912bd7db063'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-11','Gripe estacional.',UNHEX('e9efa5709aa84fc9ae02e3497f4b30a6'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('650f0fe325c44baaa5c38ca955435e84'),'BT');
# Se craran 8 archivos para el estudio e9efa5709aa84fc9ae02e3497f4b30a6
CALL insert_study_file (UNHEX('b21f955066874412868d6510c4ec7bbc'),'Archivo 0.pdf',UNHEX('e9efa5709aa84fc9ae02e3497f4b30a6'));
CALL insert_study_file (UNHEX('6f9cd035de9d4d3bb05369e943930dcb'),'Archivo 1.jpg',UNHEX('e9efa5709aa84fc9ae02e3497f4b30a6'));
CALL insert_study_file (UNHEX('8e0c36627aa042fb8e936b0a673fe505'),'Archivo 2.doc',UNHEX('e9efa5709aa84fc9ae02e3497f4b30a6'));
CALL insert_study_file (UNHEX('2b2c7e8d967a48158d40bee49568ad55'),'Archivo 3.txt',UNHEX('e9efa5709aa84fc9ae02e3497f4b30a6'));
CALL insert_study_file (UNHEX('06fb57e836f74c11866657b1357fb6da'),'Archivo 4.jpg',UNHEX('e9efa5709aa84fc9ae02e3497f4b30a6'));
CALL insert_study_file (UNHEX('d42bfaca59c24b969689b5707acfd867'),'Archivo 5.pdf',UNHEX('e9efa5709aa84fc9ae02e3497f4b30a6'));
CALL insert_study_file (UNHEX('4b6313a4cd90412d922bea414392c77b'),'Archivo 6.doc',UNHEX('e9efa5709aa84fc9ae02e3497f4b30a6'));
CALL insert_study_file (UNHEX('3489dbc6ded846f284169671c9e58466'),'Archivo 7.doc',UNHEX('e9efa5709aa84fc9ae02e3497f4b30a6'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-07','Gripe estacional.',UNHEX('33ca337b91cc46f5adc35c8f90f46d4c'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('650f0fe325c44baaa5c38ca955435e84'),'ET');
# Se craran 5 archivos para el estudio 33ca337b91cc46f5adc35c8f90f46d4c
CALL insert_study_file (UNHEX('49721cf943304a6aae0d3a388f0a1d1c'),'Archivo 0.doc',UNHEX('33ca337b91cc46f5adc35c8f90f46d4c'));
CALL insert_study_file (UNHEX('90dccaa557d241b3af683507fef219c7'),'Archivo 1.doc',UNHEX('33ca337b91cc46f5adc35c8f90f46d4c'));
CALL insert_study_file (UNHEX('59779859d5d24997970940701e2683b0'),'Archivo 2.pdf',UNHEX('33ca337b91cc46f5adc35c8f90f46d4c'));
CALL insert_study_file (UNHEX('5037bd08e79647f1ab190905322f6e38'),'Archivo 3.jpg',UNHEX('33ca337b91cc46f5adc35c8f90f46d4c'));
CALL insert_study_file (UNHEX('4cf558c88ee345fb8796a516c50648cd'),'Archivo 4.pdf',UNHEX('33ca337b91cc46f5adc35c8f90f46d4c'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-10','Resfrio común.',UNHEX('d476043be5d0410f82ec3bf93c35fd2b'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('650f0fe325c44baaa5c38ca955435e84'),'BT');
# Se craran 7 archivos para el estudio d476043be5d0410f82ec3bf93c35fd2b
CALL insert_study_file (UNHEX('f7b736af6dc441d68243e5583b2be828'),'Archivo 0.txt',UNHEX('d476043be5d0410f82ec3bf93c35fd2b'));
CALL insert_study_file (UNHEX('27aa8a2b7e3a42ea82179e1cdc9cd409'),'Archivo 1.txt',UNHEX('d476043be5d0410f82ec3bf93c35fd2b'));
CALL insert_study_file (UNHEX('bdcd4b7e566e4d6f9ffac04a6b14c39a'),'Archivo 2.doc',UNHEX('d476043be5d0410f82ec3bf93c35fd2b'));
CALL insert_study_file (UNHEX('72aa66f39ed746d4ab1e7698e4882258'),'Archivo 3.pdf',UNHEX('d476043be5d0410f82ec3bf93c35fd2b'));
CALL insert_study_file (UNHEX('53b6a470bdf144188079c24e4d4e5b70'),'Archivo 4.doc',UNHEX('d476043be5d0410f82ec3bf93c35fd2b'));
CALL insert_study_file (UNHEX('9a9c8d08ae2f4a8994ce436ec39edc81'),'Archivo 5.pdf',UNHEX('d476043be5d0410f82ec3bf93c35fd2b'));
CALL insert_study_file (UNHEX('32195fbe14f74fc8a306137eabbe825a'),'Archivo 6.pdf',UNHEX('d476043be5d0410f82ec3bf93c35fd2b'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente c38437517de84ead93111a90992d2edb
CALL insert_patient ('1976-12-16','5','M', UNHEX('c38437517de84ead93111a90992d2edb'),'Silas, vladimir Andrej','Hemocromatosis.','doctor');
# Se craran 13 estudios para el paciente c38437517de84ead93111a90992d2edb
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-11','Gripe estacional.',UNHEX('aa67ce3573ff4eb69049ff6edb785b7c'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('c38437517de84ead93111a90992d2edb'),'UA');
# Se craran 2 archivos para el estudio aa67ce3573ff4eb69049ff6edb785b7c
CALL insert_study_file (UNHEX('fac9889b1c66449083986729cc9ec330'),'Archivo 0.jpg',UNHEX('aa67ce3573ff4eb69049ff6edb785b7c'));
CALL insert_study_file (UNHEX('9941452394924bab8d60feb63f41f426'),'Archivo 1.txt',UNHEX('aa67ce3573ff4eb69049ff6edb785b7c'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-08','Diferencial: Gripe H1N1',UNHEX('6444cd7f4b4f4a4da11ac20c962d38c4'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','---',UNHEX('c38437517de84ead93111a90992d2edb'),'BT');
# Se craran 9 archivos para el estudio 6444cd7f4b4f4a4da11ac20c962d38c4
CALL insert_study_file (UNHEX('35848933c33c409ba00bc96ba4205ec3'),'Archivo 0.pdf',UNHEX('6444cd7f4b4f4a4da11ac20c962d38c4'));
CALL insert_study_file (UNHEX('14ebd9973cfd41ee8a5862d682634fa3'),'Archivo 1.pdf',UNHEX('6444cd7f4b4f4a4da11ac20c962d38c4'));
CALL insert_study_file (UNHEX('ecf82711b5c54018b4144e6e8093f937'),'Archivo 2.doc',UNHEX('6444cd7f4b4f4a4da11ac20c962d38c4'));
CALL insert_study_file (UNHEX('5d4e4ff10063419b896628aac82ee451'),'Archivo 3.txt',UNHEX('6444cd7f4b4f4a4da11ac20c962d38c4'));
CALL insert_study_file (UNHEX('7c6c45be0658477996402c5a26c3eefa'),'Archivo 4.doc',UNHEX('6444cd7f4b4f4a4da11ac20c962d38c4'));
CALL insert_study_file (UNHEX('04666e331aa24aa78fc19e440ef787ad'),'Archivo 5.doc',UNHEX('6444cd7f4b4f4a4da11ac20c962d38c4'));
CALL insert_study_file (UNHEX('c22870ea54e14e07b2cbdccc11ee87b5'),'Archivo 6.jpg',UNHEX('6444cd7f4b4f4a4da11ac20c962d38c4'));
CALL insert_study_file (UNHEX('7a6942d3c3764bc28355d5cc6060c8a1'),'Archivo 7.jpg',UNHEX('6444cd7f4b4f4a4da11ac20c962d38c4'));
CALL insert_study_file (UNHEX('5cf2de7f87824df48c035235e4e6a74b'),'Archivo 8.txt',UNHEX('6444cd7f4b4f4a4da11ac20c962d38c4'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-07','Posibles alergias estacionales.',UNHEX('42dff633d4a8423a9a2eb73d600d1b45'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('c38437517de84ead93111a90992d2edb'),'ET');
# Se craran 6 archivos para el estudio 42dff633d4a8423a9a2eb73d600d1b45
CALL insert_study_file (UNHEX('1b504dc0b3d64152878fa5d0177f9248'),'Archivo 0.doc',UNHEX('42dff633d4a8423a9a2eb73d600d1b45'));
CALL insert_study_file (UNHEX('67a957ca78a3494fbf40ff074abc94a4'),'Archivo 1.pdf',UNHEX('42dff633d4a8423a9a2eb73d600d1b45'));
CALL insert_study_file (UNHEX('eb7f0b27a1764b2e8e6e1821ba8e1ab6'),'Archivo 2.doc',UNHEX('42dff633d4a8423a9a2eb73d600d1b45'));
CALL insert_study_file (UNHEX('4ec8c47ec05b4f6ab3d3de7d37507137'),'Archivo 3.doc',UNHEX('42dff633d4a8423a9a2eb73d600d1b45'));
CALL insert_study_file (UNHEX('e011dae6cc404012b4e75c0bc37f542a'),'Archivo 4.pdf',UNHEX('42dff633d4a8423a9a2eb73d600d1b45'));
CALL insert_study_file (UNHEX('34676fed4eac4b93a9f9883615ecb96b'),'Archivo 5.txt',UNHEX('42dff633d4a8423a9a2eb73d600d1b45'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-05','Gripe estacional.',UNHEX('667cfb4c08c14c5bb659e1daf95cafc4'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('c38437517de84ead93111a90992d2edb'),'ET');
# Se craran 3 archivos para el estudio 667cfb4c08c14c5bb659e1daf95cafc4
CALL insert_study_file (UNHEX('c42cf41fa0954b4f81292922e6537a46'),'Archivo 0.txt',UNHEX('667cfb4c08c14c5bb659e1daf95cafc4'));
CALL insert_study_file (UNHEX('b2bab6ca3b8c4716aede9268c31d3e80'),'Archivo 1.doc',UNHEX('667cfb4c08c14c5bb659e1daf95cafc4'));
CALL insert_study_file (UNHEX('f3f632ef2cf44e4f89ac51bdf0efc5ee'),'Archivo 2.txt',UNHEX('667cfb4c08c14c5bb659e1daf95cafc4'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-11','Resfrio común.',UNHEX('c94108ec98214de8a2f50bc27dc4f760'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('c38437517de84ead93111a90992d2edb'),'BT');
# Se craran 4 archivos para el estudio c94108ec98214de8a2f50bc27dc4f760
CALL insert_study_file (UNHEX('5a63e147a42548b390bb3deace35eef0'),'Archivo 0.doc',UNHEX('c94108ec98214de8a2f50bc27dc4f760'));
CALL insert_study_file (UNHEX('70e90d253ef14505b8df71e6179110c2'),'Archivo 1.jpg',UNHEX('c94108ec98214de8a2f50bc27dc4f760'));
CALL insert_study_file (UNHEX('28bf6acbbaa648d1985e75faf9e90065'),'Archivo 2.txt',UNHEX('c94108ec98214de8a2f50bc27dc4f760'));
CALL insert_study_file (UNHEX('2e5c7ef3d3a34c0096d4faaba7aaa611'),'Archivo 3.pdf',UNHEX('c94108ec98214de8a2f50bc27dc4f760'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-06','Resfrio común.',UNHEX('90f0a2d5598f48058f4b0b3b2ced05a1'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Tolerancia muy baja a los sintomas gripales.',UNHEX('c38437517de84ead93111a90992d2edb'),'UA');
# Se craran 3 archivos para el estudio 90f0a2d5598f48058f4b0b3b2ced05a1
CALL insert_study_file (UNHEX('9ba1da66f7c347c09d29f3f0020226ac'),'Archivo 0.jpg',UNHEX('90f0a2d5598f48058f4b0b3b2ced05a1'));
CALL insert_study_file (UNHEX('7ef5eb7962854c98b19b67e291808385'),'Archivo 1.jpg',UNHEX('90f0a2d5598f48058f4b0b3b2ced05a1'));
CALL insert_study_file (UNHEX('4533babf5b424d909956af5d7ac81ae7'),'Archivo 2.txt',UNHEX('90f0a2d5598f48058f4b0b3b2ced05a1'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('13d0ffd3827b488d95ce3c5573694793'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('c38437517de84ead93111a90992d2edb'),'ET');
# Se craran 3 archivos para el estudio 13d0ffd3827b488d95ce3c5573694793
CALL insert_study_file (UNHEX('9a10eaecac224265a929f1d7c9cf5ab2'),'Archivo 0.txt',UNHEX('13d0ffd3827b488d95ce3c5573694793'));
CALL insert_study_file (UNHEX('6047204301f44cc68f0cf9bf2272305e'),'Archivo 1.doc',UNHEX('13d0ffd3827b488d95ce3c5573694793'));
CALL insert_study_file (UNHEX('a8cbe50311af4b3489f067167c285fb6'),'Archivo 2.txt',UNHEX('13d0ffd3827b488d95ce3c5573694793'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('3e0ad315cf2447c8809dbf44ea72b20d'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('c38437517de84ead93111a90992d2edb'),'UA');
# Se craran 5 archivos para el estudio 3e0ad315cf2447c8809dbf44ea72b20d
CALL insert_study_file (UNHEX('a6b3acd134e84291bbfffd530e515a94'),'Archivo 0.jpg',UNHEX('3e0ad315cf2447c8809dbf44ea72b20d'));
CALL insert_study_file (UNHEX('9e14062fb11c4b62af3ab4e3d88ce332'),'Archivo 1.pdf',UNHEX('3e0ad315cf2447c8809dbf44ea72b20d'));
CALL insert_study_file (UNHEX('b7a8e63846c54b98ab2a0a8970debc3f'),'Archivo 2.doc',UNHEX('3e0ad315cf2447c8809dbf44ea72b20d'));
CALL insert_study_file (UNHEX('b4a7d6a0b8fc45aabb523f255bd5a07d'),'Archivo 3.doc',UNHEX('3e0ad315cf2447c8809dbf44ea72b20d'));
CALL insert_study_file (UNHEX('55d6005f981f4a398849aa745bb0470f'),'Archivo 4.jpg',UNHEX('3e0ad315cf2447c8809dbf44ea72b20d'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-07','Resfrio común.',UNHEX('5114fbe0b02c4c22bb42f81ee99f6975'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Tolerancia muy baja a los sintomas gripales.',UNHEX('c38437517de84ead93111a90992d2edb'),'UA');
# Se craran 7 archivos para el estudio 5114fbe0b02c4c22bb42f81ee99f6975
CALL insert_study_file (UNHEX('82a91eb193484b4cb732053581e108af'),'Archivo 0.txt',UNHEX('5114fbe0b02c4c22bb42f81ee99f6975'));
CALL insert_study_file (UNHEX('1073609611944132959d065d4b8f9d4b'),'Archivo 1.pdf',UNHEX('5114fbe0b02c4c22bb42f81ee99f6975'));
CALL insert_study_file (UNHEX('5f9c8e2d346e4811885fade1e964ed34'),'Archivo 2.doc',UNHEX('5114fbe0b02c4c22bb42f81ee99f6975'));
CALL insert_study_file (UNHEX('72f77128ee3344fbb051e07553da7814'),'Archivo 3.txt',UNHEX('5114fbe0b02c4c22bb42f81ee99f6975'));
CALL insert_study_file (UNHEX('96fa3d3518474be2bcc6ebb1da0369e7'),'Archivo 4.txt',UNHEX('5114fbe0b02c4c22bb42f81ee99f6975'));
CALL insert_study_file (UNHEX('6b1351a8fa9b4e0db5545d8c95188528'),'Archivo 5.pdf',UNHEX('5114fbe0b02c4c22bb42f81ee99f6975'));
CALL insert_study_file (UNHEX('97738310e0bd4e6fb55b50bb185304ad'),'Archivo 6.jpg',UNHEX('5114fbe0b02c4c22bb42f81ee99f6975'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('ee852d44b1fc4cf7a9ed4221a169e7e3'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Tolerancia muy baja a los sintomas gripales.',UNHEX('c38437517de84ead93111a90992d2edb'),'BT');
# Se craran 3 archivos para el estudio ee852d44b1fc4cf7a9ed4221a169e7e3
CALL insert_study_file (UNHEX('298a207a356e4395b570e1c8c7aab9f6'),'Archivo 0.txt',UNHEX('ee852d44b1fc4cf7a9ed4221a169e7e3'));
CALL insert_study_file (UNHEX('5f52a25256164cb2a54359101b4c4a56'),'Archivo 1.pdf',UNHEX('ee852d44b1fc4cf7a9ed4221a169e7e3'));
CALL insert_study_file (UNHEX('bebe6cec482041ebbb38af915231c007'),'Archivo 2.jpg',UNHEX('ee852d44b1fc4cf7a9ed4221a169e7e3'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('9cb51605b73b4339b0df1568afc3082b'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('c38437517de84ead93111a90992d2edb'),'UA');
# Se craran 5 archivos para el estudio 9cb51605b73b4339b0df1568afc3082b
CALL insert_study_file (UNHEX('2e245d18d1a5409fa8ff0f2bb32ad2dd'),'Archivo 0.pdf',UNHEX('9cb51605b73b4339b0df1568afc3082b'));
CALL insert_study_file (UNHEX('75627ca007144329974fa461cd827a8a'),'Archivo 1.txt',UNHEX('9cb51605b73b4339b0df1568afc3082b'));
CALL insert_study_file (UNHEX('cb9f8fa11c6845caa828c3eed5f90326'),'Archivo 2.txt',UNHEX('9cb51605b73b4339b0df1568afc3082b'));
CALL insert_study_file (UNHEX('53737f56401942d78f5b39759abb4e23'),'Archivo 3.txt',UNHEX('9cb51605b73b4339b0df1568afc3082b'));
CALL insert_study_file (UNHEX('f2d06cb9bdbb4ee2a5bebf8373c663cf'),'Archivo 4.jpg',UNHEX('9cb51605b73b4339b0df1568afc3082b'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-08','Gripe estacional.',UNHEX('db294a9e832f4538be6863fbfd2eca01'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('c38437517de84ead93111a90992d2edb'),'ET');
# Se craran 9 archivos para el estudio db294a9e832f4538be6863fbfd2eca01
CALL insert_study_file (UNHEX('328d8d8da6f14dc6a84ce7a0d803f326'),'Archivo 0.pdf',UNHEX('db294a9e832f4538be6863fbfd2eca01'));
CALL insert_study_file (UNHEX('996ea563337f4f8ebc7e4d6131bd9b2e'),'Archivo 1.doc',UNHEX('db294a9e832f4538be6863fbfd2eca01'));
CALL insert_study_file (UNHEX('a0fb14bda24b44418be8750f1d80fe0e'),'Archivo 2.txt',UNHEX('db294a9e832f4538be6863fbfd2eca01'));
CALL insert_study_file (UNHEX('ce56165048a640c29fde83486644047f'),'Archivo 3.pdf',UNHEX('db294a9e832f4538be6863fbfd2eca01'));
CALL insert_study_file (UNHEX('46b482a25908416d9c6f6c8dc8f9b23f'),'Archivo 4.jpg',UNHEX('db294a9e832f4538be6863fbfd2eca01'));
CALL insert_study_file (UNHEX('3a989e3865764664b04a12e45292e042'),'Archivo 5.txt',UNHEX('db294a9e832f4538be6863fbfd2eca01'));
CALL insert_study_file (UNHEX('bc89de3259a74cdf84b6e0ba31c5c3bd'),'Archivo 6.pdf',UNHEX('db294a9e832f4538be6863fbfd2eca01'));
CALL insert_study_file (UNHEX('48b9bf1ea8a1496aa2def4d5ca483e01'),'Archivo 7.jpg',UNHEX('db294a9e832f4538be6863fbfd2eca01'));
CALL insert_study_file (UNHEX('a6d5914062eb4b33a697bbe08410f805'),'Archivo 8.jpg',UNHEX('db294a9e832f4538be6863fbfd2eca01'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('5b4a276540634be58e44a747464f7bcf'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('c38437517de84ead93111a90992d2edb'),'UA');
# Se craran 4 archivos para el estudio 5b4a276540634be58e44a747464f7bcf
CALL insert_study_file (UNHEX('3389f37c7b6b4eb2a3ac5b10cb26e319'),'Archivo 0.jpg',UNHEX('5b4a276540634be58e44a747464f7bcf'));
CALL insert_study_file (UNHEX('02ff21eda60a4ed9963f9ae3219e17a9'),'Archivo 1.jpg',UNHEX('5b4a276540634be58e44a747464f7bcf'));
CALL insert_study_file (UNHEX('76e0376b5b2140b29e4eb70217f2472a'),'Archivo 2.doc',UNHEX('5b4a276540634be58e44a747464f7bcf'));
CALL insert_study_file (UNHEX('df6db37276464b63896f694a72506e14'),'Archivo 3.pdf',UNHEX('5b4a276540634be58e44a747464f7bcf'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente a50751f9b9f6427cbb62e2b4f3a5c585
CALL insert_patient ('1960-06-29','5','F', UNHEX('a50751f9b9f6427cbb62e2b4f3a5c585'),'Magretta, Lory Ethelind','Diabetes.','doctor');
# Se craran 11 estudios para el paciente a50751f9b9f6427cbb62e2b4f3a5c585
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('a4953663590e44639233976fd36d857a'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('a50751f9b9f6427cbb62e2b4f3a5c585'),'UA');
# Se craran 2 archivos para el estudio a4953663590e44639233976fd36d857a
CALL insert_study_file (UNHEX('16bcfce2b4ba41979115efe7b0d8ab61'),'Archivo 0.pdf',UNHEX('a4953663590e44639233976fd36d857a'));
CALL insert_study_file (UNHEX('528d451cd30047d0a114f7516a7769e9'),'Archivo 1.doc',UNHEX('a4953663590e44639233976fd36d857a'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-05','',UNHEX('85784cfea19a43519caf79a2fcbd7b6d'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('a50751f9b9f6427cbb62e2b4f3a5c585'),'ET');
# Se craran 8 archivos para el estudio 85784cfea19a43519caf79a2fcbd7b6d
CALL insert_study_file (UNHEX('917def77915344e79b2288c7fec530b1'),'Archivo 0.txt',UNHEX('85784cfea19a43519caf79a2fcbd7b6d'));
CALL insert_study_file (UNHEX('242a70ccab6f431bae754307694e3d99'),'Archivo 1.jpg',UNHEX('85784cfea19a43519caf79a2fcbd7b6d'));
CALL insert_study_file (UNHEX('4a7b8a512f6b453682f0294b7c985564'),'Archivo 2.txt',UNHEX('85784cfea19a43519caf79a2fcbd7b6d'));
CALL insert_study_file (UNHEX('274d3498a3b64f2bb58befc0b7c5b3d6'),'Archivo 3.txt',UNHEX('85784cfea19a43519caf79a2fcbd7b6d'));
CALL insert_study_file (UNHEX('9453ee6a7520402fbcd3048c4a5c4360'),'Archivo 4.jpg',UNHEX('85784cfea19a43519caf79a2fcbd7b6d'));
CALL insert_study_file (UNHEX('cc56d632af3d4cc3a91195822559842a'),'Archivo 5.pdf',UNHEX('85784cfea19a43519caf79a2fcbd7b6d'));
CALL insert_study_file (UNHEX('fe975083c10a412ea0cdfe8bb027d980'),'Archivo 6.doc',UNHEX('85784cfea19a43519caf79a2fcbd7b6d'));
CALL insert_study_file (UNHEX('666c56cc0bbe44d98e1075edbe6a942a'),'Archivo 7.doc',UNHEX('85784cfea19a43519caf79a2fcbd7b6d'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-05','',UNHEX('1f9903b740244830b9e1b4c58cc62012'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('a50751f9b9f6427cbb62e2b4f3a5c585'),'BT');
# Se craran 2 archivos para el estudio 1f9903b740244830b9e1b4c58cc62012
CALL insert_study_file (UNHEX('e41cff0ef16a41fa92960f730be8b3bd'),'Archivo 0.pdf',UNHEX('1f9903b740244830b9e1b4c58cc62012'));
CALL insert_study_file (UNHEX('cfb941981ff645b19986945e0d43c591'),'Archivo 1.doc',UNHEX('1f9903b740244830b9e1b4c58cc62012'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-08','Diferencial: Gripe H1N1',UNHEX('a0505e8760f6491b82b96fc537aecfd5'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','Tolerancia muy baja a los sintomas gripales.',UNHEX('a50751f9b9f6427cbb62e2b4f3a5c585'),'ET');
# Se craran 5 archivos para el estudio a0505e8760f6491b82b96fc537aecfd5
CALL insert_study_file (UNHEX('50f50022806d459e85252a47b3bfd119'),'Archivo 0.jpg',UNHEX('a0505e8760f6491b82b96fc537aecfd5'));
CALL insert_study_file (UNHEX('574199f433b5447e8a96bfd2cb186242'),'Archivo 1.txt',UNHEX('a0505e8760f6491b82b96fc537aecfd5'));
CALL insert_study_file (UNHEX('cda177f854b94c028a1e62c8d61682a8'),'Archivo 2.pdf',UNHEX('a0505e8760f6491b82b96fc537aecfd5'));
CALL insert_study_file (UNHEX('f3ee91218ac74e9d90303bb8eab94622'),'Archivo 3.pdf',UNHEX('a0505e8760f6491b82b96fc537aecfd5'));
CALL insert_study_file (UNHEX('9220c7a2fdc24ef087e7d4cbaf8ddd4d'),'Archivo 4.jpg',UNHEX('a0505e8760f6491b82b96fc537aecfd5'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-05','',UNHEX('21b5733eef824fe0b4e174a548bf7ec2'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('a50751f9b9f6427cbb62e2b4f3a5c585'),'ET');
# Se craran 1 archivos para el estudio 21b5733eef824fe0b4e174a548bf7ec2
CALL insert_study_file (UNHEX('63c9f1ef59a043d2abdbd40401f1ec4b'),'Archivo 0.pdf',UNHEX('21b5733eef824fe0b4e174a548bf7ec2'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('dae094ccb6f0475f821215af6ad161b3'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('a50751f9b9f6427cbb62e2b4f3a5c585'),'ET');
# Se craran 1 archivos para el estudio dae094ccb6f0475f821215af6ad161b3
CALL insert_study_file (UNHEX('4d65e1c51d9040a1a28d9be8e8d247b5'),'Archivo 0.pdf',UNHEX('dae094ccb6f0475f821215af6ad161b3'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-06','Resfrio común.',UNHEX('38db4e78e9404fc29b75a4253611fd59'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('a50751f9b9f6427cbb62e2b4f3a5c585'),'ET');
# Se craran 0 archivos para el estudio 38db4e78e9404fc29b75a4253611fd59
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-08','Diferencial: Resfrio común.',UNHEX('b90e820113da4c9db0969dc287fbfda3'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('a50751f9b9f6427cbb62e2b4f3a5c585'),'BT');
# Se craran 8 archivos para el estudio b90e820113da4c9db0969dc287fbfda3
CALL insert_study_file (UNHEX('b803eecc7ffa4f8b959ab478985c8d65'),'Archivo 0.txt',UNHEX('b90e820113da4c9db0969dc287fbfda3'));
CALL insert_study_file (UNHEX('5281423dc0854b699b447e9945584f74'),'Archivo 1.txt',UNHEX('b90e820113da4c9db0969dc287fbfda3'));
CALL insert_study_file (UNHEX('868f69fb532546498182b478b8530f2c'),'Archivo 2.pdf',UNHEX('b90e820113da4c9db0969dc287fbfda3'));
CALL insert_study_file (UNHEX('648e76becc9d4ed99c54acd7218b8ead'),'Archivo 3.jpg',UNHEX('b90e820113da4c9db0969dc287fbfda3'));
CALL insert_study_file (UNHEX('bd88a4807fb246d6a863ff8b93418880'),'Archivo 4.pdf',UNHEX('b90e820113da4c9db0969dc287fbfda3'));
CALL insert_study_file (UNHEX('0c0565fc2f8b4ceba4763c4f808dd08b'),'Archivo 5.txt',UNHEX('b90e820113da4c9db0969dc287fbfda3'));
CALL insert_study_file (UNHEX('88f9b0ddf3364e5296a37b7179d2f7be'),'Archivo 6.txt',UNHEX('b90e820113da4c9db0969dc287fbfda3'));
CALL insert_study_file (UNHEX('9d6cf8fd9de648549525b47cb002cf38'),'Archivo 7.doc',UNHEX('b90e820113da4c9db0969dc287fbfda3'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-06','Resfrio común.',UNHEX('3502163419ef48dbb567fa34109517b9'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('a50751f9b9f6427cbb62e2b4f3a5c585'),'UA');
# Se craran 8 archivos para el estudio 3502163419ef48dbb567fa34109517b9
CALL insert_study_file (UNHEX('0b5ca7a89a2d4ab4adaa6fee8edd9276'),'Archivo 0.doc',UNHEX('3502163419ef48dbb567fa34109517b9'));
CALL insert_study_file (UNHEX('caf25fe47a7c4c3d8853fab28eb2da1e'),'Archivo 1.pdf',UNHEX('3502163419ef48dbb567fa34109517b9'));
CALL insert_study_file (UNHEX('eb3f9e6b8b52429687b8edebd47d7b41'),'Archivo 2.pdf',UNHEX('3502163419ef48dbb567fa34109517b9'));
CALL insert_study_file (UNHEX('c913eb17ff4f4b6b8adcdd94da51ea00'),'Archivo 3.pdf',UNHEX('3502163419ef48dbb567fa34109517b9'));
CALL insert_study_file (UNHEX('ec78cd7889d44a91ae07019d7eadc83f'),'Archivo 4.pdf',UNHEX('3502163419ef48dbb567fa34109517b9'));
CALL insert_study_file (UNHEX('a4ea71a459db4a4ba245019aa80641b0'),'Archivo 5.txt',UNHEX('3502163419ef48dbb567fa34109517b9'));
CALL insert_study_file (UNHEX('8233951fc6144415b828dc173af844ea'),'Archivo 6.jpg',UNHEX('3502163419ef48dbb567fa34109517b9'));
CALL insert_study_file (UNHEX('a4a88693dab9448a86ed13291f33743c'),'Archivo 7.jpg',UNHEX('3502163419ef48dbb567fa34109517b9'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('b8edd0ef41b0482ba25ff79bb5a55fd8'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Tolerancia muy baja a los sintomas gripales.',UNHEX('a50751f9b9f6427cbb62e2b4f3a5c585'),'UA');
# Se craran 6 archivos para el estudio b8edd0ef41b0482ba25ff79bb5a55fd8
CALL insert_study_file (UNHEX('4db5a6a8a5ec4bd29d590eae6a9516ea'),'Archivo 0.doc',UNHEX('b8edd0ef41b0482ba25ff79bb5a55fd8'));
CALL insert_study_file (UNHEX('d0254f39a1924eaa816e62ef94528462'),'Archivo 1.txt',UNHEX('b8edd0ef41b0482ba25ff79bb5a55fd8'));
CALL insert_study_file (UNHEX('b8da250601f64fa892bcd7c356023439'),'Archivo 2.pdf',UNHEX('b8edd0ef41b0482ba25ff79bb5a55fd8'));
CALL insert_study_file (UNHEX('c284af714b524a61a510d67e4b2fe5ea'),'Archivo 3.jpg',UNHEX('b8edd0ef41b0482ba25ff79bb5a55fd8'));
CALL insert_study_file (UNHEX('e62f2588fce84655b219d3d4b95bc67b'),'Archivo 4.jpg',UNHEX('b8edd0ef41b0482ba25ff79bb5a55fd8'));
CALL insert_study_file (UNHEX('0bf006bed2984d2b9a9dc6ac9f2fcf41'),'Archivo 5.pdf',UNHEX('b8edd0ef41b0482ba25ff79bb5a55fd8'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('3e068423b05043f8ab639c398b6899f6'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('a50751f9b9f6427cbb62e2b4f3a5c585'),'UA');
# Se craran 8 archivos para el estudio 3e068423b05043f8ab639c398b6899f6
CALL insert_study_file (UNHEX('349c475603134366823fd0b06c2db59c'),'Archivo 0.pdf',UNHEX('3e068423b05043f8ab639c398b6899f6'));
CALL insert_study_file (UNHEX('cf54f1d14cfe40e4a0846da745a424b4'),'Archivo 1.pdf',UNHEX('3e068423b05043f8ab639c398b6899f6'));
CALL insert_study_file (UNHEX('95f3a72640cd4a4d95d1f7276c6bc6a4'),'Archivo 2.txt',UNHEX('3e068423b05043f8ab639c398b6899f6'));
CALL insert_study_file (UNHEX('ab1849750e3b457ea6ebef3409abbef2'),'Archivo 3.jpg',UNHEX('3e068423b05043f8ab639c398b6899f6'));
CALL insert_study_file (UNHEX('66fc6acc0d584c41921d382fcd50ea8c'),'Archivo 4.jpg',UNHEX('3e068423b05043f8ab639c398b6899f6'));
CALL insert_study_file (UNHEX('2cd59d31640d43d9b5bd086b0f756acb'),'Archivo 5.jpg',UNHEX('3e068423b05043f8ab639c398b6899f6'));
CALL insert_study_file (UNHEX('5004cad11a0d4c839c167517723472b5'),'Archivo 6.pdf',UNHEX('3e068423b05043f8ab639c398b6899f6'));
CALL insert_study_file (UNHEX('c0336a2c478c4e23acf46e5aaf53c620'),'Archivo 7.jpg',UNHEX('3e068423b05043f8ab639c398b6899f6'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente ac3602cf5db04122987afdd25af89139
CALL insert_patient ('1969-03-18','0','M', UNHEX('ac3602cf5db04122987afdd25af89139'),'Hudon, Lukas cosmo','Fumador.','doctor');
# Se craran 1 estudios para el paciente ac3602cf5db04122987afdd25af89139
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-11','Resfrio común.',UNHEX('9fa9d21d49c1495fbb2e1a9060ec531c'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('ac3602cf5db04122987afdd25af89139'),'ET');
# Se craran 5 archivos para el estudio 9fa9d21d49c1495fbb2e1a9060ec531c
CALL insert_study_file (UNHEX('742da15c94784493ae8cc0b2ee6fb749'),'Archivo 0.pdf',UNHEX('9fa9d21d49c1495fbb2e1a9060ec531c'));
CALL insert_study_file (UNHEX('2f602f350b33454686ce270d48296157'),'Archivo 1.doc',UNHEX('9fa9d21d49c1495fbb2e1a9060ec531c'));
CALL insert_study_file (UNHEX('f636d0f760de4999bce25284acd9d5e2'),'Archivo 2.jpg',UNHEX('9fa9d21d49c1495fbb2e1a9060ec531c'));
CALL insert_study_file (UNHEX('dcd8ddfd25b9466ca7eafeb4ca405e4d'),'Archivo 3.txt',UNHEX('9fa9d21d49c1495fbb2e1a9060ec531c'));
CALL insert_study_file (UNHEX('31fe7b09813441329923d1ac3d190bdd'),'Archivo 4.jpg',UNHEX('9fa9d21d49c1495fbb2e1a9060ec531c'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 84a3f27613a34feaa4842be8faa4addd
CALL insert_patient ('1978-06-08','2','M', UNHEX('84a3f27613a34feaa4842be8faa4addd'),'Hulbert, Kalman','Fumador.','doctor');
# Se craran 6 estudios para el paciente 84a3f27613a34feaa4842be8faa4addd
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('f2aac813258b4cb39902053f63e31d28'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('84a3f27613a34feaa4842be8faa4addd'),'BT');
# Se craran 0 archivos para el estudio f2aac813258b4cb39902053f63e31d28
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-09','Resfrio común.',UNHEX('07758886834b456bb1459b6e0e004d93'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('84a3f27613a34feaa4842be8faa4addd'),'BT');
# Se craran 7 archivos para el estudio 07758886834b456bb1459b6e0e004d93
CALL insert_study_file (UNHEX('7211cfbb01d44fc98b4eb90a44d3eb77'),'Archivo 0.pdf',UNHEX('07758886834b456bb1459b6e0e004d93'));
CALL insert_study_file (UNHEX('bbd16c665a6e4dc38c7eeabee143e494'),'Archivo 1.jpg',UNHEX('07758886834b456bb1459b6e0e004d93'));
CALL insert_study_file (UNHEX('9dc734668f934fba9d839ad6e29666ad'),'Archivo 2.jpg',UNHEX('07758886834b456bb1459b6e0e004d93'));
CALL insert_study_file (UNHEX('ad49fd2599eb4c139c5bded9cd6a51c0'),'Archivo 3.jpg',UNHEX('07758886834b456bb1459b6e0e004d93'));
CALL insert_study_file (UNHEX('250443740b464558bcc28184191a4c50'),'Archivo 4.jpg',UNHEX('07758886834b456bb1459b6e0e004d93'));
CALL insert_study_file (UNHEX('70a7a995db7f43098aaac317423557b7'),'Archivo 5.doc',UNHEX('07758886834b456bb1459b6e0e004d93'));
CALL insert_study_file (UNHEX('662b672f800848b690f61a6ee2e9df2d'),'Archivo 6.doc',UNHEX('07758886834b456bb1459b6e0e004d93'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-11','Posibles alergias estacionales.',UNHEX('7f0f2ef872a14d56a62c5c700f897840'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('84a3f27613a34feaa4842be8faa4addd'),'ET');
# Se craran 2 archivos para el estudio 7f0f2ef872a14d56a62c5c700f897840
CALL insert_study_file (UNHEX('8681a2faabe04a1d90bee52e6f2819a1'),'Archivo 0.pdf',UNHEX('7f0f2ef872a14d56a62c5c700f897840'));
CALL insert_study_file (UNHEX('d8fd944dd91642fa952fde5bb1c8e002'),'Archivo 1.jpg',UNHEX('7f0f2ef872a14d56a62c5c700f897840'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('26e88d6ed6c945ebb7adb23564502f3c'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('84a3f27613a34feaa4842be8faa4addd'),'BT');
# Se craran 4 archivos para el estudio 26e88d6ed6c945ebb7adb23564502f3c
CALL insert_study_file (UNHEX('dc5cb9f2dfe44e6a8f5d437c0400bd6e'),'Archivo 0.jpg',UNHEX('26e88d6ed6c945ebb7adb23564502f3c'));
CALL insert_study_file (UNHEX('8e6007d1ad0246329bfbdc08fab835f6'),'Archivo 1.txt',UNHEX('26e88d6ed6c945ebb7adb23564502f3c'));
CALL insert_study_file (UNHEX('98ab43eaab0a46b4bd0b2753bfef52e3'),'Archivo 2.txt',UNHEX('26e88d6ed6c945ebb7adb23564502f3c'));
CALL insert_study_file (UNHEX('018b66b5a9954924a9448ebbd768903d'),'Archivo 3.txt',UNHEX('26e88d6ed6c945ebb7adb23564502f3c'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('57a63d21f4a24d789759f2a4439208b8'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Tolerancia muy baja a los sintomas gripales.',UNHEX('84a3f27613a34feaa4842be8faa4addd'),'BT');
# Se craran 7 archivos para el estudio 57a63d21f4a24d789759f2a4439208b8
CALL insert_study_file (UNHEX('c6210f0f9ca3433a8b1dcb88b7484636'),'Archivo 0.doc',UNHEX('57a63d21f4a24d789759f2a4439208b8'));
CALL insert_study_file (UNHEX('ad982c224ba5455d8ee53d41f9a2515f'),'Archivo 1.jpg',UNHEX('57a63d21f4a24d789759f2a4439208b8'));
CALL insert_study_file (UNHEX('cc4974928e464ddca1eb72274673059f'),'Archivo 2.jpg',UNHEX('57a63d21f4a24d789759f2a4439208b8'));
CALL insert_study_file (UNHEX('fff9c7998ae448b9a5e4d8d1032fe9a6'),'Archivo 3.jpg',UNHEX('57a63d21f4a24d789759f2a4439208b8'));
CALL insert_study_file (UNHEX('5798bc05ef0c45549e2614f47607383f'),'Archivo 4.jpg',UNHEX('57a63d21f4a24d789759f2a4439208b8'));
CALL insert_study_file (UNHEX('0fe76529bbdd4dc6a4153be9b9f50568'),'Archivo 5.doc',UNHEX('57a63d21f4a24d789759f2a4439208b8'));
CALL insert_study_file (UNHEX('90170d8e273a4fdcbea2c678ad42d281'),'Archivo 6.txt',UNHEX('57a63d21f4a24d789759f2a4439208b8'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('f27109ebe3a64e0a9abd676a004c809a'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('84a3f27613a34feaa4842be8faa4addd'),'BT');
# Se craran 5 archivos para el estudio f27109ebe3a64e0a9abd676a004c809a
CALL insert_study_file (UNHEX('e45ae97ec41546c5ad9149a6c9bd770e'),'Archivo 0.doc',UNHEX('f27109ebe3a64e0a9abd676a004c809a'));
CALL insert_study_file (UNHEX('ebe69aee39d84346b4d161b2f2500af6'),'Archivo 1.txt',UNHEX('f27109ebe3a64e0a9abd676a004c809a'));
CALL insert_study_file (UNHEX('d617f45699c04f599f6d65da904c4c59'),'Archivo 2.jpg',UNHEX('f27109ebe3a64e0a9abd676a004c809a'));
CALL insert_study_file (UNHEX('cf105e2daff942d2a4ee44ff8c66bd62'),'Archivo 3.pdf',UNHEX('f27109ebe3a64e0a9abd676a004c809a'));
CALL insert_study_file (UNHEX('394ed6c78af44259ba549b2aa5525ea8'),'Archivo 4.jpg',UNHEX('f27109ebe3a64e0a9abd676a004c809a'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente f5257b0cafec44818c052a9c5ee8160c
CALL insert_patient ('1982-03-08','1','M', UNHEX('f5257b0cafec44818c052a9c5ee8160c'),'Harry, marcelo ludvig','Fumador.','doctor');
# Se craran 15 estudios para el paciente f5257b0cafec44818c052a9c5ee8160c
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('8547c482cfdb45ad84beb8ea48387eae'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('f5257b0cafec44818c052a9c5ee8160c'),'BT');
# Se craran 4 archivos para el estudio 8547c482cfdb45ad84beb8ea48387eae
CALL insert_study_file (UNHEX('4b04ab406ba24704b1c78f1fb384a8d3'),'Archivo 0.jpg',UNHEX('8547c482cfdb45ad84beb8ea48387eae'));
CALL insert_study_file (UNHEX('5eaa23c5b0934fe09bf4ad96ec8de73c'),'Archivo 1.doc',UNHEX('8547c482cfdb45ad84beb8ea48387eae'));
CALL insert_study_file (UNHEX('32a39cbf61d146e3be356e4be72c242b'),'Archivo 2.pdf',UNHEX('8547c482cfdb45ad84beb8ea48387eae'));
CALL insert_study_file (UNHEX('cb958ac6bc994894ad0104bb0825763b'),'Archivo 3.pdf',UNHEX('8547c482cfdb45ad84beb8ea48387eae'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('652e6554350a49c8a54c1251a17dad06'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('f5257b0cafec44818c052a9c5ee8160c'),'UA');
# Se craran 5 archivos para el estudio 652e6554350a49c8a54c1251a17dad06
CALL insert_study_file (UNHEX('0131215d79ce4f0b80f85791782c563d'),'Archivo 0.pdf',UNHEX('652e6554350a49c8a54c1251a17dad06'));
CALL insert_study_file (UNHEX('f547ed60de2f446bbc9f53929044533a'),'Archivo 1.doc',UNHEX('652e6554350a49c8a54c1251a17dad06'));
CALL insert_study_file (UNHEX('04713a61587b4982994ddf6c030044ba'),'Archivo 2.doc',UNHEX('652e6554350a49c8a54c1251a17dad06'));
CALL insert_study_file (UNHEX('00ed7255d3c245ed9b445e420bf6f503'),'Archivo 3.txt',UNHEX('652e6554350a49c8a54c1251a17dad06'));
CALL insert_study_file (UNHEX('3dab84e6158245bda3639f5239eaf263'),'Archivo 4.txt',UNHEX('652e6554350a49c8a54c1251a17dad06'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('3037d5475fcf493d8ea23dc4b1df53e4'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('f5257b0cafec44818c052a9c5ee8160c'),'ET');
# Se craran 7 archivos para el estudio 3037d5475fcf493d8ea23dc4b1df53e4
CALL insert_study_file (UNHEX('7ce948c1ab8c46c19f5a3fa9d7b6a27b'),'Archivo 0.doc',UNHEX('3037d5475fcf493d8ea23dc4b1df53e4'));
CALL insert_study_file (UNHEX('69f8aaef978e413491d14b36a8ad1288'),'Archivo 1.pdf',UNHEX('3037d5475fcf493d8ea23dc4b1df53e4'));
CALL insert_study_file (UNHEX('9dac01ced2ad49bfbfd91e87ca0fba42'),'Archivo 2.pdf',UNHEX('3037d5475fcf493d8ea23dc4b1df53e4'));
CALL insert_study_file (UNHEX('ba1a2454750247a780f8accfcc8169dd'),'Archivo 3.jpg',UNHEX('3037d5475fcf493d8ea23dc4b1df53e4'));
CALL insert_study_file (UNHEX('818345631a8347ef91f312e5435ef56f'),'Archivo 4.pdf',UNHEX('3037d5475fcf493d8ea23dc4b1df53e4'));
CALL insert_study_file (UNHEX('96801c9f2c984069a72adca8e46ac2c7'),'Archivo 5.pdf',UNHEX('3037d5475fcf493d8ea23dc4b1df53e4'));
CALL insert_study_file (UNHEX('12d9d76785234735968bb3c1ff11595c'),'Archivo 6.jpg',UNHEX('3037d5475fcf493d8ea23dc4b1df53e4'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-09','Gripe estacional.',UNHEX('6b2615a02fe04798934f7174dff4dc31'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('f5257b0cafec44818c052a9c5ee8160c'),'BT');
# Se craran 7 archivos para el estudio 6b2615a02fe04798934f7174dff4dc31
CALL insert_study_file (UNHEX('5cb2c90d0f144ff5ba4826df56f9854b'),'Archivo 0.pdf',UNHEX('6b2615a02fe04798934f7174dff4dc31'));
CALL insert_study_file (UNHEX('556b374bb92a4474888bf1fea7cffd49'),'Archivo 1.pdf',UNHEX('6b2615a02fe04798934f7174dff4dc31'));
CALL insert_study_file (UNHEX('d42f1d5f6b5549078d8b6dec1f1cad22'),'Archivo 2.txt',UNHEX('6b2615a02fe04798934f7174dff4dc31'));
CALL insert_study_file (UNHEX('a44897190a5942f7b5840a52affca19d'),'Archivo 3.txt',UNHEX('6b2615a02fe04798934f7174dff4dc31'));
CALL insert_study_file (UNHEX('a6e0814141b54e1aa2ecdb06311456cf'),'Archivo 4.jpg',UNHEX('6b2615a02fe04798934f7174dff4dc31'));
CALL insert_study_file (UNHEX('9eea9f6a17664e2c8160ecab6e5e013b'),'Archivo 5.pdf',UNHEX('6b2615a02fe04798934f7174dff4dc31'));
CALL insert_study_file (UNHEX('d146647b904e4cf8b2df1128e8637461'),'Archivo 6.doc',UNHEX('6b2615a02fe04798934f7174dff4dc31'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-05','Diferencial: Gripe H1N1',UNHEX('7e0a94cb2397491596debde931e4ec6c'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','---',UNHEX('f5257b0cafec44818c052a9c5ee8160c'),'UA');
# Se craran 5 archivos para el estudio 7e0a94cb2397491596debde931e4ec6c
CALL insert_study_file (UNHEX('77996ccff89e4417a2770a9a38827e25'),'Archivo 0.pdf',UNHEX('7e0a94cb2397491596debde931e4ec6c'));
CALL insert_study_file (UNHEX('81c1fd06f4cb4cc4811a2c0c590ec400'),'Archivo 1.txt',UNHEX('7e0a94cb2397491596debde931e4ec6c'));
CALL insert_study_file (UNHEX('cc432b5a5292436fb72a62793734b234'),'Archivo 2.doc',UNHEX('7e0a94cb2397491596debde931e4ec6c'));
CALL insert_study_file (UNHEX('58a0e72a3ce24de5a6005df28bc9d39a'),'Archivo 3.doc',UNHEX('7e0a94cb2397491596debde931e4ec6c'));
CALL insert_study_file (UNHEX('06ff58519e874191acca64f7a9fcb166'),'Archivo 4.doc',UNHEX('7e0a94cb2397491596debde931e4ec6c'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('fab40098dc3044ce9d8b8f84b7166a56'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('f5257b0cafec44818c052a9c5ee8160c'),'ET');
# Se craran 2 archivos para el estudio fab40098dc3044ce9d8b8f84b7166a56
CALL insert_study_file (UNHEX('40d5a31eed474ec0aacee529c92d4450'),'Archivo 0.pdf',UNHEX('fab40098dc3044ce9d8b8f84b7166a56'));
CALL insert_study_file (UNHEX('7459be0b22264e47bc4f370d213db95e'),'Archivo 1.txt',UNHEX('fab40098dc3044ce9d8b8f84b7166a56'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('208a9eed8d1d474799d442dfbb3ab2b8'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('f5257b0cafec44818c052a9c5ee8160c'),'ET');
# Se craran 2 archivos para el estudio 208a9eed8d1d474799d442dfbb3ab2b8
CALL insert_study_file (UNHEX('a6e41f2308e24209b2db71337e1437e9'),'Archivo 0.doc',UNHEX('208a9eed8d1d474799d442dfbb3ab2b8'));
CALL insert_study_file (UNHEX('2628b9338eb84944a91f79cf6a884919'),'Archivo 1.pdf',UNHEX('208a9eed8d1d474799d442dfbb3ab2b8'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-07','Resfrio común.',UNHEX('816714714b724e3c8920409ee9691dbb'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('f5257b0cafec44818c052a9c5ee8160c'),'BT');
# Se craran 6 archivos para el estudio 816714714b724e3c8920409ee9691dbb
CALL insert_study_file (UNHEX('0a3a32b9c3c84c8f85e1b3709f1f3595'),'Archivo 0.jpg',UNHEX('816714714b724e3c8920409ee9691dbb'));
CALL insert_study_file (UNHEX('022dd0ca972745f598aca2f902768477'),'Archivo 1.txt',UNHEX('816714714b724e3c8920409ee9691dbb'));
CALL insert_study_file (UNHEX('ffc111c036304eb0863c5ab26b7ff529'),'Archivo 2.txt',UNHEX('816714714b724e3c8920409ee9691dbb'));
CALL insert_study_file (UNHEX('7b1313d0e62a4a1e9593350a77dd9161'),'Archivo 3.txt',UNHEX('816714714b724e3c8920409ee9691dbb'));
CALL insert_study_file (UNHEX('bbd97fc4a90449538863846784d4a650'),'Archivo 4.doc',UNHEX('816714714b724e3c8920409ee9691dbb'));
CALL insert_study_file (UNHEX('f902018eaac64f39b87b6059cf1e02f8'),'Archivo 5.jpg',UNHEX('816714714b724e3c8920409ee9691dbb'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-12','Diferencial: Resfrio común.',UNHEX('08487bcabe8a41a1bee99b426e0e5736'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('f5257b0cafec44818c052a9c5ee8160c'),'ET');
# Se craran 1 archivos para el estudio 08487bcabe8a41a1bee99b426e0e5736
CALL insert_study_file (UNHEX('3380e4b7f6314b8dae93de22a5486b05'),'Archivo 0.jpg',UNHEX('08487bcabe8a41a1bee99b426e0e5736'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-11','Gripe estacional.',UNHEX('aa1abae4509c42ceb6a2539c0c303625'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('f5257b0cafec44818c052a9c5ee8160c'),'UA');
# Se craran 4 archivos para el estudio aa1abae4509c42ceb6a2539c0c303625
CALL insert_study_file (UNHEX('19f35a7c9cb448d2bf2b3e6ec18c3ce1'),'Archivo 0.txt',UNHEX('aa1abae4509c42ceb6a2539c0c303625'));
CALL insert_study_file (UNHEX('8c678c36e67f49598e27672d8a3d0146'),'Archivo 1.doc',UNHEX('aa1abae4509c42ceb6a2539c0c303625'));
CALL insert_study_file (UNHEX('c7e8bd462a2e43759d1bb5a6b4bd70ba'),'Archivo 2.pdf',UNHEX('aa1abae4509c42ceb6a2539c0c303625'));
CALL insert_study_file (UNHEX('70b390a824b04ac191f5066a4283547a'),'Archivo 3.jpg',UNHEX('aa1abae4509c42ceb6a2539c0c303625'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-09','Posibles alergias estacionales.',UNHEX('11897aebd9c44f0cb20966240c2ae4e9'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('f5257b0cafec44818c052a9c5ee8160c'),'BT');
# Se craran 5 archivos para el estudio 11897aebd9c44f0cb20966240c2ae4e9
CALL insert_study_file (UNHEX('d3c6905aa2a3467585e698dbc41e8952'),'Archivo 0.pdf',UNHEX('11897aebd9c44f0cb20966240c2ae4e9'));
CALL insert_study_file (UNHEX('4e5c40b3a6bb4e1f8696fba1b4be8381'),'Archivo 1.txt',UNHEX('11897aebd9c44f0cb20966240c2ae4e9'));
CALL insert_study_file (UNHEX('14fe1a09c5d5469891416ad9d73a20d0'),'Archivo 2.pdf',UNHEX('11897aebd9c44f0cb20966240c2ae4e9'));
CALL insert_study_file (UNHEX('3eb356616aea49acac57c8de034ea0e1'),'Archivo 3.jpg',UNHEX('11897aebd9c44f0cb20966240c2ae4e9'));
CALL insert_study_file (UNHEX('ee91fa9d33ff45209eb74ab2eda3c4e0'),'Archivo 4.pdf',UNHEX('11897aebd9c44f0cb20966240c2ae4e9'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('47b6ea74e0c4414aa4fde02594a76388'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('f5257b0cafec44818c052a9c5ee8160c'),'BT');
# Se craran 6 archivos para el estudio 47b6ea74e0c4414aa4fde02594a76388
CALL insert_study_file (UNHEX('d0a0863b7f0e484986f6667eb36b0063'),'Archivo 0.jpg',UNHEX('47b6ea74e0c4414aa4fde02594a76388'));
CALL insert_study_file (UNHEX('aec5967eeef0483a8649f7f75348f254'),'Archivo 1.pdf',UNHEX('47b6ea74e0c4414aa4fde02594a76388'));
CALL insert_study_file (UNHEX('e985d64ef3e9452aab020610d77be4ed'),'Archivo 2.pdf',UNHEX('47b6ea74e0c4414aa4fde02594a76388'));
CALL insert_study_file (UNHEX('4278dc373cb0492d9294c0453ccc24b5'),'Archivo 3.doc',UNHEX('47b6ea74e0c4414aa4fde02594a76388'));
CALL insert_study_file (UNHEX('6fca25cb319b4a979b6ed8f3c6cf02c8'),'Archivo 4.pdf',UNHEX('47b6ea74e0c4414aa4fde02594a76388'));
CALL insert_study_file (UNHEX('79b0136c5ad94e13a510551ecee47442'),'Archivo 5.jpg',UNHEX('47b6ea74e0c4414aa4fde02594a76388'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('fcbac88536d34b828cf87ad09b586935'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('f5257b0cafec44818c052a9c5ee8160c'),'UA');
# Se craran 1 archivos para el estudio fcbac88536d34b828cf87ad09b586935
CALL insert_study_file (UNHEX('e55709d12ec8453093896df7314d90df'),'Archivo 0.pdf',UNHEX('fcbac88536d34b828cf87ad09b586935'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('d4e936725f374eba8cf59e7742745161'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('f5257b0cafec44818c052a9c5ee8160c'),'BT');
# Se craran 8 archivos para el estudio d4e936725f374eba8cf59e7742745161
CALL insert_study_file (UNHEX('d5fdd9fb579a40c99aa0523a0c227193'),'Archivo 0.jpg',UNHEX('d4e936725f374eba8cf59e7742745161'));
CALL insert_study_file (UNHEX('4b1ea8c440ba4a9ebe6512b433a8ee59'),'Archivo 1.txt',UNHEX('d4e936725f374eba8cf59e7742745161'));
CALL insert_study_file (UNHEX('c163e575b5744e82a78d2463978dc0bf'),'Archivo 2.txt',UNHEX('d4e936725f374eba8cf59e7742745161'));
CALL insert_study_file (UNHEX('00c5e1faf32848bc81c724b3fbd3c875'),'Archivo 3.txt',UNHEX('d4e936725f374eba8cf59e7742745161'));
CALL insert_study_file (UNHEX('0aff4671fc4b461e8399db6dc8479b18'),'Archivo 4.pdf',UNHEX('d4e936725f374eba8cf59e7742745161'));
CALL insert_study_file (UNHEX('7def73a711cb4ad18976a2c2de132e75'),'Archivo 5.txt',UNHEX('d4e936725f374eba8cf59e7742745161'));
CALL insert_study_file (UNHEX('c86a47b97b7146afb9ee9f3ff24c3ed7'),'Archivo 6.jpg',UNHEX('d4e936725f374eba8cf59e7742745161'));
CALL insert_study_file (UNHEX('01b3590e74f5422388c9357d6ee2cc27'),'Archivo 7.pdf',UNHEX('d4e936725f374eba8cf59e7742745161'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-09','Resfrio común.',UNHEX('8fed08857f084fb5ad897beed55e1489'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Tolerancia muy baja a los sintomas gripales.',UNHEX('f5257b0cafec44818c052a9c5ee8160c'),'ET');
# Se craran 0 archivos para el estudio 8fed08857f084fb5ad897beed55e1489
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 34f2bca75df54aadb6d5b39cd191d40b
CALL insert_patient ('1961-08-18','1','M', UNHEX('34f2bca75df54aadb6d5b39cd191d40b'),'Cratsley, justen goddard','','doctor');
# Se craran 15 estudios para el paciente 34f2bca75df54aadb6d5b39cd191d40b
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-10','Resfrio común.',UNHEX('1fd999e0433e45698287af48881103ad'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('34f2bca75df54aadb6d5b39cd191d40b'),'BT');
# Se craran 5 archivos para el estudio 1fd999e0433e45698287af48881103ad
CALL insert_study_file (UNHEX('0c71360f2e2c4cb4b22818e9b3bb16b2'),'Archivo 0.txt',UNHEX('1fd999e0433e45698287af48881103ad'));
CALL insert_study_file (UNHEX('1a9ef352f9d44ba3a69ed4cb20700135'),'Archivo 1.jpg',UNHEX('1fd999e0433e45698287af48881103ad'));
CALL insert_study_file (UNHEX('ed12f20d592a4470817802de7e3058ee'),'Archivo 2.pdf',UNHEX('1fd999e0433e45698287af48881103ad'));
CALL insert_study_file (UNHEX('41de85cfefef4e6e84b114067d2b3282'),'Archivo 3.pdf',UNHEX('1fd999e0433e45698287af48881103ad'));
CALL insert_study_file (UNHEX('0d8eed6cff44475284bbad36bb502691'),'Archivo 4.txt',UNHEX('1fd999e0433e45698287af48881103ad'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('db8405d35a96414b923b186678c48aa4'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('34f2bca75df54aadb6d5b39cd191d40b'),'BT');
# Se craran 8 archivos para el estudio db8405d35a96414b923b186678c48aa4
CALL insert_study_file (UNHEX('50f744dd46764a2c86fe58bf0c680984'),'Archivo 0.doc',UNHEX('db8405d35a96414b923b186678c48aa4'));
CALL insert_study_file (UNHEX('eb7676f8186144039d6415130fd06c9c'),'Archivo 1.txt',UNHEX('db8405d35a96414b923b186678c48aa4'));
CALL insert_study_file (UNHEX('75619bf2e40b40289c292f5f80d2bc37'),'Archivo 2.txt',UNHEX('db8405d35a96414b923b186678c48aa4'));
CALL insert_study_file (UNHEX('cadf7a4ea3f7429382a51ede5e96fe15'),'Archivo 3.jpg',UNHEX('db8405d35a96414b923b186678c48aa4'));
CALL insert_study_file (UNHEX('29337e4a64274a359587af729d8e8955'),'Archivo 4.txt',UNHEX('db8405d35a96414b923b186678c48aa4'));
CALL insert_study_file (UNHEX('6850f77ca9d4413c8d5ec55fd88d7bd4'),'Archivo 5.jpg',UNHEX('db8405d35a96414b923b186678c48aa4'));
CALL insert_study_file (UNHEX('c0f2ee5755374c96b78b176e91fac2fe'),'Archivo 6.pdf',UNHEX('db8405d35a96414b923b186678c48aa4'));
CALL insert_study_file (UNHEX('6ac88ab50dec405c9aee7aacae591da4'),'Archivo 7.txt',UNHEX('db8405d35a96414b923b186678c48aa4'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('0d9bc9038f58413f9970dbeff2982cf4'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('34f2bca75df54aadb6d5b39cd191d40b'),'UA');
# Se craran 7 archivos para el estudio 0d9bc9038f58413f9970dbeff2982cf4
CALL insert_study_file (UNHEX('5d1cd38c8d1b4c7788f3a09d11c4857e'),'Archivo 0.txt',UNHEX('0d9bc9038f58413f9970dbeff2982cf4'));
CALL insert_study_file (UNHEX('706e6047e6894176bb9e16ef36228c28'),'Archivo 1.jpg',UNHEX('0d9bc9038f58413f9970dbeff2982cf4'));
CALL insert_study_file (UNHEX('593ace7aba4b4236a2a39e12fb6c5f82'),'Archivo 2.doc',UNHEX('0d9bc9038f58413f9970dbeff2982cf4'));
CALL insert_study_file (UNHEX('a537fe42167b4131ab49d8cea69940f0'),'Archivo 3.pdf',UNHEX('0d9bc9038f58413f9970dbeff2982cf4'));
CALL insert_study_file (UNHEX('6786624d7b7c4a75a73568fd970afeaa'),'Archivo 4.pdf',UNHEX('0d9bc9038f58413f9970dbeff2982cf4'));
CALL insert_study_file (UNHEX('c08e8189a51e450884573c557779e64b'),'Archivo 5.txt',UNHEX('0d9bc9038f58413f9970dbeff2982cf4'));
CALL insert_study_file (UNHEX('a6cd8f11a3244000a9819fb6ae1618a6'),'Archivo 6.jpg',UNHEX('0d9bc9038f58413f9970dbeff2982cf4'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-11','Posibles alergias estacionales.',UNHEX('7b45b09eb7e7426a9664c19fa4284fcc'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('34f2bca75df54aadb6d5b39cd191d40b'),'ET');
# Se craran 9 archivos para el estudio 7b45b09eb7e7426a9664c19fa4284fcc
CALL insert_study_file (UNHEX('f2687b3095b54bb6805a674c43bf29eb'),'Archivo 0.txt',UNHEX('7b45b09eb7e7426a9664c19fa4284fcc'));
CALL insert_study_file (UNHEX('ae1def38fef841cc9c3b0192800229a2'),'Archivo 1.doc',UNHEX('7b45b09eb7e7426a9664c19fa4284fcc'));
CALL insert_study_file (UNHEX('66f34f201b0d410793488793986a3a46'),'Archivo 2.doc',UNHEX('7b45b09eb7e7426a9664c19fa4284fcc'));
CALL insert_study_file (UNHEX('7724ceb5aaf44ecd82ff37c93881949b'),'Archivo 3.jpg',UNHEX('7b45b09eb7e7426a9664c19fa4284fcc'));
CALL insert_study_file (UNHEX('3a9bc8c110944f2e9a278d3d1c635d8f'),'Archivo 4.doc',UNHEX('7b45b09eb7e7426a9664c19fa4284fcc'));
CALL insert_study_file (UNHEX('af1b61f36b224afb8515f48bbc88cb7d'),'Archivo 5.txt',UNHEX('7b45b09eb7e7426a9664c19fa4284fcc'));
CALL insert_study_file (UNHEX('2aaaac501bd34cdcad89955ad4965537'),'Archivo 6.txt',UNHEX('7b45b09eb7e7426a9664c19fa4284fcc'));
CALL insert_study_file (UNHEX('fcb482be6d5b4d9c8a085c0aed23a360'),'Archivo 7.doc',UNHEX('7b45b09eb7e7426a9664c19fa4284fcc'));
CALL insert_study_file (UNHEX('ea195ddbfa4f470f83575a7fb3a595c1'),'Archivo 8.doc',UNHEX('7b45b09eb7e7426a9664c19fa4284fcc'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('acdc333ac1634a54b5158fdcea90ee31'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Tolerancia muy baja a los sintomas gripales.',UNHEX('34f2bca75df54aadb6d5b39cd191d40b'),'BT');
# Se craran 8 archivos para el estudio acdc333ac1634a54b5158fdcea90ee31
CALL insert_study_file (UNHEX('cbe41503c2c34bd6a660d3b245bff664'),'Archivo 0.txt',UNHEX('acdc333ac1634a54b5158fdcea90ee31'));
CALL insert_study_file (UNHEX('a09d0f8a610f4ec58172b85357e59b06'),'Archivo 1.jpg',UNHEX('acdc333ac1634a54b5158fdcea90ee31'));
CALL insert_study_file (UNHEX('5eb635ea5f9f411c93b4b39c9c05123d'),'Archivo 2.pdf',UNHEX('acdc333ac1634a54b5158fdcea90ee31'));
CALL insert_study_file (UNHEX('2831ff4ce3fa44369b8544817ffe991a'),'Archivo 3.txt',UNHEX('acdc333ac1634a54b5158fdcea90ee31'));
CALL insert_study_file (UNHEX('000a0ea45b7b443f8cc7ea51f7f3ba2b'),'Archivo 4.jpg',UNHEX('acdc333ac1634a54b5158fdcea90ee31'));
CALL insert_study_file (UNHEX('6faebf2b498846469e896ac13bacadfe'),'Archivo 5.pdf',UNHEX('acdc333ac1634a54b5158fdcea90ee31'));
CALL insert_study_file (UNHEX('4cc95ce228d94cf28efad1a2720ca71f'),'Archivo 6.txt',UNHEX('acdc333ac1634a54b5158fdcea90ee31'));
CALL insert_study_file (UNHEX('9cd01c2d982447f9a7aa373d85409794'),'Archivo 7.txt',UNHEX('acdc333ac1634a54b5158fdcea90ee31'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('2d03007205954718818cc80701573985'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('34f2bca75df54aadb6d5b39cd191d40b'),'UA');
# Se craran 4 archivos para el estudio 2d03007205954718818cc80701573985
CALL insert_study_file (UNHEX('c3e9e5c43b3a4de8886aba384e5c4990'),'Archivo 0.jpg',UNHEX('2d03007205954718818cc80701573985'));
CALL insert_study_file (UNHEX('fc7cfa3de00549afb82074742b5f4f0b'),'Archivo 1.pdf',UNHEX('2d03007205954718818cc80701573985'));
CALL insert_study_file (UNHEX('1ce1435b9e9645cdbcdb29a86fce34bd'),'Archivo 2.jpg',UNHEX('2d03007205954718818cc80701573985'));
CALL insert_study_file (UNHEX('126f0112625040b9908d686a86e1c863'),'Archivo 3.jpg',UNHEX('2d03007205954718818cc80701573985'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-10','Gripe estacional.',UNHEX('a126a41e6da54f02a04b2cf4f0bb4eab'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Tolerancia muy baja a los sintomas gripales.',UNHEX('34f2bca75df54aadb6d5b39cd191d40b'),'ET');
# Se craran 5 archivos para el estudio a126a41e6da54f02a04b2cf4f0bb4eab
CALL insert_study_file (UNHEX('6a965620645f421eb96e37379c4c2bdf'),'Archivo 0.pdf',UNHEX('a126a41e6da54f02a04b2cf4f0bb4eab'));
CALL insert_study_file (UNHEX('40c31cf127464010a97a094807197c8c'),'Archivo 1.pdf',UNHEX('a126a41e6da54f02a04b2cf4f0bb4eab'));
CALL insert_study_file (UNHEX('e4dc87c065404c52b75a0b4523c27172'),'Archivo 2.pdf',UNHEX('a126a41e6da54f02a04b2cf4f0bb4eab'));
CALL insert_study_file (UNHEX('4d57a30a4f4343b0ae20021109fc1da1'),'Archivo 3.txt',UNHEX('a126a41e6da54f02a04b2cf4f0bb4eab'));
CALL insert_study_file (UNHEX('e2cdf7f06c074074aa3de90352d47f6a'),'Archivo 4.jpg',UNHEX('a126a41e6da54f02a04b2cf4f0bb4eab'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-06','Posibles alergias estacionales.',UNHEX('3f744e6ea10944649a247a24780fb9b4'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('34f2bca75df54aadb6d5b39cd191d40b'),'ET');
# Se craran 9 archivos para el estudio 3f744e6ea10944649a247a24780fb9b4
CALL insert_study_file (UNHEX('97dca0d43a2f422d826ae3b60f8e8f05'),'Archivo 0.doc',UNHEX('3f744e6ea10944649a247a24780fb9b4'));
CALL insert_study_file (UNHEX('c953519207a84e1eacea5a93c1f6f110'),'Archivo 1.txt',UNHEX('3f744e6ea10944649a247a24780fb9b4'));
CALL insert_study_file (UNHEX('4d212fabc2fa4067ba65a08e950190ed'),'Archivo 2.jpg',UNHEX('3f744e6ea10944649a247a24780fb9b4'));
CALL insert_study_file (UNHEX('e427c31cf4f74b74a3a6ac1fa7a9887f'),'Archivo 3.doc',UNHEX('3f744e6ea10944649a247a24780fb9b4'));
CALL insert_study_file (UNHEX('fa7028a633ad4943a003b46a0badb8c6'),'Archivo 4.jpg',UNHEX('3f744e6ea10944649a247a24780fb9b4'));
CALL insert_study_file (UNHEX('6e4b08b7381a4bcc866df7e4b9176cbe'),'Archivo 5.pdf',UNHEX('3f744e6ea10944649a247a24780fb9b4'));
CALL insert_study_file (UNHEX('3510ab4542034df087d4335a44b3454c'),'Archivo 6.pdf',UNHEX('3f744e6ea10944649a247a24780fb9b4'));
CALL insert_study_file (UNHEX('7bf998016bf94bf9953c6c7ca86d73f4'),'Archivo 7.pdf',UNHEX('3f744e6ea10944649a247a24780fb9b4'));
CALL insert_study_file (UNHEX('44314b3c60314b4192c72dcc21fc8c88'),'Archivo 8.jpg',UNHEX('3f744e6ea10944649a247a24780fb9b4'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-10','Resfrio común.',UNHEX('136d0a0eedfb4faeacc81514b2641393'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('34f2bca75df54aadb6d5b39cd191d40b'),'BT');
# Se craran 2 archivos para el estudio 136d0a0eedfb4faeacc81514b2641393
CALL insert_study_file (UNHEX('0a89314f99444c8c84d6549a9e58cdd2'),'Archivo 0.doc',UNHEX('136d0a0eedfb4faeacc81514b2641393'));
CALL insert_study_file (UNHEX('5902d9fc2e1e42978aa272b5d26f6efb'),'Archivo 1.pdf',UNHEX('136d0a0eedfb4faeacc81514b2641393'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-06','Gripe estacional.',UNHEX('90f32802d60b4738b8af4dece3706106'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('34f2bca75df54aadb6d5b39cd191d40b'),'BT');
# Se craran 4 archivos para el estudio 90f32802d60b4738b8af4dece3706106
CALL insert_study_file (UNHEX('c08e6583606d44c19e31438c89820dec'),'Archivo 0.txt',UNHEX('90f32802d60b4738b8af4dece3706106'));
CALL insert_study_file (UNHEX('1da0b4c94b404c04b4774046afe14e8e'),'Archivo 1.doc',UNHEX('90f32802d60b4738b8af4dece3706106'));
CALL insert_study_file (UNHEX('fa642dde2eb2429093fe0737e5d668cd'),'Archivo 2.txt',UNHEX('90f32802d60b4738b8af4dece3706106'));
CALL insert_study_file (UNHEX('828423064f10425b9589f0cd21f2a4cd'),'Archivo 3.jpg',UNHEX('90f32802d60b4738b8af4dece3706106'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-09','Posibles alergias estacionales.',UNHEX('e7601968285a476c9456737560356c88'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('34f2bca75df54aadb6d5b39cd191d40b'),'BT');
# Se craran 6 archivos para el estudio e7601968285a476c9456737560356c88
CALL insert_study_file (UNHEX('ed88164138b94ae5a1bb003e50f081e1'),'Archivo 0.pdf',UNHEX('e7601968285a476c9456737560356c88'));
CALL insert_study_file (UNHEX('427fdceb6ed0489b87a44a903140e062'),'Archivo 1.pdf',UNHEX('e7601968285a476c9456737560356c88'));
CALL insert_study_file (UNHEX('09091e3965994752960ea29e40deb1f3'),'Archivo 2.txt',UNHEX('e7601968285a476c9456737560356c88'));
CALL insert_study_file (UNHEX('963be307a7bc49faa643acf440c489b4'),'Archivo 3.pdf',UNHEX('e7601968285a476c9456737560356c88'));
CALL insert_study_file (UNHEX('8894e25b1e8249459d56dbf86928959a'),'Archivo 4.txt',UNHEX('e7601968285a476c9456737560356c88'));
CALL insert_study_file (UNHEX('574eddb3408f43c69f1e6311e2a8750a'),'Archivo 5.txt',UNHEX('e7601968285a476c9456737560356c88'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('1bc549c55c4c4c038765a9b894d208d5'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Tolerancia muy baja a los sintomas gripales.',UNHEX('34f2bca75df54aadb6d5b39cd191d40b'),'BT');
# Se craran 7 archivos para el estudio 1bc549c55c4c4c038765a9b894d208d5
CALL insert_study_file (UNHEX('65b2d6bb88344934936c0f49e978c131'),'Archivo 0.doc',UNHEX('1bc549c55c4c4c038765a9b894d208d5'));
CALL insert_study_file (UNHEX('6f798c65f79f430099f7ed153283c8e7'),'Archivo 1.txt',UNHEX('1bc549c55c4c4c038765a9b894d208d5'));
CALL insert_study_file (UNHEX('ad18ed5de8534f76be08487d4d2150e3'),'Archivo 2.pdf',UNHEX('1bc549c55c4c4c038765a9b894d208d5'));
CALL insert_study_file (UNHEX('6f968931ae2c4a11986b1d3cf4f6a40b'),'Archivo 3.txt',UNHEX('1bc549c55c4c4c038765a9b894d208d5'));
CALL insert_study_file (UNHEX('397f7138777744a5bf9c6809c07a74e4'),'Archivo 4.pdf',UNHEX('1bc549c55c4c4c038765a9b894d208d5'));
CALL insert_study_file (UNHEX('c53faac5280c4721b3b5eef938940f9b'),'Archivo 5.pdf',UNHEX('1bc549c55c4c4c038765a9b894d208d5'));
CALL insert_study_file (UNHEX('a63df1a0f7c04d239fb17169ab93eead'),'Archivo 6.txt',UNHEX('1bc549c55c4c4c038765a9b894d208d5'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-06','Gripe estacional.',UNHEX('4794f0dc3d024255834e0221fb685c85'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('34f2bca75df54aadb6d5b39cd191d40b'),'UA');
# Se craran 7 archivos para el estudio 4794f0dc3d024255834e0221fb685c85
CALL insert_study_file (UNHEX('3d3da0c779b645ae8f4263c86b95a660'),'Archivo 0.pdf',UNHEX('4794f0dc3d024255834e0221fb685c85'));
CALL insert_study_file (UNHEX('44de567a95fe409dacb309471b9f553e'),'Archivo 1.txt',UNHEX('4794f0dc3d024255834e0221fb685c85'));
CALL insert_study_file (UNHEX('3261ce9d79034b9a9917cffc9cd65d8c'),'Archivo 2.doc',UNHEX('4794f0dc3d024255834e0221fb685c85'));
CALL insert_study_file (UNHEX('863724b70c3c487d96fcafba027c7ad0'),'Archivo 3.doc',UNHEX('4794f0dc3d024255834e0221fb685c85'));
CALL insert_study_file (UNHEX('0c0a8226ade845c1a0e9c0bcdc185792'),'Archivo 4.txt',UNHEX('4794f0dc3d024255834e0221fb685c85'));
CALL insert_study_file (UNHEX('efcef5e8f6ea4bc19d3942f505d165e8'),'Archivo 5.doc',UNHEX('4794f0dc3d024255834e0221fb685c85'));
CALL insert_study_file (UNHEX('3f719a1979cb4fe2b6b5dec217d021f6'),'Archivo 6.doc',UNHEX('4794f0dc3d024255834e0221fb685c85'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-06','Gripe estacional.',UNHEX('f23abaa49f114718b08587f83c2c8559'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('34f2bca75df54aadb6d5b39cd191d40b'),'BT');
# Se craran 0 archivos para el estudio f23abaa49f114718b08587f83c2c8559
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('f062da7b9a314827acfe2e0d22d4c7ef'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('34f2bca75df54aadb6d5b39cd191d40b'),'BT');
# Se craran 0 archivos para el estudio f062da7b9a314827acfe2e0d22d4c7ef
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 624961c0bf414e94afb4a648661d5419
CALL insert_patient ('1939-05-10','1','F', UNHEX('624961c0bf414e94afb4a648661d5419'),'Demarinis, ange','Anemia falciforme.','doctor');
# Se craran 5 estudios para el paciente 624961c0bf414e94afb4a648661d5419
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('eb317a95dfdf47b2b41b7a8199bab9dd'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('624961c0bf414e94afb4a648661d5419'),'UA');
# Se craran 0 archivos para el estudio eb317a95dfdf47b2b41b7a8199bab9dd
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-07','Diferencial: Gripe H1N1',UNHEX('6b63b0f715a941908c26591085f15563'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','---',UNHEX('624961c0bf414e94afb4a648661d5419'),'UA');
# Se craran 8 archivos para el estudio 6b63b0f715a941908c26591085f15563
CALL insert_study_file (UNHEX('d7bc673f41af4966858d765e1acb9cd4'),'Archivo 0.pdf',UNHEX('6b63b0f715a941908c26591085f15563'));
CALL insert_study_file (UNHEX('5f2fe440569245f180ec9489cfc3ed32'),'Archivo 1.pdf',UNHEX('6b63b0f715a941908c26591085f15563'));
CALL insert_study_file (UNHEX('d1936e8c0d224dd2b87b8a83faab1850'),'Archivo 2.txt',UNHEX('6b63b0f715a941908c26591085f15563'));
CALL insert_study_file (UNHEX('94abac9aabd64fcbb4c7af9c71c3fda5'),'Archivo 3.doc',UNHEX('6b63b0f715a941908c26591085f15563'));
CALL insert_study_file (UNHEX('fc1f540fe5fa42e785a1b40aa46c4aed'),'Archivo 4.txt',UNHEX('6b63b0f715a941908c26591085f15563'));
CALL insert_study_file (UNHEX('5fdedf0bee3342b7bb078fc5f2fdd5ac'),'Archivo 5.txt',UNHEX('6b63b0f715a941908c26591085f15563'));
CALL insert_study_file (UNHEX('e468a59846974867a9d0f41ce15ec60a'),'Archivo 6.txt',UNHEX('6b63b0f715a941908c26591085f15563'));
CALL insert_study_file (UNHEX('82c8af5768384d1f8413a3e4e338d781'),'Archivo 7.pdf',UNHEX('6b63b0f715a941908c26591085f15563'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('c76f5a5817244c27a69971cf8700dca4'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('624961c0bf414e94afb4a648661d5419'),'BT');
# Se craran 3 archivos para el estudio c76f5a5817244c27a69971cf8700dca4
CALL insert_study_file (UNHEX('ec1af7c2518c47c9a2a60fb7448cebca'),'Archivo 0.doc',UNHEX('c76f5a5817244c27a69971cf8700dca4'));
CALL insert_study_file (UNHEX('086c66cb7da645828a08c0b61eebab20'),'Archivo 1.doc',UNHEX('c76f5a5817244c27a69971cf8700dca4'));
CALL insert_study_file (UNHEX('6f8e66d6a340437fa85c18df9e7d94c6'),'Archivo 2.jpg',UNHEX('c76f5a5817244c27a69971cf8700dca4'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('87080ffb9fe343859da07eac0f5c9f4c'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('624961c0bf414e94afb4a648661d5419'),'BT');
# Se craran 5 archivos para el estudio 87080ffb9fe343859da07eac0f5c9f4c
CALL insert_study_file (UNHEX('8cf1dc1cc1f14428b6f22f920d025881'),'Archivo 0.pdf',UNHEX('87080ffb9fe343859da07eac0f5c9f4c'));
CALL insert_study_file (UNHEX('c7a4b14d81b842c6a10578c7ef2bd945'),'Archivo 1.pdf',UNHEX('87080ffb9fe343859da07eac0f5c9f4c'));
CALL insert_study_file (UNHEX('1c0e0f083f3d40caa50ab53ce7714060'),'Archivo 2.pdf',UNHEX('87080ffb9fe343859da07eac0f5c9f4c'));
CALL insert_study_file (UNHEX('4deb88b39e304b23b239567dd9c7297c'),'Archivo 3.jpg',UNHEX('87080ffb9fe343859da07eac0f5c9f4c'));
CALL insert_study_file (UNHEX('43623c8b8a3b48c29c42534bc03bf833'),'Archivo 4.txt',UNHEX('87080ffb9fe343859da07eac0f5c9f4c'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-12','Gripe estacional.',UNHEX('fefa2312a6474991b9d072e3da9a116d'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('624961c0bf414e94afb4a648661d5419'),'UA');
# Se craran 0 archivos para el estudio fefa2312a6474991b9d072e3da9a116d
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 72708727932f4540954523324f10c836
CALL insert_patient ('1948-09-16','1','F', UNHEX('72708727932f4540954523324f10c836'),'Rivas, dulce','','doctor');
# Se craran 5 estudios para el paciente 72708727932f4540954523324f10c836
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-09','Diferencial: Gripe H1N1',UNHEX('0d1dca3bb0d04af3834b10c9b4248691'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','Programada nueva consulta en 5 días.',UNHEX('72708727932f4540954523324f10c836'),'ET');
# Se craran 7 archivos para el estudio 0d1dca3bb0d04af3834b10c9b4248691
CALL insert_study_file (UNHEX('b8d28073977946899c803fc203f9980d'),'Archivo 0.txt',UNHEX('0d1dca3bb0d04af3834b10c9b4248691'));
CALL insert_study_file (UNHEX('af2d8794db814643acc1f025ba46989b'),'Archivo 1.doc',UNHEX('0d1dca3bb0d04af3834b10c9b4248691'));
CALL insert_study_file (UNHEX('6460eaad88dd4b46a97de32bc5cb5c07'),'Archivo 2.txt',UNHEX('0d1dca3bb0d04af3834b10c9b4248691'));
CALL insert_study_file (UNHEX('d7028e088850441599900464feb8fc56'),'Archivo 3.pdf',UNHEX('0d1dca3bb0d04af3834b10c9b4248691'));
CALL insert_study_file (UNHEX('675148c5ed48454981af55d676db1649'),'Archivo 4.pdf',UNHEX('0d1dca3bb0d04af3834b10c9b4248691'));
CALL insert_study_file (UNHEX('f89431325a254ca8bdabb53d20e96929'),'Archivo 5.txt',UNHEX('0d1dca3bb0d04af3834b10c9b4248691'));
CALL insert_study_file (UNHEX('d3c87c45e17b4e3b9848303c479be7bb'),'Archivo 6.jpg',UNHEX('0d1dca3bb0d04af3834b10c9b4248691'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-07','Resfrio común.',UNHEX('ebc4f144cfa64c358a9d4ee842226c16'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('72708727932f4540954523324f10c836'),'UA');
# Se craran 0 archivos para el estudio ebc4f144cfa64c358a9d4ee842226c16
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-10','Resfrio común.',UNHEX('e2c6f6910bef4beeacb3ac2616484f82'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('72708727932f4540954523324f10c836'),'BT');
# Se craran 3 archivos para el estudio e2c6f6910bef4beeacb3ac2616484f82
CALL insert_study_file (UNHEX('1b6787e39dbd40a9848e861edc64d5c5'),'Archivo 0.pdf',UNHEX('e2c6f6910bef4beeacb3ac2616484f82'));
CALL insert_study_file (UNHEX('29d85b8781cc42e592f02bd58fa52cf7'),'Archivo 1.doc',UNHEX('e2c6f6910bef4beeacb3ac2616484f82'));
CALL insert_study_file (UNHEX('8ede6775a0f943a4994a2f3c2546a7be'),'Archivo 2.pdf',UNHEX('e2c6f6910bef4beeacb3ac2616484f82'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('e4275eb1af284a94b2009a2f54355c05'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('72708727932f4540954523324f10c836'),'BT');
# Se craran 8 archivos para el estudio e4275eb1af284a94b2009a2f54355c05
CALL insert_study_file (UNHEX('7d92f4b010d2455d98a8de30800b90ef'),'Archivo 0.pdf',UNHEX('e4275eb1af284a94b2009a2f54355c05'));
CALL insert_study_file (UNHEX('3b073cfdfdec466a83206b1ba3914cff'),'Archivo 1.jpg',UNHEX('e4275eb1af284a94b2009a2f54355c05'));
CALL insert_study_file (UNHEX('093ac8e27ca24506ba927a1debc2e4e8'),'Archivo 2.pdf',UNHEX('e4275eb1af284a94b2009a2f54355c05'));
CALL insert_study_file (UNHEX('8a958dc45f824e1284d692f80a78cc4b'),'Archivo 3.txt',UNHEX('e4275eb1af284a94b2009a2f54355c05'));
CALL insert_study_file (UNHEX('c9e5127dedb84c2abd82bb9a60e3ba82'),'Archivo 4.pdf',UNHEX('e4275eb1af284a94b2009a2f54355c05'));
CALL insert_study_file (UNHEX('0d67fce216d24990b161aa7acd62d162'),'Archivo 5.jpg',UNHEX('e4275eb1af284a94b2009a2f54355c05'));
CALL insert_study_file (UNHEX('d8ab831e57874bd3b1369660be3daaf3'),'Archivo 6.jpg',UNHEX('e4275eb1af284a94b2009a2f54355c05'));
CALL insert_study_file (UNHEX('2d7b3b2700a94241b513e39e26b4b51f'),'Archivo 7.jpg',UNHEX('e4275eb1af284a94b2009a2f54355c05'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-07','Gripe estacional.',UNHEX('320265a4bab84c088005872f86bd79eb'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('72708727932f4540954523324f10c836'),'UA');
# Se craran 2 archivos para el estudio 320265a4bab84c088005872f86bd79eb
CALL insert_study_file (UNHEX('5dec0e3cc3024d13b16aab7916ceb997'),'Archivo 0.doc',UNHEX('320265a4bab84c088005872f86bd79eb'));
CALL insert_study_file (UNHEX('b457bab297714e4fad83350245d47902'),'Archivo 1.pdf',UNHEX('320265a4bab84c088005872f86bd79eb'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 9935cabdd72b42b78c17a69743586dea
CALL insert_patient ('1970-10-07','0','F', UNHEX('9935cabdd72b42b78c17a69743586dea'),'Codrescu, Bidget','Hemocromatosis.','doctor');
# Se craran 19 estudios para el paciente 9935cabdd72b42b78c17a69743586dea
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-08','Resfrio común.',UNHEX('cd4395498e97470ebed05bef8a51a2f2'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('9935cabdd72b42b78c17a69743586dea'),'UA');
# Se craran 2 archivos para el estudio cd4395498e97470ebed05bef8a51a2f2
CALL insert_study_file (UNHEX('6f4ab51cd4db4fb899bbc9e4935d5c8e'),'Archivo 0.doc',UNHEX('cd4395498e97470ebed05bef8a51a2f2'));
CALL insert_study_file (UNHEX('3f15b297be2e43e7b07babc58dd4df19'),'Archivo 1.jpg',UNHEX('cd4395498e97470ebed05bef8a51a2f2'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('95a28a67e98c4b9d8dd928c14e735fb3'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('9935cabdd72b42b78c17a69743586dea'),'ET');
# Se craran 8 archivos para el estudio 95a28a67e98c4b9d8dd928c14e735fb3
CALL insert_study_file (UNHEX('35797c0a249b4942860b0c3a7ac6b52e'),'Archivo 0.jpg',UNHEX('95a28a67e98c4b9d8dd928c14e735fb3'));
CALL insert_study_file (UNHEX('f867bebac0334e94bd31596bfe19295f'),'Archivo 1.jpg',UNHEX('95a28a67e98c4b9d8dd928c14e735fb3'));
CALL insert_study_file (UNHEX('e32270bf07f94a3f9e22e3ca3069e172'),'Archivo 2.txt',UNHEX('95a28a67e98c4b9d8dd928c14e735fb3'));
CALL insert_study_file (UNHEX('2387952d8ed449859fb54a9afefcc332'),'Archivo 3.pdf',UNHEX('95a28a67e98c4b9d8dd928c14e735fb3'));
CALL insert_study_file (UNHEX('2976811e7ed14557b49b4a4b62df445f'),'Archivo 4.jpg',UNHEX('95a28a67e98c4b9d8dd928c14e735fb3'));
CALL insert_study_file (UNHEX('e248cee918574578830958c7547dfcd8'),'Archivo 5.pdf',UNHEX('95a28a67e98c4b9d8dd928c14e735fb3'));
CALL insert_study_file (UNHEX('e85fe59f29454f608d5a1d7f75053887'),'Archivo 6.txt',UNHEX('95a28a67e98c4b9d8dd928c14e735fb3'));
CALL insert_study_file (UNHEX('1fe7077fa4ae44fea71cb0a950ace211'),'Archivo 7.jpg',UNHEX('95a28a67e98c4b9d8dd928c14e735fb3'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-05','Diferencial: Gripe H1N1',UNHEX('feb1d7135bf342128678c75fd6cf76c3'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','---',UNHEX('9935cabdd72b42b78c17a69743586dea'),'BT');
# Se craran 6 archivos para el estudio feb1d7135bf342128678c75fd6cf76c3
CALL insert_study_file (UNHEX('17f1ee56a0ee460090bc3c29fd01b66f'),'Archivo 0.pdf',UNHEX('feb1d7135bf342128678c75fd6cf76c3'));
CALL insert_study_file (UNHEX('526140feb2cd42d495bd85d669019cda'),'Archivo 1.txt',UNHEX('feb1d7135bf342128678c75fd6cf76c3'));
CALL insert_study_file (UNHEX('f7d1f12230184240940ff57862fb15fb'),'Archivo 2.pdf',UNHEX('feb1d7135bf342128678c75fd6cf76c3'));
CALL insert_study_file (UNHEX('9a1463405e334ac5b3a0bd23182b4cd6'),'Archivo 3.txt',UNHEX('feb1d7135bf342128678c75fd6cf76c3'));
CALL insert_study_file (UNHEX('969df8f5348e4623a8db5ca0e23a83d3'),'Archivo 4.pdf',UNHEX('feb1d7135bf342128678c75fd6cf76c3'));
CALL insert_study_file (UNHEX('3899c2ec6dc64c49ac2594404ee9622f'),'Archivo 5.pdf',UNHEX('feb1d7135bf342128678c75fd6cf76c3'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('71148a8d47304c6586d4c17417953fdf'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('9935cabdd72b42b78c17a69743586dea'),'UA');
# Se craran 9 archivos para el estudio 71148a8d47304c6586d4c17417953fdf
CALL insert_study_file (UNHEX('d35ec0632ece4c4aba81b22012472467'),'Archivo 0.pdf',UNHEX('71148a8d47304c6586d4c17417953fdf'));
CALL insert_study_file (UNHEX('937d8074f89148d6a0a0bee156737497'),'Archivo 1.jpg',UNHEX('71148a8d47304c6586d4c17417953fdf'));
CALL insert_study_file (UNHEX('38c36c69456549fdaa412ba620f5c35d'),'Archivo 2.txt',UNHEX('71148a8d47304c6586d4c17417953fdf'));
CALL insert_study_file (UNHEX('92ad7399484e41eca0f9e58bf83fe7e1'),'Archivo 3.pdf',UNHEX('71148a8d47304c6586d4c17417953fdf'));
CALL insert_study_file (UNHEX('afab591704eb4ed2889fa8c8200e688e'),'Archivo 4.doc',UNHEX('71148a8d47304c6586d4c17417953fdf'));
CALL insert_study_file (UNHEX('87cf8db3d5e24dcda1ae3f3dd492d1a9'),'Archivo 5.doc',UNHEX('71148a8d47304c6586d4c17417953fdf'));
CALL insert_study_file (UNHEX('684024c6fb9a4a37a9748726a0bf7ce5'),'Archivo 6.pdf',UNHEX('71148a8d47304c6586d4c17417953fdf'));
CALL insert_study_file (UNHEX('da0d6705c19f4bf9bf8493a87c79e0ec'),'Archivo 7.txt',UNHEX('71148a8d47304c6586d4c17417953fdf'));
CALL insert_study_file (UNHEX('ade0e37a466b48849465b155bd2c3b4a'),'Archivo 8.pdf',UNHEX('71148a8d47304c6586d4c17417953fdf'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('fceccefd62294d05aafbffcd680f4265'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('9935cabdd72b42b78c17a69743586dea'),'ET');
# Se craran 4 archivos para el estudio fceccefd62294d05aafbffcd680f4265
CALL insert_study_file (UNHEX('603fcdac15314c57b0ed26ff0f2b104d'),'Archivo 0.doc',UNHEX('fceccefd62294d05aafbffcd680f4265'));
CALL insert_study_file (UNHEX('532babca9bdd4d299ba9ce846bfb655f'),'Archivo 1.doc',UNHEX('fceccefd62294d05aafbffcd680f4265'));
CALL insert_study_file (UNHEX('243eb57fdde94c2ebd7faaa881ac7e2a'),'Archivo 2.pdf',UNHEX('fceccefd62294d05aafbffcd680f4265'));
CALL insert_study_file (UNHEX('52e00a6ba2884512a42d98cc4f8d82a5'),'Archivo 3.jpg',UNHEX('fceccefd62294d05aafbffcd680f4265'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('47b296aec45245559f18418938c6a9cd'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('9935cabdd72b42b78c17a69743586dea'),'ET');
# Se craran 9 archivos para el estudio 47b296aec45245559f18418938c6a9cd
CALL insert_study_file (UNHEX('a0595383c0c54cebb06d016f91960c95'),'Archivo 0.pdf',UNHEX('47b296aec45245559f18418938c6a9cd'));
CALL insert_study_file (UNHEX('22a9ad9c2b724843834c1064e68adf9d'),'Archivo 1.jpg',UNHEX('47b296aec45245559f18418938c6a9cd'));
CALL insert_study_file (UNHEX('1882810593f04b5a898a104c99138147'),'Archivo 2.txt',UNHEX('47b296aec45245559f18418938c6a9cd'));
CALL insert_study_file (UNHEX('d215a505ba69466fb9b119784e0d0698'),'Archivo 3.txt',UNHEX('47b296aec45245559f18418938c6a9cd'));
CALL insert_study_file (UNHEX('5bb2f7c2537a40519d744a20d41ec198'),'Archivo 4.doc',UNHEX('47b296aec45245559f18418938c6a9cd'));
CALL insert_study_file (UNHEX('fd4766e59b2c46a798820c414775fb83'),'Archivo 5.pdf',UNHEX('47b296aec45245559f18418938c6a9cd'));
CALL insert_study_file (UNHEX('7c4a705dea954b7e9446653b5763ada5'),'Archivo 6.doc',UNHEX('47b296aec45245559f18418938c6a9cd'));
CALL insert_study_file (UNHEX('2438dd0632604fbf959c7e7b3ffaeb21'),'Archivo 7.doc',UNHEX('47b296aec45245559f18418938c6a9cd'));
CALL insert_study_file (UNHEX('43e8cf23719e4c8a86cb4ca455ffc228'),'Archivo 8.pdf',UNHEX('47b296aec45245559f18418938c6a9cd'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-08','Diferencial: Gripe H1N1',UNHEX('7c8d502da3244d6aa43ec9627f893136'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','Tolerancia muy baja a los sintomas gripales.',UNHEX('9935cabdd72b42b78c17a69743586dea'),'BT');
# Se craran 8 archivos para el estudio 7c8d502da3244d6aa43ec9627f893136
CALL insert_study_file (UNHEX('f92ace1930714998900347a721b05b3b'),'Archivo 0.doc',UNHEX('7c8d502da3244d6aa43ec9627f893136'));
CALL insert_study_file (UNHEX('1d9da535c3db44088ec7f62c879fbb31'),'Archivo 1.doc',UNHEX('7c8d502da3244d6aa43ec9627f893136'));
CALL insert_study_file (UNHEX('39037ac35be446e8a0e8253f13b27da1'),'Archivo 2.jpg',UNHEX('7c8d502da3244d6aa43ec9627f893136'));
CALL insert_study_file (UNHEX('61bac6d09111478aa6cc3f0473ddc059'),'Archivo 3.pdf',UNHEX('7c8d502da3244d6aa43ec9627f893136'));
CALL insert_study_file (UNHEX('7a95b9cf901240d0b0a7b2f50b96dc13'),'Archivo 4.pdf',UNHEX('7c8d502da3244d6aa43ec9627f893136'));
CALL insert_study_file (UNHEX('f594ae3da8ae46e5819a9daf541cf44b'),'Archivo 5.jpg',UNHEX('7c8d502da3244d6aa43ec9627f893136'));
CALL insert_study_file (UNHEX('a1a4e0e6ae0642aba0875c88fb873e6e'),'Archivo 6.pdf',UNHEX('7c8d502da3244d6aa43ec9627f893136'));
CALL insert_study_file (UNHEX('9cccc5c2b96b4b5e9dbdde19b5e7940b'),'Archivo 7.pdf',UNHEX('7c8d502da3244d6aa43ec9627f893136'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('8aacd41acf72466ebaf29223cebb9905'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('9935cabdd72b42b78c17a69743586dea'),'ET');
# Se craran 5 archivos para el estudio 8aacd41acf72466ebaf29223cebb9905
CALL insert_study_file (UNHEX('019dc4f830ac4a6f9c18ade3176ce646'),'Archivo 0.doc',UNHEX('8aacd41acf72466ebaf29223cebb9905'));
CALL insert_study_file (UNHEX('a307f563c63947c4bfb83d4ad4521a9a'),'Archivo 1.jpg',UNHEX('8aacd41acf72466ebaf29223cebb9905'));
CALL insert_study_file (UNHEX('ffbc952f184f4e3b94b7ba3e3ad9fc2e'),'Archivo 2.jpg',UNHEX('8aacd41acf72466ebaf29223cebb9905'));
CALL insert_study_file (UNHEX('054a58207daa482aa4ffb50ff3535f63'),'Archivo 3.jpg',UNHEX('8aacd41acf72466ebaf29223cebb9905'));
CALL insert_study_file (UNHEX('0b16989f058948d4bccbdccd4a5b055f'),'Archivo 4.jpg',UNHEX('8aacd41acf72466ebaf29223cebb9905'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-08','Resfrio común.',UNHEX('db7b14a091d749c5a117456a7e58d349'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Tolerancia muy baja a los sintomas gripales.',UNHEX('9935cabdd72b42b78c17a69743586dea'),'BT');
# Se craran 3 archivos para el estudio db7b14a091d749c5a117456a7e58d349
CALL insert_study_file (UNHEX('4dc41db6b0c749ac883184bf24dcae84'),'Archivo 0.pdf',UNHEX('db7b14a091d749c5a117456a7e58d349'));
CALL insert_study_file (UNHEX('085f852f03a64561a93646e520296a09'),'Archivo 1.doc',UNHEX('db7b14a091d749c5a117456a7e58d349'));
CALL insert_study_file (UNHEX('8811573762df4f9087e818bf5a3a7805'),'Archivo 2.txt',UNHEX('db7b14a091d749c5a117456a7e58d349'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('75e1487e0bb5458abf916640188f74d2'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('9935cabdd72b42b78c17a69743586dea'),'BT');
# Se craran 7 archivos para el estudio 75e1487e0bb5458abf916640188f74d2
CALL insert_study_file (UNHEX('843d49d898434f2bafa840583556757c'),'Archivo 0.txt',UNHEX('75e1487e0bb5458abf916640188f74d2'));
CALL insert_study_file (UNHEX('fcada2c350c746a6b487059c304cc55e'),'Archivo 1.jpg',UNHEX('75e1487e0bb5458abf916640188f74d2'));
CALL insert_study_file (UNHEX('94857c7d25264a94b7496630e8be4a22'),'Archivo 2.jpg',UNHEX('75e1487e0bb5458abf916640188f74d2'));
CALL insert_study_file (UNHEX('c798ad5d80cc461d9caf1cf3f5a9f96a'),'Archivo 3.doc',UNHEX('75e1487e0bb5458abf916640188f74d2'));
CALL insert_study_file (UNHEX('2ef5d853ff51481a9ce5320fa1ff74e6'),'Archivo 4.jpg',UNHEX('75e1487e0bb5458abf916640188f74d2'));
CALL insert_study_file (UNHEX('b7fb8659bd254600afd39fb29d6658b0'),'Archivo 5.txt',UNHEX('75e1487e0bb5458abf916640188f74d2'));
CALL insert_study_file (UNHEX('952f8cb5feaa4d46844f834469a00f29'),'Archivo 6.txt',UNHEX('75e1487e0bb5458abf916640188f74d2'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('403ca4d57f9241399a73f3c1147327af'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('9935cabdd72b42b78c17a69743586dea'),'BT');
# Se craran 2 archivos para el estudio 403ca4d57f9241399a73f3c1147327af
CALL insert_study_file (UNHEX('6c93b9ab44884fe2b6afdb1742bae361'),'Archivo 0.pdf',UNHEX('403ca4d57f9241399a73f3c1147327af'));
CALL insert_study_file (UNHEX('77fd62b896614b2391b3993da71dd140'),'Archivo 1.doc',UNHEX('403ca4d57f9241399a73f3c1147327af'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-06','Gripe estacional.',UNHEX('a25c114f076940b9993c06f2fcbc9a5a'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('9935cabdd72b42b78c17a69743586dea'),'ET');
# Se craran 3 archivos para el estudio a25c114f076940b9993c06f2fcbc9a5a
CALL insert_study_file (UNHEX('81ab942a306548cfafcc677e1afa1853'),'Archivo 0.txt',UNHEX('a25c114f076940b9993c06f2fcbc9a5a'));
CALL insert_study_file (UNHEX('749afbf7a4954413a6bfba3470adf43e'),'Archivo 1.pdf',UNHEX('a25c114f076940b9993c06f2fcbc9a5a'));
CALL insert_study_file (UNHEX('cc12562ee2e24526b27564a707bf5c99'),'Archivo 2.doc',UNHEX('a25c114f076940b9993c06f2fcbc9a5a'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('983d8ee6aad84c478c0cbc19ada5d73a'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('9935cabdd72b42b78c17a69743586dea'),'ET');
# Se craran 6 archivos para el estudio 983d8ee6aad84c478c0cbc19ada5d73a
CALL insert_study_file (UNHEX('0ce0384be4a645e2a6023c82ac19122c'),'Archivo 0.jpg',UNHEX('983d8ee6aad84c478c0cbc19ada5d73a'));
CALL insert_study_file (UNHEX('82853869fb764a01a99c04d010a65d5b'),'Archivo 1.txt',UNHEX('983d8ee6aad84c478c0cbc19ada5d73a'));
CALL insert_study_file (UNHEX('1f471a74a6574eb5bd9007a3e8f5c29f'),'Archivo 2.pdf',UNHEX('983d8ee6aad84c478c0cbc19ada5d73a'));
CALL insert_study_file (UNHEX('0385b77014b2430b9988f1e5e8a6713f'),'Archivo 3.pdf',UNHEX('983d8ee6aad84c478c0cbc19ada5d73a'));
CALL insert_study_file (UNHEX('b8bd453dd3724c71b4cdc351658c6c83'),'Archivo 4.pdf',UNHEX('983d8ee6aad84c478c0cbc19ada5d73a'));
CALL insert_study_file (UNHEX('b1441e4cdef445ebbb83e2faff1fc129'),'Archivo 5.jpg',UNHEX('983d8ee6aad84c478c0cbc19ada5d73a'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-10','Posibles alergias estacionales.',UNHEX('fcedfdd305ca4b09950e0bcd54614e17'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('9935cabdd72b42b78c17a69743586dea'),'UA');
# Se craran 5 archivos para el estudio fcedfdd305ca4b09950e0bcd54614e17
CALL insert_study_file (UNHEX('1ca6095bd8154a9aa0291eef94c7e049'),'Archivo 0.txt',UNHEX('fcedfdd305ca4b09950e0bcd54614e17'));
CALL insert_study_file (UNHEX('eb81d71cd05a42e3a4367d8d22f9f074'),'Archivo 1.jpg',UNHEX('fcedfdd305ca4b09950e0bcd54614e17'));
CALL insert_study_file (UNHEX('9ad460445ce049d9a14ce1a69cf6c822'),'Archivo 2.jpg',UNHEX('fcedfdd305ca4b09950e0bcd54614e17'));
CALL insert_study_file (UNHEX('e76d88d927c442f2a6b72a4416e90096'),'Archivo 3.doc',UNHEX('fcedfdd305ca4b09950e0bcd54614e17'));
CALL insert_study_file (UNHEX('2fc5e4bb71244b1a8bbca1cfad9d5d77'),'Archivo 4.txt',UNHEX('fcedfdd305ca4b09950e0bcd54614e17'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-11','Diferencial: Resfrio común.',UNHEX('e648fa40227b4437bed3da3e54237283'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('9935cabdd72b42b78c17a69743586dea'),'UA');
# Se craran 4 archivos para el estudio e648fa40227b4437bed3da3e54237283
CALL insert_study_file (UNHEX('ad3ca9d77c8e4265b38573f2301ff838'),'Archivo 0.doc',UNHEX('e648fa40227b4437bed3da3e54237283'));
CALL insert_study_file (UNHEX('4002a2be502742ab955691bfb0da7a6a'),'Archivo 1.doc',UNHEX('e648fa40227b4437bed3da3e54237283'));
CALL insert_study_file (UNHEX('ffac70e8454e4945be9381430ea566de'),'Archivo 2.doc',UNHEX('e648fa40227b4437bed3da3e54237283'));
CALL insert_study_file (UNHEX('ad93ecf949734078913e16f67e81d1ff'),'Archivo 3.jpg',UNHEX('e648fa40227b4437bed3da3e54237283'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-06','Resfrio común.',UNHEX('7f0d5e205b5b4624bb7cb179f7579cf5'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Tolerancia muy baja a los sintomas gripales.',UNHEX('9935cabdd72b42b78c17a69743586dea'),'BT');
# Se craran 9 archivos para el estudio 7f0d5e205b5b4624bb7cb179f7579cf5
CALL insert_study_file (UNHEX('888bf803a6af442992d6bdd677c9014f'),'Archivo 0.pdf',UNHEX('7f0d5e205b5b4624bb7cb179f7579cf5'));
CALL insert_study_file (UNHEX('fb469d3eb4a74eb5a032902ec8f02148'),'Archivo 1.doc',UNHEX('7f0d5e205b5b4624bb7cb179f7579cf5'));
CALL insert_study_file (UNHEX('c9dde191678a4272a133be8ad6926e87'),'Archivo 2.pdf',UNHEX('7f0d5e205b5b4624bb7cb179f7579cf5'));
CALL insert_study_file (UNHEX('eeb0df087dcb40b9b82e67ad1f093138'),'Archivo 3.txt',UNHEX('7f0d5e205b5b4624bb7cb179f7579cf5'));
CALL insert_study_file (UNHEX('d1a58bc5f03744dc9773ba322eea7b6a'),'Archivo 4.doc',UNHEX('7f0d5e205b5b4624bb7cb179f7579cf5'));
CALL insert_study_file (UNHEX('c727d87acba1405dab17c36d8989bf96'),'Archivo 5.jpg',UNHEX('7f0d5e205b5b4624bb7cb179f7579cf5'));
CALL insert_study_file (UNHEX('45d8263d09814626902f9175ce6f3e74'),'Archivo 6.doc',UNHEX('7f0d5e205b5b4624bb7cb179f7579cf5'));
CALL insert_study_file (UNHEX('6bfea59a146e4c07acaf04de8005d700'),'Archivo 7.doc',UNHEX('7f0d5e205b5b4624bb7cb179f7579cf5'));
CALL insert_study_file (UNHEX('699c9c3849d04494b3d48d9d34fe37de'),'Archivo 8.pdf',UNHEX('7f0d5e205b5b4624bb7cb179f7579cf5'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('5177ae9a6e4a4776a3377394791b49d9'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('9935cabdd72b42b78c17a69743586dea'),'BT');
# Se craran 6 archivos para el estudio 5177ae9a6e4a4776a3377394791b49d9
CALL insert_study_file (UNHEX('f58d70dfe34b436c9a55b468224670be'),'Archivo 0.doc',UNHEX('5177ae9a6e4a4776a3377394791b49d9'));
CALL insert_study_file (UNHEX('ea3c7795eba343b19ff8066ade85cddf'),'Archivo 1.txt',UNHEX('5177ae9a6e4a4776a3377394791b49d9'));
CALL insert_study_file (UNHEX('e443cad5d64f4347836705cb62775767'),'Archivo 2.txt',UNHEX('5177ae9a6e4a4776a3377394791b49d9'));
CALL insert_study_file (UNHEX('03ba9d1515fc4e63b98fe3b455080d63'),'Archivo 3.jpg',UNHEX('5177ae9a6e4a4776a3377394791b49d9'));
CALL insert_study_file (UNHEX('9ced40a45da94defa1f15151ce493f19'),'Archivo 4.doc',UNHEX('5177ae9a6e4a4776a3377394791b49d9'));
CALL insert_study_file (UNHEX('eeb61bd3ba4440c6beb6154d0d14ae5c'),'Archivo 5.jpg',UNHEX('5177ae9a6e4a4776a3377394791b49d9'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-10','Diferencial: Resfrio común.',UNHEX('d53167ae1e3c4b0e899d4d18492c3167'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('9935cabdd72b42b78c17a69743586dea'),'BT');
# Se craran 2 archivos para el estudio d53167ae1e3c4b0e899d4d18492c3167
CALL insert_study_file (UNHEX('4eda18a885a74e08bef8bc2574f3b702'),'Archivo 0.txt',UNHEX('d53167ae1e3c4b0e899d4d18492c3167'));
CALL insert_study_file (UNHEX('be9673cd6575477cb4a03707ecefbd72'),'Archivo 1.jpg',UNHEX('d53167ae1e3c4b0e899d4d18492c3167'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-08','Diferencial: Resfrio común.',UNHEX('ee87ff3a07b04787be22ddcff97b4aa4'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('9935cabdd72b42b78c17a69743586dea'),'UA');
# Se craran 7 archivos para el estudio ee87ff3a07b04787be22ddcff97b4aa4
CALL insert_study_file (UNHEX('baf1194018c04d84b5af73a74bcf335b'),'Archivo 0.pdf',UNHEX('ee87ff3a07b04787be22ddcff97b4aa4'));
CALL insert_study_file (UNHEX('4e0ed57fda0440f5a59a8710687cd164'),'Archivo 1.pdf',UNHEX('ee87ff3a07b04787be22ddcff97b4aa4'));
CALL insert_study_file (UNHEX('3c45d1c54ef045f7916501efe2601629'),'Archivo 2.txt',UNHEX('ee87ff3a07b04787be22ddcff97b4aa4'));
CALL insert_study_file (UNHEX('32e8da3207d5477cb90325039c9dd078'),'Archivo 3.txt',UNHEX('ee87ff3a07b04787be22ddcff97b4aa4'));
CALL insert_study_file (UNHEX('dd4dc2d9cde34c3e83710bfd6f017c36'),'Archivo 4.doc',UNHEX('ee87ff3a07b04787be22ddcff97b4aa4'));
CALL insert_study_file (UNHEX('d64a4182e2634224aecf56a38fc0f406'),'Archivo 5.txt',UNHEX('ee87ff3a07b04787be22ddcff97b4aa4'));
CALL insert_study_file (UNHEX('b3ecc3dd3d864263a031fe0ca52a61af'),'Archivo 6.doc',UNHEX('ee87ff3a07b04787be22ddcff97b4aa4'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 06f83ec4ec5c4b488c2ba2ecf6a5ef56
CALL insert_patient ('1947-12-26','7','F', UNHEX('06f83ec4ec5c4b488c2ba2ecf6a5ef56'),'Perivolaropoulos, kariotta','Diabetes.','doctor');
# Se craran 17 estudios para el paciente 06f83ec4ec5c4b488c2ba2ecf6a5ef56
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('02c4b80f89a44d23ae6dc008f12e1fdd'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('06f83ec4ec5c4b488c2ba2ecf6a5ef56'),'ET');
# Se craran 7 archivos para el estudio 02c4b80f89a44d23ae6dc008f12e1fdd
CALL insert_study_file (UNHEX('89a5aff02e2345bca52d7a37c087eb8e'),'Archivo 0.pdf',UNHEX('02c4b80f89a44d23ae6dc008f12e1fdd'));
CALL insert_study_file (UNHEX('fac67fe590664f91b6be9a322d9891e4'),'Archivo 1.doc',UNHEX('02c4b80f89a44d23ae6dc008f12e1fdd'));
CALL insert_study_file (UNHEX('9b3667810bc149328db0788588cd28f8'),'Archivo 2.doc',UNHEX('02c4b80f89a44d23ae6dc008f12e1fdd'));
CALL insert_study_file (UNHEX('dcb140a51ed9493f90a3236e5b8b6bd2'),'Archivo 3.doc',UNHEX('02c4b80f89a44d23ae6dc008f12e1fdd'));
CALL insert_study_file (UNHEX('7d2ea9b673bb40e59113de95b0abe028'),'Archivo 4.pdf',UNHEX('02c4b80f89a44d23ae6dc008f12e1fdd'));
CALL insert_study_file (UNHEX('0a4f1e395b964fd58a1e65f676ee8553'),'Archivo 5.doc',UNHEX('02c4b80f89a44d23ae6dc008f12e1fdd'));
CALL insert_study_file (UNHEX('5a43f7d41cd14323be60067a2d64e59c'),'Archivo 6.pdf',UNHEX('02c4b80f89a44d23ae6dc008f12e1fdd'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('e4795292d12148ccb4a743ab548936be'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('06f83ec4ec5c4b488c2ba2ecf6a5ef56'),'BT');
# Se craran 7 archivos para el estudio e4795292d12148ccb4a743ab548936be
CALL insert_study_file (UNHEX('981b0c26cacd44739bdaf700d26b3622'),'Archivo 0.doc',UNHEX('e4795292d12148ccb4a743ab548936be'));
CALL insert_study_file (UNHEX('63c97889896f493696170e6db85a13f7'),'Archivo 1.jpg',UNHEX('e4795292d12148ccb4a743ab548936be'));
CALL insert_study_file (UNHEX('f71cf6cfdd9d45a8a453fd668cc9e6a2'),'Archivo 2.doc',UNHEX('e4795292d12148ccb4a743ab548936be'));
CALL insert_study_file (UNHEX('7a60b226e1e842828cd198df6c70249d'),'Archivo 3.pdf',UNHEX('e4795292d12148ccb4a743ab548936be'));
CALL insert_study_file (UNHEX('1778853b8aad46b388eb3b65aa2801ea'),'Archivo 4.txt',UNHEX('e4795292d12148ccb4a743ab548936be'));
CALL insert_study_file (UNHEX('e02bbc94b50842538e3faee41e9bce29'),'Archivo 5.txt',UNHEX('e4795292d12148ccb4a743ab548936be'));
CALL insert_study_file (UNHEX('19e65c19e598411e849241d061a5d584'),'Archivo 6.pdf',UNHEX('e4795292d12148ccb4a743ab548936be'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-07','Posibles alergias estacionales.',UNHEX('85beeda0361d4166b2b8cc11b7447e11'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('06f83ec4ec5c4b488c2ba2ecf6a5ef56'),'BT');
# Se craran 7 archivos para el estudio 85beeda0361d4166b2b8cc11b7447e11
CALL insert_study_file (UNHEX('81125c6325d24750b4402bc918d1e6b7'),'Archivo 0.jpg',UNHEX('85beeda0361d4166b2b8cc11b7447e11'));
CALL insert_study_file (UNHEX('d8b24682c7764a81a4dcdef24ac07807'),'Archivo 1.txt',UNHEX('85beeda0361d4166b2b8cc11b7447e11'));
CALL insert_study_file (UNHEX('c03cea81cdfc4d739053aba87eff7a73'),'Archivo 2.jpg',UNHEX('85beeda0361d4166b2b8cc11b7447e11'));
CALL insert_study_file (UNHEX('fd5c88a40cf1441c930cf60cf9b5c24c'),'Archivo 3.jpg',UNHEX('85beeda0361d4166b2b8cc11b7447e11'));
CALL insert_study_file (UNHEX('ebdb52a9d7794bee9b0aba8432643bd8'),'Archivo 4.jpg',UNHEX('85beeda0361d4166b2b8cc11b7447e11'));
CALL insert_study_file (UNHEX('b8327be494de423796c175c0465c1818'),'Archivo 5.txt',UNHEX('85beeda0361d4166b2b8cc11b7447e11'));
CALL insert_study_file (UNHEX('2598dd584f854ca28556774d74a4c97a'),'Archivo 6.doc',UNHEX('85beeda0361d4166b2b8cc11b7447e11'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-08','Resfrio común.',UNHEX('1059ded691994c13a954b06295d53732'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('06f83ec4ec5c4b488c2ba2ecf6a5ef56'),'ET');
# Se craran 4 archivos para el estudio 1059ded691994c13a954b06295d53732
CALL insert_study_file (UNHEX('946033ee79604f5f9edf7bf64b1fe750'),'Archivo 0.jpg',UNHEX('1059ded691994c13a954b06295d53732'));
CALL insert_study_file (UNHEX('1b99dda8dba74c3ea3dfc9015ddd1d11'),'Archivo 1.doc',UNHEX('1059ded691994c13a954b06295d53732'));
CALL insert_study_file (UNHEX('d654402774144a58a7333f0b0f1e7498'),'Archivo 2.jpg',UNHEX('1059ded691994c13a954b06295d53732'));
CALL insert_study_file (UNHEX('2052b329fd9142ddaebd356036fcff65'),'Archivo 3.doc',UNHEX('1059ded691994c13a954b06295d53732'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-08','Posibles alergias estacionales.',UNHEX('667b5a0f2a2c4c9d949bf788b659094c'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('06f83ec4ec5c4b488c2ba2ecf6a5ef56'),'UA');
# Se craran 3 archivos para el estudio 667b5a0f2a2c4c9d949bf788b659094c
CALL insert_study_file (UNHEX('a9cb44c34877447ebda115ff778767b3'),'Archivo 0.txt',UNHEX('667b5a0f2a2c4c9d949bf788b659094c'));
CALL insert_study_file (UNHEX('f1df27755b0d45268cb6595e9ba143df'),'Archivo 1.jpg',UNHEX('667b5a0f2a2c4c9d949bf788b659094c'));
CALL insert_study_file (UNHEX('ac145fb968014060a9ea157d6a368fae'),'Archivo 2.jpg',UNHEX('667b5a0f2a2c4c9d949bf788b659094c'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-06','Resfrio común.',UNHEX('0674632967e947dba252b3d39986d596'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('06f83ec4ec5c4b488c2ba2ecf6a5ef56'),'ET');
# Se craran 5 archivos para el estudio 0674632967e947dba252b3d39986d596
CALL insert_study_file (UNHEX('66bf7e2440264c2ca2d64f4f66261a91'),'Archivo 0.jpg',UNHEX('0674632967e947dba252b3d39986d596'));
CALL insert_study_file (UNHEX('00a6f14a180d46848d15fb7b37a8f94f'),'Archivo 1.doc',UNHEX('0674632967e947dba252b3d39986d596'));
CALL insert_study_file (UNHEX('982d50e6d3df4921983f6765a9716bfb'),'Archivo 2.txt',UNHEX('0674632967e947dba252b3d39986d596'));
CALL insert_study_file (UNHEX('021559f3d86b4d2c9299e5c4ece683ae'),'Archivo 3.jpg',UNHEX('0674632967e947dba252b3d39986d596'));
CALL insert_study_file (UNHEX('e2f8f535b7584d9fadf7e1ae73d83cda'),'Archivo 4.doc',UNHEX('0674632967e947dba252b3d39986d596'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('cf1006ca33644d47ae35158bda1e04cb'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('06f83ec4ec5c4b488c2ba2ecf6a5ef56'),'UA');
# Se craran 5 archivos para el estudio cf1006ca33644d47ae35158bda1e04cb
CALL insert_study_file (UNHEX('613b708d22c64f1b922d3d9e398992d4'),'Archivo 0.pdf',UNHEX('cf1006ca33644d47ae35158bda1e04cb'));
CALL insert_study_file (UNHEX('3d8fc18e6cac403b9f734e095e715ecc'),'Archivo 1.txt',UNHEX('cf1006ca33644d47ae35158bda1e04cb'));
CALL insert_study_file (UNHEX('eba69b36158249b89a64e5bdb6b49dd2'),'Archivo 2.doc',UNHEX('cf1006ca33644d47ae35158bda1e04cb'));
CALL insert_study_file (UNHEX('6195904abc9f4c63af4a9d5832a13ac3'),'Archivo 3.pdf',UNHEX('cf1006ca33644d47ae35158bda1e04cb'));
CALL insert_study_file (UNHEX('88f00ac4d7d34c91948435242e4d9380'),'Archivo 4.txt',UNHEX('cf1006ca33644d47ae35158bda1e04cb'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('54f5a8b7e04846799a89fb9fbde549f7'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Tolerancia muy baja a los sintomas gripales.',UNHEX('06f83ec4ec5c4b488c2ba2ecf6a5ef56'),'UA');
# Se craran 4 archivos para el estudio 54f5a8b7e04846799a89fb9fbde549f7
CALL insert_study_file (UNHEX('22f89eb44d0743bdbb8234bb592f1784'),'Archivo 0.doc',UNHEX('54f5a8b7e04846799a89fb9fbde549f7'));
CALL insert_study_file (UNHEX('bc7ddccfe640424da9635c09d40371a3'),'Archivo 1.jpg',UNHEX('54f5a8b7e04846799a89fb9fbde549f7'));
CALL insert_study_file (UNHEX('ff6f6eb866c24697b75b2e10089e8436'),'Archivo 2.doc',UNHEX('54f5a8b7e04846799a89fb9fbde549f7'));
CALL insert_study_file (UNHEX('376a25122ad243468270ec186070c5e1'),'Archivo 3.jpg',UNHEX('54f5a8b7e04846799a89fb9fbde549f7'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('09ad44be58134e94bdfb6cc124472cc1'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('06f83ec4ec5c4b488c2ba2ecf6a5ef56'),'UA');
# Se craran 5 archivos para el estudio 09ad44be58134e94bdfb6cc124472cc1
CALL insert_study_file (UNHEX('efb3bf6ddd5047d182764070e0948997'),'Archivo 0.doc',UNHEX('09ad44be58134e94bdfb6cc124472cc1'));
CALL insert_study_file (UNHEX('673290196743487495405f5815187fa4'),'Archivo 1.jpg',UNHEX('09ad44be58134e94bdfb6cc124472cc1'));
CALL insert_study_file (UNHEX('690971a841334641a0666efeddc7bb77'),'Archivo 2.pdf',UNHEX('09ad44be58134e94bdfb6cc124472cc1'));
CALL insert_study_file (UNHEX('e3902f90620549b39d7dd83cf723ea10'),'Archivo 3.pdf',UNHEX('09ad44be58134e94bdfb6cc124472cc1'));
CALL insert_study_file (UNHEX('97faf405641a4060a72c1a722e4d9305'),'Archivo 4.txt',UNHEX('09ad44be58134e94bdfb6cc124472cc1'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('24fefc0c4e4c4de4833ee78853486d79'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('06f83ec4ec5c4b488c2ba2ecf6a5ef56'),'BT');
# Se craran 1 archivos para el estudio 24fefc0c4e4c4de4833ee78853486d79
CALL insert_study_file (UNHEX('7dcf2de0c13b4f419afe9078b0af0b7c'),'Archivo 0.doc',UNHEX('24fefc0c4e4c4de4833ee78853486d79'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('c425c4650fff4197a7627a37885e0cb5'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Programada nueva consulta en 5 días.',UNHEX('06f83ec4ec5c4b488c2ba2ecf6a5ef56'),'BT');
# Se craran 6 archivos para el estudio c425c4650fff4197a7627a37885e0cb5
CALL insert_study_file (UNHEX('62daf240a5814b409dd3ba8c6be9978a'),'Archivo 0.doc',UNHEX('c425c4650fff4197a7627a37885e0cb5'));
CALL insert_study_file (UNHEX('0eb4f00699d34ea6b637e50d243d7edc'),'Archivo 1.jpg',UNHEX('c425c4650fff4197a7627a37885e0cb5'));
CALL insert_study_file (UNHEX('94e7c48df4224b84a3f61b46042ab435'),'Archivo 2.pdf',UNHEX('c425c4650fff4197a7627a37885e0cb5'));
CALL insert_study_file (UNHEX('cee3f4795438440bb30dee03ec741fc5'),'Archivo 3.pdf',UNHEX('c425c4650fff4197a7627a37885e0cb5'));
CALL insert_study_file (UNHEX('1d7da25acadd4471993629bb898a2198'),'Archivo 4.doc',UNHEX('c425c4650fff4197a7627a37885e0cb5'));
CALL insert_study_file (UNHEX('9f3b2479a838426b8ec609368271efde'),'Archivo 5.txt',UNHEX('c425c4650fff4197a7627a37885e0cb5'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-10','Gripe estacional.',UNHEX('bc753221a8e9467cb9dc7687cc705d1a'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('06f83ec4ec5c4b488c2ba2ecf6a5ef56'),'BT');
# Se craran 2 archivos para el estudio bc753221a8e9467cb9dc7687cc705d1a
CALL insert_study_file (UNHEX('1f5ac1a69c06435cbfe80d6ab21ca21d'),'Archivo 0.doc',UNHEX('bc753221a8e9467cb9dc7687cc705d1a'));
CALL insert_study_file (UNHEX('8cac050a99eb4bd3b6b5de537ba07987'),'Archivo 1.txt',UNHEX('bc753221a8e9467cb9dc7687cc705d1a'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('b0d2c56ee40c48aba1eb5c10af038958'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('06f83ec4ec5c4b488c2ba2ecf6a5ef56'),'UA');
# Se craran 9 archivos para el estudio b0d2c56ee40c48aba1eb5c10af038958
CALL insert_study_file (UNHEX('f35ea8df2f6e400d91e9de85c55f1448'),'Archivo 0.txt',UNHEX('b0d2c56ee40c48aba1eb5c10af038958'));
CALL insert_study_file (UNHEX('84bdb33e270049b29b16d0baca44f78e'),'Archivo 1.jpg',UNHEX('b0d2c56ee40c48aba1eb5c10af038958'));
CALL insert_study_file (UNHEX('7cfe779699e744069696ba96c633c3ba'),'Archivo 2.pdf',UNHEX('b0d2c56ee40c48aba1eb5c10af038958'));
CALL insert_study_file (UNHEX('04ddbeb6edf047e58137098b168537d6'),'Archivo 3.jpg',UNHEX('b0d2c56ee40c48aba1eb5c10af038958'));
CALL insert_study_file (UNHEX('86fc0e487adb4d7bab3fb4abc9717c81'),'Archivo 4.txt',UNHEX('b0d2c56ee40c48aba1eb5c10af038958'));
CALL insert_study_file (UNHEX('c902d210d40b406e98bfdbe569058c9b'),'Archivo 5.doc',UNHEX('b0d2c56ee40c48aba1eb5c10af038958'));
CALL insert_study_file (UNHEX('3cf491ce576f4bfd8e5552afcd8ab3bd'),'Archivo 6.pdf',UNHEX('b0d2c56ee40c48aba1eb5c10af038958'));
CALL insert_study_file (UNHEX('810eeb799fe64247965fc7f3a5fa751e'),'Archivo 7.jpg',UNHEX('b0d2c56ee40c48aba1eb5c10af038958'));
CALL insert_study_file (UNHEX('e9f1e2e4eeb941aabda4048482cac97a'),'Archivo 8.jpg',UNHEX('b0d2c56ee40c48aba1eb5c10af038958'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('3c75c294266e494ab030a6dc822d46a1'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('06f83ec4ec5c4b488c2ba2ecf6a5ef56'),'ET');
# Se craran 9 archivos para el estudio 3c75c294266e494ab030a6dc822d46a1
CALL insert_study_file (UNHEX('6c556d44f47c4093ac3e69afb2a0569b'),'Archivo 0.doc',UNHEX('3c75c294266e494ab030a6dc822d46a1'));
CALL insert_study_file (UNHEX('9771567695b24a6f8f0b184e76b16c31'),'Archivo 1.txt',UNHEX('3c75c294266e494ab030a6dc822d46a1'));
CALL insert_study_file (UNHEX('b53885a06a6f44f9946688d841193b23'),'Archivo 2.txt',UNHEX('3c75c294266e494ab030a6dc822d46a1'));
CALL insert_study_file (UNHEX('872bdbd2cbd64746be1bc4ca7b8fec39'),'Archivo 3.jpg',UNHEX('3c75c294266e494ab030a6dc822d46a1'));
CALL insert_study_file (UNHEX('09b1cf2944da42898cda3bc7cf1b749f'),'Archivo 4.pdf',UNHEX('3c75c294266e494ab030a6dc822d46a1'));
CALL insert_study_file (UNHEX('bc2dbd0b5a1c47579d38d8e82b8e8689'),'Archivo 5.txt',UNHEX('3c75c294266e494ab030a6dc822d46a1'));
CALL insert_study_file (UNHEX('85b2f7abfdec46968f8ca3eda4535b9d'),'Archivo 6.txt',UNHEX('3c75c294266e494ab030a6dc822d46a1'));
CALL insert_study_file (UNHEX('b69f8ef11f2149f68ff277dfded4e17c'),'Archivo 7.jpg',UNHEX('3c75c294266e494ab030a6dc822d46a1'));
CALL insert_study_file (UNHEX('f0f83aaae70d4710a007659d6478300b'),'Archivo 8.jpg',UNHEX('3c75c294266e494ab030a6dc822d46a1'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('a82a9bc06db44a76b7d83bb68bf78a15'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('06f83ec4ec5c4b488c2ba2ecf6a5ef56'),'BT');
# Se craran 3 archivos para el estudio a82a9bc06db44a76b7d83bb68bf78a15
CALL insert_study_file (UNHEX('703218ff6f63407c802b85ee1cee34e0'),'Archivo 0.pdf',UNHEX('a82a9bc06db44a76b7d83bb68bf78a15'));
CALL insert_study_file (UNHEX('f0c3bcd55e2c4f1d9d85467e087e03cc'),'Archivo 1.jpg',UNHEX('a82a9bc06db44a76b7d83bb68bf78a15'));
CALL insert_study_file (UNHEX('7fb17838816441ad9b7b5f67574d94cd'),'Archivo 2.pdf',UNHEX('a82a9bc06db44a76b7d83bb68bf78a15'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-09','Gripe estacional.',UNHEX('71f79ff147b0434aaee9748c45804e97'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('06f83ec4ec5c4b488c2ba2ecf6a5ef56'),'UA');
# Se craran 3 archivos para el estudio 71f79ff147b0434aaee9748c45804e97
CALL insert_study_file (UNHEX('0d852c516b9b49f9a2a27ff86ef4eb84'),'Archivo 0.doc',UNHEX('71f79ff147b0434aaee9748c45804e97'));
CALL insert_study_file (UNHEX('7635f40713e5459e92b6c9f345cf091d'),'Archivo 1.doc',UNHEX('71f79ff147b0434aaee9748c45804e97'));
CALL insert_study_file (UNHEX('aed2457c2bd24ebfb6046bb30cc32d30'),'Archivo 2.jpg',UNHEX('71f79ff147b0434aaee9748c45804e97'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('60192251fb2a43a3b4f41a78dee42241'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('06f83ec4ec5c4b488c2ba2ecf6a5ef56'),'BT');
# Se craran 2 archivos para el estudio 60192251fb2a43a3b4f41a78dee42241
CALL insert_study_file (UNHEX('328c9f046ed94045b4e00a1bf7250f56'),'Archivo 0.txt',UNHEX('60192251fb2a43a3b4f41a78dee42241'));
CALL insert_study_file (UNHEX('ff3abfa16d1541f387275d0e7e5bdfdd'),'Archivo 1.txt',UNHEX('60192251fb2a43a3b4f41a78dee42241'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 87cf757338754ada97583bdc573e2d21
CALL insert_patient ('1949-09-12','5','F', UNHEX('87cf757338754ada97583bdc573e2d21'),'Hinkson, Cathrin Zonnya','Fumador.','doctor');
# Se craran 4 estudios para el paciente 87cf757338754ada97583bdc573e2d21
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('ff1c93d35f154ce7b0d6808d7df37b90'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('87cf757338754ada97583bdc573e2d21'),'ET');
# Se craran 6 archivos para el estudio ff1c93d35f154ce7b0d6808d7df37b90
CALL insert_study_file (UNHEX('aaac6b192bbb4475a15f0396e3ee4731'),'Archivo 0.txt',UNHEX('ff1c93d35f154ce7b0d6808d7df37b90'));
CALL insert_study_file (UNHEX('f51f589629974c90a2aace13c112e894'),'Archivo 1.pdf',UNHEX('ff1c93d35f154ce7b0d6808d7df37b90'));
CALL insert_study_file (UNHEX('901bc5d154b746d4828caf6d3590538f'),'Archivo 2.txt',UNHEX('ff1c93d35f154ce7b0d6808d7df37b90'));
CALL insert_study_file (UNHEX('4c2defd0da744cf599d2536590ae27a8'),'Archivo 3.doc',UNHEX('ff1c93d35f154ce7b0d6808d7df37b90'));
CALL insert_study_file (UNHEX('5aef3dcf6837439192dcaf8a42df262c'),'Archivo 4.jpg',UNHEX('ff1c93d35f154ce7b0d6808d7df37b90'));
CALL insert_study_file (UNHEX('baa47da267384dea8e65f317b1e16a8b'),'Archivo 5.pdf',UNHEX('ff1c93d35f154ce7b0d6808d7df37b90'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-06','Diferencial: Resfrio común.',UNHEX('a237c5f1a57c407ab1711c3295e2b960'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('87cf757338754ada97583bdc573e2d21'),'BT');
# Se craran 9 archivos para el estudio a237c5f1a57c407ab1711c3295e2b960
CALL insert_study_file (UNHEX('2eb1bfe833984b18acfea827df95ec5b'),'Archivo 0.doc',UNHEX('a237c5f1a57c407ab1711c3295e2b960'));
CALL insert_study_file (UNHEX('a82d66c737dd49ddbe6fa5e5a6ba0593'),'Archivo 1.txt',UNHEX('a237c5f1a57c407ab1711c3295e2b960'));
CALL insert_study_file (UNHEX('7482e1b5ada346eb9ce5b69c5a5508f1'),'Archivo 2.pdf',UNHEX('a237c5f1a57c407ab1711c3295e2b960'));
CALL insert_study_file (UNHEX('17f4d300c2c3446d8aab4669e819aab6'),'Archivo 3.txt',UNHEX('a237c5f1a57c407ab1711c3295e2b960'));
CALL insert_study_file (UNHEX('01d5ab04589942639bb0e51c346bd9bc'),'Archivo 4.txt',UNHEX('a237c5f1a57c407ab1711c3295e2b960'));
CALL insert_study_file (UNHEX('6a18aa97cff8428aaa6e9e2b5a75c9dc'),'Archivo 5.txt',UNHEX('a237c5f1a57c407ab1711c3295e2b960'));
CALL insert_study_file (UNHEX('d2440ae508ca42628d047f6b695dd394'),'Archivo 6.doc',UNHEX('a237c5f1a57c407ab1711c3295e2b960'));
CALL insert_study_file (UNHEX('6dee66ce31ad426fa10a71222df62747'),'Archivo 7.doc',UNHEX('a237c5f1a57c407ab1711c3295e2b960'));
CALL insert_study_file (UNHEX('e2ae741c26ab42f5b4266763dcb32eae'),'Archivo 8.doc',UNHEX('a237c5f1a57c407ab1711c3295e2b960'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('54a8ed0a5f264aa4921bfb2d8af94f41'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('87cf757338754ada97583bdc573e2d21'),'ET');
# Se craran 1 archivos para el estudio 54a8ed0a5f264aa4921bfb2d8af94f41
CALL insert_study_file (UNHEX('07d1745f47ef46dc97c1265f660899dc'),'Archivo 0.txt',UNHEX('54a8ed0a5f264aa4921bfb2d8af94f41'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-07','Resfrio común.',UNHEX('191444aad317443d9538cdbaa51c4a46'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('87cf757338754ada97583bdc573e2d21'),'ET');
# Se craran 3 archivos para el estudio 191444aad317443d9538cdbaa51c4a46
CALL insert_study_file (UNHEX('d2ad5299af8d4938afeb130b74695115'),'Archivo 0.doc',UNHEX('191444aad317443d9538cdbaa51c4a46'));
CALL insert_study_file (UNHEX('6c815d1cab8d43328dae4ada1289fc70'),'Archivo 1.jpg',UNHEX('191444aad317443d9538cdbaa51c4a46'));
CALL insert_study_file (UNHEX('af89fc2a1d15403f8bb5e4d6c849ed02'),'Archivo 2.doc',UNHEX('191444aad317443d9538cdbaa51c4a46'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente fd234ea11f094569bc132355c6feb0c8
CALL insert_patient ('1965-11-02','1','M', UNHEX('fd234ea11f094569bc132355c6feb0c8'),'Feld-Fabisiewicz, Keenan Chuck','Fumador.','doctor');
# Se craran 12 estudios para el paciente fd234ea11f094569bc132355c6feb0c8
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-07','Diferencial: Gripe H1N1',UNHEX('90d2ba3b840f46eabc9d62cb9a25d093'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','---',UNHEX('fd234ea11f094569bc132355c6feb0c8'),'UA');
# Se craran 9 archivos para el estudio 90d2ba3b840f46eabc9d62cb9a25d093
CALL insert_study_file (UNHEX('e5d2d21047294bf9822d1af71ca7ec4a'),'Archivo 0.txt',UNHEX('90d2ba3b840f46eabc9d62cb9a25d093'));
CALL insert_study_file (UNHEX('3141cd79c12e4418827ed83492c3409e'),'Archivo 1.txt',UNHEX('90d2ba3b840f46eabc9d62cb9a25d093'));
CALL insert_study_file (UNHEX('92b81b6a598b49e48cd8d5f09658d841'),'Archivo 2.doc',UNHEX('90d2ba3b840f46eabc9d62cb9a25d093'));
CALL insert_study_file (UNHEX('0225c6ce3aa447d29e3271e4e3a2c475'),'Archivo 3.txt',UNHEX('90d2ba3b840f46eabc9d62cb9a25d093'));
CALL insert_study_file (UNHEX('00abeb5920444445ada7326e1994565a'),'Archivo 4.doc',UNHEX('90d2ba3b840f46eabc9d62cb9a25d093'));
CALL insert_study_file (UNHEX('f1433e32689044b8ba94dad6a908dbfb'),'Archivo 5.txt',UNHEX('90d2ba3b840f46eabc9d62cb9a25d093'));
CALL insert_study_file (UNHEX('f63b160c0d7a49a0807b4ac8f8a6f5f3'),'Archivo 6.pdf',UNHEX('90d2ba3b840f46eabc9d62cb9a25d093'));
CALL insert_study_file (UNHEX('f349a5159d804ffcbc2de5f09bcd3952'),'Archivo 7.doc',UNHEX('90d2ba3b840f46eabc9d62cb9a25d093'));
CALL insert_study_file (UNHEX('ddb0e429b5a649eabaaeb9d29fc277ca'),'Archivo 8.txt',UNHEX('90d2ba3b840f46eabc9d62cb9a25d093'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-06','Diferencial: Resfrio común.',UNHEX('fb90f824eff0475197fcb2639882dfbc'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('fd234ea11f094569bc132355c6feb0c8'),'UA');
# Se craran 4 archivos para el estudio fb90f824eff0475197fcb2639882dfbc
CALL insert_study_file (UNHEX('d3f9563409e34949af48c72431d11688'),'Archivo 0.jpg',UNHEX('fb90f824eff0475197fcb2639882dfbc'));
CALL insert_study_file (UNHEX('73724d57215848edafc28948703537e0'),'Archivo 1.pdf',UNHEX('fb90f824eff0475197fcb2639882dfbc'));
CALL insert_study_file (UNHEX('ce6e9e68607f43e2a082babfb3adf872'),'Archivo 2.pdf',UNHEX('fb90f824eff0475197fcb2639882dfbc'));
CALL insert_study_file (UNHEX('4a21f05271d745f1a7aafff229a7fbc9'),'Archivo 3.pdf',UNHEX('fb90f824eff0475197fcb2639882dfbc'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('c134d1eb25764c4d827802d8eb5db39b'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Programada nueva consulta en 5 días.',UNHEX('fd234ea11f094569bc132355c6feb0c8'),'UA');
# Se craran 7 archivos para el estudio c134d1eb25764c4d827802d8eb5db39b
CALL insert_study_file (UNHEX('2e99e81e8dec4eb099024873e7bb1e3f'),'Archivo 0.jpg',UNHEX('c134d1eb25764c4d827802d8eb5db39b'));
CALL insert_study_file (UNHEX('4b78652c134d42518c44464246c8e9e3'),'Archivo 1.jpg',UNHEX('c134d1eb25764c4d827802d8eb5db39b'));
CALL insert_study_file (UNHEX('ae069fb8a39e47da9da466adf373eb58'),'Archivo 2.doc',UNHEX('c134d1eb25764c4d827802d8eb5db39b'));
CALL insert_study_file (UNHEX('1e9a93e7d18147e2abba79e8634b5db0'),'Archivo 3.jpg',UNHEX('c134d1eb25764c4d827802d8eb5db39b'));
CALL insert_study_file (UNHEX('efa4596f5cbe4483b914c2d3fd005bf9'),'Archivo 4.doc',UNHEX('c134d1eb25764c4d827802d8eb5db39b'));
CALL insert_study_file (UNHEX('4a8a465b6e444fdfbd718c74cc3d03d0'),'Archivo 5.jpg',UNHEX('c134d1eb25764c4d827802d8eb5db39b'));
CALL insert_study_file (UNHEX('14aaa30d344d4613a3a87416a9713741'),'Archivo 6.txt',UNHEX('c134d1eb25764c4d827802d8eb5db39b'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-06','Posibles alergias estacionales.',UNHEX('c261430860a641fa9650b16a3f0dccd7'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('fd234ea11f094569bc132355c6feb0c8'),'UA');
# Se craran 2 archivos para el estudio c261430860a641fa9650b16a3f0dccd7
CALL insert_study_file (UNHEX('f37e51ec428447fabcf77d3562d95886'),'Archivo 0.jpg',UNHEX('c261430860a641fa9650b16a3f0dccd7'));
CALL insert_study_file (UNHEX('c295f4564056440287433715f4b6de84'),'Archivo 1.doc',UNHEX('c261430860a641fa9650b16a3f0dccd7'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('53430d98c16a4554820c0d5cd4010f5d'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('fd234ea11f094569bc132355c6feb0c8'),'UA');
# Se craran 0 archivos para el estudio 53430d98c16a4554820c0d5cd4010f5d
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('084321950c2345088f3d8e01b18f91b1'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('fd234ea11f094569bc132355c6feb0c8'),'BT');
# Se craran 1 archivos para el estudio 084321950c2345088f3d8e01b18f91b1
CALL insert_study_file (UNHEX('59d757c4a1934994a48d58402b1d39ca'),'Archivo 0.doc',UNHEX('084321950c2345088f3d8e01b18f91b1'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('1eeb66d71a0144e5ad53de70529163b5'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('fd234ea11f094569bc132355c6feb0c8'),'ET');
# Se craran 1 archivos para el estudio 1eeb66d71a0144e5ad53de70529163b5
CALL insert_study_file (UNHEX('1b752539469b4abfa56f46979f573fd9'),'Archivo 0.jpg',UNHEX('1eeb66d71a0144e5ad53de70529163b5'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-09','Gripe estacional.',UNHEX('12cb0cbee5d84fefab43028838b52a16'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('fd234ea11f094569bc132355c6feb0c8'),'UA');
# Se craran 7 archivos para el estudio 12cb0cbee5d84fefab43028838b52a16
CALL insert_study_file (UNHEX('7fc9ed3d02414f28b882206779291263'),'Archivo 0.txt',UNHEX('12cb0cbee5d84fefab43028838b52a16'));
CALL insert_study_file (UNHEX('710b3670897f471a9349363c0e4ab203'),'Archivo 1.pdf',UNHEX('12cb0cbee5d84fefab43028838b52a16'));
CALL insert_study_file (UNHEX('78f41c03eed34e148cb096f9bc53d5dd'),'Archivo 2.jpg',UNHEX('12cb0cbee5d84fefab43028838b52a16'));
CALL insert_study_file (UNHEX('d1dc895a3f3649abb7d11f8911feac54'),'Archivo 3.txt',UNHEX('12cb0cbee5d84fefab43028838b52a16'));
CALL insert_study_file (UNHEX('5848a0a903c94ce09dc93fcb0f9b362f'),'Archivo 4.pdf',UNHEX('12cb0cbee5d84fefab43028838b52a16'));
CALL insert_study_file (UNHEX('15752d81d5f54320830f809da657b4cb'),'Archivo 5.pdf',UNHEX('12cb0cbee5d84fefab43028838b52a16'));
CALL insert_study_file (UNHEX('42ca6d4895014ffaae9f0f9087bc9688'),'Archivo 6.doc',UNHEX('12cb0cbee5d84fefab43028838b52a16'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('51965a819cd74cc1ade52d819c0df409'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('fd234ea11f094569bc132355c6feb0c8'),'ET');
# Se craran 4 archivos para el estudio 51965a819cd74cc1ade52d819c0df409
CALL insert_study_file (UNHEX('684853edff134efdbdfde2ff58d2c48c'),'Archivo 0.pdf',UNHEX('51965a819cd74cc1ade52d819c0df409'));
CALL insert_study_file (UNHEX('49495d2819de4c7b93ebef1a87344d58'),'Archivo 1.pdf',UNHEX('51965a819cd74cc1ade52d819c0df409'));
CALL insert_study_file (UNHEX('b279e945735044d7b38a67d2ea5d8c03'),'Archivo 2.jpg',UNHEX('51965a819cd74cc1ade52d819c0df409'));
CALL insert_study_file (UNHEX('775fc9305302465789dcd2bb5be5c957'),'Archivo 3.jpg',UNHEX('51965a819cd74cc1ade52d819c0df409'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-09','Gripe estacional.',UNHEX('9b9eaa267ff3470d94a36f631698ec0d'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('fd234ea11f094569bc132355c6feb0c8'),'BT');
# Se craran 1 archivos para el estudio 9b9eaa267ff3470d94a36f631698ec0d
CALL insert_study_file (UNHEX('83acf5e1a7ab450f9ea89c44e84e6c7c'),'Archivo 0.pdf',UNHEX('9b9eaa267ff3470d94a36f631698ec0d'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-07','Posibles alergias estacionales.',UNHEX('39fc72cb0fd745a58cd03744f5f9ccbc'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('fd234ea11f094569bc132355c6feb0c8'),'UA');
# Se craran 7 archivos para el estudio 39fc72cb0fd745a58cd03744f5f9ccbc
CALL insert_study_file (UNHEX('2cdc43062385453c844a1f848ef2ecf8'),'Archivo 0.txt',UNHEX('39fc72cb0fd745a58cd03744f5f9ccbc'));
CALL insert_study_file (UNHEX('d9ad3d39c3f248e8a3c4c297f11dc78d'),'Archivo 1.doc',UNHEX('39fc72cb0fd745a58cd03744f5f9ccbc'));
CALL insert_study_file (UNHEX('036e4673c5a544f397f6603ef591bdc4'),'Archivo 2.doc',UNHEX('39fc72cb0fd745a58cd03744f5f9ccbc'));
CALL insert_study_file (UNHEX('5a97a6aa06b047fcb62ce0091ce99992'),'Archivo 3.pdf',UNHEX('39fc72cb0fd745a58cd03744f5f9ccbc'));
CALL insert_study_file (UNHEX('ed3ec93ad2154e93bedfb2b4132a23d3'),'Archivo 4.pdf',UNHEX('39fc72cb0fd745a58cd03744f5f9ccbc'));
CALL insert_study_file (UNHEX('a090a6b6d3cf483ab566a22cd3db3c32'),'Archivo 5.pdf',UNHEX('39fc72cb0fd745a58cd03744f5f9ccbc'));
CALL insert_study_file (UNHEX('bca565a05679461bb1b6b172d0796947'),'Archivo 6.pdf',UNHEX('39fc72cb0fd745a58cd03744f5f9ccbc'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('6bead0fdb20e4b01b73a51ee1c5698a2'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('fd234ea11f094569bc132355c6feb0c8'),'ET');
# Se craran 0 archivos para el estudio 6bead0fdb20e4b01b73a51ee1c5698a2
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 6f29540581914dc49931886fbd78b37f
CALL insert_patient ('1989-04-17','1','M', UNHEX('6f29540581914dc49931886fbd78b37f'),'Zapka, Percival','Fumador.','doctor');
# Se craran 6 estudios para el paciente 6f29540581914dc49931886fbd78b37f
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-11','Diferencial: Gripe H1N1',UNHEX('dca002bdf5bb412aae0e7a2f5627edf0'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','Tolerancia muy baja a los sintomas gripales.',UNHEX('6f29540581914dc49931886fbd78b37f'),'ET');
# Se craran 6 archivos para el estudio dca002bdf5bb412aae0e7a2f5627edf0
CALL insert_study_file (UNHEX('920841ebc38145b5acf89ecece730bf6'),'Archivo 0.pdf',UNHEX('dca002bdf5bb412aae0e7a2f5627edf0'));
CALL insert_study_file (UNHEX('829b6f32fa674f97bca2507df0e815ba'),'Archivo 1.pdf',UNHEX('dca002bdf5bb412aae0e7a2f5627edf0'));
CALL insert_study_file (UNHEX('1a294dc1aee645ef88966732b4637645'),'Archivo 2.txt',UNHEX('dca002bdf5bb412aae0e7a2f5627edf0'));
CALL insert_study_file (UNHEX('aa49f60dee8345958d574035ee47d3ab'),'Archivo 3.jpg',UNHEX('dca002bdf5bb412aae0e7a2f5627edf0'));
CALL insert_study_file (UNHEX('f98d89e474ca4fdd8312c7561677714d'),'Archivo 4.pdf',UNHEX('dca002bdf5bb412aae0e7a2f5627edf0'));
CALL insert_study_file (UNHEX('3a6637930758432ab28ebd400a58a535'),'Archivo 5.txt',UNHEX('dca002bdf5bb412aae0e7a2f5627edf0'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-10','Resfrio común.',UNHEX('7470ae8b9ae04a38a609c717651907bb'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('6f29540581914dc49931886fbd78b37f'),'ET');
# Se craran 1 archivos para el estudio 7470ae8b9ae04a38a609c717651907bb
CALL insert_study_file (UNHEX('fdcf98a397f64703aaf665e85c5a8b21'),'Archivo 0.jpg',UNHEX('7470ae8b9ae04a38a609c717651907bb'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('b75b5203c00a4bc6a820a1c36b1d65cd'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Programada nueva consulta en 5 días.',UNHEX('6f29540581914dc49931886fbd78b37f'),'BT');
# Se craran 4 archivos para el estudio b75b5203c00a4bc6a820a1c36b1d65cd
CALL insert_study_file (UNHEX('a01bc0df1c904643bfaef9626e077d1e'),'Archivo 0.txt',UNHEX('b75b5203c00a4bc6a820a1c36b1d65cd'));
CALL insert_study_file (UNHEX('38fe4d5cf8364a3cb11134d65bbfefa8'),'Archivo 1.txt',UNHEX('b75b5203c00a4bc6a820a1c36b1d65cd'));
CALL insert_study_file (UNHEX('1309e511149d492f8ac990fe17095bee'),'Archivo 2.doc',UNHEX('b75b5203c00a4bc6a820a1c36b1d65cd'));
CALL insert_study_file (UNHEX('6a2a222724214d3da955873ceaab51b6'),'Archivo 3.txt',UNHEX('b75b5203c00a4bc6a820a1c36b1d65cd'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-10','Posibles alergias estacionales.',UNHEX('d1d7e14a76af4d419e814ba1a58ff766'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('6f29540581914dc49931886fbd78b37f'),'BT');
# Se craran 8 archivos para el estudio d1d7e14a76af4d419e814ba1a58ff766
CALL insert_study_file (UNHEX('74975cb232b64aabb638f577c9aeff53'),'Archivo 0.jpg',UNHEX('d1d7e14a76af4d419e814ba1a58ff766'));
CALL insert_study_file (UNHEX('586728956cac4a8e874d33b56fa6fb9d'),'Archivo 1.jpg',UNHEX('d1d7e14a76af4d419e814ba1a58ff766'));
CALL insert_study_file (UNHEX('5fa45a45496d437e9aac7476f0a8cfc7'),'Archivo 2.doc',UNHEX('d1d7e14a76af4d419e814ba1a58ff766'));
CALL insert_study_file (UNHEX('019ae779fe744073b82c79acef0fd144'),'Archivo 3.txt',UNHEX('d1d7e14a76af4d419e814ba1a58ff766'));
CALL insert_study_file (UNHEX('e540d69f80284b5f8ee0d66d59e7c2fb'),'Archivo 4.doc',UNHEX('d1d7e14a76af4d419e814ba1a58ff766'));
CALL insert_study_file (UNHEX('39bc1de0b3eb4b2a9cc7a28fb763d4fb'),'Archivo 5.doc',UNHEX('d1d7e14a76af4d419e814ba1a58ff766'));
CALL insert_study_file (UNHEX('a6e56613839c4b898182403e3729e571'),'Archivo 6.txt',UNHEX('d1d7e14a76af4d419e814ba1a58ff766'));
CALL insert_study_file (UNHEX('b56838b310194b5fa72b3405b924954d'),'Archivo 7.doc',UNHEX('d1d7e14a76af4d419e814ba1a58ff766'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-07','Gripe estacional.',UNHEX('99e2364ba3be46d2bde83039aabada3e'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('6f29540581914dc49931886fbd78b37f'),'UA');
# Se craran 6 archivos para el estudio 99e2364ba3be46d2bde83039aabada3e
CALL insert_study_file (UNHEX('7ea3c6c33b3b48e284b47f946c9708b8'),'Archivo 0.jpg',UNHEX('99e2364ba3be46d2bde83039aabada3e'));
CALL insert_study_file (UNHEX('fc5561f4f4644110a87daf6b06ee0bc0'),'Archivo 1.pdf',UNHEX('99e2364ba3be46d2bde83039aabada3e'));
CALL insert_study_file (UNHEX('f579ea3bfbdf480ea8efcc060785bc1d'),'Archivo 2.doc',UNHEX('99e2364ba3be46d2bde83039aabada3e'));
CALL insert_study_file (UNHEX('88898ec7451449028371746a8daf9994'),'Archivo 3.doc',UNHEX('99e2364ba3be46d2bde83039aabada3e'));
CALL insert_study_file (UNHEX('ca315570a44542118362b479d09cbb7f'),'Archivo 4.pdf',UNHEX('99e2364ba3be46d2bde83039aabada3e'));
CALL insert_study_file (UNHEX('b88e3101271740c8913258ae6cd9ccf8'),'Archivo 5.doc',UNHEX('99e2364ba3be46d2bde83039aabada3e'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-06','Diferencial: Resfrio común.',UNHEX('49eea47893384dafb7c671a1363359eb'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Programada nueva consulta en 5 días.',UNHEX('6f29540581914dc49931886fbd78b37f'),'ET');
# Se craran 7 archivos para el estudio 49eea47893384dafb7c671a1363359eb
CALL insert_study_file (UNHEX('38ea0e6b30c648caa67c925ffe35f034'),'Archivo 0.pdf',UNHEX('49eea47893384dafb7c671a1363359eb'));
CALL insert_study_file (UNHEX('a00b677f15554a2fbf6d2919e44a1774'),'Archivo 1.txt',UNHEX('49eea47893384dafb7c671a1363359eb'));
CALL insert_study_file (UNHEX('fbb10d6d874149a2a4345600ea7a252a'),'Archivo 2.doc',UNHEX('49eea47893384dafb7c671a1363359eb'));
CALL insert_study_file (UNHEX('4de224505ec242389a969fc03c4528f9'),'Archivo 3.jpg',UNHEX('49eea47893384dafb7c671a1363359eb'));
CALL insert_study_file (UNHEX('df630821bcd8464f947db54c7a50e316'),'Archivo 4.txt',UNHEX('49eea47893384dafb7c671a1363359eb'));
CALL insert_study_file (UNHEX('155a182174d74c82941de69ed51f9000'),'Archivo 5.doc',UNHEX('49eea47893384dafb7c671a1363359eb'));
CALL insert_study_file (UNHEX('14254df53dec4ff7bec88df5b12ac593'),'Archivo 6.doc',UNHEX('49eea47893384dafb7c671a1363359eb'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente d60355d06fa241f2b6ac6932573ff954
CALL insert_patient ('1981-10-01','0','M', UNHEX('d60355d06fa241f2b6ac6932573ff954'),'Grimsted, jedidiah Erasmus','Anemia falciforme.','doctor');
# Se craran 19 estudios para el paciente d60355d06fa241f2b6ac6932573ff954
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-09','Posibles alergias estacionales.',UNHEX('5e28c3e5f41a428d85426e5989a48e9d'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('d60355d06fa241f2b6ac6932573ff954'),'ET');
# Se craran 9 archivos para el estudio 5e28c3e5f41a428d85426e5989a48e9d
CALL insert_study_file (UNHEX('c611802f421c4b77a5f14830305a64cb'),'Archivo 0.doc',UNHEX('5e28c3e5f41a428d85426e5989a48e9d'));
CALL insert_study_file (UNHEX('468accc3a5244f46a1e30f01b18a9cf2'),'Archivo 1.doc',UNHEX('5e28c3e5f41a428d85426e5989a48e9d'));
CALL insert_study_file (UNHEX('ae62bde2c4934d31ab3f6194080ed365'),'Archivo 2.jpg',UNHEX('5e28c3e5f41a428d85426e5989a48e9d'));
CALL insert_study_file (UNHEX('98f66bdefa4142608c081175d31a6d99'),'Archivo 3.pdf',UNHEX('5e28c3e5f41a428d85426e5989a48e9d'));
CALL insert_study_file (UNHEX('6fd1ca71db904087904f7ced835ba034'),'Archivo 4.doc',UNHEX('5e28c3e5f41a428d85426e5989a48e9d'));
CALL insert_study_file (UNHEX('5330151ec10e468a82069b2861647f59'),'Archivo 5.jpg',UNHEX('5e28c3e5f41a428d85426e5989a48e9d'));
CALL insert_study_file (UNHEX('c7e35db105ff4b3787bf695c34a9789f'),'Archivo 6.doc',UNHEX('5e28c3e5f41a428d85426e5989a48e9d'));
CALL insert_study_file (UNHEX('80f9282830804f77aec0bd344e8820c0'),'Archivo 7.txt',UNHEX('5e28c3e5f41a428d85426e5989a48e9d'));
CALL insert_study_file (UNHEX('4ca784bccd1c476197cda1fcd4ba06a7'),'Archivo 8.txt',UNHEX('5e28c3e5f41a428d85426e5989a48e9d'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('e61251a0ce3b4acd93becb6abf684351'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Programada nueva consulta en 5 días.',UNHEX('d60355d06fa241f2b6ac6932573ff954'),'UA');
# Se craran 3 archivos para el estudio e61251a0ce3b4acd93becb6abf684351
CALL insert_study_file (UNHEX('5116531261794e3abcaf6430d3baa36f'),'Archivo 0.jpg',UNHEX('e61251a0ce3b4acd93becb6abf684351'));
CALL insert_study_file (UNHEX('9892085f90434f8eaaf40413b9a689f7'),'Archivo 1.pdf',UNHEX('e61251a0ce3b4acd93becb6abf684351'));
CALL insert_study_file (UNHEX('acaf6a3936aa40c198f4ecb64f09347b'),'Archivo 2.jpg',UNHEX('e61251a0ce3b4acd93becb6abf684351'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-11','Gripe estacional.',UNHEX('89f33c986623484a9834e12e9c231be4'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('d60355d06fa241f2b6ac6932573ff954'),'ET');
# Se craran 4 archivos para el estudio 89f33c986623484a9834e12e9c231be4
CALL insert_study_file (UNHEX('75763721901f47b0b6d3faa24ae61263'),'Archivo 0.pdf',UNHEX('89f33c986623484a9834e12e9c231be4'));
CALL insert_study_file (UNHEX('16bcb55752184ba5b067eb54f1ba2790'),'Archivo 1.pdf',UNHEX('89f33c986623484a9834e12e9c231be4'));
CALL insert_study_file (UNHEX('85ec1ab2326b4321a1042df735a4d205'),'Archivo 2.txt',UNHEX('89f33c986623484a9834e12e9c231be4'));
CALL insert_study_file (UNHEX('fa043f884d5e4c4c8e1c678b1ee2b907'),'Archivo 3.jpg',UNHEX('89f33c986623484a9834e12e9c231be4'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('2c72aad03f2f497cb4d1b292bb542165'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('d60355d06fa241f2b6ac6932573ff954'),'ET');
# Se craran 8 archivos para el estudio 2c72aad03f2f497cb4d1b292bb542165
CALL insert_study_file (UNHEX('25b50573def748aab8651cdd29fa5894'),'Archivo 0.txt',UNHEX('2c72aad03f2f497cb4d1b292bb542165'));
CALL insert_study_file (UNHEX('072bca4cadfb4559a4568fa63d7309a5'),'Archivo 1.jpg',UNHEX('2c72aad03f2f497cb4d1b292bb542165'));
CALL insert_study_file (UNHEX('b0ec8aaedeae41f3a61893c298622d97'),'Archivo 2.jpg',UNHEX('2c72aad03f2f497cb4d1b292bb542165'));
CALL insert_study_file (UNHEX('2b32e8ee57f448ae886d4cbda731833f'),'Archivo 3.pdf',UNHEX('2c72aad03f2f497cb4d1b292bb542165'));
CALL insert_study_file (UNHEX('b7bf9b52b22a4e0ab55efdb9f2fae549'),'Archivo 4.txt',UNHEX('2c72aad03f2f497cb4d1b292bb542165'));
CALL insert_study_file (UNHEX('2c27d5133a3d4f9db60c7398f82770a2'),'Archivo 5.pdf',UNHEX('2c72aad03f2f497cb4d1b292bb542165'));
CALL insert_study_file (UNHEX('81b4b05f81564e25a8a0ab17073ae0e5'),'Archivo 6.doc',UNHEX('2c72aad03f2f497cb4d1b292bb542165'));
CALL insert_study_file (UNHEX('741e82232b34400591978bd1c4886d33'),'Archivo 7.pdf',UNHEX('2c72aad03f2f497cb4d1b292bb542165'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-06','Posibles alergias estacionales.',UNHEX('506ddf8f17b44efab338b88c1845e7fe'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('d60355d06fa241f2b6ac6932573ff954'),'ET');
# Se craran 7 archivos para el estudio 506ddf8f17b44efab338b88c1845e7fe
CALL insert_study_file (UNHEX('fe257b6114fd4d3e887349846b943da0'),'Archivo 0.jpg',UNHEX('506ddf8f17b44efab338b88c1845e7fe'));
CALL insert_study_file (UNHEX('5d6fff37d9eb46a79a74364255edb56a'),'Archivo 1.jpg',UNHEX('506ddf8f17b44efab338b88c1845e7fe'));
CALL insert_study_file (UNHEX('e9c2c04ca6e24c3ebac2aa336f37062a'),'Archivo 2.jpg',UNHEX('506ddf8f17b44efab338b88c1845e7fe'));
CALL insert_study_file (UNHEX('652b0f4dee2b43c0b5ab9b3b8490d933'),'Archivo 3.jpg',UNHEX('506ddf8f17b44efab338b88c1845e7fe'));
CALL insert_study_file (UNHEX('09e1a6df73cb4eabb2220c5e6daf7243'),'Archivo 4.jpg',UNHEX('506ddf8f17b44efab338b88c1845e7fe'));
CALL insert_study_file (UNHEX('23e5471e293a431f9c1d4d784f88a363'),'Archivo 5.jpg',UNHEX('506ddf8f17b44efab338b88c1845e7fe'));
CALL insert_study_file (UNHEX('6e73b52263a94b9696178f43f3a913c0'),'Archivo 6.doc',UNHEX('506ddf8f17b44efab338b88c1845e7fe'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('e14d26dbf3ae4775b415ae6a291ea7c5'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('d60355d06fa241f2b6ac6932573ff954'),'UA');
# Se craran 5 archivos para el estudio e14d26dbf3ae4775b415ae6a291ea7c5
CALL insert_study_file (UNHEX('1ff2568791334868b0b0e156072f7a54'),'Archivo 0.pdf',UNHEX('e14d26dbf3ae4775b415ae6a291ea7c5'));
CALL insert_study_file (UNHEX('fbf98655c4ea4c698a814cd2b486fbf2'),'Archivo 1.doc',UNHEX('e14d26dbf3ae4775b415ae6a291ea7c5'));
CALL insert_study_file (UNHEX('13d7f4ac21934e4a9ce0b9cbc3fbbd84'),'Archivo 2.pdf',UNHEX('e14d26dbf3ae4775b415ae6a291ea7c5'));
CALL insert_study_file (UNHEX('8427cc9a393848ceb2e153d855424acd'),'Archivo 3.pdf',UNHEX('e14d26dbf3ae4775b415ae6a291ea7c5'));
CALL insert_study_file (UNHEX('3b225c1142ea4ea794e9058b48b03e41'),'Archivo 4.txt',UNHEX('e14d26dbf3ae4775b415ae6a291ea7c5'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-09','Gripe estacional.',UNHEX('928f47b606844d198b5ff1621c953725'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('d60355d06fa241f2b6ac6932573ff954'),'BT');
# Se craran 1 archivos para el estudio 928f47b606844d198b5ff1621c953725
CALL insert_study_file (UNHEX('53fe4cdb633c4fd2a4cfe8c90a490ee8'),'Archivo 0.txt',UNHEX('928f47b606844d198b5ff1621c953725'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-08','Resfrio común.',UNHEX('fe298a4a9acb4a0ab811db6db11c4032'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('d60355d06fa241f2b6ac6932573ff954'),'UA');
# Se craran 7 archivos para el estudio fe298a4a9acb4a0ab811db6db11c4032
CALL insert_study_file (UNHEX('2ba385f0927f4dbcbbf8c945592c4bb9'),'Archivo 0.txt',UNHEX('fe298a4a9acb4a0ab811db6db11c4032'));
CALL insert_study_file (UNHEX('5012317e83764c82b4498821363c1f85'),'Archivo 1.jpg',UNHEX('fe298a4a9acb4a0ab811db6db11c4032'));
CALL insert_study_file (UNHEX('53589b969e2a4879a2bda9f639693e04'),'Archivo 2.doc',UNHEX('fe298a4a9acb4a0ab811db6db11c4032'));
CALL insert_study_file (UNHEX('405de11fccb8461cae4e02bc80b9c021'),'Archivo 3.jpg',UNHEX('fe298a4a9acb4a0ab811db6db11c4032'));
CALL insert_study_file (UNHEX('d3256608d90b46f78f9e8aeba4de3346'),'Archivo 4.txt',UNHEX('fe298a4a9acb4a0ab811db6db11c4032'));
CALL insert_study_file (UNHEX('a56bf752bd5f4530b4defdd10c411f78'),'Archivo 5.txt',UNHEX('fe298a4a9acb4a0ab811db6db11c4032'));
CALL insert_study_file (UNHEX('ff4549507f9c4ad7b3736bf08b717f3c'),'Archivo 6.pdf',UNHEX('fe298a4a9acb4a0ab811db6db11c4032'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-10','Diferencial: Gripe H1N1',UNHEX('2e29e13ac60e480db80b7a649a21f1ba'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','Tolerancia muy baja a los sintomas gripales.',UNHEX('d60355d06fa241f2b6ac6932573ff954'),'UA');
# Se craran 9 archivos para el estudio 2e29e13ac60e480db80b7a649a21f1ba
CALL insert_study_file (UNHEX('596267a7d61d4c13b7a3cb18447d1c8c'),'Archivo 0.doc',UNHEX('2e29e13ac60e480db80b7a649a21f1ba'));
CALL insert_study_file (UNHEX('6cf119f0e53e499aba9412f40274e872'),'Archivo 1.jpg',UNHEX('2e29e13ac60e480db80b7a649a21f1ba'));
CALL insert_study_file (UNHEX('61ea582ac89c410f892f80d55eafbc89'),'Archivo 2.jpg',UNHEX('2e29e13ac60e480db80b7a649a21f1ba'));
CALL insert_study_file (UNHEX('7301bded57ce4a2fa60094cda7fd3824'),'Archivo 3.doc',UNHEX('2e29e13ac60e480db80b7a649a21f1ba'));
CALL insert_study_file (UNHEX('aafdcc3b0dfb4e5fb6b976f61bb7eefc'),'Archivo 4.jpg',UNHEX('2e29e13ac60e480db80b7a649a21f1ba'));
CALL insert_study_file (UNHEX('153e3e49891344dd8c3d1dc0ecbadc50'),'Archivo 5.txt',UNHEX('2e29e13ac60e480db80b7a649a21f1ba'));
CALL insert_study_file (UNHEX('7d54351de8994bb3a8c4d0865e8a9d0f'),'Archivo 6.txt',UNHEX('2e29e13ac60e480db80b7a649a21f1ba'));
CALL insert_study_file (UNHEX('4a5229e7d2b54f80a3464787ea958b6e'),'Archivo 7.pdf',UNHEX('2e29e13ac60e480db80b7a649a21f1ba'));
CALL insert_study_file (UNHEX('a270e9e5ea114ec9bc5d5774fb952545'),'Archivo 8.jpg',UNHEX('2e29e13ac60e480db80b7a649a21f1ba'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-11','Posibles alergias estacionales.',UNHEX('5849148ba4bb4dd08f05bf34a4292945'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('d60355d06fa241f2b6ac6932573ff954'),'BT');
# Se craran 6 archivos para el estudio 5849148ba4bb4dd08f05bf34a4292945
CALL insert_study_file (UNHEX('0f263db969944253ae3d4ebc5e1d9746'),'Archivo 0.pdf',UNHEX('5849148ba4bb4dd08f05bf34a4292945'));
CALL insert_study_file (UNHEX('0bb1b54dece04330acbd22b085ec91e8'),'Archivo 1.doc',UNHEX('5849148ba4bb4dd08f05bf34a4292945'));
CALL insert_study_file (UNHEX('5809376b6aee41378eae1097af3c23a9'),'Archivo 2.doc',UNHEX('5849148ba4bb4dd08f05bf34a4292945'));
CALL insert_study_file (UNHEX('78bf1535fda247919c054c8d5c083e98'),'Archivo 3.doc',UNHEX('5849148ba4bb4dd08f05bf34a4292945'));
CALL insert_study_file (UNHEX('68654106af5d42de9f633b9725c093fa'),'Archivo 4.jpg',UNHEX('5849148ba4bb4dd08f05bf34a4292945'));
CALL insert_study_file (UNHEX('ad20d3f5e80b45a6a0d4314c611ea497'),'Archivo 5.txt',UNHEX('5849148ba4bb4dd08f05bf34a4292945'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-06','Gripe estacional.',UNHEX('5c87468145cc47daa7c2ac7905314b81'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('d60355d06fa241f2b6ac6932573ff954'),'ET');
# Se craran 3 archivos para el estudio 5c87468145cc47daa7c2ac7905314b81
CALL insert_study_file (UNHEX('a340441c4cc24ebca4345d29d4a5eaa5'),'Archivo 0.pdf',UNHEX('5c87468145cc47daa7c2ac7905314b81'));
CALL insert_study_file (UNHEX('168bd5241f4a432fa36df0440ace1282'),'Archivo 1.jpg',UNHEX('5c87468145cc47daa7c2ac7905314b81'));
CALL insert_study_file (UNHEX('d05149f1acd949ff95eb438d9cf7af5c'),'Archivo 2.txt',UNHEX('5c87468145cc47daa7c2ac7905314b81'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('7188556aa4bd480fac9c764f81beea3c'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('d60355d06fa241f2b6ac6932573ff954'),'ET');
# Se craran 4 archivos para el estudio 7188556aa4bd480fac9c764f81beea3c
CALL insert_study_file (UNHEX('b6aa82a8ed414d439999dc942fff301c'),'Archivo 0.doc',UNHEX('7188556aa4bd480fac9c764f81beea3c'));
CALL insert_study_file (UNHEX('b3650ada988c41949a72847ff0be427d'),'Archivo 1.txt',UNHEX('7188556aa4bd480fac9c764f81beea3c'));
CALL insert_study_file (UNHEX('c5f2dab0c9864f1f9b77242aa4a8c9e6'),'Archivo 2.txt',UNHEX('7188556aa4bd480fac9c764f81beea3c'));
CALL insert_study_file (UNHEX('5ed83ef9ea9f452c92424a27b6d97527'),'Archivo 3.jpg',UNHEX('7188556aa4bd480fac9c764f81beea3c'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('7e5f80e59ecb40a5936a53e323213f98'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('d60355d06fa241f2b6ac6932573ff954'),'BT');
# Se craran 2 archivos para el estudio 7e5f80e59ecb40a5936a53e323213f98
CALL insert_study_file (UNHEX('aafbeb86b7cf42c3b0b29d119c44cb43'),'Archivo 0.txt',UNHEX('7e5f80e59ecb40a5936a53e323213f98'));
CALL insert_study_file (UNHEX('ae5f60ee56e044b3acb2e585791fe132'),'Archivo 1.pdf',UNHEX('7e5f80e59ecb40a5936a53e323213f98'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-07','Resfrio común.',UNHEX('03514d0bb36e4aa8a339dadfb8b28bc7'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('d60355d06fa241f2b6ac6932573ff954'),'BT');
# Se craran 9 archivos para el estudio 03514d0bb36e4aa8a339dadfb8b28bc7
CALL insert_study_file (UNHEX('87e90a9122024ab1be74c9fedd265499'),'Archivo 0.jpg',UNHEX('03514d0bb36e4aa8a339dadfb8b28bc7'));
CALL insert_study_file (UNHEX('78903dee5e254e02bc50f094d1b2847f'),'Archivo 1.doc',UNHEX('03514d0bb36e4aa8a339dadfb8b28bc7'));
CALL insert_study_file (UNHEX('740f57b724fa4cd48e2d621565305474'),'Archivo 2.doc',UNHEX('03514d0bb36e4aa8a339dadfb8b28bc7'));
CALL insert_study_file (UNHEX('212725ac07f547b5ac52e9b186d00ccd'),'Archivo 3.doc',UNHEX('03514d0bb36e4aa8a339dadfb8b28bc7'));
CALL insert_study_file (UNHEX('0d3e7e15217e40aa9e43bed8ca35363f'),'Archivo 4.txt',UNHEX('03514d0bb36e4aa8a339dadfb8b28bc7'));
CALL insert_study_file (UNHEX('2161e75f65de4cef9d8e07ae24f8c5ad'),'Archivo 5.jpg',UNHEX('03514d0bb36e4aa8a339dadfb8b28bc7'));
CALL insert_study_file (UNHEX('1c539baca1ae42f5a7b1538df0f0b5f2'),'Archivo 6.doc',UNHEX('03514d0bb36e4aa8a339dadfb8b28bc7'));
CALL insert_study_file (UNHEX('d34a2a81e07c454db19f9bccd6e60046'),'Archivo 7.txt',UNHEX('03514d0bb36e4aa8a339dadfb8b28bc7'));
CALL insert_study_file (UNHEX('49680a762ba645cd93bb3968cf91ebd6'),'Archivo 8.doc',UNHEX('03514d0bb36e4aa8a339dadfb8b28bc7'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('21459aec50d74522b95334f91728f3ca'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Tolerancia muy baja a los sintomas gripales.',UNHEX('d60355d06fa241f2b6ac6932573ff954'),'UA');
# Se craran 7 archivos para el estudio 21459aec50d74522b95334f91728f3ca
CALL insert_study_file (UNHEX('cdba21a88e5e431784d1ba655e35c865'),'Archivo 0.doc',UNHEX('21459aec50d74522b95334f91728f3ca'));
CALL insert_study_file (UNHEX('a9944a1d0dcb4594a7ba1c6c17f80657'),'Archivo 1.jpg',UNHEX('21459aec50d74522b95334f91728f3ca'));
CALL insert_study_file (UNHEX('b7ec68833ae944f19e33aacd6e616c27'),'Archivo 2.txt',UNHEX('21459aec50d74522b95334f91728f3ca'));
CALL insert_study_file (UNHEX('68e7f41770204d80a70e6cadbe29918f'),'Archivo 3.doc',UNHEX('21459aec50d74522b95334f91728f3ca'));
CALL insert_study_file (UNHEX('106497fbb3f848fd9633f829153005df'),'Archivo 4.jpg',UNHEX('21459aec50d74522b95334f91728f3ca'));
CALL insert_study_file (UNHEX('e8f91daf37564297be6f5332848fb610'),'Archivo 5.jpg',UNHEX('21459aec50d74522b95334f91728f3ca'));
CALL insert_study_file (UNHEX('a6cc27cfeefb4869879ed902cb844b59'),'Archivo 6.jpg',UNHEX('21459aec50d74522b95334f91728f3ca'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('eee6267ac0ad48a08388236ddf6e77af'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('d60355d06fa241f2b6ac6932573ff954'),'BT');
# Se craran 1 archivos para el estudio eee6267ac0ad48a08388236ddf6e77af
CALL insert_study_file (UNHEX('2809eec3e66c4324b84028d785a32fc9'),'Archivo 0.pdf',UNHEX('eee6267ac0ad48a08388236ddf6e77af'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-08','Diferencial: Resfrio común.',UNHEX('33e66cdef562473e950db362d2e46952'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('d60355d06fa241f2b6ac6932573ff954'),'ET');
# Se craran 9 archivos para el estudio 33e66cdef562473e950db362d2e46952
CALL insert_study_file (UNHEX('295faf0fc4fb401bb7f1afca458e1417'),'Archivo 0.jpg',UNHEX('33e66cdef562473e950db362d2e46952'));
CALL insert_study_file (UNHEX('37e59a492057467d8765d85701a51a00'),'Archivo 1.doc',UNHEX('33e66cdef562473e950db362d2e46952'));
CALL insert_study_file (UNHEX('c68e613a27a348a5aa40ded8d59f53e0'),'Archivo 2.txt',UNHEX('33e66cdef562473e950db362d2e46952'));
CALL insert_study_file (UNHEX('e555db4b86bd4dcdb012eafc340fd47b'),'Archivo 3.txt',UNHEX('33e66cdef562473e950db362d2e46952'));
CALL insert_study_file (UNHEX('a1720f39f34e4f138097570c77036bb2'),'Archivo 4.jpg',UNHEX('33e66cdef562473e950db362d2e46952'));
CALL insert_study_file (UNHEX('2fba3e4f51464a208e30ceef985553da'),'Archivo 5.pdf',UNHEX('33e66cdef562473e950db362d2e46952'));
CALL insert_study_file (UNHEX('c8aac4cc21c3437790a2642b0287ad82'),'Archivo 6.jpg',UNHEX('33e66cdef562473e950db362d2e46952'));
CALL insert_study_file (UNHEX('4f390ad5d0c94fcb80ad9650d35ae404'),'Archivo 7.jpg',UNHEX('33e66cdef562473e950db362d2e46952'));
CALL insert_study_file (UNHEX('f3d124e430424b41943459ac3744f843'),'Archivo 8.doc',UNHEX('33e66cdef562473e950db362d2e46952'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-09','Gripe estacional.',UNHEX('508ff439967c450cbcb847f5b119d570'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('d60355d06fa241f2b6ac6932573ff954'),'UA');
# Se craran 1 archivos para el estudio 508ff439967c450cbcb847f5b119d570
CALL insert_study_file (UNHEX('91852e239330404d98c817ebb9fa40b0'),'Archivo 0.doc',UNHEX('508ff439967c450cbcb847f5b119d570'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('522217345eb5482a9ccc55faba74caef'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('d60355d06fa241f2b6ac6932573ff954'),'BT');
# Se craran 4 archivos para el estudio 522217345eb5482a9ccc55faba74caef
CALL insert_study_file (UNHEX('3c99303f498a41489d95b666e591a9cd'),'Archivo 0.txt',UNHEX('522217345eb5482a9ccc55faba74caef'));
CALL insert_study_file (UNHEX('206746d2bbc541d2845dbbf456cdc133'),'Archivo 1.jpg',UNHEX('522217345eb5482a9ccc55faba74caef'));
CALL insert_study_file (UNHEX('74c362f8c09a44328da12a714ddc2dc5'),'Archivo 2.jpg',UNHEX('522217345eb5482a9ccc55faba74caef'));
CALL insert_study_file (UNHEX('8c9a331d49d4443c9bb1f24d17335b1a'),'Archivo 3.txt',UNHEX('522217345eb5482a9ccc55faba74caef'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente e9d39c6d0c1a4b2db1b1e232cc9927c7
CALL insert_patient ('1957-02-20','6','M', UNHEX('e9d39c6d0c1a4b2db1b1e232cc9927c7'),'Lapointe, Chaddy','Fumador.','doctor');
# Se craran 13 estudios para el paciente e9d39c6d0c1a4b2db1b1e232cc9927c7
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-08','Resfrio común.',UNHEX('5807591d757d44b996002a6a904315f8'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('e9d39c6d0c1a4b2db1b1e232cc9927c7'),'UA');
# Se craran 2 archivos para el estudio 5807591d757d44b996002a6a904315f8
CALL insert_study_file (UNHEX('9f0c44ff4ad54fa6accebf90688178d4'),'Archivo 0.jpg',UNHEX('5807591d757d44b996002a6a904315f8'));
CALL insert_study_file (UNHEX('047edba1b9714d9e85707b375c091246'),'Archivo 1.txt',UNHEX('5807591d757d44b996002a6a904315f8'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('ebd3e7b7cbc7496e9bb60c590e8324a1'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('e9d39c6d0c1a4b2db1b1e232cc9927c7'),'ET');
# Se craran 6 archivos para el estudio ebd3e7b7cbc7496e9bb60c590e8324a1
CALL insert_study_file (UNHEX('1fe1e9679d4f4a6ba08257bc7af82107'),'Archivo 0.jpg',UNHEX('ebd3e7b7cbc7496e9bb60c590e8324a1'));
CALL insert_study_file (UNHEX('e6f7a6c8d1464aa9bc20f361fe3bdcf5'),'Archivo 1.doc',UNHEX('ebd3e7b7cbc7496e9bb60c590e8324a1'));
CALL insert_study_file (UNHEX('6ea7508b44fd47d4951d00ad69a6f86a'),'Archivo 2.txt',UNHEX('ebd3e7b7cbc7496e9bb60c590e8324a1'));
CALL insert_study_file (UNHEX('04ed3de3b2464285aace4e24602957e8'),'Archivo 3.jpg',UNHEX('ebd3e7b7cbc7496e9bb60c590e8324a1'));
CALL insert_study_file (UNHEX('404284ec126d416ca87d26c25d0ef1d3'),'Archivo 4.pdf',UNHEX('ebd3e7b7cbc7496e9bb60c590e8324a1'));
CALL insert_study_file (UNHEX('3c843286cd2c41658a446045ac6c7890'),'Archivo 5.doc',UNHEX('ebd3e7b7cbc7496e9bb60c590e8324a1'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-12','Gripe estacional.',UNHEX('c75ed146cdb64d8b8595fdf82b7af727'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('e9d39c6d0c1a4b2db1b1e232cc9927c7'),'BT');
# Se craran 3 archivos para el estudio c75ed146cdb64d8b8595fdf82b7af727
CALL insert_study_file (UNHEX('5b5fae09608b48cc88b1b7e86cde6d79'),'Archivo 0.txt',UNHEX('c75ed146cdb64d8b8595fdf82b7af727'));
CALL insert_study_file (UNHEX('5f73714d43da425cae4996de3a0f3b58'),'Archivo 1.doc',UNHEX('c75ed146cdb64d8b8595fdf82b7af727'));
CALL insert_study_file (UNHEX('e152f95efe804fd6bb1bee0749ce6457'),'Archivo 2.jpg',UNHEX('c75ed146cdb64d8b8595fdf82b7af727'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('c74855a8c3a54fae9489a75a34289730'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('e9d39c6d0c1a4b2db1b1e232cc9927c7'),'ET');
# Se craran 3 archivos para el estudio c74855a8c3a54fae9489a75a34289730
CALL insert_study_file (UNHEX('bd1aeeaebe0f4c62919c56c3b9b13e10'),'Archivo 0.pdf',UNHEX('c74855a8c3a54fae9489a75a34289730'));
CALL insert_study_file (UNHEX('10ddf17f78854479bb1186ce4f083e15'),'Archivo 1.doc',UNHEX('c74855a8c3a54fae9489a75a34289730'));
CALL insert_study_file (UNHEX('0cbeb5c3b07c42d28e35bf35ffc5c559'),'Archivo 2.jpg',UNHEX('c74855a8c3a54fae9489a75a34289730'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('106d8db13d0b419f91ef25ce12962f68'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('e9d39c6d0c1a4b2db1b1e232cc9927c7'),'ET');
# Se craran 3 archivos para el estudio 106d8db13d0b419f91ef25ce12962f68
CALL insert_study_file (UNHEX('fa687d8e588e462082d9ea2d4e89a0ae'),'Archivo 0.pdf',UNHEX('106d8db13d0b419f91ef25ce12962f68'));
CALL insert_study_file (UNHEX('368dcd5ea70f4de5a639e32f7d24e4d5'),'Archivo 1.txt',UNHEX('106d8db13d0b419f91ef25ce12962f68'));
CALL insert_study_file (UNHEX('2ea0fc94e292462b9922088b3080fc88'),'Archivo 2.txt',UNHEX('106d8db13d0b419f91ef25ce12962f68'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-10','Gripe estacional.',UNHEX('428aca1eea9944d6aa452fdd4bd82ea3'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('e9d39c6d0c1a4b2db1b1e232cc9927c7'),'UA');
# Se craran 3 archivos para el estudio 428aca1eea9944d6aa452fdd4bd82ea3
CALL insert_study_file (UNHEX('cdcc7daa0fb644ceaa55fe207fca09fd'),'Archivo 0.jpg',UNHEX('428aca1eea9944d6aa452fdd4bd82ea3'));
CALL insert_study_file (UNHEX('e6946af6ace842bf9bf2055fba48dcb8'),'Archivo 1.pdf',UNHEX('428aca1eea9944d6aa452fdd4bd82ea3'));
CALL insert_study_file (UNHEX('3d6b717691744bb480bb9a45fa28adf2'),'Archivo 2.doc',UNHEX('428aca1eea9944d6aa452fdd4bd82ea3'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-09','Gripe estacional.',UNHEX('3def74db74df46349bc47859ab067d55'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('e9d39c6d0c1a4b2db1b1e232cc9927c7'),'BT');
# Se craran 2 archivos para el estudio 3def74db74df46349bc47859ab067d55
CALL insert_study_file (UNHEX('dd139bcd363d4028a6d5088ff0ca7a3c'),'Archivo 0.doc',UNHEX('3def74db74df46349bc47859ab067d55'));
CALL insert_study_file (UNHEX('300f6089f4044bd88b76489e8447d065'),'Archivo 1.pdf',UNHEX('3def74db74df46349bc47859ab067d55'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-07','Resfrio común.',UNHEX('d86fe36cdc5f43998eb413aeae6c4483'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('e9d39c6d0c1a4b2db1b1e232cc9927c7'),'BT');
# Se craran 6 archivos para el estudio d86fe36cdc5f43998eb413aeae6c4483
CALL insert_study_file (UNHEX('4bf34884d2164855bb8ba942dce9ae49'),'Archivo 0.pdf',UNHEX('d86fe36cdc5f43998eb413aeae6c4483'));
CALL insert_study_file (UNHEX('7fa70819282a4bf09addf41ae1d783ff'),'Archivo 1.txt',UNHEX('d86fe36cdc5f43998eb413aeae6c4483'));
CALL insert_study_file (UNHEX('87d4b8d11bbd4910968e8fe6cbe380e3'),'Archivo 2.doc',UNHEX('d86fe36cdc5f43998eb413aeae6c4483'));
CALL insert_study_file (UNHEX('b6835e524e5f449b96fe7acc4ae43fd8'),'Archivo 3.txt',UNHEX('d86fe36cdc5f43998eb413aeae6c4483'));
CALL insert_study_file (UNHEX('e09a3de4430f4cdb8011bbaabf9671a0'),'Archivo 4.txt',UNHEX('d86fe36cdc5f43998eb413aeae6c4483'));
CALL insert_study_file (UNHEX('ab4099d879d84a549ba2f7cb71110bcd'),'Archivo 5.jpg',UNHEX('d86fe36cdc5f43998eb413aeae6c4483'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-10','Posibles alergias estacionales.',UNHEX('3edffe008f3846f49b0b9457d15088d7'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('e9d39c6d0c1a4b2db1b1e232cc9927c7'),'UA');
# Se craran 2 archivos para el estudio 3edffe008f3846f49b0b9457d15088d7
CALL insert_study_file (UNHEX('3f756ae76c7145939a9f5f06707da781'),'Archivo 0.doc',UNHEX('3edffe008f3846f49b0b9457d15088d7'));
CALL insert_study_file (UNHEX('dbd0366523a14a76903d9e6c7e3b6902'),'Archivo 1.jpg',UNHEX('3edffe008f3846f49b0b9457d15088d7'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('cd8f055790374b02a1e4a65850badec6'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('e9d39c6d0c1a4b2db1b1e232cc9927c7'),'BT');
# Se craran 8 archivos para el estudio cd8f055790374b02a1e4a65850badec6
CALL insert_study_file (UNHEX('dc65beb98685403d908753b1eea2ea8b'),'Archivo 0.txt',UNHEX('cd8f055790374b02a1e4a65850badec6'));
CALL insert_study_file (UNHEX('d7704677f6cd4435a2d0db1e9e5ccd6b'),'Archivo 1.doc',UNHEX('cd8f055790374b02a1e4a65850badec6'));
CALL insert_study_file (UNHEX('0d745460119a48f599504d59c7d8a366'),'Archivo 2.jpg',UNHEX('cd8f055790374b02a1e4a65850badec6'));
CALL insert_study_file (UNHEX('a24eb229363c4b7fac851d539580d224'),'Archivo 3.jpg',UNHEX('cd8f055790374b02a1e4a65850badec6'));
CALL insert_study_file (UNHEX('0851bb256d2e453fa8d5c898e5493c8d'),'Archivo 4.txt',UNHEX('cd8f055790374b02a1e4a65850badec6'));
CALL insert_study_file (UNHEX('ec09227d962847b28f7b8272604cbfaa'),'Archivo 5.doc',UNHEX('cd8f055790374b02a1e4a65850badec6'));
CALL insert_study_file (UNHEX('e5ed1063e4a84e1188e9893b60c1fbbd'),'Archivo 6.pdf',UNHEX('cd8f055790374b02a1e4a65850badec6'));
CALL insert_study_file (UNHEX('4e2fe4613ec44033bda70b2c4d91a627'),'Archivo 7.pdf',UNHEX('cd8f055790374b02a1e4a65850badec6'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-06','Resfrio común.',UNHEX('0f1737ddd62845f285fde61967ad5185'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('e9d39c6d0c1a4b2db1b1e232cc9927c7'),'ET');
# Se craran 7 archivos para el estudio 0f1737ddd62845f285fde61967ad5185
CALL insert_study_file (UNHEX('57ac4a66afd44eb38044394cd64cbad7'),'Archivo 0.txt',UNHEX('0f1737ddd62845f285fde61967ad5185'));
CALL insert_study_file (UNHEX('658b7f5733fb4d26a88d54fb37561224'),'Archivo 1.jpg',UNHEX('0f1737ddd62845f285fde61967ad5185'));
CALL insert_study_file (UNHEX('b68da9f8bf054825b6eba85d06fa61c3'),'Archivo 2.pdf',UNHEX('0f1737ddd62845f285fde61967ad5185'));
CALL insert_study_file (UNHEX('15b3397f8aee4d90b7791a979be6a0de'),'Archivo 3.jpg',UNHEX('0f1737ddd62845f285fde61967ad5185'));
CALL insert_study_file (UNHEX('d93fd23964ab49769fe00abc63cbdf00'),'Archivo 4.jpg',UNHEX('0f1737ddd62845f285fde61967ad5185'));
CALL insert_study_file (UNHEX('4060cec410bf45e8a9470f8cebd3f202'),'Archivo 5.pdf',UNHEX('0f1737ddd62845f285fde61967ad5185'));
CALL insert_study_file (UNHEX('fe32d521f74b42bf9ab4817ff42884c0'),'Archivo 6.pdf',UNHEX('0f1737ddd62845f285fde61967ad5185'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('40760534945449fb8ad879271952896d'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('e9d39c6d0c1a4b2db1b1e232cc9927c7'),'ET');
# Se craran 9 archivos para el estudio 40760534945449fb8ad879271952896d
CALL insert_study_file (UNHEX('84619837ce164cbeb854f35eb3022551'),'Archivo 0.pdf',UNHEX('40760534945449fb8ad879271952896d'));
CALL insert_study_file (UNHEX('352922a8bbd54f5ab6a6b1e406dabbd7'),'Archivo 1.doc',UNHEX('40760534945449fb8ad879271952896d'));
CALL insert_study_file (UNHEX('c7e10d25c08f459c8118e1be077dd910'),'Archivo 2.txt',UNHEX('40760534945449fb8ad879271952896d'));
CALL insert_study_file (UNHEX('706cba7df962435abf62b7f64b6cca21'),'Archivo 3.doc',UNHEX('40760534945449fb8ad879271952896d'));
CALL insert_study_file (UNHEX('70117834fc834f0a9ed0792b6d968c71'),'Archivo 4.pdf',UNHEX('40760534945449fb8ad879271952896d'));
CALL insert_study_file (UNHEX('8605c6a5a1b944ec86fd77863bf10fa3'),'Archivo 5.doc',UNHEX('40760534945449fb8ad879271952896d'));
CALL insert_study_file (UNHEX('9effe16f95804eb7b727e28bd391b913'),'Archivo 6.doc',UNHEX('40760534945449fb8ad879271952896d'));
CALL insert_study_file (UNHEX('4f5b61c497724f61a2ff08cef6d4d96a'),'Archivo 7.txt',UNHEX('40760534945449fb8ad879271952896d'));
CALL insert_study_file (UNHEX('e217f29a232c41d9906858703457fab6'),'Archivo 8.pdf',UNHEX('40760534945449fb8ad879271952896d'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('fb8e42ca576441bcb96923043089166b'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('e9d39c6d0c1a4b2db1b1e232cc9927c7'),'ET');
# Se craran 2 archivos para el estudio fb8e42ca576441bcb96923043089166b
CALL insert_study_file (UNHEX('4b85fdef62104bc48322e6c5eb81d2ba'),'Archivo 0.pdf',UNHEX('fb8e42ca576441bcb96923043089166b'));
CALL insert_study_file (UNHEX('885911e898034d0caf64245582d1cb6c'),'Archivo 1.jpg',UNHEX('fb8e42ca576441bcb96923043089166b'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 8f58f6f12f1b430685c1b40726b6bded
CALL insert_patient ('1948-08-07','1','M', UNHEX('8f58f6f12f1b430685c1b40726b6bded'),'Schoffel, Gardner Siffre','Hemocromatosis.','doctor');
# Se craran 16 estudios para el paciente 8f58f6f12f1b430685c1b40726b6bded
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-07','Diferencial: Resfrio común.',UNHEX('5a8cf311e8774468a8c295ac5a87ee7f'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('8f58f6f12f1b430685c1b40726b6bded'),'ET');
# Se craran 4 archivos para el estudio 5a8cf311e8774468a8c295ac5a87ee7f
CALL insert_study_file (UNHEX('0ae745938517455387b3d5eba98d6934'),'Archivo 0.txt',UNHEX('5a8cf311e8774468a8c295ac5a87ee7f'));
CALL insert_study_file (UNHEX('92dff71fe94b425fba1246a2ecebc096'),'Archivo 1.doc',UNHEX('5a8cf311e8774468a8c295ac5a87ee7f'));
CALL insert_study_file (UNHEX('476d866b6b0640c1837bb2f0801610d3'),'Archivo 2.pdf',UNHEX('5a8cf311e8774468a8c295ac5a87ee7f'));
CALL insert_study_file (UNHEX('8ddf1e42c3d24acd824b595cb1d4a0ea'),'Archivo 3.doc',UNHEX('5a8cf311e8774468a8c295ac5a87ee7f'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-07','Resfrio común.',UNHEX('bfcc06667b144cddb1863db4b3149d55'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('8f58f6f12f1b430685c1b40726b6bded'),'BT');
# Se craran 8 archivos para el estudio bfcc06667b144cddb1863db4b3149d55
CALL insert_study_file (UNHEX('1e371c850b434af4923ec15e33a502e5'),'Archivo 0.jpg',UNHEX('bfcc06667b144cddb1863db4b3149d55'));
CALL insert_study_file (UNHEX('db005871db364b84888003a1331fd85b'),'Archivo 1.txt',UNHEX('bfcc06667b144cddb1863db4b3149d55'));
CALL insert_study_file (UNHEX('35c64808c9034598a169fafb755f9c20'),'Archivo 2.jpg',UNHEX('bfcc06667b144cddb1863db4b3149d55'));
CALL insert_study_file (UNHEX('7eac3a98f3dd42b4a52c4491ff6857f2'),'Archivo 3.pdf',UNHEX('bfcc06667b144cddb1863db4b3149d55'));
CALL insert_study_file (UNHEX('19f6ee36d2b64f8e9a3c8959cdec1236'),'Archivo 4.txt',UNHEX('bfcc06667b144cddb1863db4b3149d55'));
CALL insert_study_file (UNHEX('e008e9519f354d11878cc4258509e6fa'),'Archivo 5.jpg',UNHEX('bfcc06667b144cddb1863db4b3149d55'));
CALL insert_study_file (UNHEX('d79a06df4a7342f398b74118d893ebd1'),'Archivo 6.txt',UNHEX('bfcc06667b144cddb1863db4b3149d55'));
CALL insert_study_file (UNHEX('32e2cc38bd5a42c7b6bc280f0c94a89d'),'Archivo 7.txt',UNHEX('bfcc06667b144cddb1863db4b3149d55'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-12','Resfrio común.',UNHEX('a5b4e6736b2f4b53ad7b56e7fadafdc5'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('8f58f6f12f1b430685c1b40726b6bded'),'UA');
# Se craran 0 archivos para el estudio a5b4e6736b2f4b53ad7b56e7fadafdc5
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-07','Diferencial: Resfrio común.',UNHEX('e39fb933e33c4453beebf114f2fc065b'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('8f58f6f12f1b430685c1b40726b6bded'),'UA');
# Se craran 4 archivos para el estudio e39fb933e33c4453beebf114f2fc065b
CALL insert_study_file (UNHEX('3095d8bbbe2c4a649ecb87a2f9b96067'),'Archivo 0.doc',UNHEX('e39fb933e33c4453beebf114f2fc065b'));
CALL insert_study_file (UNHEX('9d709a90f9e84aceb4c1e539b5f8324b'),'Archivo 1.pdf',UNHEX('e39fb933e33c4453beebf114f2fc065b'));
CALL insert_study_file (UNHEX('f698810d760a42eab42f46caa75c4b62'),'Archivo 2.pdf',UNHEX('e39fb933e33c4453beebf114f2fc065b'));
CALL insert_study_file (UNHEX('64be42a1db1745d58dcba3148521f81a'),'Archivo 3.jpg',UNHEX('e39fb933e33c4453beebf114f2fc065b'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('f5f54917d150483a9eea37340053a781'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('8f58f6f12f1b430685c1b40726b6bded'),'UA');
# Se craran 2 archivos para el estudio f5f54917d150483a9eea37340053a781
CALL insert_study_file (UNHEX('ba58725200484d79bf4905aef8a78fb7'),'Archivo 0.pdf',UNHEX('f5f54917d150483a9eea37340053a781'));
CALL insert_study_file (UNHEX('c680c07517274436b1abf3ce29b623a8'),'Archivo 1.doc',UNHEX('f5f54917d150483a9eea37340053a781'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('0ee4b1f07ae348bda29986e9d455e2ca'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('8f58f6f12f1b430685c1b40726b6bded'),'UA');
# Se craran 5 archivos para el estudio 0ee4b1f07ae348bda29986e9d455e2ca
CALL insert_study_file (UNHEX('588634abb52148759707bd0344ea2668'),'Archivo 0.txt',UNHEX('0ee4b1f07ae348bda29986e9d455e2ca'));
CALL insert_study_file (UNHEX('8ef4f783b96c4971b7a2e73dc17c62bd'),'Archivo 1.doc',UNHEX('0ee4b1f07ae348bda29986e9d455e2ca'));
CALL insert_study_file (UNHEX('d765c165ec3f45f7807c5d751f8c453a'),'Archivo 2.jpg',UNHEX('0ee4b1f07ae348bda29986e9d455e2ca'));
CALL insert_study_file (UNHEX('0d112a9b00ed4f028fb852bccf280755'),'Archivo 3.txt',UNHEX('0ee4b1f07ae348bda29986e9d455e2ca'));
CALL insert_study_file (UNHEX('4eb5512d185d447f9b9bf054f59e8ea1'),'Archivo 4.pdf',UNHEX('0ee4b1f07ae348bda29986e9d455e2ca'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('f8e6dab79dfb43d9b841c0a0313090c4'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('8f58f6f12f1b430685c1b40726b6bded'),'UA');
# Se craran 5 archivos para el estudio f8e6dab79dfb43d9b841c0a0313090c4
CALL insert_study_file (UNHEX('63f1f9ed4e4f46789dcffc82c73577b8'),'Archivo 0.pdf',UNHEX('f8e6dab79dfb43d9b841c0a0313090c4'));
CALL insert_study_file (UNHEX('6f3ddd640a9e4b76b08c1421b0ea0dfd'),'Archivo 1.txt',UNHEX('f8e6dab79dfb43d9b841c0a0313090c4'));
CALL insert_study_file (UNHEX('d71895c8ed3b46be91c1e73dc49d9b4c'),'Archivo 2.pdf',UNHEX('f8e6dab79dfb43d9b841c0a0313090c4'));
CALL insert_study_file (UNHEX('b45ef35684d54bb898e63ffc9593c0e2'),'Archivo 3.jpg',UNHEX('f8e6dab79dfb43d9b841c0a0313090c4'));
CALL insert_study_file (UNHEX('a2edfb21ed8d470093e27298010d7d87'),'Archivo 4.pdf',UNHEX('f8e6dab79dfb43d9b841c0a0313090c4'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('1b691dce16424878ad2f57aee6cc52a5'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Tolerancia muy baja a los sintomas gripales.',UNHEX('8f58f6f12f1b430685c1b40726b6bded'),'ET');
# Se craran 5 archivos para el estudio 1b691dce16424878ad2f57aee6cc52a5
CALL insert_study_file (UNHEX('0ec08175b1f24915baa7949ed361b13b'),'Archivo 0.txt',UNHEX('1b691dce16424878ad2f57aee6cc52a5'));
CALL insert_study_file (UNHEX('b7860f0b99584806885e8b2177d48b9a'),'Archivo 1.txt',UNHEX('1b691dce16424878ad2f57aee6cc52a5'));
CALL insert_study_file (UNHEX('bc61a55ff3be4077a707bc47af0826a4'),'Archivo 2.pdf',UNHEX('1b691dce16424878ad2f57aee6cc52a5'));
CALL insert_study_file (UNHEX('10c354a550c94428a876eb3da7ededec'),'Archivo 3.pdf',UNHEX('1b691dce16424878ad2f57aee6cc52a5'));
CALL insert_study_file (UNHEX('bebff982a0184c6db1e2bcbcac214ba3'),'Archivo 4.txt',UNHEX('1b691dce16424878ad2f57aee6cc52a5'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-05','',UNHEX('2735548966da42eead3a82ac6317bf19'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('8f58f6f12f1b430685c1b40726b6bded'),'ET');
# Se craran 1 archivos para el estudio 2735548966da42eead3a82ac6317bf19
CALL insert_study_file (UNHEX('954b37c76ad34c1a971f545112b3019b'),'Archivo 0.jpg',UNHEX('2735548966da42eead3a82ac6317bf19'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-10','Diferencial: Resfrio común.',UNHEX('e840ad748da048488e671583b885bdc3'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('8f58f6f12f1b430685c1b40726b6bded'),'BT');
# Se craran 8 archivos para el estudio e840ad748da048488e671583b885bdc3
CALL insert_study_file (UNHEX('e8ab709e3e2f45fb8580b200275e0177'),'Archivo 0.jpg',UNHEX('e840ad748da048488e671583b885bdc3'));
CALL insert_study_file (UNHEX('23f48d063bfd4370bd1f1267c8667b95'),'Archivo 1.txt',UNHEX('e840ad748da048488e671583b885bdc3'));
CALL insert_study_file (UNHEX('90b91df9c5d54e9abf71853d980f7ed0'),'Archivo 2.jpg',UNHEX('e840ad748da048488e671583b885bdc3'));
CALL insert_study_file (UNHEX('3b3ff255bebf4fb5b0074c022c28f8c3'),'Archivo 3.txt',UNHEX('e840ad748da048488e671583b885bdc3'));
CALL insert_study_file (UNHEX('dc6f350cc73947f7bbcd22e3b8d28f54'),'Archivo 4.doc',UNHEX('e840ad748da048488e671583b885bdc3'));
CALL insert_study_file (UNHEX('eae825e2ec5e4e59908366bef5cf37ff'),'Archivo 5.pdf',UNHEX('e840ad748da048488e671583b885bdc3'));
CALL insert_study_file (UNHEX('4be90dcc45f04767b45cb83b723a898a'),'Archivo 6.doc',UNHEX('e840ad748da048488e671583b885bdc3'));
CALL insert_study_file (UNHEX('bf770d209b4b4fa1ae46aae42cdcbf1c'),'Archivo 7.doc',UNHEX('e840ad748da048488e671583b885bdc3'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('e26c8b93258a4aebabe83f0a065fe475'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('8f58f6f12f1b430685c1b40726b6bded'),'BT');
# Se craran 0 archivos para el estudio e26c8b93258a4aebabe83f0a065fe475
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-06','Diferencial: Resfrio común.',UNHEX('931e1c0111c543578095b14c21809dcb'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('8f58f6f12f1b430685c1b40726b6bded'),'BT');
# Se craran 8 archivos para el estudio 931e1c0111c543578095b14c21809dcb
CALL insert_study_file (UNHEX('65415363b955478381993430ee0b9668'),'Archivo 0.txt',UNHEX('931e1c0111c543578095b14c21809dcb'));
CALL insert_study_file (UNHEX('6e4e0721b31046e3bfe5e429e12d4569'),'Archivo 1.txt',UNHEX('931e1c0111c543578095b14c21809dcb'));
CALL insert_study_file (UNHEX('4f56903ff11d4e95a8fcb9402436b2bc'),'Archivo 2.pdf',UNHEX('931e1c0111c543578095b14c21809dcb'));
CALL insert_study_file (UNHEX('6a3df91e80ff4f24bbdbeaa8244cd70f'),'Archivo 3.txt',UNHEX('931e1c0111c543578095b14c21809dcb'));
CALL insert_study_file (UNHEX('c3f9538546bf45d4a3d6703c60c3c612'),'Archivo 4.jpg',UNHEX('931e1c0111c543578095b14c21809dcb'));
CALL insert_study_file (UNHEX('c5b7dcf273dd4bd9907e5d8cf30b1eaa'),'Archivo 5.pdf',UNHEX('931e1c0111c543578095b14c21809dcb'));
CALL insert_study_file (UNHEX('228ba35a350c4175acc939b310fc5aa1'),'Archivo 6.txt',UNHEX('931e1c0111c543578095b14c21809dcb'));
CALL insert_study_file (UNHEX('61ef94c881e04c96a92ab06016483879'),'Archivo 7.jpg',UNHEX('931e1c0111c543578095b14c21809dcb'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-07','Diferencial: Gripe H1N1',UNHEX('615576c1286f4ffe9ce5b13afee51bff'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','---',UNHEX('8f58f6f12f1b430685c1b40726b6bded'),'BT');
# Se craran 7 archivos para el estudio 615576c1286f4ffe9ce5b13afee51bff
CALL insert_study_file (UNHEX('c64ed433dfc34a8692af936bc09a4e98'),'Archivo 0.txt',UNHEX('615576c1286f4ffe9ce5b13afee51bff'));
CALL insert_study_file (UNHEX('3fa9c135689d46629e26736905367346'),'Archivo 1.txt',UNHEX('615576c1286f4ffe9ce5b13afee51bff'));
CALL insert_study_file (UNHEX('5c1b070d60c94c5a8fb266efb7c4147d'),'Archivo 2.txt',UNHEX('615576c1286f4ffe9ce5b13afee51bff'));
CALL insert_study_file (UNHEX('e281575d7dcc4dafa83315e69da98b41'),'Archivo 3.pdf',UNHEX('615576c1286f4ffe9ce5b13afee51bff'));
CALL insert_study_file (UNHEX('123cb6495b024bdeab8bee3903ecee46'),'Archivo 4.pdf',UNHEX('615576c1286f4ffe9ce5b13afee51bff'));
CALL insert_study_file (UNHEX('a2429b2811e14bab85cbb0014373648c'),'Archivo 5.jpg',UNHEX('615576c1286f4ffe9ce5b13afee51bff'));
CALL insert_study_file (UNHEX('ceca0577a3894bbf9b06bef52d271328'),'Archivo 6.pdf',UNHEX('615576c1286f4ffe9ce5b13afee51bff'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('d0d59771628e42fdbac0602d08c0f5c5'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('8f58f6f12f1b430685c1b40726b6bded'),'BT');
# Se craran 6 archivos para el estudio d0d59771628e42fdbac0602d08c0f5c5
CALL insert_study_file (UNHEX('2b530f9f891b41339a6c0846e3f085a8'),'Archivo 0.pdf',UNHEX('d0d59771628e42fdbac0602d08c0f5c5'));
CALL insert_study_file (UNHEX('e750e8311b6f41f19418b6289016826e'),'Archivo 1.jpg',UNHEX('d0d59771628e42fdbac0602d08c0f5c5'));
CALL insert_study_file (UNHEX('7d2bd368adae4b9a9e5ae36d92066073'),'Archivo 2.txt',UNHEX('d0d59771628e42fdbac0602d08c0f5c5'));
CALL insert_study_file (UNHEX('82cb35f5c68041419f17b1656a4f0c3f'),'Archivo 3.txt',UNHEX('d0d59771628e42fdbac0602d08c0f5c5'));
CALL insert_study_file (UNHEX('50f2a96096b44cabac328fc3a4b80a8a'),'Archivo 4.pdf',UNHEX('d0d59771628e42fdbac0602d08c0f5c5'));
CALL insert_study_file (UNHEX('346b227ac3be4af889fa6bea8de0c554'),'Archivo 5.jpg',UNHEX('d0d59771628e42fdbac0602d08c0f5c5'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-08','Gripe estacional.',UNHEX('ace745bab5224fc2a7a6a7d21d8ba7db'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Tolerancia muy baja a los sintomas gripales.',UNHEX('8f58f6f12f1b430685c1b40726b6bded'),'BT');
# Se craran 4 archivos para el estudio ace745bab5224fc2a7a6a7d21d8ba7db
CALL insert_study_file (UNHEX('b2d3062beece41bc9eaa4387823bc218'),'Archivo 0.txt',UNHEX('ace745bab5224fc2a7a6a7d21d8ba7db'));
CALL insert_study_file (UNHEX('68d59767b5bc42a581dcc12732d09ec8'),'Archivo 1.txt',UNHEX('ace745bab5224fc2a7a6a7d21d8ba7db'));
CALL insert_study_file (UNHEX('d378fa236347487c8c06b2845e94f54c'),'Archivo 2.txt',UNHEX('ace745bab5224fc2a7a6a7d21d8ba7db'));
CALL insert_study_file (UNHEX('b91694d68ed14010bccefbe32d47b617'),'Archivo 3.pdf',UNHEX('ace745bab5224fc2a7a6a7d21d8ba7db'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-11','Diferencial: Gripe H1N1',UNHEX('d49f77571e184381bab209289d753752'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','Programada nueva consulta en 5 días.',UNHEX('8f58f6f12f1b430685c1b40726b6bded'),'UA');
# Se craran 0 archivos para el estudio d49f77571e184381bab209289d753752
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 58f0ea9a0f0640e288185a037ef67c56
CALL insert_patient ('1951-09-09','6','M', UNHEX('58f0ea9a0f0640e288185a037ef67c56'),'Sacher, filberto llywellyn','Hemocromatosis.','doctor');
# Se craran 16 estudios para el paciente 58f0ea9a0f0640e288185a037ef67c56
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('5fbc16d6f34d49648cef94051af2c2bc'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('58f0ea9a0f0640e288185a037ef67c56'),'UA');
# Se craran 4 archivos para el estudio 5fbc16d6f34d49648cef94051af2c2bc
CALL insert_study_file (UNHEX('02c0489fb4cb44c58930375dd894f354'),'Archivo 0.jpg',UNHEX('5fbc16d6f34d49648cef94051af2c2bc'));
CALL insert_study_file (UNHEX('a9e78779521f4962888a364816ae6386'),'Archivo 1.jpg',UNHEX('5fbc16d6f34d49648cef94051af2c2bc'));
CALL insert_study_file (UNHEX('0ab70bcc19ca4e1cab37483c6791424b'),'Archivo 2.jpg',UNHEX('5fbc16d6f34d49648cef94051af2c2bc'));
CALL insert_study_file (UNHEX('4f179a97426b413f96012b6533b2a33a'),'Archivo 3.txt',UNHEX('5fbc16d6f34d49648cef94051af2c2bc'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-07','Gripe estacional.',UNHEX('eac30adc66b04823b0056ba3953d84db'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('58f0ea9a0f0640e288185a037ef67c56'),'ET');
# Se craran 2 archivos para el estudio eac30adc66b04823b0056ba3953d84db
CALL insert_study_file (UNHEX('69f3869941c34794993f98496b8e0903'),'Archivo 0.jpg',UNHEX('eac30adc66b04823b0056ba3953d84db'));
CALL insert_study_file (UNHEX('f5d963e1a27f4eb1a23602bd8d96b55b'),'Archivo 1.doc',UNHEX('eac30adc66b04823b0056ba3953d84db'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-05','Posibles alergias estacionales.',UNHEX('06bac4ae3b92491c8a2305abedd24842'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('58f0ea9a0f0640e288185a037ef67c56'),'BT');
# Se craran 9 archivos para el estudio 06bac4ae3b92491c8a2305abedd24842
CALL insert_study_file (UNHEX('f648ad7fdcf6491f9966eefcea74774d'),'Archivo 0.pdf',UNHEX('06bac4ae3b92491c8a2305abedd24842'));
CALL insert_study_file (UNHEX('1a06b2ed50334174ab721deac3befeeb'),'Archivo 1.txt',UNHEX('06bac4ae3b92491c8a2305abedd24842'));
CALL insert_study_file (UNHEX('36e59d273e8f4537b43c78e89f10b861'),'Archivo 2.jpg',UNHEX('06bac4ae3b92491c8a2305abedd24842'));
CALL insert_study_file (UNHEX('24d9d63918ed40e6a6d300f1b1555233'),'Archivo 3.doc',UNHEX('06bac4ae3b92491c8a2305abedd24842'));
CALL insert_study_file (UNHEX('cffeaa697e7648b0bcf4d9393c4e3ce2'),'Archivo 4.doc',UNHEX('06bac4ae3b92491c8a2305abedd24842'));
CALL insert_study_file (UNHEX('61315f090efa41d58d39533a4e03aeba'),'Archivo 5.jpg',UNHEX('06bac4ae3b92491c8a2305abedd24842'));
CALL insert_study_file (UNHEX('101dd0e2d3e94d32b74a2c0c8c65df7b'),'Archivo 6.jpg',UNHEX('06bac4ae3b92491c8a2305abedd24842'));
CALL insert_study_file (UNHEX('48a7729b8ef441a9aea4ec443597a790'),'Archivo 7.txt',UNHEX('06bac4ae3b92491c8a2305abedd24842'));
CALL insert_study_file (UNHEX('025e72a79a83457f95302a3b7bc695e1'),'Archivo 8.jpg',UNHEX('06bac4ae3b92491c8a2305abedd24842'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-06','Resfrio común.',UNHEX('27173591dc154c789082024ae493333f'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('58f0ea9a0f0640e288185a037ef67c56'),'BT');
# Se craran 3 archivos para el estudio 27173591dc154c789082024ae493333f
CALL insert_study_file (UNHEX('50a76caeb29249658a86b118d72c8920'),'Archivo 0.doc',UNHEX('27173591dc154c789082024ae493333f'));
CALL insert_study_file (UNHEX('d76cd5c3b6274dbf99c2d29152ab9c70'),'Archivo 1.txt',UNHEX('27173591dc154c789082024ae493333f'));
CALL insert_study_file (UNHEX('84f1bbca73944167ae300ca4de3c1807'),'Archivo 2.txt',UNHEX('27173591dc154c789082024ae493333f'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('0d7dc7186f244015a30637f695f41b49'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('58f0ea9a0f0640e288185a037ef67c56'),'BT');
# Se craran 7 archivos para el estudio 0d7dc7186f244015a30637f695f41b49
CALL insert_study_file (UNHEX('c05df3c2afe74890ac698fd9b7d4fc6c'),'Archivo 0.txt',UNHEX('0d7dc7186f244015a30637f695f41b49'));
CALL insert_study_file (UNHEX('bd28645bb16745c6984e1e13680eb9af'),'Archivo 1.pdf',UNHEX('0d7dc7186f244015a30637f695f41b49'));
CALL insert_study_file (UNHEX('8fccc37d185e44059379b4ad8a6e5d17'),'Archivo 2.doc',UNHEX('0d7dc7186f244015a30637f695f41b49'));
CALL insert_study_file (UNHEX('747ffb2c9ce9437e919ef3b2461747bb'),'Archivo 3.doc',UNHEX('0d7dc7186f244015a30637f695f41b49'));
CALL insert_study_file (UNHEX('612a60cd7058479eb580a82d53b7d3b0'),'Archivo 4.jpg',UNHEX('0d7dc7186f244015a30637f695f41b49'));
CALL insert_study_file (UNHEX('2d1187eace9d4f0998e20fc6190da9d8'),'Archivo 5.txt',UNHEX('0d7dc7186f244015a30637f695f41b49'));
CALL insert_study_file (UNHEX('a66b21737ee7410d85d8fe12c284137d'),'Archivo 6.txt',UNHEX('0d7dc7186f244015a30637f695f41b49'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('17869a9ce8e547dbad543e820b2ff618'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('58f0ea9a0f0640e288185a037ef67c56'),'BT');
# Se craran 4 archivos para el estudio 17869a9ce8e547dbad543e820b2ff618
CALL insert_study_file (UNHEX('ed7ecec02a044e53bf25e926b362a4b5'),'Archivo 0.pdf',UNHEX('17869a9ce8e547dbad543e820b2ff618'));
CALL insert_study_file (UNHEX('c32c1219526a468ab3e7ea9ac89c573e'),'Archivo 1.jpg',UNHEX('17869a9ce8e547dbad543e820b2ff618'));
CALL insert_study_file (UNHEX('3577e8442be44cd48e9ec4f28df27e9b'),'Archivo 2.jpg',UNHEX('17869a9ce8e547dbad543e820b2ff618'));
CALL insert_study_file (UNHEX('38e318009214457d99c416d2523c851a'),'Archivo 3.jpg',UNHEX('17869a9ce8e547dbad543e820b2ff618'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('da544a4e04b04f6dbe1e7c0a1028748a'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('58f0ea9a0f0640e288185a037ef67c56'),'BT');
# Se craran 7 archivos para el estudio da544a4e04b04f6dbe1e7c0a1028748a
CALL insert_study_file (UNHEX('706688df2bb847f9af545525458d9754'),'Archivo 0.jpg',UNHEX('da544a4e04b04f6dbe1e7c0a1028748a'));
CALL insert_study_file (UNHEX('4d02e24ba20b476b89bd4774f85c9da4'),'Archivo 1.jpg',UNHEX('da544a4e04b04f6dbe1e7c0a1028748a'));
CALL insert_study_file (UNHEX('8826040c28fe44a1a6fffbbd6d7d1a68'),'Archivo 2.txt',UNHEX('da544a4e04b04f6dbe1e7c0a1028748a'));
CALL insert_study_file (UNHEX('7616ce2591db448cb59b4c39a5d89b72'),'Archivo 3.jpg',UNHEX('da544a4e04b04f6dbe1e7c0a1028748a'));
CALL insert_study_file (UNHEX('b349bde6348b48b98a2a3e9f64dbc030'),'Archivo 4.txt',UNHEX('da544a4e04b04f6dbe1e7c0a1028748a'));
CALL insert_study_file (UNHEX('63dd7d2dd04c48899fafeee73ab9f6db'),'Archivo 5.jpg',UNHEX('da544a4e04b04f6dbe1e7c0a1028748a'));
CALL insert_study_file (UNHEX('2f0d6363849448eeab00c5d4b259401a'),'Archivo 6.doc',UNHEX('da544a4e04b04f6dbe1e7c0a1028748a'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-08','Diferencial: Resfrio común.',UNHEX('2d3c66d0a6de4c2ea380c1dfa0ea06de'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('58f0ea9a0f0640e288185a037ef67c56'),'BT');
# Se craran 4 archivos para el estudio 2d3c66d0a6de4c2ea380c1dfa0ea06de
CALL insert_study_file (UNHEX('c29b52b167724c37a6b37adb62baacfc'),'Archivo 0.doc',UNHEX('2d3c66d0a6de4c2ea380c1dfa0ea06de'));
CALL insert_study_file (UNHEX('ca78c95d5b574a93a6a4dae02fc1858e'),'Archivo 1.pdf',UNHEX('2d3c66d0a6de4c2ea380c1dfa0ea06de'));
CALL insert_study_file (UNHEX('8f1a008454444e6d811e23b185e734c3'),'Archivo 2.doc',UNHEX('2d3c66d0a6de4c2ea380c1dfa0ea06de'));
CALL insert_study_file (UNHEX('facb5560af5f4e688dde1c4ce9cd85c4'),'Archivo 3.jpg',UNHEX('2d3c66d0a6de4c2ea380c1dfa0ea06de'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-09','Resfrio común.',UNHEX('4b9721efd7944690a372453cb8a3cbe5'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('58f0ea9a0f0640e288185a037ef67c56'),'BT');
# Se craran 1 archivos para el estudio 4b9721efd7944690a372453cb8a3cbe5
CALL insert_study_file (UNHEX('d0d9970b4417457996da397031e73ca9'),'Archivo 0.pdf',UNHEX('4b9721efd7944690a372453cb8a3cbe5'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('337a3d822bc44879b61bacbf1b7a83ca'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('58f0ea9a0f0640e288185a037ef67c56'),'UA');
# Se craran 9 archivos para el estudio 337a3d822bc44879b61bacbf1b7a83ca
CALL insert_study_file (UNHEX('05dd017ecc254a03a12f30ac31dd8171'),'Archivo 0.jpg',UNHEX('337a3d822bc44879b61bacbf1b7a83ca'));
CALL insert_study_file (UNHEX('b9148c0df9334810bd1e7ec84e5dadd3'),'Archivo 1.pdf',UNHEX('337a3d822bc44879b61bacbf1b7a83ca'));
CALL insert_study_file (UNHEX('d93a68d824d9454fa6478a0171b3daad'),'Archivo 2.jpg',UNHEX('337a3d822bc44879b61bacbf1b7a83ca'));
CALL insert_study_file (UNHEX('6eaf8ffc85624df8ab842ae452563794'),'Archivo 3.doc',UNHEX('337a3d822bc44879b61bacbf1b7a83ca'));
CALL insert_study_file (UNHEX('94d0833bd84e46059ba0aec283d59f24'),'Archivo 4.jpg',UNHEX('337a3d822bc44879b61bacbf1b7a83ca'));
CALL insert_study_file (UNHEX('b14e599e0f2a4537b2a1dda10c455ee5'),'Archivo 5.jpg',UNHEX('337a3d822bc44879b61bacbf1b7a83ca'));
CALL insert_study_file (UNHEX('cfd842708b9547d68ce7cf1ed6f39d7a'),'Archivo 6.txt',UNHEX('337a3d822bc44879b61bacbf1b7a83ca'));
CALL insert_study_file (UNHEX('f9236e082a704f10a85fa28be5430edf'),'Archivo 7.doc',UNHEX('337a3d822bc44879b61bacbf1b7a83ca'));
CALL insert_study_file (UNHEX('9b6ca098a47147b4be9d44408771e833'),'Archivo 8.jpg',UNHEX('337a3d822bc44879b61bacbf1b7a83ca'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-07','Diferencial: Resfrio común.',UNHEX('8e4df91ef405472192bd29518c33c268'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('58f0ea9a0f0640e288185a037ef67c56'),'ET');
# Se craran 4 archivos para el estudio 8e4df91ef405472192bd29518c33c268
CALL insert_study_file (UNHEX('6f7d0ffb16224b23acefa7660552b27e'),'Archivo 0.doc',UNHEX('8e4df91ef405472192bd29518c33c268'));
CALL insert_study_file (UNHEX('b550a44e547741a1b54bb23644335094'),'Archivo 1.doc',UNHEX('8e4df91ef405472192bd29518c33c268'));
CALL insert_study_file (UNHEX('7e7590d8ebfd4cfa9dacd41be0b3ff29'),'Archivo 2.jpg',UNHEX('8e4df91ef405472192bd29518c33c268'));
CALL insert_study_file (UNHEX('830836ed37c74be9b30158f4ee428f61'),'Archivo 3.pdf',UNHEX('8e4df91ef405472192bd29518c33c268'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-10','Gripe estacional.',UNHEX('e8c6991b86c643cd988450f425e22286'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('58f0ea9a0f0640e288185a037ef67c56'),'BT');
# Se craran 1 archivos para el estudio e8c6991b86c643cd988450f425e22286
CALL insert_study_file (UNHEX('744cc532ad40460386b4a8a566f69ed6'),'Archivo 0.jpg',UNHEX('e8c6991b86c643cd988450f425e22286'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('b9a5dce7325f495da3d20f2e7b6cb12c'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Programada nueva consulta en 5 días.',UNHEX('58f0ea9a0f0640e288185a037ef67c56'),'BT');
# Se craran 0 archivos para el estudio b9a5dce7325f495da3d20f2e7b6cb12c
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-09','Gripe estacional.',UNHEX('0cf173eef12c43cc9d6567cbbe8e488f'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('58f0ea9a0f0640e288185a037ef67c56'),'UA');
# Se craran 7 archivos para el estudio 0cf173eef12c43cc9d6567cbbe8e488f
CALL insert_study_file (UNHEX('d36e0f43d86244af8b1b0b331a6e3245'),'Archivo 0.jpg',UNHEX('0cf173eef12c43cc9d6567cbbe8e488f'));
CALL insert_study_file (UNHEX('c90742d847894bb5af02e15aeb254d50'),'Archivo 1.pdf',UNHEX('0cf173eef12c43cc9d6567cbbe8e488f'));
CALL insert_study_file (UNHEX('ff5c365e9a72477caa4713e286d3614a'),'Archivo 2.jpg',UNHEX('0cf173eef12c43cc9d6567cbbe8e488f'));
CALL insert_study_file (UNHEX('002580595efb41c980a863dba226468e'),'Archivo 3.txt',UNHEX('0cf173eef12c43cc9d6567cbbe8e488f'));
CALL insert_study_file (UNHEX('434ff4b9e8c74ee9a74bb6fe9f2c3e91'),'Archivo 4.txt',UNHEX('0cf173eef12c43cc9d6567cbbe8e488f'));
CALL insert_study_file (UNHEX('aae37156b9cf43778315acc69832b375'),'Archivo 5.jpg',UNHEX('0cf173eef12c43cc9d6567cbbe8e488f'));
CALL insert_study_file (UNHEX('ae79b96e62fb4ccea0f30395be0822c0'),'Archivo 6.doc',UNHEX('0cf173eef12c43cc9d6567cbbe8e488f'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('3f4b4d02eeb546e886335be0e26eb93a'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('58f0ea9a0f0640e288185a037ef67c56'),'ET');
# Se craran 7 archivos para el estudio 3f4b4d02eeb546e886335be0e26eb93a
CALL insert_study_file (UNHEX('2c16938d3285496ca77f5d715dc7ce6b'),'Archivo 0.doc',UNHEX('3f4b4d02eeb546e886335be0e26eb93a'));
CALL insert_study_file (UNHEX('6a4a80d780444205a2790f2af388948d'),'Archivo 1.txt',UNHEX('3f4b4d02eeb546e886335be0e26eb93a'));
CALL insert_study_file (UNHEX('53daf55189d54f6f8d8f1244375d91fa'),'Archivo 2.txt',UNHEX('3f4b4d02eeb546e886335be0e26eb93a'));
CALL insert_study_file (UNHEX('10210f18e86a43b191717c2325e16665'),'Archivo 3.jpg',UNHEX('3f4b4d02eeb546e886335be0e26eb93a'));
CALL insert_study_file (UNHEX('16df150d7a7c41e5a446d472a6ef640e'),'Archivo 4.doc',UNHEX('3f4b4d02eeb546e886335be0e26eb93a'));
CALL insert_study_file (UNHEX('2bb15f16365d43b291a5484d72330472'),'Archivo 5.pdf',UNHEX('3f4b4d02eeb546e886335be0e26eb93a'));
CALL insert_study_file (UNHEX('7d217204a4674f2b9bb172c7e89fc517'),'Archivo 6.doc',UNHEX('3f4b4d02eeb546e886335be0e26eb93a'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('9d9e0efa9a8d465990426b283aaef447'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('58f0ea9a0f0640e288185a037ef67c56'),'BT');
# Se craran 6 archivos para el estudio 9d9e0efa9a8d465990426b283aaef447
CALL insert_study_file (UNHEX('67e619697af34f019154cbcd5ad3d450'),'Archivo 0.jpg',UNHEX('9d9e0efa9a8d465990426b283aaef447'));
CALL insert_study_file (UNHEX('9cd752521c364cac89ac20674c46ac8f'),'Archivo 1.jpg',UNHEX('9d9e0efa9a8d465990426b283aaef447'));
CALL insert_study_file (UNHEX('7177123532274b87aaed9f2ef254ef21'),'Archivo 2.doc',UNHEX('9d9e0efa9a8d465990426b283aaef447'));
CALL insert_study_file (UNHEX('aa035c760457483293f0e6d56a162eca'),'Archivo 3.txt',UNHEX('9d9e0efa9a8d465990426b283aaef447'));
CALL insert_study_file (UNHEX('50d3725d0c2e4db2a7dcfebaac0985e0'),'Archivo 4.txt',UNHEX('9d9e0efa9a8d465990426b283aaef447'));
CALL insert_study_file (UNHEX('2cd6e6fbc632404b91f77f9c69c758e9'),'Archivo 5.doc',UNHEX('9d9e0efa9a8d465990426b283aaef447'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente cd7abe5e706947f38f6833a84be8cfca
CALL insert_patient ('1982-02-28','3','M', UNHEX('cd7abe5e706947f38f6833a84be8cfca'),'Chadwick, ginger','Diabetes.','doctor');
# Se craran 13 estudios para el paciente cd7abe5e706947f38f6833a84be8cfca
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('c76fc9c84a904be0a7be97c34f470445'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('cd7abe5e706947f38f6833a84be8cfca'),'BT');
# Se craran 1 archivos para el estudio c76fc9c84a904be0a7be97c34f470445
CALL insert_study_file (UNHEX('aa060375e54842a88ae786b7a8cd5913'),'Archivo 0.pdf',UNHEX('c76fc9c84a904be0a7be97c34f470445'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('5ca0fb5a37f94878ac604e42b78b0147'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('cd7abe5e706947f38f6833a84be8cfca'),'BT');
# Se craran 7 archivos para el estudio 5ca0fb5a37f94878ac604e42b78b0147
CALL insert_study_file (UNHEX('1681f37920b04ff9bb38a05d0c272b1f'),'Archivo 0.doc',UNHEX('5ca0fb5a37f94878ac604e42b78b0147'));
CALL insert_study_file (UNHEX('86f65cf793db429db7fd0f8efa8531d7'),'Archivo 1.pdf',UNHEX('5ca0fb5a37f94878ac604e42b78b0147'));
CALL insert_study_file (UNHEX('3dac064236364f2ca19840fbd08a017e'),'Archivo 2.doc',UNHEX('5ca0fb5a37f94878ac604e42b78b0147'));
CALL insert_study_file (UNHEX('c68fc8201b2040f08a146b996177bbe6'),'Archivo 3.jpg',UNHEX('5ca0fb5a37f94878ac604e42b78b0147'));
CALL insert_study_file (UNHEX('fe51b0f577854257b563df34cf5f8bf5'),'Archivo 4.txt',UNHEX('5ca0fb5a37f94878ac604e42b78b0147'));
CALL insert_study_file (UNHEX('97f2c99ecfb04a6f965934a3a3eb2cf7'),'Archivo 5.jpg',UNHEX('5ca0fb5a37f94878ac604e42b78b0147'));
CALL insert_study_file (UNHEX('e8dbd0a88e6143e7b3a757025462c690'),'Archivo 6.txt',UNHEX('5ca0fb5a37f94878ac604e42b78b0147'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('66e10c248a4f4b0cb6cd51f2b88fe666'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('cd7abe5e706947f38f6833a84be8cfca'),'ET');
# Se craran 3 archivos para el estudio 66e10c248a4f4b0cb6cd51f2b88fe666
CALL insert_study_file (UNHEX('766ae1ca29cf483186b00fe067984c3a'),'Archivo 0.txt',UNHEX('66e10c248a4f4b0cb6cd51f2b88fe666'));
CALL insert_study_file (UNHEX('b3a55918be194db1a1296b32dbfbbb0d'),'Archivo 1.jpg',UNHEX('66e10c248a4f4b0cb6cd51f2b88fe666'));
CALL insert_study_file (UNHEX('9c60a8a60a4f4e73b765823a00d20d96'),'Archivo 2.jpg',UNHEX('66e10c248a4f4b0cb6cd51f2b88fe666'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('184281021c60434284188e47c95eb399'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('cd7abe5e706947f38f6833a84be8cfca'),'UA');
# Se craran 6 archivos para el estudio 184281021c60434284188e47c95eb399
CALL insert_study_file (UNHEX('b10c03f3f2df45c793f5239cc4199ef6'),'Archivo 0.doc',UNHEX('184281021c60434284188e47c95eb399'));
CALL insert_study_file (UNHEX('4bd87a5a6ebb475a8e198d29709d5fe1'),'Archivo 1.jpg',UNHEX('184281021c60434284188e47c95eb399'));
CALL insert_study_file (UNHEX('979491e755854ee9a900b3b15c06c460'),'Archivo 2.txt',UNHEX('184281021c60434284188e47c95eb399'));
CALL insert_study_file (UNHEX('c6af75d6e36b4da9aeb283c9f8ed8de8'),'Archivo 3.jpg',UNHEX('184281021c60434284188e47c95eb399'));
CALL insert_study_file (UNHEX('70f6764b889c4b7c8ab3cdf785c885bc'),'Archivo 4.jpg',UNHEX('184281021c60434284188e47c95eb399'));
CALL insert_study_file (UNHEX('f5722ae3c7f346d4a9fe6ed07e959299'),'Archivo 5.doc',UNHEX('184281021c60434284188e47c95eb399'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('0023fe0139a84227aeccce7e3c63775b'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Tolerancia muy baja a los sintomas gripales.',UNHEX('cd7abe5e706947f38f6833a84be8cfca'),'BT');
# Se craran 1 archivos para el estudio 0023fe0139a84227aeccce7e3c63775b
CALL insert_study_file (UNHEX('84c7b603d4344171bc24359bae839f0e'),'Archivo 0.pdf',UNHEX('0023fe0139a84227aeccce7e3c63775b'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-05','Resfrio común.',UNHEX('211cda1d274d48b4af1ea329ac801a5e'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('cd7abe5e706947f38f6833a84be8cfca'),'BT');
# Se craran 4 archivos para el estudio 211cda1d274d48b4af1ea329ac801a5e
CALL insert_study_file (UNHEX('e3b5d10fa9e5402687be714688ab02e1'),'Archivo 0.doc',UNHEX('211cda1d274d48b4af1ea329ac801a5e'));
CALL insert_study_file (UNHEX('bcc87952c95d4b4a85d2b9eb74c72513'),'Archivo 1.txt',UNHEX('211cda1d274d48b4af1ea329ac801a5e'));
CALL insert_study_file (UNHEX('88c7709dca994053b858e3b9d24027b7'),'Archivo 2.txt',UNHEX('211cda1d274d48b4af1ea329ac801a5e'));
CALL insert_study_file (UNHEX('1546e3e32df74829b1e293cb3085b215'),'Archivo 3.pdf',UNHEX('211cda1d274d48b4af1ea329ac801a5e'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('ea9a357ce6a545b7b23f5d2b52315a25'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('cd7abe5e706947f38f6833a84be8cfca'),'ET');
# Se craran 1 archivos para el estudio ea9a357ce6a545b7b23f5d2b52315a25
CALL insert_study_file (UNHEX('e984edd8fcda4ac79c99d4af7dfb4f82'),'Archivo 0.txt',UNHEX('ea9a357ce6a545b7b23f5d2b52315a25'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-11','Resfrio común.',UNHEX('1d3f79007af5457c967ac12fe7d0f28f'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('cd7abe5e706947f38f6833a84be8cfca'),'UA');
# Se craran 0 archivos para el estudio 1d3f79007af5457c967ac12fe7d0f28f
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-07','Gripe estacional.',UNHEX('bc28e39ff34d4494bbcbe5a33524edb5'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('cd7abe5e706947f38f6833a84be8cfca'),'BT');
# Se craran 5 archivos para el estudio bc28e39ff34d4494bbcbe5a33524edb5
CALL insert_study_file (UNHEX('d96aea5cb9084edfb3a3d5080a8d1002'),'Archivo 0.jpg',UNHEX('bc28e39ff34d4494bbcbe5a33524edb5'));
CALL insert_study_file (UNHEX('be60134bac35485bb4d3a8edc8e41344'),'Archivo 1.doc',UNHEX('bc28e39ff34d4494bbcbe5a33524edb5'));
CALL insert_study_file (UNHEX('e71dd47186ac4cd69b4d4ee539638117'),'Archivo 2.doc',UNHEX('bc28e39ff34d4494bbcbe5a33524edb5'));
CALL insert_study_file (UNHEX('b582fffd95a0454db00ec1bbafe83b96'),'Archivo 3.txt',UNHEX('bc28e39ff34d4494bbcbe5a33524edb5'));
CALL insert_study_file (UNHEX('2c68e5b19b1c4ab1b56c623be241a10f'),'Archivo 4.pdf',UNHEX('bc28e39ff34d4494bbcbe5a33524edb5'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-08','Diferencial: Resfrio común.',UNHEX('36fa4772aa054c3b9eb8e6b482130aad'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('cd7abe5e706947f38f6833a84be8cfca'),'UA');
# Se craran 0 archivos para el estudio 36fa4772aa054c3b9eb8e6b482130aad
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-05','',UNHEX('dd27bee9cc924945975ee06df271aa39'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('cd7abe5e706947f38f6833a84be8cfca'),'BT');
# Se craran 3 archivos para el estudio dd27bee9cc924945975ee06df271aa39
CALL insert_study_file (UNHEX('b6d815a676db44b3a8a80efef99382d0'),'Archivo 0.txt',UNHEX('dd27bee9cc924945975ee06df271aa39'));
CALL insert_study_file (UNHEX('03d81041117d425b9ad2e7bbdc9ad110'),'Archivo 1.jpg',UNHEX('dd27bee9cc924945975ee06df271aa39'));
CALL insert_study_file (UNHEX('2b1be178a04a40faa71b11a9c0e4c6a5'),'Archivo 2.doc',UNHEX('dd27bee9cc924945975ee06df271aa39'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('25f0c2282c344fa79d4d74fe59056109'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('cd7abe5e706947f38f6833a84be8cfca'),'UA');
# Se craran 0 archivos para el estudio 25f0c2282c344fa79d4d74fe59056109
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-05','Diferencial: Resfrio común.',UNHEX('8c92498b848e49dda277069334e1e44d'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('cd7abe5e706947f38f6833a84be8cfca'),'ET');
# Se craran 0 archivos para el estudio 8c92498b848e49dda277069334e1e44d
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 3b20ff65069948b7b4d4acc588001a21
CALL insert_patient ('1988-07-24','0','M', UNHEX('3b20ff65069948b7b4d4acc588001a21'),'Grindlay, renard','Diabetes.','doctor');
# Se craran 12 estudios para el paciente 3b20ff65069948b7b4d4acc588001a21
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-07','Diferencial: Gripe H1N1',UNHEX('472f9e5f0f554b5c9a0ea40628a7a58f'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','Programada nueva consulta en 5 días.',UNHEX('3b20ff65069948b7b4d4acc588001a21'),'ET');
# Se craran 1 archivos para el estudio 472f9e5f0f554b5c9a0ea40628a7a58f
CALL insert_study_file (UNHEX('17a41fbe3feb422e9d4c04534de075f8'),'Archivo 0.doc',UNHEX('472f9e5f0f554b5c9a0ea40628a7a58f'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('6f52d8c34820425ebd478d01c4a6cc49'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('3b20ff65069948b7b4d4acc588001a21'),'BT');
# Se craran 5 archivos para el estudio 6f52d8c34820425ebd478d01c4a6cc49
CALL insert_study_file (UNHEX('bc838199d1ef42399931f19d8557fe53'),'Archivo 0.doc',UNHEX('6f52d8c34820425ebd478d01c4a6cc49'));
CALL insert_study_file (UNHEX('fc243cf64ca74ba9b97ed898fbef7ed9'),'Archivo 1.txt',UNHEX('6f52d8c34820425ebd478d01c4a6cc49'));
CALL insert_study_file (UNHEX('1894df6abb30451ba8e01557911a9b1b'),'Archivo 2.txt',UNHEX('6f52d8c34820425ebd478d01c4a6cc49'));
CALL insert_study_file (UNHEX('26c2969755f94541afe62a30880df5a1'),'Archivo 3.pdf',UNHEX('6f52d8c34820425ebd478d01c4a6cc49'));
CALL insert_study_file (UNHEX('770957e88e33463b96d8fb1984f67df7'),'Archivo 4.txt',UNHEX('6f52d8c34820425ebd478d01c4a6cc49'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('281f6d9defbd4816a73492b8de12bf16'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('3b20ff65069948b7b4d4acc588001a21'),'UA');
# Se craran 2 archivos para el estudio 281f6d9defbd4816a73492b8de12bf16
CALL insert_study_file (UNHEX('b31bbe26afbf41d0ae5ebc0777cd14b2'),'Archivo 0.jpg',UNHEX('281f6d9defbd4816a73492b8de12bf16'));
CALL insert_study_file (UNHEX('d58d6bb7a0fb4628aa1e2e58f7fbb4fc'),'Archivo 1.txt',UNHEX('281f6d9defbd4816a73492b8de12bf16'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('41dd94cf4f5e4e9f8d97be7b5a4a2b9c'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('3b20ff65069948b7b4d4acc588001a21'),'ET');
# Se craran 8 archivos para el estudio 41dd94cf4f5e4e9f8d97be7b5a4a2b9c
CALL insert_study_file (UNHEX('ceceb7ad54004c35a1f8b4ac5f5d7864'),'Archivo 0.jpg',UNHEX('41dd94cf4f5e4e9f8d97be7b5a4a2b9c'));
CALL insert_study_file (UNHEX('1a709456b46b42df93ac165031671046'),'Archivo 1.jpg',UNHEX('41dd94cf4f5e4e9f8d97be7b5a4a2b9c'));
CALL insert_study_file (UNHEX('4137c0bf7e4b4fbab44724e9e1fc27b4'),'Archivo 2.txt',UNHEX('41dd94cf4f5e4e9f8d97be7b5a4a2b9c'));
CALL insert_study_file (UNHEX('17896275e04b462587bbe78f8bbb73fe'),'Archivo 3.jpg',UNHEX('41dd94cf4f5e4e9f8d97be7b5a4a2b9c'));
CALL insert_study_file (UNHEX('7ec66ec7bc1a435d9fe62472afd75e8a'),'Archivo 4.txt',UNHEX('41dd94cf4f5e4e9f8d97be7b5a4a2b9c'));
CALL insert_study_file (UNHEX('384c89db6adf44bea96727a73a4c91d7'),'Archivo 5.jpg',UNHEX('41dd94cf4f5e4e9f8d97be7b5a4a2b9c'));
CALL insert_study_file (UNHEX('2f138b402fe247a6b6e75e8b5c97f7fc'),'Archivo 6.jpg',UNHEX('41dd94cf4f5e4e9f8d97be7b5a4a2b9c'));
CALL insert_study_file (UNHEX('31b43ccd4d75490ea90ac211df9b3ef4'),'Archivo 7.doc',UNHEX('41dd94cf4f5e4e9f8d97be7b5a4a2b9c'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('164bdf72a8ef401c8f89ff89968a854f'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('3b20ff65069948b7b4d4acc588001a21'),'ET');
# Se craran 7 archivos para el estudio 164bdf72a8ef401c8f89ff89968a854f
CALL insert_study_file (UNHEX('21af7bfb4bba4a1f95309b8837bd2993'),'Archivo 0.pdf',UNHEX('164bdf72a8ef401c8f89ff89968a854f'));
CALL insert_study_file (UNHEX('c8ae43ccb443428089f89887c252ad6e'),'Archivo 1.txt',UNHEX('164bdf72a8ef401c8f89ff89968a854f'));
CALL insert_study_file (UNHEX('9e11f41cbd0848ee98d4ddf1c21ab639'),'Archivo 2.jpg',UNHEX('164bdf72a8ef401c8f89ff89968a854f'));
CALL insert_study_file (UNHEX('5f802a97278946c9b1e4cb5ec112165a'),'Archivo 3.doc',UNHEX('164bdf72a8ef401c8f89ff89968a854f'));
CALL insert_study_file (UNHEX('db5747cf05f347f0888fad0aa061f7f4'),'Archivo 4.jpg',UNHEX('164bdf72a8ef401c8f89ff89968a854f'));
CALL insert_study_file (UNHEX('69ebc5c516fa47db890c1509cc362217'),'Archivo 5.pdf',UNHEX('164bdf72a8ef401c8f89ff89968a854f'));
CALL insert_study_file (UNHEX('e929d0ccaa904a47aaa99ed44bb6ceae'),'Archivo 6.txt',UNHEX('164bdf72a8ef401c8f89ff89968a854f'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('bafcbd52b87b4440b8f43d96c970bb3f'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('3b20ff65069948b7b4d4acc588001a21'),'BT');
# Se craran 1 archivos para el estudio bafcbd52b87b4440b8f43d96c970bb3f
CALL insert_study_file (UNHEX('a18ff337032e437e94a2764a157631d5'),'Archivo 0.txt',UNHEX('bafcbd52b87b4440b8f43d96c970bb3f'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-10','Diferencial: Resfrio común.',UNHEX('03fc7a23f48345f3a928fb4ba9ce419a'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Tolerancia muy baja a los sintomas gripales.',UNHEX('3b20ff65069948b7b4d4acc588001a21'),'ET');
# Se craran 1 archivos para el estudio 03fc7a23f48345f3a928fb4ba9ce419a
CALL insert_study_file (UNHEX('17cd1072db9a4a76b78df512c64b183b'),'Archivo 0.txt',UNHEX('03fc7a23f48345f3a928fb4ba9ce419a'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-05','',UNHEX('ab1ad9e6174d4046b3f91c393211565d'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('3b20ff65069948b7b4d4acc588001a21'),'UA');
# Se craran 0 archivos para el estudio ab1ad9e6174d4046b3f91c393211565d
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-08','Gripe estacional.',UNHEX('0b000ea78fee4ecd940b3f87e7f13d91'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('3b20ff65069948b7b4d4acc588001a21'),'ET');
# Se craran 4 archivos para el estudio 0b000ea78fee4ecd940b3f87e7f13d91
CALL insert_study_file (UNHEX('00ac80da570e43a0a3861e71dec61e54'),'Archivo 0.doc',UNHEX('0b000ea78fee4ecd940b3f87e7f13d91'));
CALL insert_study_file (UNHEX('ad334dfa25104178bed453e63004819e'),'Archivo 1.txt',UNHEX('0b000ea78fee4ecd940b3f87e7f13d91'));
CALL insert_study_file (UNHEX('26b0833126924501b3ecea0470cc33ab'),'Archivo 2.jpg',UNHEX('0b000ea78fee4ecd940b3f87e7f13d91'));
CALL insert_study_file (UNHEX('5c4079f97ab54415a3099cb390a4136e'),'Archivo 3.doc',UNHEX('0b000ea78fee4ecd940b3f87e7f13d91'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('b3407dedf6834c049962b4adb952f725'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('3b20ff65069948b7b4d4acc588001a21'),'ET');
# Se craran 9 archivos para el estudio b3407dedf6834c049962b4adb952f725
CALL insert_study_file (UNHEX('8af574543fde42f89f20bd01d7dd960a'),'Archivo 0.pdf',UNHEX('b3407dedf6834c049962b4adb952f725'));
CALL insert_study_file (UNHEX('18d8b2a6629a44daa74acea3c8dae7a6'),'Archivo 1.jpg',UNHEX('b3407dedf6834c049962b4adb952f725'));
CALL insert_study_file (UNHEX('1f1a6fd4576b4361a563c07692920031'),'Archivo 2.jpg',UNHEX('b3407dedf6834c049962b4adb952f725'));
CALL insert_study_file (UNHEX('d1dccec6b2404edf8791fcee78a43f81'),'Archivo 3.pdf',UNHEX('b3407dedf6834c049962b4adb952f725'));
CALL insert_study_file (UNHEX('49f5815c38964082a089dc906cc93649'),'Archivo 4.doc',UNHEX('b3407dedf6834c049962b4adb952f725'));
CALL insert_study_file (UNHEX('29dfed0bd26e4d40a8e0d68785af7a45'),'Archivo 5.txt',UNHEX('b3407dedf6834c049962b4adb952f725'));
CALL insert_study_file (UNHEX('d6cb29696bba4ff9a2ab50169de7b971'),'Archivo 6.jpg',UNHEX('b3407dedf6834c049962b4adb952f725'));
CALL insert_study_file (UNHEX('70741fbe59c54ae384f5d8458396b232'),'Archivo 7.jpg',UNHEX('b3407dedf6834c049962b4adb952f725'));
CALL insert_study_file (UNHEX('40d0a7f127344fa4bf4b45521d58e8b0'),'Archivo 8.doc',UNHEX('b3407dedf6834c049962b4adb952f725'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-11','Gripe estacional.',UNHEX('269dee1c967f43aba8f31414e57a66b4'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('3b20ff65069948b7b4d4acc588001a21'),'UA');
# Se craran 4 archivos para el estudio 269dee1c967f43aba8f31414e57a66b4
CALL insert_study_file (UNHEX('50d2797c43fe46fd8f62f9c3e2a39d21'),'Archivo 0.txt',UNHEX('269dee1c967f43aba8f31414e57a66b4'));
CALL insert_study_file (UNHEX('d01f313d74234539ad2e11150ac22cc2'),'Archivo 1.txt',UNHEX('269dee1c967f43aba8f31414e57a66b4'));
CALL insert_study_file (UNHEX('1f70d2465ff34166a2fe2af806636229'),'Archivo 2.jpg',UNHEX('269dee1c967f43aba8f31414e57a66b4'));
CALL insert_study_file (UNHEX('e6f2afa7022b42f8b783ccc5a8303b9e'),'Archivo 3.txt',UNHEX('269dee1c967f43aba8f31414e57a66b4'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('d439d2d6c11241c8a34a86bd6ee75642'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('3b20ff65069948b7b4d4acc588001a21'),'ET');
# Se craran 2 archivos para el estudio d439d2d6c11241c8a34a86bd6ee75642
CALL insert_study_file (UNHEX('2581773a984f465286227dbbf0f6840c'),'Archivo 0.doc',UNHEX('d439d2d6c11241c8a34a86bd6ee75642'));
CALL insert_study_file (UNHEX('1076266ef7dc466b8f4e1325a5a29c3e'),'Archivo 1.jpg',UNHEX('d439d2d6c11241c8a34a86bd6ee75642'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 32233289294044659255e964b33eec9c
CALL insert_patient ('1976-03-21','7','M', UNHEX('32233289294044659255e964b33eec9c'),'Nomura, guglielmo','','doctor');
# Se craran 19 estudios para el paciente 32233289294044659255e964b33eec9c
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-07','Diferencial: Gripe H1N1',UNHEX('961e62689ace4a55ad52a46db681565f'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','Tolerancia muy baja a los sintomas gripales.',UNHEX('32233289294044659255e964b33eec9c'),'BT');
# Se craran 9 archivos para el estudio 961e62689ace4a55ad52a46db681565f
CALL insert_study_file (UNHEX('89410c313378458095b58d6f25b94e43'),'Archivo 0.txt',UNHEX('961e62689ace4a55ad52a46db681565f'));
CALL insert_study_file (UNHEX('97b768081634455880f6507761f75120'),'Archivo 1.doc',UNHEX('961e62689ace4a55ad52a46db681565f'));
CALL insert_study_file (UNHEX('4a59a91bc7c449088df1178abce1880f'),'Archivo 2.jpg',UNHEX('961e62689ace4a55ad52a46db681565f'));
CALL insert_study_file (UNHEX('29a07fe6a30c4755b4a21ac137d728e1'),'Archivo 3.doc',UNHEX('961e62689ace4a55ad52a46db681565f'));
CALL insert_study_file (UNHEX('6f6d24a73d8f4fcaa2a59c2c3134fc5f'),'Archivo 4.doc',UNHEX('961e62689ace4a55ad52a46db681565f'));
CALL insert_study_file (UNHEX('f1e537475e45461eb85e60269886ae2d'),'Archivo 5.jpg',UNHEX('961e62689ace4a55ad52a46db681565f'));
CALL insert_study_file (UNHEX('2f17fbf1fb40446b84e79c65925205dd'),'Archivo 6.pdf',UNHEX('961e62689ace4a55ad52a46db681565f'));
CALL insert_study_file (UNHEX('f898ecf04ceb41a6bb90275baa876b52'),'Archivo 7.jpg',UNHEX('961e62689ace4a55ad52a46db681565f'));
CALL insert_study_file (UNHEX('de6e3bb359c345c7bef9935691b21b21'),'Archivo 8.jpg',UNHEX('961e62689ace4a55ad52a46db681565f'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('06c9a0ea02ea46148aac927f055098f6'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('32233289294044659255e964b33eec9c'),'UA');
# Se craran 1 archivos para el estudio 06c9a0ea02ea46148aac927f055098f6
CALL insert_study_file (UNHEX('c1a3e43827f24a16956eb4737c05b0fe'),'Archivo 0.txt',UNHEX('06c9a0ea02ea46148aac927f055098f6'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('e409eb7bd850438594c9209063e86d9d'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('32233289294044659255e964b33eec9c'),'BT');
# Se craran 5 archivos para el estudio e409eb7bd850438594c9209063e86d9d
CALL insert_study_file (UNHEX('03002ec5bd164018a0c27a934a295e98'),'Archivo 0.txt',UNHEX('e409eb7bd850438594c9209063e86d9d'));
CALL insert_study_file (UNHEX('24e4bb52976a43f0979933f39a1a39c7'),'Archivo 1.doc',UNHEX('e409eb7bd850438594c9209063e86d9d'));
CALL insert_study_file (UNHEX('a15d8b2defc84d16bf04ead90ac4747d'),'Archivo 2.pdf',UNHEX('e409eb7bd850438594c9209063e86d9d'));
CALL insert_study_file (UNHEX('821e84c8f0814462a14ec4fd21351ad3'),'Archivo 3.pdf',UNHEX('e409eb7bd850438594c9209063e86d9d'));
CALL insert_study_file (UNHEX('50b0894118ab4ddbb092f70eb6045bd9'),'Archivo 4.jpg',UNHEX('e409eb7bd850438594c9209063e86d9d'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('5f92fab43cea4d2ba0591bb134a388ee'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('32233289294044659255e964b33eec9c'),'UA');
# Se craran 4 archivos para el estudio 5f92fab43cea4d2ba0591bb134a388ee
CALL insert_study_file (UNHEX('ffb3f3558e164632a799746e10a1bc67'),'Archivo 0.jpg',UNHEX('5f92fab43cea4d2ba0591bb134a388ee'));
CALL insert_study_file (UNHEX('5ae822608913434eb6a2f83b2b502258'),'Archivo 1.pdf',UNHEX('5f92fab43cea4d2ba0591bb134a388ee'));
CALL insert_study_file (UNHEX('a43df713418a4fac9516cd19910698a7'),'Archivo 2.pdf',UNHEX('5f92fab43cea4d2ba0591bb134a388ee'));
CALL insert_study_file (UNHEX('b1fa2db6941f4b7db33c692ea9a8ee57'),'Archivo 3.txt',UNHEX('5f92fab43cea4d2ba0591bb134a388ee'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('471cbf128c9e4659a0ed7a1cadff8a06'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('32233289294044659255e964b33eec9c'),'ET');
# Se craran 0 archivos para el estudio 471cbf128c9e4659a0ed7a1cadff8a06
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-11','Diferencial: Resfrio común.',UNHEX('bc7901e6bc304d8dbc4bd3cbc78e5510'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('32233289294044659255e964b33eec9c'),'ET');
# Se craran 2 archivos para el estudio bc7901e6bc304d8dbc4bd3cbc78e5510
CALL insert_study_file (UNHEX('3312f61870f741b1ba4ced6b7cabd5a1'),'Archivo 0.pdf',UNHEX('bc7901e6bc304d8dbc4bd3cbc78e5510'));
CALL insert_study_file (UNHEX('38b69bee575943ea871915a8b1c182d1'),'Archivo 1.jpg',UNHEX('bc7901e6bc304d8dbc4bd3cbc78e5510'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-08','Diferencial: Gripe H1N1',UNHEX('1e8b6897e40d409994d80bfd79d97fd5'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','Tolerancia muy baja a los sintomas gripales.',UNHEX('32233289294044659255e964b33eec9c'),'ET');
# Se craran 0 archivos para el estudio 1e8b6897e40d409994d80bfd79d97fd5
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('d66a2b24524440efae0247cdd026f004'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('32233289294044659255e964b33eec9c'),'BT');
# Se craran 9 archivos para el estudio d66a2b24524440efae0247cdd026f004
CALL insert_study_file (UNHEX('d83ba8ee940148aa8bf64f50d24a10ec'),'Archivo 0.pdf',UNHEX('d66a2b24524440efae0247cdd026f004'));
CALL insert_study_file (UNHEX('14651482efae4b49bbb87ad5db0ae431'),'Archivo 1.txt',UNHEX('d66a2b24524440efae0247cdd026f004'));
CALL insert_study_file (UNHEX('c5b9332904da4f3ea8080366b576c11e'),'Archivo 2.jpg',UNHEX('d66a2b24524440efae0247cdd026f004'));
CALL insert_study_file (UNHEX('054ee373877949989ba3bb9e5b7845ef'),'Archivo 3.pdf',UNHEX('d66a2b24524440efae0247cdd026f004'));
CALL insert_study_file (UNHEX('aae69cd9ceb943b19251d5e833c67995'),'Archivo 4.txt',UNHEX('d66a2b24524440efae0247cdd026f004'));
CALL insert_study_file (UNHEX('5e9a5c6b33fb43eb8f61dd99ae197331'),'Archivo 5.doc',UNHEX('d66a2b24524440efae0247cdd026f004'));
CALL insert_study_file (UNHEX('2dd8929114fa4adfba5cbe6b21daccab'),'Archivo 6.doc',UNHEX('d66a2b24524440efae0247cdd026f004'));
CALL insert_study_file (UNHEX('cb9b1c20e1b64f978796b89e87cb8e8b'),'Archivo 7.jpg',UNHEX('d66a2b24524440efae0247cdd026f004'));
CALL insert_study_file (UNHEX('571f3fb6cc1249cb89d97450d7927d9a'),'Archivo 8.txt',UNHEX('d66a2b24524440efae0247cdd026f004'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('65d4cc0a2d5746a69128ee8a93699204'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('32233289294044659255e964b33eec9c'),'BT');
# Se craran 9 archivos para el estudio 65d4cc0a2d5746a69128ee8a93699204
CALL insert_study_file (UNHEX('fa70a37bb43845e0971ef482f18b4288'),'Archivo 0.pdf',UNHEX('65d4cc0a2d5746a69128ee8a93699204'));
CALL insert_study_file (UNHEX('aca444122f9e447abdcd2efb7a6d7338'),'Archivo 1.pdf',UNHEX('65d4cc0a2d5746a69128ee8a93699204'));
CALL insert_study_file (UNHEX('b8abcf9965884d1e9da7076d2d5e1c28'),'Archivo 2.pdf',UNHEX('65d4cc0a2d5746a69128ee8a93699204'));
CALL insert_study_file (UNHEX('8d4559c46f4445ab9f2c55beb5dd900e'),'Archivo 3.doc',UNHEX('65d4cc0a2d5746a69128ee8a93699204'));
CALL insert_study_file (UNHEX('4394c8407c1643069915d1cffc048c05'),'Archivo 4.jpg',UNHEX('65d4cc0a2d5746a69128ee8a93699204'));
CALL insert_study_file (UNHEX('302859279e4549fbaa73c51051db89c0'),'Archivo 5.jpg',UNHEX('65d4cc0a2d5746a69128ee8a93699204'));
CALL insert_study_file (UNHEX('0799deed04fe4665aa5919e95b5884ca'),'Archivo 6.jpg',UNHEX('65d4cc0a2d5746a69128ee8a93699204'));
CALL insert_study_file (UNHEX('c237d035f56d45eabfb98d5f0b038380'),'Archivo 7.pdf',UNHEX('65d4cc0a2d5746a69128ee8a93699204'));
CALL insert_study_file (UNHEX('38491f8d48a94695bc1df2175e3fdb51'),'Archivo 8.pdf',UNHEX('65d4cc0a2d5746a69128ee8a93699204'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('b35bf2c46f854236971f40450521659c'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('32233289294044659255e964b33eec9c'),'ET');
# Se craran 0 archivos para el estudio b35bf2c46f854236971f40450521659c
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('dc5d773ee91b41c09042bb8eadc3e6ff'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Tolerancia muy baja a los sintomas gripales.',UNHEX('32233289294044659255e964b33eec9c'),'ET');
# Se craran 3 archivos para el estudio dc5d773ee91b41c09042bb8eadc3e6ff
CALL insert_study_file (UNHEX('141002b38afd4b8091502e67d5336f98'),'Archivo 0.doc',UNHEX('dc5d773ee91b41c09042bb8eadc3e6ff'));
CALL insert_study_file (UNHEX('c9d50326b6c94a3280e191611981ef38'),'Archivo 1.pdf',UNHEX('dc5d773ee91b41c09042bb8eadc3e6ff'));
CALL insert_study_file (UNHEX('4b49e12c1be3444d9aa6a3d99dbc2d69'),'Archivo 2.txt',UNHEX('dc5d773ee91b41c09042bb8eadc3e6ff'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-10','Resfrio común.',UNHEX('194ae5ab11c84b4dbcf9e2f324256379'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('32233289294044659255e964b33eec9c'),'BT');
# Se craran 8 archivos para el estudio 194ae5ab11c84b4dbcf9e2f324256379
CALL insert_study_file (UNHEX('6f31e28125634cd2a47692c8572a3024'),'Archivo 0.pdf',UNHEX('194ae5ab11c84b4dbcf9e2f324256379'));
CALL insert_study_file (UNHEX('1895662ff52d402c99b4e11d5a0a1429'),'Archivo 1.txt',UNHEX('194ae5ab11c84b4dbcf9e2f324256379'));
CALL insert_study_file (UNHEX('c33f6d87ece2458394816d86df3a37ff'),'Archivo 2.doc',UNHEX('194ae5ab11c84b4dbcf9e2f324256379'));
CALL insert_study_file (UNHEX('bd96de71099448f8824893ada0591f95'),'Archivo 3.doc',UNHEX('194ae5ab11c84b4dbcf9e2f324256379'));
CALL insert_study_file (UNHEX('fd78d8adce434cba8143264f546851c8'),'Archivo 4.doc',UNHEX('194ae5ab11c84b4dbcf9e2f324256379'));
CALL insert_study_file (UNHEX('dc0740e13bfd48e5b9a0a0424dd4246b'),'Archivo 5.doc',UNHEX('194ae5ab11c84b4dbcf9e2f324256379'));
CALL insert_study_file (UNHEX('e126e5325158471eb97d73dc4728ddb0'),'Archivo 6.txt',UNHEX('194ae5ab11c84b4dbcf9e2f324256379'));
CALL insert_study_file (UNHEX('9f2feaf292fb49779d6e926287f6ece3'),'Archivo 7.txt',UNHEX('194ae5ab11c84b4dbcf9e2f324256379'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('96b8f2cafb1e4df0b5d3e46cc0db2f1b'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('32233289294044659255e964b33eec9c'),'BT');
# Se craran 2 archivos para el estudio 96b8f2cafb1e4df0b5d3e46cc0db2f1b
CALL insert_study_file (UNHEX('12451cbf0c9f48e2827981c1726e3e3a'),'Archivo 0.pdf',UNHEX('96b8f2cafb1e4df0b5d3e46cc0db2f1b'));
CALL insert_study_file (UNHEX('614581074d334b468c9c16f8192e84b2'),'Archivo 1.txt',UNHEX('96b8f2cafb1e4df0b5d3e46cc0db2f1b'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-10','Gripe estacional.',UNHEX('f701626fd1ec46f590b43d26464d61e1'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('32233289294044659255e964b33eec9c'),'UA');
# Se craran 3 archivos para el estudio f701626fd1ec46f590b43d26464d61e1
CALL insert_study_file (UNHEX('0ad5e9ed3c864952998bb9ad94902444'),'Archivo 0.pdf',UNHEX('f701626fd1ec46f590b43d26464d61e1'));
CALL insert_study_file (UNHEX('786d4026d7314d02810647afb5882144'),'Archivo 1.doc',UNHEX('f701626fd1ec46f590b43d26464d61e1'));
CALL insert_study_file (UNHEX('8bcc0fbb384e4cd7b5cc397af0a27817'),'Archivo 2.pdf',UNHEX('f701626fd1ec46f590b43d26464d61e1'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-08','Diferencial: Gripe H1N1',UNHEX('763d0da0394d4e86b72144f7c548db55'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','---',UNHEX('32233289294044659255e964b33eec9c'),'UA');
# Se craran 4 archivos para el estudio 763d0da0394d4e86b72144f7c548db55
CALL insert_study_file (UNHEX('1fd6a0e11cf649d0aac7f4c3381a6be1'),'Archivo 0.jpg',UNHEX('763d0da0394d4e86b72144f7c548db55'));
CALL insert_study_file (UNHEX('1f12d46c379642e49182f713e95568fc'),'Archivo 1.jpg',UNHEX('763d0da0394d4e86b72144f7c548db55'));
CALL insert_study_file (UNHEX('c41bd6877e5d4063b038ad569dfa95b7'),'Archivo 2.doc',UNHEX('763d0da0394d4e86b72144f7c548db55'));
CALL insert_study_file (UNHEX('2164198dbddd42318081d5fb6c0693f3'),'Archivo 3.doc',UNHEX('763d0da0394d4e86b72144f7c548db55'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-07','Resfrio común.',UNHEX('c6db159134454639af48cb2042bfa885'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('32233289294044659255e964b33eec9c'),'ET');
# Se craran 1 archivos para el estudio c6db159134454639af48cb2042bfa885
CALL insert_study_file (UNHEX('a1fcc8f041c54279ad0d2993da7937d2'),'Archivo 0.doc',UNHEX('c6db159134454639af48cb2042bfa885'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('32e6010417514bd980e9aef972723cd9'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Tolerancia muy baja a los sintomas gripales.',UNHEX('32233289294044659255e964b33eec9c'),'ET');
# Se craran 1 archivos para el estudio 32e6010417514bd980e9aef972723cd9
CALL insert_study_file (UNHEX('d223a22e043a4ed1a3621c0ac94c87f9'),'Archivo 0.txt',UNHEX('32e6010417514bd980e9aef972723cd9'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-07','Posibles alergias estacionales.',UNHEX('c8a545d974a54005a30f092822eea725'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('32233289294044659255e964b33eec9c'),'BT');
# Se craran 6 archivos para el estudio c8a545d974a54005a30f092822eea725
CALL insert_study_file (UNHEX('4f4a0aeb5581410dbe6a4ab105f45efb'),'Archivo 0.pdf',UNHEX('c8a545d974a54005a30f092822eea725'));
CALL insert_study_file (UNHEX('bf4de6ab1d8d4d8991611932ff86fe5b'),'Archivo 1.jpg',UNHEX('c8a545d974a54005a30f092822eea725'));
CALL insert_study_file (UNHEX('d28691cb64c6408d9b9d78fb496c1243'),'Archivo 2.doc',UNHEX('c8a545d974a54005a30f092822eea725'));
CALL insert_study_file (UNHEX('7b6361cf5169445ab090758e176098e9'),'Archivo 3.pdf',UNHEX('c8a545d974a54005a30f092822eea725'));
CALL insert_study_file (UNHEX('337c506ee4dc434baf335370f66caf8b'),'Archivo 4.txt',UNHEX('c8a545d974a54005a30f092822eea725'));
CALL insert_study_file (UNHEX('271a506549b645b2869c9e63affabea3'),'Archivo 5.txt',UNHEX('c8a545d974a54005a30f092822eea725'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-10','Resfrio común.',UNHEX('09c4abc475cb4151aa1f096770a31bfa'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('32233289294044659255e964b33eec9c'),'UA');
# Se craran 4 archivos para el estudio 09c4abc475cb4151aa1f096770a31bfa
CALL insert_study_file (UNHEX('001e2a1ccb6f4ce386b80bd1f4c86f55'),'Archivo 0.doc',UNHEX('09c4abc475cb4151aa1f096770a31bfa'));
CALL insert_study_file (UNHEX('3b16f2f31ae045f6b7822cd77daf1de3'),'Archivo 1.txt',UNHEX('09c4abc475cb4151aa1f096770a31bfa'));
CALL insert_study_file (UNHEX('8ae640acd5414577880f28b0f6913580'),'Archivo 2.pdf',UNHEX('09c4abc475cb4151aa1f096770a31bfa'));
CALL insert_study_file (UNHEX('8005660c884849af97b34d0af67b3cef'),'Archivo 3.jpg',UNHEX('09c4abc475cb4151aa1f096770a31bfa'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 22f493e1db08475cb0e4ff59a972e038
CALL insert_patient ('1945-01-26','4','M', UNHEX('22f493e1db08475cb0e4ff59a972e038'),'Lindemann, Abel Lind','Diabetes.','doctor');
# Se craran 5 estudios para el paciente 22f493e1db08475cb0e4ff59a972e038
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-06','Gripe estacional.',UNHEX('0324117baf054f528f1c5a3291fc26b2'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('22f493e1db08475cb0e4ff59a972e038'),'BT');
# Se craran 8 archivos para el estudio 0324117baf054f528f1c5a3291fc26b2
CALL insert_study_file (UNHEX('b43108bea1a249e98416ea8d3b761e51'),'Archivo 0.jpg',UNHEX('0324117baf054f528f1c5a3291fc26b2'));
CALL insert_study_file (UNHEX('06d1833070dc4dc3919ce9e680b8eef1'),'Archivo 1.jpg',UNHEX('0324117baf054f528f1c5a3291fc26b2'));
CALL insert_study_file (UNHEX('6b50b9f689f94f0382465263af0701da'),'Archivo 2.doc',UNHEX('0324117baf054f528f1c5a3291fc26b2'));
CALL insert_study_file (UNHEX('04da7581e8e7416f843db3271e5774b2'),'Archivo 3.txt',UNHEX('0324117baf054f528f1c5a3291fc26b2'));
CALL insert_study_file (UNHEX('735f791e5d5849f797505ec4f3b24835'),'Archivo 4.jpg',UNHEX('0324117baf054f528f1c5a3291fc26b2'));
CALL insert_study_file (UNHEX('87760196c0344837bf904998e9085507'),'Archivo 5.pdf',UNHEX('0324117baf054f528f1c5a3291fc26b2'));
CALL insert_study_file (UNHEX('9558748e9adb48efb3291ef50b94cbe7'),'Archivo 6.pdf',UNHEX('0324117baf054f528f1c5a3291fc26b2'));
CALL insert_study_file (UNHEX('6b8989fc2d2747248c588e046587db85'),'Archivo 7.jpg',UNHEX('0324117baf054f528f1c5a3291fc26b2'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('a0214ce5ad08421583ba944c8a6911b1'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('22f493e1db08475cb0e4ff59a972e038'),'UA');
# Se craran 8 archivos para el estudio a0214ce5ad08421583ba944c8a6911b1
CALL insert_study_file (UNHEX('bee7b82ea4e94fb29c9569282c6b7923'),'Archivo 0.pdf',UNHEX('a0214ce5ad08421583ba944c8a6911b1'));
CALL insert_study_file (UNHEX('7ceba935e1ac456b8588930d71615908'),'Archivo 1.txt',UNHEX('a0214ce5ad08421583ba944c8a6911b1'));
CALL insert_study_file (UNHEX('a593e22e53144a7a8783854f1cff9090'),'Archivo 2.doc',UNHEX('a0214ce5ad08421583ba944c8a6911b1'));
CALL insert_study_file (UNHEX('3784638fb30f47149b3f1e3787aef604'),'Archivo 3.jpg',UNHEX('a0214ce5ad08421583ba944c8a6911b1'));
CALL insert_study_file (UNHEX('44f2963e4aea4205a0bec8b81f10afee'),'Archivo 4.txt',UNHEX('a0214ce5ad08421583ba944c8a6911b1'));
CALL insert_study_file (UNHEX('f1db41433e624bc6b4ce5dc32a20a3bd'),'Archivo 5.doc',UNHEX('a0214ce5ad08421583ba944c8a6911b1'));
CALL insert_study_file (UNHEX('8f50598df71a4f57af57dd9d30471cc6'),'Archivo 6.txt',UNHEX('a0214ce5ad08421583ba944c8a6911b1'));
CALL insert_study_file (UNHEX('4ca25d14d3c14493a2d735539569ee32'),'Archivo 7.txt',UNHEX('a0214ce5ad08421583ba944c8a6911b1'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('c4921293d7b2406690fdec29c44a1713'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('22f493e1db08475cb0e4ff59a972e038'),'BT');
# Se craran 6 archivos para el estudio c4921293d7b2406690fdec29c44a1713
CALL insert_study_file (UNHEX('4d60f4e633b24698958b4a018e6c2d26'),'Archivo 0.doc',UNHEX('c4921293d7b2406690fdec29c44a1713'));
CALL insert_study_file (UNHEX('3d49d8c7854844fb849edb8cb492c9a3'),'Archivo 1.pdf',UNHEX('c4921293d7b2406690fdec29c44a1713'));
CALL insert_study_file (UNHEX('e9060872c80f40f3af74cac87c389125'),'Archivo 2.doc',UNHEX('c4921293d7b2406690fdec29c44a1713'));
CALL insert_study_file (UNHEX('24357f4095064f879ceae1645ef77ffe'),'Archivo 3.txt',UNHEX('c4921293d7b2406690fdec29c44a1713'));
CALL insert_study_file (UNHEX('407a7ecd06c74f2b8e22076fe34e467d'),'Archivo 4.txt',UNHEX('c4921293d7b2406690fdec29c44a1713'));
CALL insert_study_file (UNHEX('16c05c4437d94bf9aaa8428d589b18e4'),'Archivo 5.jpg',UNHEX('c4921293d7b2406690fdec29c44a1713'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('ad8fbc85d2d145febc8126ecf3ecb5f9'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Programada nueva consulta en 5 días.',UNHEX('22f493e1db08475cb0e4ff59a972e038'),'BT');
# Se craran 9 archivos para el estudio ad8fbc85d2d145febc8126ecf3ecb5f9
CALL insert_study_file (UNHEX('3e46944c56964a1da27b5dc71d50257d'),'Archivo 0.doc',UNHEX('ad8fbc85d2d145febc8126ecf3ecb5f9'));
CALL insert_study_file (UNHEX('8cd1c1cf8b18443bae0c0ad9e4f38d81'),'Archivo 1.txt',UNHEX('ad8fbc85d2d145febc8126ecf3ecb5f9'));
CALL insert_study_file (UNHEX('19773a91a4214d0aa8d0536c7c6de16a'),'Archivo 2.jpg',UNHEX('ad8fbc85d2d145febc8126ecf3ecb5f9'));
CALL insert_study_file (UNHEX('0d151b0b2fe04d67af29c921610b8374'),'Archivo 3.pdf',UNHEX('ad8fbc85d2d145febc8126ecf3ecb5f9'));
CALL insert_study_file (UNHEX('e8809f9a007e4f8bb4f3e50879ca590c'),'Archivo 4.pdf',UNHEX('ad8fbc85d2d145febc8126ecf3ecb5f9'));
CALL insert_study_file (UNHEX('e804b01cb1e4402abd4c5b6549709b7a'),'Archivo 5.doc',UNHEX('ad8fbc85d2d145febc8126ecf3ecb5f9'));
CALL insert_study_file (UNHEX('accfd8f894e84dc7adcda74c39594cb2'),'Archivo 6.doc',UNHEX('ad8fbc85d2d145febc8126ecf3ecb5f9'));
CALL insert_study_file (UNHEX('3d7a59c31888447db8ea6efdecb37de6'),'Archivo 7.doc',UNHEX('ad8fbc85d2d145febc8126ecf3ecb5f9'));
CALL insert_study_file (UNHEX('197f654fa4104aa2a0e00e75e9e4ffa9'),'Archivo 8.txt',UNHEX('ad8fbc85d2d145febc8126ecf3ecb5f9'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('fc959abb2de24b08a9dad5cc1420acb5'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('22f493e1db08475cb0e4ff59a972e038'),'BT');
# Se craran 4 archivos para el estudio fc959abb2de24b08a9dad5cc1420acb5
CALL insert_study_file (UNHEX('818f7508a71742338f28ee1b4e5b21a2'),'Archivo 0.jpg',UNHEX('fc959abb2de24b08a9dad5cc1420acb5'));
CALL insert_study_file (UNHEX('b7cd9562fa164f8a8d3d97b61e0f91b4'),'Archivo 1.jpg',UNHEX('fc959abb2de24b08a9dad5cc1420acb5'));
CALL insert_study_file (UNHEX('af65736a8f2f4e79b2f1888b65e5ab01'),'Archivo 2.jpg',UNHEX('fc959abb2de24b08a9dad5cc1420acb5'));
CALL insert_study_file (UNHEX('b14fb4b20ce94432992d3b667a27c9df'),'Archivo 3.pdf',UNHEX('fc959abb2de24b08a9dad5cc1420acb5'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente ceb3db4d32cd4a678a8ebf08f2321bf7
CALL insert_patient ('1983-06-03','5','F', UNHEX('ceb3db4d32cd4a678a8ebf08f2321bf7'),'Haring, marabel','Hemocromatosis.','doctor');
# Se craran 3 estudios para el paciente ceb3db4d32cd4a678a8ebf08f2321bf7
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('623966a46f55420797700a3687a3f152'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('ceb3db4d32cd4a678a8ebf08f2321bf7'),'ET');
# Se craran 8 archivos para el estudio 623966a46f55420797700a3687a3f152
CALL insert_study_file (UNHEX('0ffede5a9f164a4ca73b70eb40957f55'),'Archivo 0.jpg',UNHEX('623966a46f55420797700a3687a3f152'));
CALL insert_study_file (UNHEX('a62b1777a2144332982de0562a162465'),'Archivo 1.txt',UNHEX('623966a46f55420797700a3687a3f152'));
CALL insert_study_file (UNHEX('439c0b84ea624e81bd24ce01233292f1'),'Archivo 2.doc',UNHEX('623966a46f55420797700a3687a3f152'));
CALL insert_study_file (UNHEX('f09af6ff4d7d41879abb7897769cba13'),'Archivo 3.pdf',UNHEX('623966a46f55420797700a3687a3f152'));
CALL insert_study_file (UNHEX('eee14e6610eb4cf1bbd9c5330a79a90e'),'Archivo 4.jpg',UNHEX('623966a46f55420797700a3687a3f152'));
CALL insert_study_file (UNHEX('93d4657a952f4f4bbb7250a7cbef31da'),'Archivo 5.pdf',UNHEX('623966a46f55420797700a3687a3f152'));
CALL insert_study_file (UNHEX('a8d4c901c7eb4dc9b3c79b459ff09eb7'),'Archivo 6.txt',UNHEX('623966a46f55420797700a3687a3f152'));
CALL insert_study_file (UNHEX('0b2b429e9bc449d389b5d3116a247d21'),'Archivo 7.pdf',UNHEX('623966a46f55420797700a3687a3f152'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('7b22f3d5639a4f7ba3b66396a9d18528'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('ceb3db4d32cd4a678a8ebf08f2321bf7'),'ET');
# Se craran 1 archivos para el estudio 7b22f3d5639a4f7ba3b66396a9d18528
CALL insert_study_file (UNHEX('81e87aff8145482b970113d47af0446a'),'Archivo 0.pdf',UNHEX('7b22f3d5639a4f7ba3b66396a9d18528'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-09','Gripe estacional.',UNHEX('757ead8a73a14e8cbbb19c9628658165'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('ceb3db4d32cd4a678a8ebf08f2321bf7'),'BT');
# Se craran 4 archivos para el estudio 757ead8a73a14e8cbbb19c9628658165
CALL insert_study_file (UNHEX('b226476659e64aea8c35b5d839ec3608'),'Archivo 0.txt',UNHEX('757ead8a73a14e8cbbb19c9628658165'));
CALL insert_study_file (UNHEX('fbec1bc4784e47399d18e006bb9b7b08'),'Archivo 1.doc',UNHEX('757ead8a73a14e8cbbb19c9628658165'));
CALL insert_study_file (UNHEX('2481a8d9ba5742039508f26088530131'),'Archivo 2.pdf',UNHEX('757ead8a73a14e8cbbb19c9628658165'));
CALL insert_study_file (UNHEX('a3c807ecc082427a953d9af83d454e46'),'Archivo 3.txt',UNHEX('757ead8a73a14e8cbbb19c9628658165'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 4f5162248e194b4b85bb9cf635183773
CALL insert_patient ('1956-06-28','0','M', UNHEX('4f5162248e194b4b85bb9cf635183773'),'Charters, Skye vinny','Anemia falciforme.','doctor');
# Se craran 8 estudios para el paciente 4f5162248e194b4b85bb9cf635183773
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-09','Resfrio común.',UNHEX('b73ebce0c4db4278baba25cfeb4a4128'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('4f5162248e194b4b85bb9cf635183773'),'UA');
# Se craran 2 archivos para el estudio b73ebce0c4db4278baba25cfeb4a4128
CALL insert_study_file (UNHEX('d1020fe90aad49ba9dfb5a55e0886c75'),'Archivo 0.jpg',UNHEX('b73ebce0c4db4278baba25cfeb4a4128'));
CALL insert_study_file (UNHEX('e4dc875c92a44701b6c54325d1d98f8e'),'Archivo 1.pdf',UNHEX('b73ebce0c4db4278baba25cfeb4a4128'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-09','Gripe estacional.',UNHEX('ba71939b0b764830a8a0f5c7ab389fa7'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('4f5162248e194b4b85bb9cf635183773'),'UA');
# Se craran 9 archivos para el estudio ba71939b0b764830a8a0f5c7ab389fa7
CALL insert_study_file (UNHEX('e0cb2fc5c63d4d98bcbe986686a982ce'),'Archivo 0.jpg',UNHEX('ba71939b0b764830a8a0f5c7ab389fa7'));
CALL insert_study_file (UNHEX('fd8a9b21cd374ca6b71caf832ec1d196'),'Archivo 1.txt',UNHEX('ba71939b0b764830a8a0f5c7ab389fa7'));
CALL insert_study_file (UNHEX('8dfbb8f5e9b84173b434dce6b5b4deb0'),'Archivo 2.txt',UNHEX('ba71939b0b764830a8a0f5c7ab389fa7'));
CALL insert_study_file (UNHEX('f820273eaec84685ba4246dbcf340b60'),'Archivo 3.jpg',UNHEX('ba71939b0b764830a8a0f5c7ab389fa7'));
CALL insert_study_file (UNHEX('ab35d25b42f743d0b66bae35ec2643ce'),'Archivo 4.txt',UNHEX('ba71939b0b764830a8a0f5c7ab389fa7'));
CALL insert_study_file (UNHEX('15ff08dc6d004906b269fa9358df92d8'),'Archivo 5.pdf',UNHEX('ba71939b0b764830a8a0f5c7ab389fa7'));
CALL insert_study_file (UNHEX('002717d4790641b580d0fe25b99c7837'),'Archivo 6.jpg',UNHEX('ba71939b0b764830a8a0f5c7ab389fa7'));
CALL insert_study_file (UNHEX('f62d229c0711484c976f2762f2546984'),'Archivo 7.doc',UNHEX('ba71939b0b764830a8a0f5c7ab389fa7'));
CALL insert_study_file (UNHEX('8a91fc987be8415abb4cc812d59881f4'),'Archivo 8.pdf',UNHEX('ba71939b0b764830a8a0f5c7ab389fa7'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-06','Diferencial: Gripe H1N1',UNHEX('9ae177dac1f74b1f8c41fa87b58bf055'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','Programada nueva consulta en 5 días.',UNHEX('4f5162248e194b4b85bb9cf635183773'),'ET');
# Se craran 7 archivos para el estudio 9ae177dac1f74b1f8c41fa87b58bf055
CALL insert_study_file (UNHEX('3d3fbb949806453580c0dd4eaac1304e'),'Archivo 0.doc',UNHEX('9ae177dac1f74b1f8c41fa87b58bf055'));
CALL insert_study_file (UNHEX('62064bcab26d4d548b139f69cecaf0af'),'Archivo 1.pdf',UNHEX('9ae177dac1f74b1f8c41fa87b58bf055'));
CALL insert_study_file (UNHEX('de72069de9954902b9a6887da3a56bfa'),'Archivo 2.jpg',UNHEX('9ae177dac1f74b1f8c41fa87b58bf055'));
CALL insert_study_file (UNHEX('6a37eb38dd254d14a8f6c4228da17c13'),'Archivo 3.txt',UNHEX('9ae177dac1f74b1f8c41fa87b58bf055'));
CALL insert_study_file (UNHEX('6a6c1e14f6c542b79a8b19dce3c5b9ba'),'Archivo 4.txt',UNHEX('9ae177dac1f74b1f8c41fa87b58bf055'));
CALL insert_study_file (UNHEX('58395209fd804c66962829c27efc8670'),'Archivo 5.pdf',UNHEX('9ae177dac1f74b1f8c41fa87b58bf055'));
CALL insert_study_file (UNHEX('37011e5f263b4ff7ad2a08fcc4b9de04'),'Archivo 6.txt',UNHEX('9ae177dac1f74b1f8c41fa87b58bf055'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-08','Gripe estacional.',UNHEX('7acf46b8162a4fa3bd5d5739d17791b5'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('4f5162248e194b4b85bb9cf635183773'),'BT');
# Se craran 5 archivos para el estudio 7acf46b8162a4fa3bd5d5739d17791b5
CALL insert_study_file (UNHEX('547db45c4ba44f7b8b298150c4b2e1a8'),'Archivo 0.doc',UNHEX('7acf46b8162a4fa3bd5d5739d17791b5'));
CALL insert_study_file (UNHEX('a236bc4ae8ac483dad82528bb61a6859'),'Archivo 1.doc',UNHEX('7acf46b8162a4fa3bd5d5739d17791b5'));
CALL insert_study_file (UNHEX('59344c5cdbea4b908ba10c046f2ae2a9'),'Archivo 2.jpg',UNHEX('7acf46b8162a4fa3bd5d5739d17791b5'));
CALL insert_study_file (UNHEX('77abbc977b344be5bdb56683d48eb2bf'),'Archivo 3.pdf',UNHEX('7acf46b8162a4fa3bd5d5739d17791b5'));
CALL insert_study_file (UNHEX('42e5a5a56c8848cc83bdda3693b1f9e2'),'Archivo 4.jpg',UNHEX('7acf46b8162a4fa3bd5d5739d17791b5'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-08','Gripe estacional.',UNHEX('02fc9eeeb6a9441ebb17b26a1ebd019b'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('4f5162248e194b4b85bb9cf635183773'),'BT');
# Se craran 8 archivos para el estudio 02fc9eeeb6a9441ebb17b26a1ebd019b
CALL insert_study_file (UNHEX('f3e0f5db76e64b01bbfb46da61acf2bf'),'Archivo 0.doc',UNHEX('02fc9eeeb6a9441ebb17b26a1ebd019b'));
CALL insert_study_file (UNHEX('6f2057710317468784b0ebaf6eed516e'),'Archivo 1.pdf',UNHEX('02fc9eeeb6a9441ebb17b26a1ebd019b'));
CALL insert_study_file (UNHEX('bf244cb0d2df4b85875b6032f7be9ea7'),'Archivo 2.doc',UNHEX('02fc9eeeb6a9441ebb17b26a1ebd019b'));
CALL insert_study_file (UNHEX('7b30b8a52e9c47fda743f086afaac781'),'Archivo 3.jpg',UNHEX('02fc9eeeb6a9441ebb17b26a1ebd019b'));
CALL insert_study_file (UNHEX('cd5f996b8c2d4a9990684c95e3866c71'),'Archivo 4.doc',UNHEX('02fc9eeeb6a9441ebb17b26a1ebd019b'));
CALL insert_study_file (UNHEX('c54c797e72fd4ff084159d7f9c4a73c1'),'Archivo 5.doc',UNHEX('02fc9eeeb6a9441ebb17b26a1ebd019b'));
CALL insert_study_file (UNHEX('4b4d1de2594e4410b3abbf43f537665e'),'Archivo 6.jpg',UNHEX('02fc9eeeb6a9441ebb17b26a1ebd019b'));
CALL insert_study_file (UNHEX('cebc07ab08c84941a7f8e7041b1f73fe'),'Archivo 7.jpg',UNHEX('02fc9eeeb6a9441ebb17b26a1ebd019b'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-11','Resfrio común.',UNHEX('a5956423fc9449f0bd7801b936fe9302'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('4f5162248e194b4b85bb9cf635183773'),'BT');
# Se craran 9 archivos para el estudio a5956423fc9449f0bd7801b936fe9302
CALL insert_study_file (UNHEX('74531ce1b70f49ef8eae6ad5aa471d56'),'Archivo 0.txt',UNHEX('a5956423fc9449f0bd7801b936fe9302'));
CALL insert_study_file (UNHEX('4fcdf265128947d2b5ac3f2d2c23d05c'),'Archivo 1.jpg',UNHEX('a5956423fc9449f0bd7801b936fe9302'));
CALL insert_study_file (UNHEX('3fa976ed0aad454e8d7e57b64c0a4728'),'Archivo 2.jpg',UNHEX('a5956423fc9449f0bd7801b936fe9302'));
CALL insert_study_file (UNHEX('323b76cd68674aebb7fae24dfeeb12f8'),'Archivo 3.txt',UNHEX('a5956423fc9449f0bd7801b936fe9302'));
CALL insert_study_file (UNHEX('1d31a2147b2a4b438fb7d4e524cd42ad'),'Archivo 4.doc',UNHEX('a5956423fc9449f0bd7801b936fe9302'));
CALL insert_study_file (UNHEX('77509b6808454b2c8362c680d980bf0a'),'Archivo 5.pdf',UNHEX('a5956423fc9449f0bd7801b936fe9302'));
CALL insert_study_file (UNHEX('c5caf85baacc4da597533f0e0684d66f'),'Archivo 6.doc',UNHEX('a5956423fc9449f0bd7801b936fe9302'));
CALL insert_study_file (UNHEX('dcfeca168f6a4df09d9f0c431977b84b'),'Archivo 7.doc',UNHEX('a5956423fc9449f0bd7801b936fe9302'));
CALL insert_study_file (UNHEX('4573e3ea1280440b8be8ad0dd4591d6e'),'Archivo 8.doc',UNHEX('a5956423fc9449f0bd7801b936fe9302'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-07','Resfrio común.',UNHEX('6194312e3e06450aa80fe26a2030a2f5'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('4f5162248e194b4b85bb9cf635183773'),'UA');
# Se craran 1 archivos para el estudio 6194312e3e06450aa80fe26a2030a2f5
CALL insert_study_file (UNHEX('3be6f0c22f47459ebd25ba5f134f867e'),'Archivo 0.jpg',UNHEX('6194312e3e06450aa80fe26a2030a2f5'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('7da7677fc8f649068ecb72738948e108'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('4f5162248e194b4b85bb9cf635183773'),'ET');
# Se craran 6 archivos para el estudio 7da7677fc8f649068ecb72738948e108
CALL insert_study_file (UNHEX('94cf215b4835494586739ae61bba6e76'),'Archivo 0.doc',UNHEX('7da7677fc8f649068ecb72738948e108'));
CALL insert_study_file (UNHEX('0e625867dcfe4b0ab4084df6b10951d1'),'Archivo 1.pdf',UNHEX('7da7677fc8f649068ecb72738948e108'));
CALL insert_study_file (UNHEX('30efc6cff6c6455dacee52ec9770b4dc'),'Archivo 2.txt',UNHEX('7da7677fc8f649068ecb72738948e108'));
CALL insert_study_file (UNHEX('84c6cd677ae44fb3b8a2e719c61fce2c'),'Archivo 3.doc',UNHEX('7da7677fc8f649068ecb72738948e108'));
CALL insert_study_file (UNHEX('28f1c22ddb844f8f843db554d24e30b7'),'Archivo 4.txt',UNHEX('7da7677fc8f649068ecb72738948e108'));
CALL insert_study_file (UNHEX('33a5bb3574ee4b75b125da2f880c6cc5'),'Archivo 5.jpg',UNHEX('7da7677fc8f649068ecb72738948e108'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 45ae756d07e14779a80925765e80925b
CALL insert_patient ('1940-08-03','2','F', UNHEX('45ae756d07e14779a80925765e80925b'),'Waller, irma babbie','Hemocromatosis.','doctor');
# Se craran 1 estudios para el paciente 45ae756d07e14779a80925765e80925b
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-07','Gripe estacional.',UNHEX('971681f4224a4617921d17b1dec857c1'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('45ae756d07e14779a80925765e80925b'),'UA');
# Se craran 9 archivos para el estudio 971681f4224a4617921d17b1dec857c1
CALL insert_study_file (UNHEX('1a239ccd1df24ec0a8a0710263a105c9'),'Archivo 0.jpg',UNHEX('971681f4224a4617921d17b1dec857c1'));
CALL insert_study_file (UNHEX('86dadb8fc25c416e85fc6bf2a8a7f811'),'Archivo 1.jpg',UNHEX('971681f4224a4617921d17b1dec857c1'));
CALL insert_study_file (UNHEX('9d31edb709644ba7b50787fba32bdf23'),'Archivo 2.pdf',UNHEX('971681f4224a4617921d17b1dec857c1'));
CALL insert_study_file (UNHEX('a9503207a15642f29d40192babb62473'),'Archivo 3.doc',UNHEX('971681f4224a4617921d17b1dec857c1'));
CALL insert_study_file (UNHEX('77e1c51d171a48d2b69c30f7d9228e8b'),'Archivo 4.txt',UNHEX('971681f4224a4617921d17b1dec857c1'));
CALL insert_study_file (UNHEX('0a39d4b34b5f480aaac635f241ab1d53'),'Archivo 5.pdf',UNHEX('971681f4224a4617921d17b1dec857c1'));
CALL insert_study_file (UNHEX('04c07dc04f0c429894fac08fab47aa25'),'Archivo 6.doc',UNHEX('971681f4224a4617921d17b1dec857c1'));
CALL insert_study_file (UNHEX('c459980c8f7743f3be671ef5a589a898'),'Archivo 7.doc',UNHEX('971681f4224a4617921d17b1dec857c1'));
CALL insert_study_file (UNHEX('8275957d536242ca81e4fd64e3cccc31'),'Archivo 8.jpg',UNHEX('971681f4224a4617921d17b1dec857c1'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente ba1a763b10a4483f8e71cc36b428a5be
CALL insert_patient ('1930-06-17','7','F', UNHEX('ba1a763b10a4483f8e71cc36b428a5be'),'Romaine, Concettina','','doctor');
# Se craran 6 estudios para el paciente ba1a763b10a4483f8e71cc36b428a5be
CALL insert_study ('Control de rutina.','2014-08-05','',UNHEX('9144eac4ba8e48c09bae3b6623960aa1'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Tolerancia muy baja a los sintomas gripales.',UNHEX('ba1a763b10a4483f8e71cc36b428a5be'),'ET');
# Se craran 3 archivos para el estudio 9144eac4ba8e48c09bae3b6623960aa1
CALL insert_study_file (UNHEX('aee70bdddca14904af4daf0ba15bcb29'),'Archivo 0.doc',UNHEX('9144eac4ba8e48c09bae3b6623960aa1'));
CALL insert_study_file (UNHEX('04a001ff0bc14235adf7736c60098937'),'Archivo 1.txt',UNHEX('9144eac4ba8e48c09bae3b6623960aa1'));
CALL insert_study_file (UNHEX('ab29d1fa54394e849e53fa93d9141117'),'Archivo 2.doc',UNHEX('9144eac4ba8e48c09bae3b6623960aa1'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('c5a6c7ff11f04af793177b78467f4c1c'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('ba1a763b10a4483f8e71cc36b428a5be'),'BT');
# Se craran 1 archivos para el estudio c5a6c7ff11f04af793177b78467f4c1c
CALL insert_study_file (UNHEX('f54267e132764408abf8da80b0626a77'),'Archivo 0.jpg',UNHEX('c5a6c7ff11f04af793177b78467f4c1c'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-10','Gripe estacional.',UNHEX('3e47b68f413246e8b7da6b0807cda655'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Programada nueva consulta en 5 días.',UNHEX('ba1a763b10a4483f8e71cc36b428a5be'),'BT');
# Se craran 5 archivos para el estudio 3e47b68f413246e8b7da6b0807cda655
CALL insert_study_file (UNHEX('da5039024e0a48ec97a0d9f7eb15174f'),'Archivo 0.pdf',UNHEX('3e47b68f413246e8b7da6b0807cda655'));
CALL insert_study_file (UNHEX('a52aa93f4f16422a8619c0afc6d4af71'),'Archivo 1.txt',UNHEX('3e47b68f413246e8b7da6b0807cda655'));
CALL insert_study_file (UNHEX('4fe775ae9ed140a59cd5fb464b75341f'),'Archivo 2.doc',UNHEX('3e47b68f413246e8b7da6b0807cda655'));
CALL insert_study_file (UNHEX('726aa2e9ed104968bf4cf36e0fbf4d48'),'Archivo 3.pdf',UNHEX('3e47b68f413246e8b7da6b0807cda655'));
CALL insert_study_file (UNHEX('6894a24926c5437182f8016c62660036'),'Archivo 4.txt',UNHEX('3e47b68f413246e8b7da6b0807cda655'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('a2a62e6e176e4f8bb5c89edbc8c7a49d'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('ba1a763b10a4483f8e71cc36b428a5be'),'ET');
# Se craran 7 archivos para el estudio a2a62e6e176e4f8bb5c89edbc8c7a49d
CALL insert_study_file (UNHEX('3565475822b74ee0a2261592fca02cc1'),'Archivo 0.pdf',UNHEX('a2a62e6e176e4f8bb5c89edbc8c7a49d'));
CALL insert_study_file (UNHEX('0a5d8e43cd3044c68ac0e597a02d6b89'),'Archivo 1.txt',UNHEX('a2a62e6e176e4f8bb5c89edbc8c7a49d'));
CALL insert_study_file (UNHEX('3f8cec3c341243eb80d97a3a5b4a819c'),'Archivo 2.txt',UNHEX('a2a62e6e176e4f8bb5c89edbc8c7a49d'));
CALL insert_study_file (UNHEX('a79dfabd75cc4d6cba8831d663759223'),'Archivo 3.jpg',UNHEX('a2a62e6e176e4f8bb5c89edbc8c7a49d'));
CALL insert_study_file (UNHEX('7cb62b0d6cd74b5bbcdd0217e5ade053'),'Archivo 4.jpg',UNHEX('a2a62e6e176e4f8bb5c89edbc8c7a49d'));
CALL insert_study_file (UNHEX('880d8a371b5743eaafabc05c4e75eab4'),'Archivo 5.jpg',UNHEX('a2a62e6e176e4f8bb5c89edbc8c7a49d'));
CALL insert_study_file (UNHEX('0a402d04cd394a469a6ac4af782979dd'),'Archivo 6.pdf',UNHEX('a2a62e6e176e4f8bb5c89edbc8c7a49d'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('65a08dd87c1842eb9d848ce0d8719c83'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Programada nueva consulta en 5 días.',UNHEX('ba1a763b10a4483f8e71cc36b428a5be'),'BT');
# Se craran 5 archivos para el estudio 65a08dd87c1842eb9d848ce0d8719c83
CALL insert_study_file (UNHEX('2646fd415e534bd4b8d73a4c1e458e35'),'Archivo 0.doc',UNHEX('65a08dd87c1842eb9d848ce0d8719c83'));
CALL insert_study_file (UNHEX('039f08fdc9174ff7ad7c91003f009077'),'Archivo 1.pdf',UNHEX('65a08dd87c1842eb9d848ce0d8719c83'));
CALL insert_study_file (UNHEX('62d464fb53f647309139a4850d289724'),'Archivo 2.txt',UNHEX('65a08dd87c1842eb9d848ce0d8719c83'));
CALL insert_study_file (UNHEX('d83a891f386444098cb9bba2ce27d7d3'),'Archivo 3.jpg',UNHEX('65a08dd87c1842eb9d848ce0d8719c83'));
CALL insert_study_file (UNHEX('b3a0144aba484da3a4cfd90c9e943c06'),'Archivo 4.doc',UNHEX('65a08dd87c1842eb9d848ce0d8719c83'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-12','Gripe estacional.',UNHEX('4c0c857e8bc0449799a8c042e2dc9a5b'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('ba1a763b10a4483f8e71cc36b428a5be'),'UA');
# Se craran 0 archivos para el estudio 4c0c857e8bc0449799a8c042e2dc9a5b
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 6afc52974f8e4c5da994978b15356fd4
CALL insert_patient ('1964-04-07','3','M', UNHEX('6afc52974f8e4c5da994978b15356fd4'),'Guilliams, tabb','Diabetes.','doctor');
# Se craran 13 estudios para el paciente 6afc52974f8e4c5da994978b15356fd4
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-08','Resfrio común.',UNHEX('e0a6a56b6b454e40831b3734ba2ba55a'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('6afc52974f8e4c5da994978b15356fd4'),'BT');
# Se craran 6 archivos para el estudio e0a6a56b6b454e40831b3734ba2ba55a
CALL insert_study_file (UNHEX('dd91c8cb3b234ea0b6e2f48525209d8a'),'Archivo 0.txt',UNHEX('e0a6a56b6b454e40831b3734ba2ba55a'));
CALL insert_study_file (UNHEX('af113be5e6d34edbaeb41cc905862b16'),'Archivo 1.doc',UNHEX('e0a6a56b6b454e40831b3734ba2ba55a'));
CALL insert_study_file (UNHEX('3e3cded4a3884de78e5bf17cc1a2bae7'),'Archivo 2.txt',UNHEX('e0a6a56b6b454e40831b3734ba2ba55a'));
CALL insert_study_file (UNHEX('14782c363f1f4376a4f438d9a9dc9817'),'Archivo 3.pdf',UNHEX('e0a6a56b6b454e40831b3734ba2ba55a'));
CALL insert_study_file (UNHEX('b7976fcf30ad41999d6162904eee02ad'),'Archivo 4.pdf',UNHEX('e0a6a56b6b454e40831b3734ba2ba55a'));
CALL insert_study_file (UNHEX('dfc729c12dcd46338dd7002a518f7864'),'Archivo 5.pdf',UNHEX('e0a6a56b6b454e40831b3734ba2ba55a'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-12','Diferencial: Gripe H1N1',UNHEX('dc3b2a34902e498887b780361eb19882'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','Programada nueva consulta en 5 días.',UNHEX('6afc52974f8e4c5da994978b15356fd4'),'ET');
# Se craran 3 archivos para el estudio dc3b2a34902e498887b780361eb19882
CALL insert_study_file (UNHEX('123a847352ca4c6fadc23b131193a995'),'Archivo 0.jpg',UNHEX('dc3b2a34902e498887b780361eb19882'));
CALL insert_study_file (UNHEX('c6149422f93b4cee8b47f1c2a77ac7b0'),'Archivo 1.txt',UNHEX('dc3b2a34902e498887b780361eb19882'));
CALL insert_study_file (UNHEX('950b59f12fde4ba9ad74d3ef0e4dd558'),'Archivo 2.jpg',UNHEX('dc3b2a34902e498887b780361eb19882'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-06','Diferencial: Gripe H1N1',UNHEX('4f30c2134f2d43f09a7c529983ba1a3a'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','---',UNHEX('6afc52974f8e4c5da994978b15356fd4'),'BT');
# Se craran 3 archivos para el estudio 4f30c2134f2d43f09a7c529983ba1a3a
CALL insert_study_file (UNHEX('0cb6f5ec9b754c7087d92f45a7d674c2'),'Archivo 0.txt',UNHEX('4f30c2134f2d43f09a7c529983ba1a3a'));
CALL insert_study_file (UNHEX('1180a3443079470ab250d574d45c5128'),'Archivo 1.jpg',UNHEX('4f30c2134f2d43f09a7c529983ba1a3a'));
CALL insert_study_file (UNHEX('bf1a307442a44cac8f67f1a8736e6438'),'Archivo 2.txt',UNHEX('4f30c2134f2d43f09a7c529983ba1a3a'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-08','Gripe estacional.',UNHEX('51f1c3b4038444b3baa7216abae87dbf'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('6afc52974f8e4c5da994978b15356fd4'),'UA');
# Se craran 7 archivos para el estudio 51f1c3b4038444b3baa7216abae87dbf
CALL insert_study_file (UNHEX('63fe085f82194627afcf5ba5ffaf8588'),'Archivo 0.doc',UNHEX('51f1c3b4038444b3baa7216abae87dbf'));
CALL insert_study_file (UNHEX('3a7695b5f68d47c79acbcb0c8390cd78'),'Archivo 1.jpg',UNHEX('51f1c3b4038444b3baa7216abae87dbf'));
CALL insert_study_file (UNHEX('2c522d7d66c74a2fa59977e95dfab81f'),'Archivo 2.pdf',UNHEX('51f1c3b4038444b3baa7216abae87dbf'));
CALL insert_study_file (UNHEX('243b0f010f474b7596ea3e0a8ed0eb9a'),'Archivo 3.pdf',UNHEX('51f1c3b4038444b3baa7216abae87dbf'));
CALL insert_study_file (UNHEX('bdf25e058a6f470e96cc0b3edb17fa51'),'Archivo 4.pdf',UNHEX('51f1c3b4038444b3baa7216abae87dbf'));
CALL insert_study_file (UNHEX('19c0bfeb61b148baa435aee348220eed'),'Archivo 5.jpg',UNHEX('51f1c3b4038444b3baa7216abae87dbf'));
CALL insert_study_file (UNHEX('173da5a1af9146fc80620d0ba9749437'),'Archivo 6.jpg',UNHEX('51f1c3b4038444b3baa7216abae87dbf'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-11','Gripe estacional.',UNHEX('0cface6512a94fedb041a5958e9653ae'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('6afc52974f8e4c5da994978b15356fd4'),'BT');
# Se craran 9 archivos para el estudio 0cface6512a94fedb041a5958e9653ae
CALL insert_study_file (UNHEX('ac16f3989df74747991d00e043f5387a'),'Archivo 0.txt',UNHEX('0cface6512a94fedb041a5958e9653ae'));
CALL insert_study_file (UNHEX('ee5ed2876a4949fa9834cf59c801fcbe'),'Archivo 1.doc',UNHEX('0cface6512a94fedb041a5958e9653ae'));
CALL insert_study_file (UNHEX('905659e5557c45ddbfef7e234068291a'),'Archivo 2.pdf',UNHEX('0cface6512a94fedb041a5958e9653ae'));
CALL insert_study_file (UNHEX('4ebbfc67ddcb4b22b83f748f2012a824'),'Archivo 3.jpg',UNHEX('0cface6512a94fedb041a5958e9653ae'));
CALL insert_study_file (UNHEX('0937b5bc6cf74cdf8179eb153bce7ce5'),'Archivo 4.pdf',UNHEX('0cface6512a94fedb041a5958e9653ae'));
CALL insert_study_file (UNHEX('f67410dd7d64448b8361f7ed163f73a8'),'Archivo 5.txt',UNHEX('0cface6512a94fedb041a5958e9653ae'));
CALL insert_study_file (UNHEX('c54878b6e624465d9c81d4a2810f863b'),'Archivo 6.pdf',UNHEX('0cface6512a94fedb041a5958e9653ae'));
CALL insert_study_file (UNHEX('a23565cbe0f94f2f9bc01ebb1742c414'),'Archivo 7.pdf',UNHEX('0cface6512a94fedb041a5958e9653ae'));
CALL insert_study_file (UNHEX('db21f1fc2b784dd68fe84a7b6e04f543'),'Archivo 8.jpg',UNHEX('0cface6512a94fedb041a5958e9653ae'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('3d87012ed8e245eab28f9547c8b06f89'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('6afc52974f8e4c5da994978b15356fd4'),'UA');
# Se craran 4 archivos para el estudio 3d87012ed8e245eab28f9547c8b06f89
CALL insert_study_file (UNHEX('22be494ee4ac4a0abb6e077e581e2e8c'),'Archivo 0.jpg',UNHEX('3d87012ed8e245eab28f9547c8b06f89'));
CALL insert_study_file (UNHEX('15f3ed14a14f477fa69ef22ea8383087'),'Archivo 1.pdf',UNHEX('3d87012ed8e245eab28f9547c8b06f89'));
CALL insert_study_file (UNHEX('fcb88cfdb1554b25a4879b4da4781c7b'),'Archivo 2.txt',UNHEX('3d87012ed8e245eab28f9547c8b06f89'));
CALL insert_study_file (UNHEX('f9e073456f6146c987cf7ffda8e6629f'),'Archivo 3.doc',UNHEX('3d87012ed8e245eab28f9547c8b06f89'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('3f6d9cb8a78348d49ae88139bfada6c1'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('6afc52974f8e4c5da994978b15356fd4'),'ET');
# Se craran 7 archivos para el estudio 3f6d9cb8a78348d49ae88139bfada6c1
CALL insert_study_file (UNHEX('fecbe26aa2c0450ea93cc604b7ace657'),'Archivo 0.jpg',UNHEX('3f6d9cb8a78348d49ae88139bfada6c1'));
CALL insert_study_file (UNHEX('143ead0436b44681976bd4981afe83e5'),'Archivo 1.jpg',UNHEX('3f6d9cb8a78348d49ae88139bfada6c1'));
CALL insert_study_file (UNHEX('6340264dbfd14796802c17c688ad9ea8'),'Archivo 2.jpg',UNHEX('3f6d9cb8a78348d49ae88139bfada6c1'));
CALL insert_study_file (UNHEX('111e67e5c8f14b999bee736f5111c5d5'),'Archivo 3.jpg',UNHEX('3f6d9cb8a78348d49ae88139bfada6c1'));
CALL insert_study_file (UNHEX('4ac3f8b680ed4dc48f3351488d93cdfe'),'Archivo 4.txt',UNHEX('3f6d9cb8a78348d49ae88139bfada6c1'));
CALL insert_study_file (UNHEX('8d99cc8a422e427b923eaa6d7d4d9a7a'),'Archivo 5.txt',UNHEX('3f6d9cb8a78348d49ae88139bfada6c1'));
CALL insert_study_file (UNHEX('be8f51ff69ae4a98ac94813c1a6c24c5'),'Archivo 6.pdf',UNHEX('3f6d9cb8a78348d49ae88139bfada6c1'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('3ec7978e45ce44fc960175e84b4349e0'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('6afc52974f8e4c5da994978b15356fd4'),'BT');
# Se craran 3 archivos para el estudio 3ec7978e45ce44fc960175e84b4349e0
CALL insert_study_file (UNHEX('8c6d362a91a543bc9da296c1a097b8bc'),'Archivo 0.pdf',UNHEX('3ec7978e45ce44fc960175e84b4349e0'));
CALL insert_study_file (UNHEX('b6481091311041a2a868c42d56cfe687'),'Archivo 1.doc',UNHEX('3ec7978e45ce44fc960175e84b4349e0'));
CALL insert_study_file (UNHEX('8007d83c75554481b53f551020413856'),'Archivo 2.pdf',UNHEX('3ec7978e45ce44fc960175e84b4349e0'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('38039bfd6cf0459ba5fd19bbc2f1264e'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('6afc52974f8e4c5da994978b15356fd4'),'ET');
# Se craran 2 archivos para el estudio 38039bfd6cf0459ba5fd19bbc2f1264e
CALL insert_study_file (UNHEX('2b13e3973c3c481ba0d6b83433873f1d'),'Archivo 0.txt',UNHEX('38039bfd6cf0459ba5fd19bbc2f1264e'));
CALL insert_study_file (UNHEX('d541848154f04343b4722f219b67ec8b'),'Archivo 1.pdf',UNHEX('38039bfd6cf0459ba5fd19bbc2f1264e'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-10','Resfrio común.',UNHEX('0b6630a07e0049868c95a80aa33d3573'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('6afc52974f8e4c5da994978b15356fd4'),'UA');
# Se craran 5 archivos para el estudio 0b6630a07e0049868c95a80aa33d3573
CALL insert_study_file (UNHEX('363c3c15b7294874972d05c17bf98c1b'),'Archivo 0.doc',UNHEX('0b6630a07e0049868c95a80aa33d3573'));
CALL insert_study_file (UNHEX('92cd0188232749f9bf803ad972ffe6d4'),'Archivo 1.jpg',UNHEX('0b6630a07e0049868c95a80aa33d3573'));
CALL insert_study_file (UNHEX('c8fc0239b1944714a8b267155c145b5b'),'Archivo 2.txt',UNHEX('0b6630a07e0049868c95a80aa33d3573'));
CALL insert_study_file (UNHEX('97aad3a216e44d8280413f16aef8688f'),'Archivo 3.doc',UNHEX('0b6630a07e0049868c95a80aa33d3573'));
CALL insert_study_file (UNHEX('8c1e1e25212a43629bf81c3e01187b0e'),'Archivo 4.pdf',UNHEX('0b6630a07e0049868c95a80aa33d3573'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('07a80936a1524cf5ac3438cd959f78c6'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('6afc52974f8e4c5da994978b15356fd4'),'BT');
# Se craran 4 archivos para el estudio 07a80936a1524cf5ac3438cd959f78c6
CALL insert_study_file (UNHEX('bc11363c0f4c479abcbad98b5781f49d'),'Archivo 0.jpg',UNHEX('07a80936a1524cf5ac3438cd959f78c6'));
CALL insert_study_file (UNHEX('88f4c37f52d5467da7f9309943864c60'),'Archivo 1.txt',UNHEX('07a80936a1524cf5ac3438cd959f78c6'));
CALL insert_study_file (UNHEX('cbf04700ab2c4d23bfdf7cd58a459f92'),'Archivo 2.doc',UNHEX('07a80936a1524cf5ac3438cd959f78c6'));
CALL insert_study_file (UNHEX('79ac7598a5c3489894f043b69a711e13'),'Archivo 3.txt',UNHEX('07a80936a1524cf5ac3438cd959f78c6'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-08','Diferencial: Gripe H1N1',UNHEX('a43dd16bde9f498ebd733b081aab3fcc'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','Tolerancia muy baja a los sintomas gripales.',UNHEX('6afc52974f8e4c5da994978b15356fd4'),'UA');
# Se craran 2 archivos para el estudio a43dd16bde9f498ebd733b081aab3fcc
CALL insert_study_file (UNHEX('fa92e59bbc7d435b990939fc4ca08bb5'),'Archivo 0.txt',UNHEX('a43dd16bde9f498ebd733b081aab3fcc'));
CALL insert_study_file (UNHEX('7c93e1502f394e1eb519e33b4361b289'),'Archivo 1.jpg',UNHEX('a43dd16bde9f498ebd733b081aab3fcc'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-05','',UNHEX('2a2234fc98e2407b89f40cf39d4769a7'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('6afc52974f8e4c5da994978b15356fd4'),'BT');
# Se craran 5 archivos para el estudio 2a2234fc98e2407b89f40cf39d4769a7
CALL insert_study_file (UNHEX('77f48f793a2c4a2bb13c720956a301e8'),'Archivo 0.jpg',UNHEX('2a2234fc98e2407b89f40cf39d4769a7'));
CALL insert_study_file (UNHEX('04b842e59838406a83c6cb4698903cce'),'Archivo 1.pdf',UNHEX('2a2234fc98e2407b89f40cf39d4769a7'));
CALL insert_study_file (UNHEX('387f0f79443144eda84c4ecb44d22222'),'Archivo 2.jpg',UNHEX('2a2234fc98e2407b89f40cf39d4769a7'));
CALL insert_study_file (UNHEX('0a4817575ba94c0ea17f978a4e0561fd'),'Archivo 3.doc',UNHEX('2a2234fc98e2407b89f40cf39d4769a7'));
CALL insert_study_file (UNHEX('e3459b28bd0a4328be29e82a8045272e'),'Archivo 4.doc',UNHEX('2a2234fc98e2407b89f40cf39d4769a7'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 33f8a106d3b2471f8ba17a9095afe781
CALL insert_patient ('1987-08-13','2','F', UNHEX('33f8a106d3b2471f8ba17a9095afe781'),'Savett, Sinead','Diabetes.','doctor');
# Se craran 4 estudios para el paciente 33f8a106d3b2471f8ba17a9095afe781
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('b49380bfe515438d8bf3f7e588a867e8'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Tolerancia muy baja a los sintomas gripales.',UNHEX('33f8a106d3b2471f8ba17a9095afe781'),'BT');
# Se craran 1 archivos para el estudio b49380bfe515438d8bf3f7e588a867e8
CALL insert_study_file (UNHEX('82abd6079230419e94b8ba2503f0cd15'),'Archivo 0.pdf',UNHEX('b49380bfe515438d8bf3f7e588a867e8'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('967df21b67384032aea378c9c564fbe9'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('33f8a106d3b2471f8ba17a9095afe781'),'ET');
# Se craran 9 archivos para el estudio 967df21b67384032aea378c9c564fbe9
CALL insert_study_file (UNHEX('c1ad48912f1740ba8e96e762dafd22bb'),'Archivo 0.doc',UNHEX('967df21b67384032aea378c9c564fbe9'));
CALL insert_study_file (UNHEX('32c0514cd1194a00ad8d64c90d7c2561'),'Archivo 1.txt',UNHEX('967df21b67384032aea378c9c564fbe9'));
CALL insert_study_file (UNHEX('5294cea424a94b08b80bbd1f6c22d8f6'),'Archivo 2.doc',UNHEX('967df21b67384032aea378c9c564fbe9'));
CALL insert_study_file (UNHEX('62ca04344e9b47048483c6177eb761b7'),'Archivo 3.doc',UNHEX('967df21b67384032aea378c9c564fbe9'));
CALL insert_study_file (UNHEX('cd904a955c674b56bb18ebefaf75be21'),'Archivo 4.txt',UNHEX('967df21b67384032aea378c9c564fbe9'));
CALL insert_study_file (UNHEX('58b1782bc8e34ea7aade4f47d57b02aa'),'Archivo 5.doc',UNHEX('967df21b67384032aea378c9c564fbe9'));
CALL insert_study_file (UNHEX('1f8e5303311e41f5a7cd736f5ad522e8'),'Archivo 6.txt',UNHEX('967df21b67384032aea378c9c564fbe9'));
CALL insert_study_file (UNHEX('a8018c8b693d48f3b62c47bcc7e43b7e'),'Archivo 7.doc',UNHEX('967df21b67384032aea378c9c564fbe9'));
CALL insert_study_file (UNHEX('437fa09c921f44ff8385e487c7c02918'),'Archivo 8.jpg',UNHEX('967df21b67384032aea378c9c564fbe9'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-07','',UNHEX('2f80e3c0fd9442a9a1c02c8134a0b14f'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('33f8a106d3b2471f8ba17a9095afe781'),'UA');
# Se craran 9 archivos para el estudio 2f80e3c0fd9442a9a1c02c8134a0b14f
CALL insert_study_file (UNHEX('c7735c73ab004ccdb1f22e0f5d492981'),'Archivo 0.txt',UNHEX('2f80e3c0fd9442a9a1c02c8134a0b14f'));
CALL insert_study_file (UNHEX('e632613b17ff408b997f3d6d273f1f21'),'Archivo 1.txt',UNHEX('2f80e3c0fd9442a9a1c02c8134a0b14f'));
CALL insert_study_file (UNHEX('742413849c4547f0a5e8b3912c709701'),'Archivo 2.txt',UNHEX('2f80e3c0fd9442a9a1c02c8134a0b14f'));
CALL insert_study_file (UNHEX('0d085d2292e54662aa53c26b3eeec4f6'),'Archivo 3.pdf',UNHEX('2f80e3c0fd9442a9a1c02c8134a0b14f'));
CALL insert_study_file (UNHEX('9a2d7292a54b4a9ca58930a364a8db55'),'Archivo 4.jpg',UNHEX('2f80e3c0fd9442a9a1c02c8134a0b14f'));
CALL insert_study_file (UNHEX('9785d72185b14beab6842962315ee883'),'Archivo 5.pdf',UNHEX('2f80e3c0fd9442a9a1c02c8134a0b14f'));
CALL insert_study_file (UNHEX('ce03332a12a248e8839fe18eec68d1aa'),'Archivo 6.txt',UNHEX('2f80e3c0fd9442a9a1c02c8134a0b14f'));
CALL insert_study_file (UNHEX('ec1bd4b6c48d4536bde59c0a6b8c89d0'),'Archivo 7.pdf',UNHEX('2f80e3c0fd9442a9a1c02c8134a0b14f'));
CALL insert_study_file (UNHEX('6769822b31634319b869ee666c5be0ed'),'Archivo 8.pdf',UNHEX('2f80e3c0fd9442a9a1c02c8134a0b14f'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-10','Resfrio común.',UNHEX('0704117bf7074ef392336c8f404a4076'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('33f8a106d3b2471f8ba17a9095afe781'),'BT');
# Se craran 0 archivos para el estudio 0704117bf7074ef392336c8f404a4076
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente fdf36d26aafa472fa56397c89f5622d1
CALL insert_patient ('1949-12-25','5','M', UNHEX('fdf36d26aafa472fa56397c89f5622d1'),'Gaer, kristian','Anemia falciforme.','doctor');
# Se craran 8 estudios para el paciente fdf36d26aafa472fa56397c89f5622d1
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-09','Diferencial: Gripe H1N1',UNHEX('d64206d382ff460b8ad9dad2ec186c3a'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','Programada nueva consulta en 5 días.',UNHEX('fdf36d26aafa472fa56397c89f5622d1'),'BT');
# Se craran 0 archivos para el estudio d64206d382ff460b8ad9dad2ec186c3a
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-06','Diferencial: Gripe H1N1',UNHEX('5836b26827764b5287e31c2b7d3319e0'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','---',UNHEX('fdf36d26aafa472fa56397c89f5622d1'),'BT');
# Se craran 8 archivos para el estudio 5836b26827764b5287e31c2b7d3319e0
CALL insert_study_file (UNHEX('b3f24f1eb42141f4adf16bf9ec8614e8'),'Archivo 0.pdf',UNHEX('5836b26827764b5287e31c2b7d3319e0'));
CALL insert_study_file (UNHEX('d4456075d6ee4d919f00f505bc4cf3be'),'Archivo 1.jpg',UNHEX('5836b26827764b5287e31c2b7d3319e0'));
CALL insert_study_file (UNHEX('1d7beb172bae463dbcec09a03ccd79ab'),'Archivo 2.txt',UNHEX('5836b26827764b5287e31c2b7d3319e0'));
CALL insert_study_file (UNHEX('4d4ac04fdf2247479867ab660229a2d3'),'Archivo 3.jpg',UNHEX('5836b26827764b5287e31c2b7d3319e0'));
CALL insert_study_file (UNHEX('a79975aaf7ef4f40b6bfe1cff3d1cbfa'),'Archivo 4.jpg',UNHEX('5836b26827764b5287e31c2b7d3319e0'));
CALL insert_study_file (UNHEX('0c3cbda934144e84aa6eff1d718894f9'),'Archivo 5.doc',UNHEX('5836b26827764b5287e31c2b7d3319e0'));
CALL insert_study_file (UNHEX('11daaf10a3ab449e8d39c91c36eb8d45'),'Archivo 6.doc',UNHEX('5836b26827764b5287e31c2b7d3319e0'));
CALL insert_study_file (UNHEX('d6d964aa78ef431a910994b3ab6617f8'),'Archivo 7.txt',UNHEX('5836b26827764b5287e31c2b7d3319e0'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('04600e0c86b746458a96999e0cb12f36'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Tolerancia muy baja a los sintomas gripales.',UNHEX('fdf36d26aafa472fa56397c89f5622d1'),'UA');
# Se craran 2 archivos para el estudio 04600e0c86b746458a96999e0cb12f36
CALL insert_study_file (UNHEX('ed7343ea0ea74aaba9c5e0723dc33e7c'),'Archivo 0.jpg',UNHEX('04600e0c86b746458a96999e0cb12f36'));
CALL insert_study_file (UNHEX('3a8240f8307e42dc8e1dac3f0bbf1152'),'Archivo 1.jpg',UNHEX('04600e0c86b746458a96999e0cb12f36'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('5cdeec0787a84ad7ad70cb12c5e19eed'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('fdf36d26aafa472fa56397c89f5622d1'),'ET');
# Se craran 5 archivos para el estudio 5cdeec0787a84ad7ad70cb12c5e19eed
CALL insert_study_file (UNHEX('5f43c2db46894aac8e88411fd5385d78'),'Archivo 0.pdf',UNHEX('5cdeec0787a84ad7ad70cb12c5e19eed'));
CALL insert_study_file (UNHEX('17e44ea353564f4788d1c236e0b5be47'),'Archivo 1.doc',UNHEX('5cdeec0787a84ad7ad70cb12c5e19eed'));
CALL insert_study_file (UNHEX('4b453e864ba64d79b15757c89d0860b7'),'Archivo 2.txt',UNHEX('5cdeec0787a84ad7ad70cb12c5e19eed'));
CALL insert_study_file (UNHEX('2884d06bb0f04e47817867ac787b94bd'),'Archivo 3.doc',UNHEX('5cdeec0787a84ad7ad70cb12c5e19eed'));
CALL insert_study_file (UNHEX('8d9d5f04f5db4dadabeb65673eeaaa87'),'Archivo 4.jpg',UNHEX('5cdeec0787a84ad7ad70cb12c5e19eed'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-12','Diferencial: Gripe H1N1',UNHEX('d88a3a9001e74bbaad591c4d12e10ecd'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','Tolerancia muy baja a los sintomas gripales.',UNHEX('fdf36d26aafa472fa56397c89f5622d1'),'UA');
# Se craran 3 archivos para el estudio d88a3a9001e74bbaad591c4d12e10ecd
CALL insert_study_file (UNHEX('d351224f8d184165ba110d01d12c0ed5'),'Archivo 0.jpg',UNHEX('d88a3a9001e74bbaad591c4d12e10ecd'));
CALL insert_study_file (UNHEX('23c0fc48931d402597092a64587f2178'),'Archivo 1.txt',UNHEX('d88a3a9001e74bbaad591c4d12e10ecd'));
CALL insert_study_file (UNHEX('0be932783f6d49c68775c27e986f0b10'),'Archivo 2.txt',UNHEX('d88a3a9001e74bbaad591c4d12e10ecd'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-12','Gripe estacional.',UNHEX('22d109650a7e4d318e27349e6f7e67f0'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('fdf36d26aafa472fa56397c89f5622d1'),'UA');
# Se craran 7 archivos para el estudio 22d109650a7e4d318e27349e6f7e67f0
CALL insert_study_file (UNHEX('d8f59403f73a49c7b4c4bcfbd814fc2c'),'Archivo 0.txt',UNHEX('22d109650a7e4d318e27349e6f7e67f0'));
CALL insert_study_file (UNHEX('7c4934353c6142599c4ac25494702367'),'Archivo 1.pdf',UNHEX('22d109650a7e4d318e27349e6f7e67f0'));
CALL insert_study_file (UNHEX('5e6cabcb4bc14248a2032fbc02356998'),'Archivo 2.txt',UNHEX('22d109650a7e4d318e27349e6f7e67f0'));
CALL insert_study_file (UNHEX('a849635501c140208be6914a4f3428ee'),'Archivo 3.pdf',UNHEX('22d109650a7e4d318e27349e6f7e67f0'));
CALL insert_study_file (UNHEX('689422f753a34908ab5bec53f47bd30d'),'Archivo 4.pdf',UNHEX('22d109650a7e4d318e27349e6f7e67f0'));
CALL insert_study_file (UNHEX('0463913100364f3cbdbf7cefeddcf574'),'Archivo 5.txt',UNHEX('22d109650a7e4d318e27349e6f7e67f0'));
CALL insert_study_file (UNHEX('4603acb244964ba4addc65015abcf1cd'),'Archivo 6.jpg',UNHEX('22d109650a7e4d318e27349e6f7e67f0'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-06','Diferencial: Gripe H1N1',UNHEX('af66f4cfecc34d3292e563b7c4480424'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','Programada nueva consulta en 5 días.',UNHEX('fdf36d26aafa472fa56397c89f5622d1'),'ET');
# Se craran 5 archivos para el estudio af66f4cfecc34d3292e563b7c4480424
CALL insert_study_file (UNHEX('b1a89b0937fb4878832e07204e508e2c'),'Archivo 0.txt',UNHEX('af66f4cfecc34d3292e563b7c4480424'));
CALL insert_study_file (UNHEX('e877a7bcd7dc44e28dfdb3edc554507c'),'Archivo 1.doc',UNHEX('af66f4cfecc34d3292e563b7c4480424'));
CALL insert_study_file (UNHEX('ac9050ff0afc431f89f2a5299f0fb22c'),'Archivo 2.txt',UNHEX('af66f4cfecc34d3292e563b7c4480424'));
CALL insert_study_file (UNHEX('82c034af8b2b49b487005ea08739d4a3'),'Archivo 3.txt',UNHEX('af66f4cfecc34d3292e563b7c4480424'));
CALL insert_study_file (UNHEX('8a9aaddc68654edbb531a286ee2f2e28'),'Archivo 4.txt',UNHEX('af66f4cfecc34d3292e563b7c4480424'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('a6da909663744005a9e964822bf1a6e9'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('fdf36d26aafa472fa56397c89f5622d1'),'BT');
# Se craran 5 archivos para el estudio a6da909663744005a9e964822bf1a6e9
CALL insert_study_file (UNHEX('39dd64216a9140e9b8dd39d161027a71'),'Archivo 0.txt',UNHEX('a6da909663744005a9e964822bf1a6e9'));
CALL insert_study_file (UNHEX('f5c91ebdb8624ca3a2bbe3c2fdd179c3'),'Archivo 1.doc',UNHEX('a6da909663744005a9e964822bf1a6e9'));
CALL insert_study_file (UNHEX('b19fc50b8b644e8ab1018d87ed3331f3'),'Archivo 2.jpg',UNHEX('a6da909663744005a9e964822bf1a6e9'));
CALL insert_study_file (UNHEX('63958dcf3b014f72b8c78a40f069312e'),'Archivo 3.jpg',UNHEX('a6da909663744005a9e964822bf1a6e9'));
CALL insert_study_file (UNHEX('8360ec416a0d48558a8313caf59aa77e'),'Archivo 4.txt',UNHEX('a6da909663744005a9e964822bf1a6e9'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 0c24f3185aae44959505883320e3db40
CALL insert_patient ('1967-02-22','7','M', UNHEX('0c24f3185aae44959505883320e3db40'),'Mcwade, Warner Marmaduke','','doctor');
# Se craran 0 estudios para el paciente 0c24f3185aae44959505883320e3db40
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 280c7cb43f064e18999ab875350ee1cd
CALL insert_patient ('1935-07-15','6','M', UNHEX('280c7cb43f064e18999ab875350ee1cd'),'Gonano, Kellen jess','Diabetes.','doctor');
# Se craran 4 estudios para el paciente 280c7cb43f064e18999ab875350ee1cd
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('3eec125a152546fba3f0c3500b30f842'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('280c7cb43f064e18999ab875350ee1cd'),'ET');
# Se craran 9 archivos para el estudio 3eec125a152546fba3f0c3500b30f842
CALL insert_study_file (UNHEX('835a0a372fbd4baf97a0da7633370ca4'),'Archivo 0.jpg',UNHEX('3eec125a152546fba3f0c3500b30f842'));
CALL insert_study_file (UNHEX('cd79263505de4036ba9e452c1059feec'),'Archivo 1.pdf',UNHEX('3eec125a152546fba3f0c3500b30f842'));
CALL insert_study_file (UNHEX('aaa03426a13b49d0b5df93f9aa27be4c'),'Archivo 2.doc',UNHEX('3eec125a152546fba3f0c3500b30f842'));
CALL insert_study_file (UNHEX('9edfb74d49e04a7f807e77efb4df8c7d'),'Archivo 3.jpg',UNHEX('3eec125a152546fba3f0c3500b30f842'));
CALL insert_study_file (UNHEX('9344f9ee35934949be8ab9167a10300c'),'Archivo 4.jpg',UNHEX('3eec125a152546fba3f0c3500b30f842'));
CALL insert_study_file (UNHEX('abd8fdcf804d4f86bd5fda2823f86ba4'),'Archivo 5.pdf',UNHEX('3eec125a152546fba3f0c3500b30f842'));
CALL insert_study_file (UNHEX('8a3a83ea4cf5460a9e1b4c6c75e6c486'),'Archivo 6.doc',UNHEX('3eec125a152546fba3f0c3500b30f842'));
CALL insert_study_file (UNHEX('1cb259e8c90546f690fd545ffe3518e7'),'Archivo 7.pdf',UNHEX('3eec125a152546fba3f0c3500b30f842'));
CALL insert_study_file (UNHEX('69f13f2789a942aa96bdeb97182be531'),'Archivo 8.jpg',UNHEX('3eec125a152546fba3f0c3500b30f842'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('8eedec1bc7b94dc0966c11eba5b37b6d'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('280c7cb43f064e18999ab875350ee1cd'),'UA');
# Se craran 0 archivos para el estudio 8eedec1bc7b94dc0966c11eba5b37b6d
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-09','Diferencial: Resfrio común.',UNHEX('8acc721c216249aea30f98695adb04a6'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('280c7cb43f064e18999ab875350ee1cd'),'ET');
# Se craran 0 archivos para el estudio 8acc721c216249aea30f98695adb04a6
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('88b76ddef29946ba8431ba449dac9784'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('280c7cb43f064e18999ab875350ee1cd'),'ET');
# Se craran 7 archivos para el estudio 88b76ddef29946ba8431ba449dac9784
CALL insert_study_file (UNHEX('10d975b43335430691f54b0c09b65c73'),'Archivo 0.pdf',UNHEX('88b76ddef29946ba8431ba449dac9784'));
CALL insert_study_file (UNHEX('f35a78acd0834444bc5b7e8b5e2f14c9'),'Archivo 1.doc',UNHEX('88b76ddef29946ba8431ba449dac9784'));
CALL insert_study_file (UNHEX('56c34b9354ca4800a6ca58bf0c098e22'),'Archivo 2.doc',UNHEX('88b76ddef29946ba8431ba449dac9784'));
CALL insert_study_file (UNHEX('5934b01909104a8b8101aafa2fd28711'),'Archivo 3.txt',UNHEX('88b76ddef29946ba8431ba449dac9784'));
CALL insert_study_file (UNHEX('d5da4959e5d14c6b884c603b9ddbbe1b'),'Archivo 4.jpg',UNHEX('88b76ddef29946ba8431ba449dac9784'));
CALL insert_study_file (UNHEX('6508619e85d943af91494952a3aa3621'),'Archivo 5.doc',UNHEX('88b76ddef29946ba8431ba449dac9784'));
CALL insert_study_file (UNHEX('b48e72278ead409a99dc94d0fcf36503'),'Archivo 6.txt',UNHEX('88b76ddef29946ba8431ba449dac9784'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente ae3cd392643e488d840567e1fb564353
CALL insert_patient ('1972-12-01','1','F', UNHEX('ae3cd392643e488d840567e1fb564353'),'Irvin, glenine','','doctor');
# Se craran 8 estudios para el paciente ae3cd392643e488d840567e1fb564353
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('7750c9ffe14543f08073303c15c72ccc'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('ae3cd392643e488d840567e1fb564353'),'UA');
# Se craran 9 archivos para el estudio 7750c9ffe14543f08073303c15c72ccc
CALL insert_study_file (UNHEX('b167a775eefd45f8be1266accba52bff'),'Archivo 0.txt',UNHEX('7750c9ffe14543f08073303c15c72ccc'));
CALL insert_study_file (UNHEX('e267bded146d4da883e63b11edd181dd'),'Archivo 1.pdf',UNHEX('7750c9ffe14543f08073303c15c72ccc'));
CALL insert_study_file (UNHEX('f935016f8fba4319aede732362adac11'),'Archivo 2.jpg',UNHEX('7750c9ffe14543f08073303c15c72ccc'));
CALL insert_study_file (UNHEX('023393626433479e8c30a1c8706ac156'),'Archivo 3.txt',UNHEX('7750c9ffe14543f08073303c15c72ccc'));
CALL insert_study_file (UNHEX('cc81a34893ea4404978e9bc951c9505d'),'Archivo 4.jpg',UNHEX('7750c9ffe14543f08073303c15c72ccc'));
CALL insert_study_file (UNHEX('e9fbe96c352c445fbbe00824abbbdf22'),'Archivo 5.jpg',UNHEX('7750c9ffe14543f08073303c15c72ccc'));
CALL insert_study_file (UNHEX('0647eb7951084bfdb8a1cc5cf2c48b1e'),'Archivo 6.txt',UNHEX('7750c9ffe14543f08073303c15c72ccc'));
CALL insert_study_file (UNHEX('18105677ca99471e9470ac5de53f7baf'),'Archivo 7.pdf',UNHEX('7750c9ffe14543f08073303c15c72ccc'));
CALL insert_study_file (UNHEX('327e3ad7f61c4a408b77c3f26494ec81'),'Archivo 8.jpg',UNHEX('7750c9ffe14543f08073303c15c72ccc'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('15be2664c9814ab38184651a49ded5a7'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('ae3cd392643e488d840567e1fb564353'),'ET');
# Se craran 4 archivos para el estudio 15be2664c9814ab38184651a49ded5a7
CALL insert_study_file (UNHEX('623e8a70221b4804a1c269405bc3017e'),'Archivo 0.doc',UNHEX('15be2664c9814ab38184651a49ded5a7'));
CALL insert_study_file (UNHEX('240531194ec24f91a15a29af85dfa625'),'Archivo 1.pdf',UNHEX('15be2664c9814ab38184651a49ded5a7'));
CALL insert_study_file (UNHEX('a61ce42837d04ebb8bc29abfa3119ee7'),'Archivo 2.pdf',UNHEX('15be2664c9814ab38184651a49ded5a7'));
CALL insert_study_file (UNHEX('687beec1a0d9458ea5cbb346053e2b6b'),'Archivo 3.pdf',UNHEX('15be2664c9814ab38184651a49ded5a7'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-06','Diferencial: Resfrio común.',UNHEX('9838eb2af2334169843c402e230db613'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('ae3cd392643e488d840567e1fb564353'),'BT');
# Se craran 4 archivos para el estudio 9838eb2af2334169843c402e230db613
CALL insert_study_file (UNHEX('dd0af846426e48e89d7a8dd227ef7b36'),'Archivo 0.doc',UNHEX('9838eb2af2334169843c402e230db613'));
CALL insert_study_file (UNHEX('98639c8909744110aa71ece0bb6d2b78'),'Archivo 1.pdf',UNHEX('9838eb2af2334169843c402e230db613'));
CALL insert_study_file (UNHEX('f00f9a3bac134e8dbf8ff7bc0b9040c8'),'Archivo 2.pdf',UNHEX('9838eb2af2334169843c402e230db613'));
CALL insert_study_file (UNHEX('544f8948322f4194b883a50c8d48bbbe'),'Archivo 3.doc',UNHEX('9838eb2af2334169843c402e230db613'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-12','Gripe estacional.',UNHEX('138754accaa14e2ebfde2d8d6700db42'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('ae3cd392643e488d840567e1fb564353'),'UA');
# Se craran 2 archivos para el estudio 138754accaa14e2ebfde2d8d6700db42
CALL insert_study_file (UNHEX('a47e105d3f644a19a86585564cb67c36'),'Archivo 0.txt',UNHEX('138754accaa14e2ebfde2d8d6700db42'));
CALL insert_study_file (UNHEX('39816fa77b35462099e89f7e1274c565'),'Archivo 1.pdf',UNHEX('138754accaa14e2ebfde2d8d6700db42'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-08','Gripe estacional.',UNHEX('35cd80ae2d8e4b47af5836da2141a2fc'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('ae3cd392643e488d840567e1fb564353'),'BT');
# Se craran 1 archivos para el estudio 35cd80ae2d8e4b47af5836da2141a2fc
CALL insert_study_file (UNHEX('e18e567ec9e64801802f4048ed3c51de'),'Archivo 0.txt',UNHEX('35cd80ae2d8e4b47af5836da2141a2fc'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-12','',UNHEX('5f6a894d2b0b40d083c36a397d6355ee'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Programada nueva consulta en 5 días.',UNHEX('ae3cd392643e488d840567e1fb564353'),'UA');
# Se craran 6 archivos para el estudio 5f6a894d2b0b40d083c36a397d6355ee
CALL insert_study_file (UNHEX('cb1cae0ac0664e05a0ddd77407a193f1'),'Archivo 0.jpg',UNHEX('5f6a894d2b0b40d083c36a397d6355ee'));
CALL insert_study_file (UNHEX('745ed7cfd1334e75b1802044fe4624fc'),'Archivo 1.pdf',UNHEX('5f6a894d2b0b40d083c36a397d6355ee'));
CALL insert_study_file (UNHEX('af39350a3b07409182dcfee5f3b22337'),'Archivo 2.txt',UNHEX('5f6a894d2b0b40d083c36a397d6355ee'));
CALL insert_study_file (UNHEX('fbb41137cb374312a72228ad1d25ae74'),'Archivo 3.txt',UNHEX('5f6a894d2b0b40d083c36a397d6355ee'));
CALL insert_study_file (UNHEX('a48d8872cf1a4faf920ffccb3c4b98d4'),'Archivo 4.doc',UNHEX('5f6a894d2b0b40d083c36a397d6355ee'));
CALL insert_study_file (UNHEX('465fe63587a348018250ef36229da471'),'Archivo 5.txt',UNHEX('5f6a894d2b0b40d083c36a397d6355ee'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('4d0424d50c2c429d9a80d80d30745db2'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('ae3cd392643e488d840567e1fb564353'),'BT');
# Se craran 4 archivos para el estudio 4d0424d50c2c429d9a80d80d30745db2
CALL insert_study_file (UNHEX('cbf460bcaa4c49fab911256b80f37b79'),'Archivo 0.txt',UNHEX('4d0424d50c2c429d9a80d80d30745db2'));
CALL insert_study_file (UNHEX('30f7c3151b854849af37fe44c1c31d2e'),'Archivo 1.doc',UNHEX('4d0424d50c2c429d9a80d80d30745db2'));
CALL insert_study_file (UNHEX('a29f21c1948341d28b4215cd9b94a89c'),'Archivo 2.doc',UNHEX('4d0424d50c2c429d9a80d80d30745db2'));
CALL insert_study_file (UNHEX('0c4af4066e224fa6b5bab2d70d603a0b'),'Archivo 3.pdf',UNHEX('4d0424d50c2c429d9a80d80d30745db2'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('4122d76987f54a5e838b5108b8e90d74'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('ae3cd392643e488d840567e1fb564353'),'BT');
# Se craran 8 archivos para el estudio 4122d76987f54a5e838b5108b8e90d74
CALL insert_study_file (UNHEX('7494924296a04047aa6e1fdc7cef826b'),'Archivo 0.doc',UNHEX('4122d76987f54a5e838b5108b8e90d74'));
CALL insert_study_file (UNHEX('3fb1ed53a5e445cda02d6e24c2cde77e'),'Archivo 1.doc',UNHEX('4122d76987f54a5e838b5108b8e90d74'));
CALL insert_study_file (UNHEX('b6b21855850141e38784bad1da54a96c'),'Archivo 2.txt',UNHEX('4122d76987f54a5e838b5108b8e90d74'));
CALL insert_study_file (UNHEX('8d1d7528dd2e406caa428026d0aa53fa'),'Archivo 3.doc',UNHEX('4122d76987f54a5e838b5108b8e90d74'));
CALL insert_study_file (UNHEX('823bbd25a78d475fbcb74ac6e9d4b696'),'Archivo 4.doc',UNHEX('4122d76987f54a5e838b5108b8e90d74'));
CALL insert_study_file (UNHEX('b092c0c2eca74e0ca5c820d9c114d561'),'Archivo 5.txt',UNHEX('4122d76987f54a5e838b5108b8e90d74'));
CALL insert_study_file (UNHEX('2f259e7c9e144464afc3ab23e10d091b'),'Archivo 6.jpg',UNHEX('4122d76987f54a5e838b5108b8e90d74'));
CALL insert_study_file (UNHEX('8fd36149e0ae4dd0a34c2204645d5fc9'),'Archivo 7.doc',UNHEX('4122d76987f54a5e838b5108b8e90d74'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 2403ce3e75004b488d48921c25434dbf
CALL insert_patient ('1941-07-22','3','F', UNHEX('2403ce3e75004b488d48921c25434dbf'),'Claudio, fidela','Hemocromatosis.','doctor');
# Se craran 7 estudios para el paciente 2403ce3e75004b488d48921c25434dbf
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('4142983f739f470fae66237bfaf2ac81'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('2403ce3e75004b488d48921c25434dbf'),'ET');
# Se craran 0 archivos para el estudio 4142983f739f470fae66237bfaf2ac81
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-07','Resfrio común.',UNHEX('00962f298f404e249ec4bdc842357ea7'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('2403ce3e75004b488d48921c25434dbf'),'UA');
# Se craran 7 archivos para el estudio 00962f298f404e249ec4bdc842357ea7
CALL insert_study_file (UNHEX('78a72b59017145458dc47efa2c651370'),'Archivo 0.pdf',UNHEX('00962f298f404e249ec4bdc842357ea7'));
CALL insert_study_file (UNHEX('8ddfa4d78ec14e41b2742f22999ca566'),'Archivo 1.doc',UNHEX('00962f298f404e249ec4bdc842357ea7'));
CALL insert_study_file (UNHEX('7616619d575b4488922e2f4588455969'),'Archivo 2.doc',UNHEX('00962f298f404e249ec4bdc842357ea7'));
CALL insert_study_file (UNHEX('fc872cee260c49568ee33a3f940b22e5'),'Archivo 3.jpg',UNHEX('00962f298f404e249ec4bdc842357ea7'));
CALL insert_study_file (UNHEX('d52265643c774f1b9c9778d6611fbff5'),'Archivo 4.doc',UNHEX('00962f298f404e249ec4bdc842357ea7'));
CALL insert_study_file (UNHEX('73436082eca8456089da3814a3c792bf'),'Archivo 5.txt',UNHEX('00962f298f404e249ec4bdc842357ea7'));
CALL insert_study_file (UNHEX('dd69ef8d9c94486db8b5130962608621'),'Archivo 6.txt',UNHEX('00962f298f404e249ec4bdc842357ea7'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-11','',UNHEX('eba66951106449f19efb553de1292222'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('2403ce3e75004b488d48921c25434dbf'),'BT');
# Se craran 1 archivos para el estudio eba66951106449f19efb553de1292222
CALL insert_study_file (UNHEX('b07425a0e2374e1ebe16555b2a6976bd'),'Archivo 0.doc',UNHEX('eba66951106449f19efb553de1292222'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('038b513b3b9245758d7fe8697a84a266'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Tolerancia muy baja a los sintomas gripales.',UNHEX('2403ce3e75004b488d48921c25434dbf'),'BT');
# Se craran 2 archivos para el estudio 038b513b3b9245758d7fe8697a84a266
CALL insert_study_file (UNHEX('49e442496b794703a34eca4cbb51d8dd'),'Archivo 0.jpg',UNHEX('038b513b3b9245758d7fe8697a84a266'));
CALL insert_study_file (UNHEX('0aaeea63476142efbbf1f3fa064e8ff3'),'Archivo 1.pdf',UNHEX('038b513b3b9245758d7fe8697a84a266'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-10','',UNHEX('59735ebb2cf44516a77a5baea6ff1c65'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('2403ce3e75004b488d48921c25434dbf'),'BT');
# Se craran 0 archivos para el estudio 59735ebb2cf44516a77a5baea6ff1c65
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('e8d304fa3e0e4edcb64c3bccd3ea05ef'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Programada nueva consulta en 5 días.',UNHEX('2403ce3e75004b488d48921c25434dbf'),'ET');
# Se craran 4 archivos para el estudio e8d304fa3e0e4edcb64c3bccd3ea05ef
CALL insert_study_file (UNHEX('844931fe2ea14ebe94fbdc1d6dff1d4e'),'Archivo 0.jpg',UNHEX('e8d304fa3e0e4edcb64c3bccd3ea05ef'));
CALL insert_study_file (UNHEX('52c4610018b24129a96927fa5bba36ff'),'Archivo 1.txt',UNHEX('e8d304fa3e0e4edcb64c3bccd3ea05ef'));
CALL insert_study_file (UNHEX('779f629579fa4e7fa76099322d079148'),'Archivo 2.doc',UNHEX('e8d304fa3e0e4edcb64c3bccd3ea05ef'));
CALL insert_study_file (UNHEX('05ef8971aa3448339ed0c7f26709562a'),'Archivo 3.pdf',UNHEX('e8d304fa3e0e4edcb64c3bccd3ea05ef'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-07','Diferencial: Resfrio común.',UNHEX('2044fe00d7fb4853a97709a4b1407c61'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('2403ce3e75004b488d48921c25434dbf'),'ET');
# Se craran 6 archivos para el estudio 2044fe00d7fb4853a97709a4b1407c61
CALL insert_study_file (UNHEX('6f867ed42fd64d19ac89e74d29387a1f'),'Archivo 0.doc',UNHEX('2044fe00d7fb4853a97709a4b1407c61'));
CALL insert_study_file (UNHEX('10cf84d053af48f38fd636708f4e0605'),'Archivo 1.doc',UNHEX('2044fe00d7fb4853a97709a4b1407c61'));
CALL insert_study_file (UNHEX('55d4e203d4ae4c48916dc66aa5d3d641'),'Archivo 2.doc',UNHEX('2044fe00d7fb4853a97709a4b1407c61'));
CALL insert_study_file (UNHEX('b359267cd1584cfdb2c5a714c4ea92e5'),'Archivo 3.pdf',UNHEX('2044fe00d7fb4853a97709a4b1407c61'));
CALL insert_study_file (UNHEX('5962bd056b004ce19ddaed3cf9026595'),'Archivo 4.jpg',UNHEX('2044fe00d7fb4853a97709a4b1407c61'));
CALL insert_study_file (UNHEX('6e2ec21037cf446ba0c41149e52894a2'),'Archivo 5.txt',UNHEX('2044fe00d7fb4853a97709a4b1407c61'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente cce1ec65aeee424d874bf326b243ad16
CALL insert_patient ('1936-07-07','6','F', UNHEX('cce1ec65aeee424d874bf326b243ad16'),'Martinez-Ramos, Erica','Fumador.','doctor');
# Se craran 12 estudios para el paciente cce1ec65aeee424d874bf326b243ad16
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-06','Posibles alergias estacionales.',UNHEX('6add6b5a07734fd593836c01340cfb22'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('cce1ec65aeee424d874bf326b243ad16'),'ET');
# Se craran 5 archivos para el estudio 6add6b5a07734fd593836c01340cfb22
CALL insert_study_file (UNHEX('fa7aa8c2ef0a4fda97da8ad20f0fcdc6'),'Archivo 0.txt',UNHEX('6add6b5a07734fd593836c01340cfb22'));
CALL insert_study_file (UNHEX('e4aa532b85c444af8d2aba3ec8e88a24'),'Archivo 1.pdf',UNHEX('6add6b5a07734fd593836c01340cfb22'));
CALL insert_study_file (UNHEX('1a9397145cf14001b68d1df8acdc7403'),'Archivo 2.jpg',UNHEX('6add6b5a07734fd593836c01340cfb22'));
CALL insert_study_file (UNHEX('335296b5f9ca46a78a77c4b82b8b632b'),'Archivo 3.doc',UNHEX('6add6b5a07734fd593836c01340cfb22'));
CALL insert_study_file (UNHEX('cba73c63b9e34afda4ae660c8ec44413'),'Archivo 4.txt',UNHEX('6add6b5a07734fd593836c01340cfb22'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-06','Gripe estacional.',UNHEX('8fea4e6b91fd42a98274317bc3f6465c'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('cce1ec65aeee424d874bf326b243ad16'),'UA');
# Se craran 4 archivos para el estudio 8fea4e6b91fd42a98274317bc3f6465c
CALL insert_study_file (UNHEX('9f3b86dd7ca744358709383b30ea4d3b'),'Archivo 0.doc',UNHEX('8fea4e6b91fd42a98274317bc3f6465c'));
CALL insert_study_file (UNHEX('05b38e15eedf45a88dbe4f3031249f9e'),'Archivo 1.doc',UNHEX('8fea4e6b91fd42a98274317bc3f6465c'));
CALL insert_study_file (UNHEX('6edc3b86f5c3413b9f5dd4b654537343'),'Archivo 2.doc',UNHEX('8fea4e6b91fd42a98274317bc3f6465c'));
CALL insert_study_file (UNHEX('4c395d9db2f84e689546bbd1ff6d1da2'),'Archivo 3.jpg',UNHEX('8fea4e6b91fd42a98274317bc3f6465c'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-07','Diferencial: Gripe H1N1',UNHEX('3a71154d6c9f42fbaa49e8bb8ea3080f'),'Oseltamivir oral, 1 comprimido cada 6 horas 
Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo absoluto por 8 días.
Análisis generales: Orina completo, sangre completo y ecg.','---',UNHEX('cce1ec65aeee424d874bf326b243ad16'),'BT');
# Se craran 8 archivos para el estudio 3a71154d6c9f42fbaa49e8bb8ea3080f
CALL insert_study_file (UNHEX('905ba2f62b8c428aab024ffba657685f'),'Archivo 0.doc',UNHEX('3a71154d6c9f42fbaa49e8bb8ea3080f'));
CALL insert_study_file (UNHEX('51c4b6748186448f8cb7e305e8195072'),'Archivo 1.doc',UNHEX('3a71154d6c9f42fbaa49e8bb8ea3080f'));
CALL insert_study_file (UNHEX('2412c94995034aef8c6d817d806001a6'),'Archivo 2.pdf',UNHEX('3a71154d6c9f42fbaa49e8bb8ea3080f'));
CALL insert_study_file (UNHEX('d672e02f95494bab8212239ca8274377'),'Archivo 3.jpg',UNHEX('3a71154d6c9f42fbaa49e8bb8ea3080f'));
CALL insert_study_file (UNHEX('50c77670661e45a4ad00cfca4c2b8c74'),'Archivo 4.pdf',UNHEX('3a71154d6c9f42fbaa49e8bb8ea3080f'));
CALL insert_study_file (UNHEX('69ae87c3b9e847b0ade3a70ee8343896'),'Archivo 5.jpg',UNHEX('3a71154d6c9f42fbaa49e8bb8ea3080f'));
CALL insert_study_file (UNHEX('5d84c1c5c6cb4f889a3362ccf1a259c4'),'Archivo 6.doc',UNHEX('3a71154d6c9f42fbaa49e8bb8ea3080f'));
CALL insert_study_file (UNHEX('5cf820646420403198f109a9f82976d7'),'Archivo 7.doc',UNHEX('3a71154d6c9f42fbaa49e8bb8ea3080f'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-07','Posibles alergias estacionales.',UNHEX('943ac7166dc446d48ac5cd2e469ab184'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('cce1ec65aeee424d874bf326b243ad16'),'UA');
# Se craran 1 archivos para el estudio 943ac7166dc446d48ac5cd2e469ab184
CALL insert_study_file (UNHEX('6f4a9ee35c7b40b79dcf7cecc1423345'),'Archivo 0.doc',UNHEX('943ac7166dc446d48ac5cd2e469ab184'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('555c5c13414d4cfab15b64fd621fcf9d'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','---',UNHEX('cce1ec65aeee424d874bf326b243ad16'),'UA');
# Se craran 2 archivos para el estudio 555c5c13414d4cfab15b64fd621fcf9d
CALL insert_study_file (UNHEX('1c6a95400fb04cf29b56f9cf4ea36e15'),'Archivo 0.jpg',UNHEX('555c5c13414d4cfab15b64fd621fcf9d'));
CALL insert_study_file (UNHEX('6cecd340ae4143b999dbeca9216253c2'),'Archivo 1.doc',UNHEX('555c5c13414d4cfab15b64fd621fcf9d'));
# Fin creacion de archivos
CALL insert_study (' - Dolores corporales 
 - Dolor de cabeza 
 - Mareos 
 - Cansancio 
 - Secreciones nasales','2014-08-05','Resfrio común.',UNHEX('3d9ebb705759400ab9108f2ac5be083e'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('cce1ec65aeee424d874bf326b243ad16'),'BT');
# Se craran 0 archivos para el estudio 3d9ebb705759400ab9108f2ac5be083e
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-12','Resfrio común.',UNHEX('489da2a4f4bc4f81b7fff540ba5b4aa7'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('cce1ec65aeee424d874bf326b243ad16'),'UA');
# Se craran 7 archivos para el estudio 489da2a4f4bc4f81b7fff540ba5b4aa7
CALL insert_study_file (UNHEX('a2b02bab6e2f485586c4812566dac5ba'),'Archivo 0.jpg',UNHEX('489da2a4f4bc4f81b7fff540ba5b4aa7'));
CALL insert_study_file (UNHEX('bbdaa967d5e64d018e35781a2f9627d3'),'Archivo 1.jpg',UNHEX('489da2a4f4bc4f81b7fff540ba5b4aa7'));
CALL insert_study_file (UNHEX('9eddf42bfd6843ff972c204463bccf21'),'Archivo 2.jpg',UNHEX('489da2a4f4bc4f81b7fff540ba5b4aa7'));
CALL insert_study_file (UNHEX('f7412e2de41d41158762aa45affe9f27'),'Archivo 3.doc',UNHEX('489da2a4f4bc4f81b7fff540ba5b4aa7'));
CALL insert_study_file (UNHEX('5b482afa5a554841ae7c41e15b431056'),'Archivo 4.txt',UNHEX('489da2a4f4bc4f81b7fff540ba5b4aa7'));
CALL insert_study_file (UNHEX('1f61eccc56ab45ac99d26143f596053a'),'Archivo 5.txt',UNHEX('489da2a4f4bc4f81b7fff540ba5b4aa7'));
CALL insert_study_file (UNHEX('31de5511124d4a5a876f24947424988b'),'Archivo 6.jpg',UNHEX('489da2a4f4bc4f81b7fff540ba5b4aa7'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-05','',UNHEX('ec2279ab18764016a11131ae00c3fbed'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','---',UNHEX('cce1ec65aeee424d874bf326b243ad16'),'ET');
# Se craran 2 archivos para el estudio ec2279ab18764016a11131ae00c3fbed
CALL insert_study_file (UNHEX('1f52055c011f42dca595bd436de319bf'),'Archivo 0.jpg',UNHEX('ec2279ab18764016a11131ae00c3fbed'));
CALL insert_study_file (UNHEX('0ca60a338f41464797292b915f85641d'),'Archivo 1.pdf',UNHEX('ec2279ab18764016a11131ae00c3fbed'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('f2a96fc43e304c1e8c8ce0de7b6a8a8b'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('cce1ec65aeee424d874bf326b243ad16'),'ET');
# Se craran 5 archivos para el estudio f2a96fc43e304c1e8c8ce0de7b6a8a8b
CALL insert_study_file (UNHEX('cb740057b0a149b8a8275f99065da093'),'Archivo 0.txt',UNHEX('f2a96fc43e304c1e8c8ce0de7b6a8a8b'));
CALL insert_study_file (UNHEX('0fadb85060704a19b53d15ff964ed0cc'),'Archivo 1.pdf',UNHEX('f2a96fc43e304c1e8c8ce0de7b6a8a8b'));
CALL insert_study_file (UNHEX('0efac4e9f42b4382a84e98444974f50c'),'Archivo 2.jpg',UNHEX('f2a96fc43e304c1e8c8ce0de7b6a8a8b'));
CALL insert_study_file (UNHEX('d58055c3b26549d19a68c3c8bdb34879'),'Archivo 3.txt',UNHEX('f2a96fc43e304c1e8c8ce0de7b6a8a8b'));
CALL insert_study_file (UNHEX('46e4b0337fca4281a7c86b507c63137e'),'Archivo 4.jpg',UNHEX('f2a96fc43e304c1e8c8ce0de7b6a8a8b'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('09f676ff579648d688f801a6602b11a4'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','Tolerancia muy baja a los sintomas gripales.',UNHEX('cce1ec65aeee424d874bf326b243ad16'),'ET');
# Se craran 3 archivos para el estudio 09f676ff579648d688f801a6602b11a4
CALL insert_study_file (UNHEX('8043c7635f934ea2b6457155d975ed8f'),'Archivo 0.pdf',UNHEX('09f676ff579648d688f801a6602b11a4'));
CALL insert_study_file (UNHEX('74c0ddcd8edb4adfb8fbcc9341bf02b3'),'Archivo 1.jpg',UNHEX('09f676ff579648d688f801a6602b11a4'));
CALL insert_study_file (UNHEX('8ca2b8bd457b4fa796547032fb8a7579'),'Archivo 2.doc',UNHEX('09f676ff579648d688f801a6602b11a4'));
# Fin creacion de archivos
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-11','Diferencial: Resfrio común.',UNHEX('b8c0fa830c6340ca9b4eae9767baad81'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('cce1ec65aeee424d874bf326b243ad16'),'UA');
# Se craran 4 archivos para el estudio b8c0fa830c6340ca9b4eae9767baad81
CALL insert_study_file (UNHEX('95897e02068c451791ae65c3a43fce8e'),'Archivo 0.doc',UNHEX('b8c0fa830c6340ca9b4eae9767baad81'));
CALL insert_study_file (UNHEX('a0018c94c6a04d2d98e24d50ccdc5a5c'),'Archivo 1.pdf',UNHEX('b8c0fa830c6340ca9b4eae9767baad81'));
CALL insert_study_file (UNHEX('7582f17b2d9c46629d9f2db37057e679'),'Archivo 2.doc',UNHEX('b8c0fa830c6340ca9b4eae9767baad81'));
CALL insert_study_file (UNHEX('f1c1b62b28934ee19a00a8ab5ae172a3'),'Archivo 3.jpg',UNHEX('b8c0fa830c6340ca9b4eae9767baad81'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-09','',UNHEX('e2d646941bbe4e379704e40d30322387'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Tolerancia muy baja a los sintomas gripales.',UNHEX('cce1ec65aeee424d874bf326b243ad16'),'ET');
# Se craran 2 archivos para el estudio e2d646941bbe4e379704e40d30322387
CALL insert_study_file (UNHEX('23de013fded147558f3009be44b29a9f'),'Archivo 0.doc',UNHEX('e2d646941bbe4e379704e40d30322387'));
CALL insert_study_file (UNHEX('b2e0bdbbd5b141c4bec93cadd938d7ba'),'Archivo 1.txt',UNHEX('e2d646941bbe4e379704e40d30322387'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente ab577c72292c4459b92efff998c1387e
CALL insert_patient ('1966-11-03','5','M', UNHEX('ab577c72292c4459b92efff998c1387e'),'Bonifazi, Cameron','','doctor');
# Se craran 4 estudios para el paciente ab577c72292c4459b92efff998c1387e
CALL insert_study ('El paciente concurre con dolor corporal, cansancio y secreciones nasales.','2014-08-06','Posibles alergias estacionales.',UNHEX('f4f7c914f40442c89ccc5311c17d99a0'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','---',UNHEX('ab577c72292c4459b92efff998c1387e'),'UA');
# Se craran 6 archivos para el estudio f4f7c914f40442c89ccc5311c17d99a0
CALL insert_study_file (UNHEX('343510c53a744af9a5eac2f0073b5079'),'Archivo 0.pdf',UNHEX('f4f7c914f40442c89ccc5311c17d99a0'));
CALL insert_study_file (UNHEX('facc9e0fd3b34c95b9a59a9c61e796de'),'Archivo 1.doc',UNHEX('f4f7c914f40442c89ccc5311c17d99a0'));
CALL insert_study_file (UNHEX('918326f643bf4e169d8c8622fe0eec00'),'Archivo 2.txt',UNHEX('f4f7c914f40442c89ccc5311c17d99a0'));
CALL insert_study_file (UNHEX('013b81c7d76a4d8cb3dd6e40c0906876'),'Archivo 3.txt',UNHEX('f4f7c914f40442c89ccc5311c17d99a0'));
CALL insert_study_file (UNHEX('e1b9a2d35f514839bf1aa8246686ea30'),'Archivo 4.jpg',UNHEX('f4f7c914f40442c89ccc5311c17d99a0'));
CALL insert_study_file (UNHEX('afdd77761150432bbb57a34e9d501eab'),'Archivo 5.jpg',UNHEX('f4f7c914f40442c89ccc5311c17d99a0'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-06','',UNHEX('8e2601fd7bb94b779e8f4d0fe05304b5'),'Antigripal con pseudoefedrina e ibuprofeno, 1 comprimido cada 8 horas y reposo por 3 días. 
Se recomiendan análisis generales.','---',UNHEX('ab577c72292c4459b92efff998c1387e'),'BT');
# Se craran 2 archivos para el estudio 8e2601fd7bb94b779e8f4d0fe05304b5
CALL insert_study_file (UNHEX('aef7afa1d6c544d0b30116639beba12c'),'Archivo 0.txt',UNHEX('8e2601fd7bb94b779e8f4d0fe05304b5'));
CALL insert_study_file (UNHEX('c4719160c8f54714a996696240c40b13'),'Archivo 1.jpg',UNHEX('8e2601fd7bb94b779e8f4d0fe05304b5'));
# Fin creacion de archivos
CALL insert_study ('Control de rutina.','2014-08-08','',UNHEX('9c5172bc935c438dbfd5413c58fc33fd'),'Descongestionantes o antigripales en té, 1 sobre cada 8 horas.','Tolerancia muy baja a los sintomas gripales.',UNHEX('ab577c72292c4459b92efff998c1387e'),'BT');
# Se craran 5 archivos para el estudio 9c5172bc935c438dbfd5413c58fc33fd
CALL insert_study_file (UNHEX('0cb8e598248d439396ccec9786ad5f33'),'Archivo 0.doc',UNHEX('9c5172bc935c438dbfd5413c58fc33fd'));
CALL insert_study_file (UNHEX('846ec0954c45473b88032f2c50fb588d'),'Archivo 1.jpg',UNHEX('9c5172bc935c438dbfd5413c58fc33fd'));
CALL insert_study_file (UNHEX('f6fc7ad3a4c8444b80711fe565caafe4'),'Archivo 2.doc',UNHEX('9c5172bc935c438dbfd5413c58fc33fd'));
CALL insert_study_file (UNHEX('500e182943c442759d755607c4571cb7'),'Archivo 3.pdf',UNHEX('9c5172bc935c438dbfd5413c58fc33fd'));
CALL insert_study_file (UNHEX('420983c58a664bc692ce125c5a0eaf7a'),'Archivo 4.jpg',UNHEX('9c5172bc935c438dbfd5413c58fc33fd'));
# Fin creacion de archivos
CALL insert_study ('El paciente presenta secreciones nasales, dolor de cabeza y mareos.','2014-08-06','Diferencial: Resfrio común.',UNHEX('4624a4973d5b40b59efe95eb7c8359f3'),'Spray nasal con xilometazolina e ibuprofeno 400, 1 comprimido cada 6 horas y reposo por 3 días.','Programada nueva consulta en 5 días.',UNHEX('ab577c72292c4459b92efff998c1387e'),'ET');
# Se craran 8 archivos para el estudio 4624a4973d5b40b59efe95eb7c8359f3
CALL insert_study_file (UNHEX('f3fb69ebc18440a19a393591fa88a6a9'),'Archivo 0.txt',UNHEX('4624a4973d5b40b59efe95eb7c8359f3'));
CALL insert_study_file (UNHEX('a78bf129ee2440adbbf4b3c2670030cd'),'Archivo 1.pdf',UNHEX('4624a4973d5b40b59efe95eb7c8359f3'));
CALL insert_study_file (UNHEX('eedf3fc63902423c9b9a568d0571b5e0'),'Archivo 2.pdf',UNHEX('4624a4973d5b40b59efe95eb7c8359f3'));
CALL insert_study_file (UNHEX('007171b9408a494286414f57aab10466'),'Archivo 3.doc',UNHEX('4624a4973d5b40b59efe95eb7c8359f3'));
CALL insert_study_file (UNHEX('625cc8bdbfd94f7bad58f9865e6a2f4a'),'Archivo 4.txt',UNHEX('4624a4973d5b40b59efe95eb7c8359f3'));
CALL insert_study_file (UNHEX('944aa1b612cd4523b50d2b885e6c46c9'),'Archivo 5.doc',UNHEX('4624a4973d5b40b59efe95eb7c8359f3'));
CALL insert_study_file (UNHEX('684fc089883a47149ba37f217b6213c7'),'Archivo 6.jpg',UNHEX('4624a4973d5b40b59efe95eb7c8359f3'));
CALL insert_study_file (UNHEX('f171eec375ca471082575e83aa6ed9d0'),'Archivo 7.jpg',UNHEX('4624a4973d5b40b59efe95eb7c8359f3'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



