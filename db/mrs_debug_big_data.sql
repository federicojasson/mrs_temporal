USE mrs_db

# Se creara el paciente 2064ce4d5aac4f349bed93b26eb7a6b0
CALL insert_patient ('1964-05-24','7','F', UNHEX('2064ce4d5aac4f349bed93b26eb7a6b0'),'Cogan, Constancia','doctor');
# Se craran 11 estudios para el paciente 2064ce4d5aac4f349bed93b26eb7a6b0
CALL insert_study ('2014-08-02',UNHEX('9eaf34867a1d47d7b7abf36eaa4ea0d4'),'Observación correspondiente al estudio 9eaf34867a1d47d7b7abf36eaa4ea0d4.',UNHEX('2064ce4d5aac4f349bed93b26eb7a6b0'),'BT');
# Se craran 0 archivos para el estudio 9eaf34867a1d47d7b7abf36eaa4ea0d4
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('1371ca6fd3914be7b3d360dfbd18099c'),'Observación correspondiente al estudio 1371ca6fd3914be7b3d360dfbd18099c.',UNHEX('2064ce4d5aac4f349bed93b26eb7a6b0'),'BT');
# Se craran 3 archivos para el estudio 1371ca6fd3914be7b3d360dfbd18099c
CALL insert_study_file (UNHEX('1642f4b3d6d5420393e47884acb5be20'),'Archivo 0.pdf',UNHEX('1371ca6fd3914be7b3d360dfbd18099c'));
CALL insert_study_file (UNHEX('4f4144b998b34294bd84821b11ead9f8'),'Archivo 1.doc',UNHEX('1371ca6fd3914be7b3d360dfbd18099c'));
CALL insert_study_file (UNHEX('44c64ef5919346f9bfb2bfcc69bb5c12'),'Archivo 2.jpg',UNHEX('1371ca6fd3914be7b3d360dfbd18099c'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('dfd7d887c7074d908ed15976a4b67182'),'Observación correspondiente al estudio dfd7d887c7074d908ed15976a4b67182.',UNHEX('2064ce4d5aac4f349bed93b26eb7a6b0'),'ET');
# Se craran 5 archivos para el estudio dfd7d887c7074d908ed15976a4b67182
CALL insert_study_file (UNHEX('1010bd27e35640138872d7656dd02ee7'),'Archivo 0.txt',UNHEX('dfd7d887c7074d908ed15976a4b67182'));
CALL insert_study_file (UNHEX('4327e084299b4e8bbb9be238baf38ea5'),'Archivo 1.doc',UNHEX('dfd7d887c7074d908ed15976a4b67182'));
CALL insert_study_file (UNHEX('7376eaa345d8468ca06644461b91fb07'),'Archivo 2.jpg',UNHEX('dfd7d887c7074d908ed15976a4b67182'));
CALL insert_study_file (UNHEX('55e4f3c21fad47db9d0c2095ca284321'),'Archivo 3.txt',UNHEX('dfd7d887c7074d908ed15976a4b67182'));
CALL insert_study_file (UNHEX('57847a5930424ade9aa0af700850eb92'),'Archivo 4.pdf',UNHEX('dfd7d887c7074d908ed15976a4b67182'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('93f771ed5ba84ed6a3b1be2916efdc3d'),'Observación correspondiente al estudio 93f771ed5ba84ed6a3b1be2916efdc3d.',UNHEX('2064ce4d5aac4f349bed93b26eb7a6b0'),'UA');
# Se craran 1 archivos para el estudio 93f771ed5ba84ed6a3b1be2916efdc3d
CALL insert_study_file (UNHEX('e724b649eebd46c282519cedea4037da'),'Archivo 0.jpg',UNHEX('93f771ed5ba84ed6a3b1be2916efdc3d'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('8ac7d0b9b6814e7fad62eb942c95ddc4'),'Observación correspondiente al estudio 8ac7d0b9b6814e7fad62eb942c95ddc4.',UNHEX('2064ce4d5aac4f349bed93b26eb7a6b0'),'UA');
# Se craran 3 archivos para el estudio 8ac7d0b9b6814e7fad62eb942c95ddc4
CALL insert_study_file (UNHEX('1918867451d0493199b9dc5d3c688d84'),'Archivo 0.txt',UNHEX('8ac7d0b9b6814e7fad62eb942c95ddc4'));
CALL insert_study_file (UNHEX('3ba1e2e929c9453faa0721e1423248c6'),'Archivo 1.pdf',UNHEX('8ac7d0b9b6814e7fad62eb942c95ddc4'));
CALL insert_study_file (UNHEX('a8635a8c40194364b8975b6bfa303599'),'Archivo 2.jpg',UNHEX('8ac7d0b9b6814e7fad62eb942c95ddc4'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('ecb96425f9ab4c65aae89857bb3e1df6'),'Observación correspondiente al estudio ecb96425f9ab4c65aae89857bb3e1df6.',UNHEX('2064ce4d5aac4f349bed93b26eb7a6b0'),'ET');
# Se craran 7 archivos para el estudio ecb96425f9ab4c65aae89857bb3e1df6
CALL insert_study_file (UNHEX('fa4b848fddba46edb2feaf632dc7e000'),'Archivo 0.pdf',UNHEX('ecb96425f9ab4c65aae89857bb3e1df6'));
CALL insert_study_file (UNHEX('b0f96d915a5f4266b439fb48cb491b91'),'Archivo 1.txt',UNHEX('ecb96425f9ab4c65aae89857bb3e1df6'));
CALL insert_study_file (UNHEX('3d3cefd56a0a49d1bc1c32933823f4bf'),'Archivo 2.doc',UNHEX('ecb96425f9ab4c65aae89857bb3e1df6'));
CALL insert_study_file (UNHEX('feaa6e7f49c24275a64b7b3831054e1f'),'Archivo 3.doc',UNHEX('ecb96425f9ab4c65aae89857bb3e1df6'));
CALL insert_study_file (UNHEX('d4f123720dba47c4acdfbc5d92ba3334'),'Archivo 4.txt',UNHEX('ecb96425f9ab4c65aae89857bb3e1df6'));
CALL insert_study_file (UNHEX('6d6f3df3cbd44617bfe83c7669decfa2'),'Archivo 5.txt',UNHEX('ecb96425f9ab4c65aae89857bb3e1df6'));
CALL insert_study_file (UNHEX('5e6897bf39174dc6b152653447e128fd'),'Archivo 6.jpg',UNHEX('ecb96425f9ab4c65aae89857bb3e1df6'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('7ad2371e20e74044b84bff9180c5ea5f'),'Observación correspondiente al estudio 7ad2371e20e74044b84bff9180c5ea5f.',UNHEX('2064ce4d5aac4f349bed93b26eb7a6b0'),'UA');
# Se craran 9 archivos para el estudio 7ad2371e20e74044b84bff9180c5ea5f
CALL insert_study_file (UNHEX('0c4421e700ee419db20d62d10374f7bb'),'Archivo 0.txt',UNHEX('7ad2371e20e74044b84bff9180c5ea5f'));
CALL insert_study_file (UNHEX('69bef323ab8e4074b0b6e898a39fa7e7'),'Archivo 1.jpg',UNHEX('7ad2371e20e74044b84bff9180c5ea5f'));
CALL insert_study_file (UNHEX('612755826341430ea52fcee91b8a8fd8'),'Archivo 2.txt',UNHEX('7ad2371e20e74044b84bff9180c5ea5f'));
CALL insert_study_file (UNHEX('d273d9e1425342599f51276f71f94e1a'),'Archivo 3.pdf',UNHEX('7ad2371e20e74044b84bff9180c5ea5f'));
CALL insert_study_file (UNHEX('ca17ceba4cde4f35a0667021a956c3c7'),'Archivo 4.jpg',UNHEX('7ad2371e20e74044b84bff9180c5ea5f'));
CALL insert_study_file (UNHEX('d91df337f9dd491da6a347bed3842210'),'Archivo 5.jpg',UNHEX('7ad2371e20e74044b84bff9180c5ea5f'));
CALL insert_study_file (UNHEX('6cd2dae39de943b19250eacf4a91e077'),'Archivo 6.pdf',UNHEX('7ad2371e20e74044b84bff9180c5ea5f'));
CALL insert_study_file (UNHEX('e358ef797a584e429b34f3feb075cb72'),'Archivo 7.doc',UNHEX('7ad2371e20e74044b84bff9180c5ea5f'));
CALL insert_study_file (UNHEX('8b737453e7824cd59c987c833262c29b'),'Archivo 8.txt',UNHEX('7ad2371e20e74044b84bff9180c5ea5f'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('afc8d9ed0e9d451298dbd2d3416ede7a'),'Observación correspondiente al estudio afc8d9ed0e9d451298dbd2d3416ede7a.',UNHEX('2064ce4d5aac4f349bed93b26eb7a6b0'),'BT');
# Se craran 6 archivos para el estudio afc8d9ed0e9d451298dbd2d3416ede7a
CALL insert_study_file (UNHEX('a529998a767e44cab0a09114f3b884c6'),'Archivo 0.pdf',UNHEX('afc8d9ed0e9d451298dbd2d3416ede7a'));
CALL insert_study_file (UNHEX('a0e8cf269a2948a9a16c64525ad255a0'),'Archivo 1.doc',UNHEX('afc8d9ed0e9d451298dbd2d3416ede7a'));
CALL insert_study_file (UNHEX('c00137201d8744c184ec7739772ee4e5'),'Archivo 2.txt',UNHEX('afc8d9ed0e9d451298dbd2d3416ede7a'));
CALL insert_study_file (UNHEX('d70ddb20b1034e77bf6af57b3cc94a27'),'Archivo 3.txt',UNHEX('afc8d9ed0e9d451298dbd2d3416ede7a'));
CALL insert_study_file (UNHEX('e0b5e12747454dfdae0992210becbfc0'),'Archivo 4.doc',UNHEX('afc8d9ed0e9d451298dbd2d3416ede7a'));
CALL insert_study_file (UNHEX('8fd9ca2261b34675a09d1b94690d6f42'),'Archivo 5.doc',UNHEX('afc8d9ed0e9d451298dbd2d3416ede7a'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('dc42e18aaad34e01b7019e95619d1c66'),'Observación correspondiente al estudio dc42e18aaad34e01b7019e95619d1c66.',UNHEX('2064ce4d5aac4f349bed93b26eb7a6b0'),'BT');
# Se craran 0 archivos para el estudio dc42e18aaad34e01b7019e95619d1c66
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('4da3e0715a9e4da99dd94b2cd4fae186'),'Observación correspondiente al estudio 4da3e0715a9e4da99dd94b2cd4fae186.',UNHEX('2064ce4d5aac4f349bed93b26eb7a6b0'),'UA');
# Se craran 0 archivos para el estudio 4da3e0715a9e4da99dd94b2cd4fae186
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('fc1dcb50be6d42a09724efb87051c328'),'Observación correspondiente al estudio fc1dcb50be6d42a09724efb87051c328.',UNHEX('2064ce4d5aac4f349bed93b26eb7a6b0'),'UA');
# Se craran 3 archivos para el estudio fc1dcb50be6d42a09724efb87051c328
CALL insert_study_file (UNHEX('3e209faacbb84a7faee1bac57022eb9c'),'Archivo 0.jpg',UNHEX('fc1dcb50be6d42a09724efb87051c328'));
CALL insert_study_file (UNHEX('8a3126c1f6b74d8bbbae8a1a0b2de31e'),'Archivo 1.doc',UNHEX('fc1dcb50be6d42a09724efb87051c328'));
CALL insert_study_file (UNHEX('03ddb7e8d77341579ea53d7f21eaa4e3'),'Archivo 2.doc',UNHEX('fc1dcb50be6d42a09724efb87051c328'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 8bb959b20c09421692cc415ba1dd4725
CALL insert_patient ('1966-12-25','3','F', UNHEX('8bb959b20c09421692cc415ba1dd4725'),'Tham, Margot Lynett','doctor');
# Se craran 10 estudios para el paciente 8bb959b20c09421692cc415ba1dd4725
CALL insert_study ('2014-08-05',UNHEX('bf5c87372ac740d88d39b0e94489b001'),'Observación correspondiente al estudio bf5c87372ac740d88d39b0e94489b001.',UNHEX('8bb959b20c09421692cc415ba1dd4725'),'ET');
# Se craran 8 archivos para el estudio bf5c87372ac740d88d39b0e94489b001
CALL insert_study_file (UNHEX('43b359bb10f34e72a569942e6f9ab792'),'Archivo 0.jpg',UNHEX('bf5c87372ac740d88d39b0e94489b001'));
CALL insert_study_file (UNHEX('0eee5bc343bf40a5acf192d5f085e452'),'Archivo 1.pdf',UNHEX('bf5c87372ac740d88d39b0e94489b001'));
CALL insert_study_file (UNHEX('e32aa567ab974ceea264d192f905e1f8'),'Archivo 2.jpg',UNHEX('bf5c87372ac740d88d39b0e94489b001'));
CALL insert_study_file (UNHEX('b7be0603b6e241689a0e557b2d0637aa'),'Archivo 3.doc',UNHEX('bf5c87372ac740d88d39b0e94489b001'));
CALL insert_study_file (UNHEX('c564268b548740d3af7e91962776f941'),'Archivo 4.pdf',UNHEX('bf5c87372ac740d88d39b0e94489b001'));
CALL insert_study_file (UNHEX('1186b6ac9c834c2f8072db9d8c38e952'),'Archivo 5.pdf',UNHEX('bf5c87372ac740d88d39b0e94489b001'));
CALL insert_study_file (UNHEX('fdf71629205d4917ba4c2c93a1995a7d'),'Archivo 6.doc',UNHEX('bf5c87372ac740d88d39b0e94489b001'));
CALL insert_study_file (UNHEX('5f52e3591ae44315b9f6dceff715ca91'),'Archivo 7.pdf',UNHEX('bf5c87372ac740d88d39b0e94489b001'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('9fcac3e8c96a433c9d7b3b1a8e8a2198'),'Observación correspondiente al estudio 9fcac3e8c96a433c9d7b3b1a8e8a2198.',UNHEX('8bb959b20c09421692cc415ba1dd4725'),'BT');
# Se craran 3 archivos para el estudio 9fcac3e8c96a433c9d7b3b1a8e8a2198
CALL insert_study_file (UNHEX('ec816c304cce47258c3b6739ac4d437f'),'Archivo 0.jpg',UNHEX('9fcac3e8c96a433c9d7b3b1a8e8a2198'));
CALL insert_study_file (UNHEX('ae96603d013b48a498f9efc591991bc1'),'Archivo 1.jpg',UNHEX('9fcac3e8c96a433c9d7b3b1a8e8a2198'));
CALL insert_study_file (UNHEX('979b23c2602e45928d82267110778e30'),'Archivo 2.jpg',UNHEX('9fcac3e8c96a433c9d7b3b1a8e8a2198'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('85250976850f424f89ed3b480abc8c5a'),'Observación correspondiente al estudio 85250976850f424f89ed3b480abc8c5a.',UNHEX('8bb959b20c09421692cc415ba1dd4725'),'ET');
# Se craran 5 archivos para el estudio 85250976850f424f89ed3b480abc8c5a
CALL insert_study_file (UNHEX('3a8c9207e71c4d23931ae690cdd79b56'),'Archivo 0.txt',UNHEX('85250976850f424f89ed3b480abc8c5a'));
CALL insert_study_file (UNHEX('5c6c8569a1c94d9188648a91bde70943'),'Archivo 1.txt',UNHEX('85250976850f424f89ed3b480abc8c5a'));
CALL insert_study_file (UNHEX('f240e04038a34576b24247c8a57dfab5'),'Archivo 2.txt',UNHEX('85250976850f424f89ed3b480abc8c5a'));
CALL insert_study_file (UNHEX('74e521f673124701985beabcb1c23a68'),'Archivo 3.doc',UNHEX('85250976850f424f89ed3b480abc8c5a'));
CALL insert_study_file (UNHEX('0ab5a8a7c9f341e5bffe96fe8c2f7ddc'),'Archivo 4.txt',UNHEX('85250976850f424f89ed3b480abc8c5a'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('ebf09995f73642ee815393186bebe7ab'),'Observación correspondiente al estudio ebf09995f73642ee815393186bebe7ab.',UNHEX('8bb959b20c09421692cc415ba1dd4725'),'UA');
# Se craran 7 archivos para el estudio ebf09995f73642ee815393186bebe7ab
CALL insert_study_file (UNHEX('8400b4f60484410dbb2db20d3b4b4ee8'),'Archivo 0.jpg',UNHEX('ebf09995f73642ee815393186bebe7ab'));
CALL insert_study_file (UNHEX('c59e350857004381a6ad7006a872d577'),'Archivo 1.doc',UNHEX('ebf09995f73642ee815393186bebe7ab'));
CALL insert_study_file (UNHEX('108aab5f1c014331ae7ad722ce4009d2'),'Archivo 2.txt',UNHEX('ebf09995f73642ee815393186bebe7ab'));
CALL insert_study_file (UNHEX('53504017f084405f892b31bc9ceac6c0'),'Archivo 3.doc',UNHEX('ebf09995f73642ee815393186bebe7ab'));
CALL insert_study_file (UNHEX('834b34272f654609bfec1e579f4e10f2'),'Archivo 4.doc',UNHEX('ebf09995f73642ee815393186bebe7ab'));
CALL insert_study_file (UNHEX('642414e927a94b5ba984b86d57adbe52'),'Archivo 5.jpg',UNHEX('ebf09995f73642ee815393186bebe7ab'));
CALL insert_study_file (UNHEX('557fc4b9695a4de4a9955b307a57bc02'),'Archivo 6.jpg',UNHEX('ebf09995f73642ee815393186bebe7ab'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('413bf65b66294e17a1eb1bdbed36bad7'),'Observación correspondiente al estudio 413bf65b66294e17a1eb1bdbed36bad7.',UNHEX('8bb959b20c09421692cc415ba1dd4725'),'ET');
# Se craran 3 archivos para el estudio 413bf65b66294e17a1eb1bdbed36bad7
CALL insert_study_file (UNHEX('5bf01d876cac44d3b49824c49a6bc3d8'),'Archivo 0.txt',UNHEX('413bf65b66294e17a1eb1bdbed36bad7'));
CALL insert_study_file (UNHEX('546aba1a555746cf9cea70e3ea640b85'),'Archivo 1.jpg',UNHEX('413bf65b66294e17a1eb1bdbed36bad7'));
CALL insert_study_file (UNHEX('37d8ef35100943f69b7d67ecb9c105b8'),'Archivo 2.doc',UNHEX('413bf65b66294e17a1eb1bdbed36bad7'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('cf89a4731bdf417a93c1b3dc020e39b7'),'Observación correspondiente al estudio cf89a4731bdf417a93c1b3dc020e39b7.',UNHEX('8bb959b20c09421692cc415ba1dd4725'),'BT');
# Se craran 4 archivos para el estudio cf89a4731bdf417a93c1b3dc020e39b7
CALL insert_study_file (UNHEX('0d59eb5faa59461ba4f0962e73effeb3'),'Archivo 0.doc',UNHEX('cf89a4731bdf417a93c1b3dc020e39b7'));
CALL insert_study_file (UNHEX('a95ad39556294e4d8aba8873fb40055a'),'Archivo 1.jpg',UNHEX('cf89a4731bdf417a93c1b3dc020e39b7'));
CALL insert_study_file (UNHEX('62110f64fe914c27ab5bd65cf9d3e99a'),'Archivo 2.pdf',UNHEX('cf89a4731bdf417a93c1b3dc020e39b7'));
CALL insert_study_file (UNHEX('c9b05f3ca3cd46f6bb880fbcffdcef44'),'Archivo 3.txt',UNHEX('cf89a4731bdf417a93c1b3dc020e39b7'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('adb3d6f8d87b435caeba877c79ca119a'),'Observación correspondiente al estudio adb3d6f8d87b435caeba877c79ca119a.',UNHEX('8bb959b20c09421692cc415ba1dd4725'),'ET');
# Se craran 0 archivos para el estudio adb3d6f8d87b435caeba877c79ca119a
# Fin creacion de archivos
CALL insert_study ('2014-07-29',UNHEX('8d50843254bb4edd9534222dd0d6b07d'),'Observación correspondiente al estudio 8d50843254bb4edd9534222dd0d6b07d.',UNHEX('8bb959b20c09421692cc415ba1dd4725'),'ET');
# Se craran 9 archivos para el estudio 8d50843254bb4edd9534222dd0d6b07d
CALL insert_study_file (UNHEX('2018a17ceb9f4abc851e3ded19c17f33'),'Archivo 0.txt',UNHEX('8d50843254bb4edd9534222dd0d6b07d'));
CALL insert_study_file (UNHEX('ef54bdc4b7144c5386b924aaedb819c5'),'Archivo 1.pdf',UNHEX('8d50843254bb4edd9534222dd0d6b07d'));
CALL insert_study_file (UNHEX('09eb4604c35f434ab2a48fe09c7137a6'),'Archivo 2.pdf',UNHEX('8d50843254bb4edd9534222dd0d6b07d'));
CALL insert_study_file (UNHEX('009c41e2922c419fa3b5bbc82ce39538'),'Archivo 3.jpg',UNHEX('8d50843254bb4edd9534222dd0d6b07d'));
CALL insert_study_file (UNHEX('7667b4b4c80d4232b4ca9d37fd07aae0'),'Archivo 4.jpg',UNHEX('8d50843254bb4edd9534222dd0d6b07d'));
CALL insert_study_file (UNHEX('5425e5076403472bb9bcac32ce5b5f9d'),'Archivo 5.pdf',UNHEX('8d50843254bb4edd9534222dd0d6b07d'));
CALL insert_study_file (UNHEX('f007feb1733b46b6b42fe7a7bf1a0718'),'Archivo 6.txt',UNHEX('8d50843254bb4edd9534222dd0d6b07d'));
CALL insert_study_file (UNHEX('88b73c6501ac41ed975e2ad9261dc2ea'),'Archivo 7.txt',UNHEX('8d50843254bb4edd9534222dd0d6b07d'));
CALL insert_study_file (UNHEX('5550e8a1314149cb9a6fa58e435cf4e6'),'Archivo 8.txt',UNHEX('8d50843254bb4edd9534222dd0d6b07d'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('70de8982211745ca9ce9ea143b836bef'),'Observación correspondiente al estudio 70de8982211745ca9ce9ea143b836bef.',UNHEX('8bb959b20c09421692cc415ba1dd4725'),'BT');
# Se craran 9 archivos para el estudio 70de8982211745ca9ce9ea143b836bef
CALL insert_study_file (UNHEX('2575c4daca914f60a514a637e8df9c58'),'Archivo 0.jpg',UNHEX('70de8982211745ca9ce9ea143b836bef'));
CALL insert_study_file (UNHEX('76a3b2bbcf7d4009b6bb7fad0e5c7460'),'Archivo 1.doc',UNHEX('70de8982211745ca9ce9ea143b836bef'));
CALL insert_study_file (UNHEX('a486d464a51c42249cd24c364a2ad085'),'Archivo 2.jpg',UNHEX('70de8982211745ca9ce9ea143b836bef'));
CALL insert_study_file (UNHEX('d04a43c6c3ec4f97a4f48d210f996cf2'),'Archivo 3.pdf',UNHEX('70de8982211745ca9ce9ea143b836bef'));
CALL insert_study_file (UNHEX('ac8dc00ef3694fff8b648672a2bd2ce9'),'Archivo 4.txt',UNHEX('70de8982211745ca9ce9ea143b836bef'));
CALL insert_study_file (UNHEX('d10e9e93ceae48e483cbb1756dc573d5'),'Archivo 5.pdf',UNHEX('70de8982211745ca9ce9ea143b836bef'));
CALL insert_study_file (UNHEX('0fca0f0fd78648c59588286aa75b4baf'),'Archivo 6.pdf',UNHEX('70de8982211745ca9ce9ea143b836bef'));
CALL insert_study_file (UNHEX('cffa4c49846240059990f77ac990c516'),'Archivo 7.jpg',UNHEX('70de8982211745ca9ce9ea143b836bef'));
CALL insert_study_file (UNHEX('60e50a95f11b47e3b1d139ee53c7e21c'),'Archivo 8.txt',UNHEX('70de8982211745ca9ce9ea143b836bef'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('9d7e33ee09cc46f098329c1b332f5b4c'),'Observación correspondiente al estudio 9d7e33ee09cc46f098329c1b332f5b4c.',UNHEX('8bb959b20c09421692cc415ba1dd4725'),'BT');
# Se craran 8 archivos para el estudio 9d7e33ee09cc46f098329c1b332f5b4c
CALL insert_study_file (UNHEX('64d76158aafa40c1a7f8d04a8986fa99'),'Archivo 0.pdf',UNHEX('9d7e33ee09cc46f098329c1b332f5b4c'));
CALL insert_study_file (UNHEX('7bda1cf35c2d41f797f552635bc32335'),'Archivo 1.txt',UNHEX('9d7e33ee09cc46f098329c1b332f5b4c'));
CALL insert_study_file (UNHEX('ac57f0e56a224cd6b08e0533540c1d74'),'Archivo 2.pdf',UNHEX('9d7e33ee09cc46f098329c1b332f5b4c'));
CALL insert_study_file (UNHEX('cfc944a10d1546f1a4cea594626747c2'),'Archivo 3.pdf',UNHEX('9d7e33ee09cc46f098329c1b332f5b4c'));
CALL insert_study_file (UNHEX('76164b0dc7fa4b4cbc7711eeaac82c13'),'Archivo 4.jpg',UNHEX('9d7e33ee09cc46f098329c1b332f5b4c'));
CALL insert_study_file (UNHEX('236415d0b60442e4b05fde5388f98a70'),'Archivo 5.pdf',UNHEX('9d7e33ee09cc46f098329c1b332f5b4c'));
CALL insert_study_file (UNHEX('aec50f92ab2645f0942a372319f613dd'),'Archivo 6.jpg',UNHEX('9d7e33ee09cc46f098329c1b332f5b4c'));
CALL insert_study_file (UNHEX('44a23b24795d40dd957d59dd9d5f57f1'),'Archivo 7.pdf',UNHEX('9d7e33ee09cc46f098329c1b332f5b4c'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente a75999cb7a9640d1acf18c4ea4fa88ef
CALL insert_patient ('1988-10-24','0','F', UNHEX('a75999cb7a9640d1acf18c4ea4fa88ef'),'Prichard, Angeline','doctor');
# Se craran 15 estudios para el paciente a75999cb7a9640d1acf18c4ea4fa88ef
CALL insert_study ('2014-07-31',UNHEX('bbcf8ac20d3d4af291e4acb83ed78036'),'Observación correspondiente al estudio bbcf8ac20d3d4af291e4acb83ed78036.',UNHEX('a75999cb7a9640d1acf18c4ea4fa88ef'),'ET');
# Se craran 4 archivos para el estudio bbcf8ac20d3d4af291e4acb83ed78036
CALL insert_study_file (UNHEX('21b271329dc4495b99d976fa85240e09'),'Archivo 0.pdf',UNHEX('bbcf8ac20d3d4af291e4acb83ed78036'));
CALL insert_study_file (UNHEX('c0e1d7d3b29841669425e4d4306f1491'),'Archivo 1.txt',UNHEX('bbcf8ac20d3d4af291e4acb83ed78036'));
CALL insert_study_file (UNHEX('caf6f524f131483d9ee32366e268dacf'),'Archivo 2.doc',UNHEX('bbcf8ac20d3d4af291e4acb83ed78036'));
CALL insert_study_file (UNHEX('2d681a59d13a4589a2804d53ad70c476'),'Archivo 3.pdf',UNHEX('bbcf8ac20d3d4af291e4acb83ed78036'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('42773ce7ac6d41dba1dc5532a9374949'),'Observación correspondiente al estudio 42773ce7ac6d41dba1dc5532a9374949.',UNHEX('a75999cb7a9640d1acf18c4ea4fa88ef'),'BT');
# Se craran 1 archivos para el estudio 42773ce7ac6d41dba1dc5532a9374949
CALL insert_study_file (UNHEX('4699052701df42a8a8650190fd74ee40'),'Archivo 0.pdf',UNHEX('42773ce7ac6d41dba1dc5532a9374949'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('89569eb07e8f47d99380e97fdb570ef9'),'Observación correspondiente al estudio 89569eb07e8f47d99380e97fdb570ef9.',UNHEX('a75999cb7a9640d1acf18c4ea4fa88ef'),'UA');
# Se craran 3 archivos para el estudio 89569eb07e8f47d99380e97fdb570ef9
CALL insert_study_file (UNHEX('e8e1c51cdb47488abd5697ece36de944'),'Archivo 0.doc',UNHEX('89569eb07e8f47d99380e97fdb570ef9'));
CALL insert_study_file (UNHEX('8a5fe4618b8e4da59ea5dfe9cfdae849'),'Archivo 1.pdf',UNHEX('89569eb07e8f47d99380e97fdb570ef9'));
CALL insert_study_file (UNHEX('f5571bed06f5455ca648f0cd55c8621c'),'Archivo 2.txt',UNHEX('89569eb07e8f47d99380e97fdb570ef9'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('da4b714fff2e4db08508f582f58c0838'),'Observación correspondiente al estudio da4b714fff2e4db08508f582f58c0838.',UNHEX('a75999cb7a9640d1acf18c4ea4fa88ef'),'UA');
# Se craran 8 archivos para el estudio da4b714fff2e4db08508f582f58c0838
CALL insert_study_file (UNHEX('aeb41c1e5fb8481ba07aec4fa67a1da4'),'Archivo 0.txt',UNHEX('da4b714fff2e4db08508f582f58c0838'));
CALL insert_study_file (UNHEX('f07dc3df79734c23b2f2bfd441ad4f2d'),'Archivo 1.pdf',UNHEX('da4b714fff2e4db08508f582f58c0838'));
CALL insert_study_file (UNHEX('813d80e86a584c529a93050068fe405f'),'Archivo 2.jpg',UNHEX('da4b714fff2e4db08508f582f58c0838'));
CALL insert_study_file (UNHEX('de816c0689764a92a334cca3dd2eeddf'),'Archivo 3.pdf',UNHEX('da4b714fff2e4db08508f582f58c0838'));
CALL insert_study_file (UNHEX('cc1fbaf81aed4df4bd92c56087d71015'),'Archivo 4.jpg',UNHEX('da4b714fff2e4db08508f582f58c0838'));
CALL insert_study_file (UNHEX('dc9c4c0f08034511a987c3386ad51324'),'Archivo 5.doc',UNHEX('da4b714fff2e4db08508f582f58c0838'));
CALL insert_study_file (UNHEX('0983407565cc45648a45e2d6bb2dc9e2'),'Archivo 6.txt',UNHEX('da4b714fff2e4db08508f582f58c0838'));
CALL insert_study_file (UNHEX('c11d0b6cfbe84c4ab887586c29ee8a10'),'Archivo 7.txt',UNHEX('da4b714fff2e4db08508f582f58c0838'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('e866be3d3bda40da8f19fff5db08f6ae'),'Observación correspondiente al estudio e866be3d3bda40da8f19fff5db08f6ae.',UNHEX('a75999cb7a9640d1acf18c4ea4fa88ef'),'BT');
# Se craran 3 archivos para el estudio e866be3d3bda40da8f19fff5db08f6ae
CALL insert_study_file (UNHEX('17357688f7e14465adbd662c7f25daf4'),'Archivo 0.pdf',UNHEX('e866be3d3bda40da8f19fff5db08f6ae'));
CALL insert_study_file (UNHEX('3716cf6c57be4f388208e03d28bb2bf3'),'Archivo 1.txt',UNHEX('e866be3d3bda40da8f19fff5db08f6ae'));
CALL insert_study_file (UNHEX('c89d70d34155447d88080e238551e934'),'Archivo 2.doc',UNHEX('e866be3d3bda40da8f19fff5db08f6ae'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('06137ad685fb43f8ab379cfb68040f4e'),'Observación correspondiente al estudio 06137ad685fb43f8ab379cfb68040f4e.',UNHEX('a75999cb7a9640d1acf18c4ea4fa88ef'),'UA');
# Se craran 7 archivos para el estudio 06137ad685fb43f8ab379cfb68040f4e
CALL insert_study_file (UNHEX('6900ac0e813e4603bd610962cb24552d'),'Archivo 0.pdf',UNHEX('06137ad685fb43f8ab379cfb68040f4e'));
CALL insert_study_file (UNHEX('20af24fe267842f28c100a87ea1fddb5'),'Archivo 1.jpg',UNHEX('06137ad685fb43f8ab379cfb68040f4e'));
CALL insert_study_file (UNHEX('7132040c36d3419b852965598f979c99'),'Archivo 2.jpg',UNHEX('06137ad685fb43f8ab379cfb68040f4e'));
CALL insert_study_file (UNHEX('6cd51c7c6372435e84cb3408aca85063'),'Archivo 3.pdf',UNHEX('06137ad685fb43f8ab379cfb68040f4e'));
CALL insert_study_file (UNHEX('36846cdab5f549b89e5ae763f7017642'),'Archivo 4.doc',UNHEX('06137ad685fb43f8ab379cfb68040f4e'));
CALL insert_study_file (UNHEX('6931981cc29341cc9db786ab13aae08b'),'Archivo 5.jpg',UNHEX('06137ad685fb43f8ab379cfb68040f4e'));
CALL insert_study_file (UNHEX('5b8b565f71ba419882d7e2005744f3da'),'Archivo 6.jpg',UNHEX('06137ad685fb43f8ab379cfb68040f4e'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('32c3800fb5084fc28a9afe27c29d4456'),'Observación correspondiente al estudio 32c3800fb5084fc28a9afe27c29d4456.',UNHEX('a75999cb7a9640d1acf18c4ea4fa88ef'),'BT');
# Se craran 6 archivos para el estudio 32c3800fb5084fc28a9afe27c29d4456
CALL insert_study_file (UNHEX('33edbc90dbad49ab8d8bfc6855c173c8'),'Archivo 0.doc',UNHEX('32c3800fb5084fc28a9afe27c29d4456'));
CALL insert_study_file (UNHEX('fbe64ad041b2470ba7182dcbcc587c0b'),'Archivo 1.jpg',UNHEX('32c3800fb5084fc28a9afe27c29d4456'));
CALL insert_study_file (UNHEX('7a4f1a50cead4f2a91ec29eb52d544a7'),'Archivo 2.jpg',UNHEX('32c3800fb5084fc28a9afe27c29d4456'));
CALL insert_study_file (UNHEX('a8cc0ba888624402ba73ebcbbc8ad1cc'),'Archivo 3.doc',UNHEX('32c3800fb5084fc28a9afe27c29d4456'));
CALL insert_study_file (UNHEX('d9516be0a2c64f0fb61dcfa36037b5fb'),'Archivo 4.pdf',UNHEX('32c3800fb5084fc28a9afe27c29d4456'));
CALL insert_study_file (UNHEX('49064f6aa96640bea5268471344d94ac'),'Archivo 5.txt',UNHEX('32c3800fb5084fc28a9afe27c29d4456'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('65884654449e4ea1925fa28e3d13ab25'),'Observación correspondiente al estudio 65884654449e4ea1925fa28e3d13ab25.',UNHEX('a75999cb7a9640d1acf18c4ea4fa88ef'),'UA');
# Se craran 7 archivos para el estudio 65884654449e4ea1925fa28e3d13ab25
CALL insert_study_file (UNHEX('1da438d30d8e4f44b1a97df011f22a1a'),'Archivo 0.txt',UNHEX('65884654449e4ea1925fa28e3d13ab25'));
CALL insert_study_file (UNHEX('3308ecbb96514514ae55a3b87d2965ad'),'Archivo 1.jpg',UNHEX('65884654449e4ea1925fa28e3d13ab25'));
CALL insert_study_file (UNHEX('ce434977d0bb45eeab8ba8f1808de2d4'),'Archivo 2.pdf',UNHEX('65884654449e4ea1925fa28e3d13ab25'));
CALL insert_study_file (UNHEX('063657da32804fcd9743f121f6f9ca7a'),'Archivo 3.txt',UNHEX('65884654449e4ea1925fa28e3d13ab25'));
CALL insert_study_file (UNHEX('acfdf30e3f3641319966a5b024791e4b'),'Archivo 4.pdf',UNHEX('65884654449e4ea1925fa28e3d13ab25'));
CALL insert_study_file (UNHEX('04f58b0e3bb34390bea3e6578c6747de'),'Archivo 5.txt',UNHEX('65884654449e4ea1925fa28e3d13ab25'));
CALL insert_study_file (UNHEX('d3e3e27311434e498c08c32eda439dae'),'Archivo 6.doc',UNHEX('65884654449e4ea1925fa28e3d13ab25'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('04bf103b62c84c00a794ecdbbf51d94a'),'Observación correspondiente al estudio 04bf103b62c84c00a794ecdbbf51d94a.',UNHEX('a75999cb7a9640d1acf18c4ea4fa88ef'),'BT');
# Se craran 3 archivos para el estudio 04bf103b62c84c00a794ecdbbf51d94a
CALL insert_study_file (UNHEX('286dfc7fca5e422b9c6a26df3d6cc95d'),'Archivo 0.doc',UNHEX('04bf103b62c84c00a794ecdbbf51d94a'));
CALL insert_study_file (UNHEX('a499d01c54c24156ba455f63fa32425d'),'Archivo 1.pdf',UNHEX('04bf103b62c84c00a794ecdbbf51d94a'));
CALL insert_study_file (UNHEX('307dfeaf9365400b816ed82c93adbde7'),'Archivo 2.txt',UNHEX('04bf103b62c84c00a794ecdbbf51d94a'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('05d3e4040d364fb09ffbdbbf06437dc0'),'Observación correspondiente al estudio 05d3e4040d364fb09ffbdbbf06437dc0.',UNHEX('a75999cb7a9640d1acf18c4ea4fa88ef'),'ET');
# Se craran 2 archivos para el estudio 05d3e4040d364fb09ffbdbbf06437dc0
CALL insert_study_file (UNHEX('ae1d592fa40945d1861b1756f56047cc'),'Archivo 0.pdf',UNHEX('05d3e4040d364fb09ffbdbbf06437dc0'));
CALL insert_study_file (UNHEX('a690515bb9f542b095855c31ec3e3ac0'),'Archivo 1.doc',UNHEX('05d3e4040d364fb09ffbdbbf06437dc0'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('4516425b06794855ab907109f4fe5bbb'),'Observación correspondiente al estudio 4516425b06794855ab907109f4fe5bbb.',UNHEX('a75999cb7a9640d1acf18c4ea4fa88ef'),'ET');
# Se craran 4 archivos para el estudio 4516425b06794855ab907109f4fe5bbb
CALL insert_study_file (UNHEX('774b9dee66a84b61adf805b199907a89'),'Archivo 0.txt',UNHEX('4516425b06794855ab907109f4fe5bbb'));
CALL insert_study_file (UNHEX('2295ab89ada64b2f9cfb346d58f124b4'),'Archivo 1.txt',UNHEX('4516425b06794855ab907109f4fe5bbb'));
CALL insert_study_file (UNHEX('c708ea6a1cc4499180453509900431ef'),'Archivo 2.txt',UNHEX('4516425b06794855ab907109f4fe5bbb'));
CALL insert_study_file (UNHEX('18acb783760c4659a23bc7065f163d54'),'Archivo 3.doc',UNHEX('4516425b06794855ab907109f4fe5bbb'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('2b83f2bd5ecf4498955c59cc7b93d84b'),'Observación correspondiente al estudio 2b83f2bd5ecf4498955c59cc7b93d84b.',UNHEX('a75999cb7a9640d1acf18c4ea4fa88ef'),'BT');
# Se craran 4 archivos para el estudio 2b83f2bd5ecf4498955c59cc7b93d84b
CALL insert_study_file (UNHEX('98c4c82375f149d2bba574559acb1fe4'),'Archivo 0.txt',UNHEX('2b83f2bd5ecf4498955c59cc7b93d84b'));
CALL insert_study_file (UNHEX('1f822532831d4b9bb71cf1e8a2f9a50b'),'Archivo 1.pdf',UNHEX('2b83f2bd5ecf4498955c59cc7b93d84b'));
CALL insert_study_file (UNHEX('18d6d984bc2a45a0b59bdf63d40d70a4'),'Archivo 2.txt',UNHEX('2b83f2bd5ecf4498955c59cc7b93d84b'));
CALL insert_study_file (UNHEX('1a3d7af826d04b61906cda6d070f3b75'),'Archivo 3.jpg',UNHEX('2b83f2bd5ecf4498955c59cc7b93d84b'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('86b63b3fb9c04e51b034e4cb2b2d828c'),'Observación correspondiente al estudio 86b63b3fb9c04e51b034e4cb2b2d828c.',UNHEX('a75999cb7a9640d1acf18c4ea4fa88ef'),'UA');
# Se craran 9 archivos para el estudio 86b63b3fb9c04e51b034e4cb2b2d828c
CALL insert_study_file (UNHEX('82d49619e66f4ea8888742fa5863a093'),'Archivo 0.doc',UNHEX('86b63b3fb9c04e51b034e4cb2b2d828c'));
CALL insert_study_file (UNHEX('b2539643a54c4592ac47cebc49886f92'),'Archivo 1.jpg',UNHEX('86b63b3fb9c04e51b034e4cb2b2d828c'));
CALL insert_study_file (UNHEX('3e2d3bb07def419ebec7b67ae690d172'),'Archivo 2.pdf',UNHEX('86b63b3fb9c04e51b034e4cb2b2d828c'));
CALL insert_study_file (UNHEX('a84f9fe98f1f456a80b48bb5cced8bd3'),'Archivo 3.doc',UNHEX('86b63b3fb9c04e51b034e4cb2b2d828c'));
CALL insert_study_file (UNHEX('27cc1123157b409ea6f24066e70dbd8f'),'Archivo 4.doc',UNHEX('86b63b3fb9c04e51b034e4cb2b2d828c'));
CALL insert_study_file (UNHEX('8194d2916c8f47b9a3ed9e70320b6165'),'Archivo 5.txt',UNHEX('86b63b3fb9c04e51b034e4cb2b2d828c'));
CALL insert_study_file (UNHEX('26cdcad2b9d64b13af4c27c0dcca4991'),'Archivo 6.jpg',UNHEX('86b63b3fb9c04e51b034e4cb2b2d828c'));
CALL insert_study_file (UNHEX('1be8f8529aa04edbbcf5cc822a3f1ebb'),'Archivo 7.pdf',UNHEX('86b63b3fb9c04e51b034e4cb2b2d828c'));
CALL insert_study_file (UNHEX('c83fcac45f0b41f8a4abd25265d27b3c'),'Archivo 8.doc',UNHEX('86b63b3fb9c04e51b034e4cb2b2d828c'));
# Fin creacion de archivos
CALL insert_study ('2014-07-29',UNHEX('b14a374028514fa88d5e25d25857e0bf'),'Observación correspondiente al estudio b14a374028514fa88d5e25d25857e0bf.',UNHEX('a75999cb7a9640d1acf18c4ea4fa88ef'),'BT');
# Se craran 0 archivos para el estudio b14a374028514fa88d5e25d25857e0bf
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('880abacbcab641408e7015715b9290cf'),'Observación correspondiente al estudio 880abacbcab641408e7015715b9290cf.',UNHEX('a75999cb7a9640d1acf18c4ea4fa88ef'),'UA');
# Se craran 8 archivos para el estudio 880abacbcab641408e7015715b9290cf
CALL insert_study_file (UNHEX('f65882db2e69498db94750782626949b'),'Archivo 0.doc',UNHEX('880abacbcab641408e7015715b9290cf'));
CALL insert_study_file (UNHEX('91322ebf7e7f4b69969aafa988e18b15'),'Archivo 1.txt',UNHEX('880abacbcab641408e7015715b9290cf'));
CALL insert_study_file (UNHEX('cf9614ca86e7444091a3c397f0028290'),'Archivo 2.doc',UNHEX('880abacbcab641408e7015715b9290cf'));
CALL insert_study_file (UNHEX('0406ff11167a4e5ba686b801e6b2d5f7'),'Archivo 3.txt',UNHEX('880abacbcab641408e7015715b9290cf'));
CALL insert_study_file (UNHEX('6b20a462bdac44fc8a8840e01372402b'),'Archivo 4.doc',UNHEX('880abacbcab641408e7015715b9290cf'));
CALL insert_study_file (UNHEX('6063b0a99b5e439b9c8583a46c36ead3'),'Archivo 5.jpg',UNHEX('880abacbcab641408e7015715b9290cf'));
CALL insert_study_file (UNHEX('00ba0f4bc5584ff893d13413f012f5b5'),'Archivo 6.pdf',UNHEX('880abacbcab641408e7015715b9290cf'));
CALL insert_study_file (UNHEX('4fa72fc819004a7382d5d89780a8f939'),'Archivo 7.doc',UNHEX('880abacbcab641408e7015715b9290cf'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente c4ed421cdf8f41babb71be557410c38e
CALL insert_patient ('1974-04-11','2','M', UNHEX('c4ed421cdf8f41babb71be557410c38e'),'Sereno, Cobby dolf','doctor');
# Se craran 13 estudios para el paciente c4ed421cdf8f41babb71be557410c38e
CALL insert_study ('2014-08-04',UNHEX('83922ed2d3874f3daaaf6f4c9ce878f4'),'Observación correspondiente al estudio 83922ed2d3874f3daaaf6f4c9ce878f4.',UNHEX('c4ed421cdf8f41babb71be557410c38e'),'ET');
# Se craran 2 archivos para el estudio 83922ed2d3874f3daaaf6f4c9ce878f4
CALL insert_study_file (UNHEX('92182dd0c474494b89afa7abb20fdc2a'),'Archivo 0.txt',UNHEX('83922ed2d3874f3daaaf6f4c9ce878f4'));
CALL insert_study_file (UNHEX('e938180cc8064783961da1a0d206b1e2'),'Archivo 1.jpg',UNHEX('83922ed2d3874f3daaaf6f4c9ce878f4'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('2376eda65b1f454f9b3b8ec3a0dd0824'),'Observación correspondiente al estudio 2376eda65b1f454f9b3b8ec3a0dd0824.',UNHEX('c4ed421cdf8f41babb71be557410c38e'),'UA');
# Se craran 9 archivos para el estudio 2376eda65b1f454f9b3b8ec3a0dd0824
CALL insert_study_file (UNHEX('44828c98d2344c4693b1cd47cfb6fa49'),'Archivo 0.txt',UNHEX('2376eda65b1f454f9b3b8ec3a0dd0824'));
CALL insert_study_file (UNHEX('88e9f47b57384b0a994fe703a3670cc0'),'Archivo 1.txt',UNHEX('2376eda65b1f454f9b3b8ec3a0dd0824'));
CALL insert_study_file (UNHEX('d55e8d6fda564659b2218f5e871079be'),'Archivo 2.txt',UNHEX('2376eda65b1f454f9b3b8ec3a0dd0824'));
CALL insert_study_file (UNHEX('a38f8427b7674f87b77a94155c9d9521'),'Archivo 3.pdf',UNHEX('2376eda65b1f454f9b3b8ec3a0dd0824'));
CALL insert_study_file (UNHEX('19e6420378d34dbea1cdc8188b0d1ad2'),'Archivo 4.txt',UNHEX('2376eda65b1f454f9b3b8ec3a0dd0824'));
CALL insert_study_file (UNHEX('84f81943e09a434c989161c0d6f61238'),'Archivo 5.txt',UNHEX('2376eda65b1f454f9b3b8ec3a0dd0824'));
CALL insert_study_file (UNHEX('552ee24baa50408491e0f1b2422f2a6a'),'Archivo 6.pdf',UNHEX('2376eda65b1f454f9b3b8ec3a0dd0824'));
CALL insert_study_file (UNHEX('8cea53ffbc3e481491f37f9e831c1375'),'Archivo 7.doc',UNHEX('2376eda65b1f454f9b3b8ec3a0dd0824'));
CALL insert_study_file (UNHEX('5f294ce3bf574b929099370dd404f2b4'),'Archivo 8.doc',UNHEX('2376eda65b1f454f9b3b8ec3a0dd0824'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('99abe5ef729d47d698bf931e11784a81'),'Observación correspondiente al estudio 99abe5ef729d47d698bf931e11784a81.',UNHEX('c4ed421cdf8f41babb71be557410c38e'),'ET');
# Se craran 6 archivos para el estudio 99abe5ef729d47d698bf931e11784a81
CALL insert_study_file (UNHEX('b07c70f2bdd44a28bc715a125492ce1e'),'Archivo 0.doc',UNHEX('99abe5ef729d47d698bf931e11784a81'));
CALL insert_study_file (UNHEX('991a4da1ffed4b76bef002f802eeea28'),'Archivo 1.doc',UNHEX('99abe5ef729d47d698bf931e11784a81'));
CALL insert_study_file (UNHEX('ef5ac1df21a747e98687c064a456793e'),'Archivo 2.doc',UNHEX('99abe5ef729d47d698bf931e11784a81'));
CALL insert_study_file (UNHEX('3c50d26a64fc463cb5ccef38fb383a54'),'Archivo 3.pdf',UNHEX('99abe5ef729d47d698bf931e11784a81'));
CALL insert_study_file (UNHEX('bba455c9f8c445928e1e2fa3ab4e2651'),'Archivo 4.jpg',UNHEX('99abe5ef729d47d698bf931e11784a81'));
CALL insert_study_file (UNHEX('692fc7fd5c60429480b05cd16ff856a5'),'Archivo 5.jpg',UNHEX('99abe5ef729d47d698bf931e11784a81'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('f84847b4bd454ac6a84bbd4643e3659e'),'Observación correspondiente al estudio f84847b4bd454ac6a84bbd4643e3659e.',UNHEX('c4ed421cdf8f41babb71be557410c38e'),'ET');
# Se craran 5 archivos para el estudio f84847b4bd454ac6a84bbd4643e3659e
CALL insert_study_file (UNHEX('65fe4ff357ae431e96826e521c4863f1'),'Archivo 0.jpg',UNHEX('f84847b4bd454ac6a84bbd4643e3659e'));
CALL insert_study_file (UNHEX('7524266930b7452aa36b27cc0bf36ed6'),'Archivo 1.jpg',UNHEX('f84847b4bd454ac6a84bbd4643e3659e'));
CALL insert_study_file (UNHEX('8f07569e808144f4a1d1ccdba7c64e26'),'Archivo 2.jpg',UNHEX('f84847b4bd454ac6a84bbd4643e3659e'));
CALL insert_study_file (UNHEX('79e83f517a254342a6cdb232709816e9'),'Archivo 3.doc',UNHEX('f84847b4bd454ac6a84bbd4643e3659e'));
CALL insert_study_file (UNHEX('a718eb5ee2fd457bb9685b1165291454'),'Archivo 4.pdf',UNHEX('f84847b4bd454ac6a84bbd4643e3659e'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('2364fb3555d6449c8dfe14006d02c58f'),'Observación correspondiente al estudio 2364fb3555d6449c8dfe14006d02c58f.',UNHEX('c4ed421cdf8f41babb71be557410c38e'),'UA');
# Se craran 4 archivos para el estudio 2364fb3555d6449c8dfe14006d02c58f
CALL insert_study_file (UNHEX('acb39a753be740b280a3620ab22ce7ac'),'Archivo 0.jpg',UNHEX('2364fb3555d6449c8dfe14006d02c58f'));
CALL insert_study_file (UNHEX('d76c5b7619634aba8d6a4d827171d614'),'Archivo 1.jpg',UNHEX('2364fb3555d6449c8dfe14006d02c58f'));
CALL insert_study_file (UNHEX('97e8ebd95c494cba8cf4e69fc05e8a38'),'Archivo 2.jpg',UNHEX('2364fb3555d6449c8dfe14006d02c58f'));
CALL insert_study_file (UNHEX('8aa10aa585b44ced9761a4d35a0fbac4'),'Archivo 3.doc',UNHEX('2364fb3555d6449c8dfe14006d02c58f'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('6d03c72271a646599326d47313bee8b9'),'Observación correspondiente al estudio 6d03c72271a646599326d47313bee8b9.',UNHEX('c4ed421cdf8f41babb71be557410c38e'),'ET');
# Se craran 6 archivos para el estudio 6d03c72271a646599326d47313bee8b9
CALL insert_study_file (UNHEX('3be48c17f0e24296b177c765848373dd'),'Archivo 0.txt',UNHEX('6d03c72271a646599326d47313bee8b9'));
CALL insert_study_file (UNHEX('817282cabc8c4127bb020b0cd6a87681'),'Archivo 1.doc',UNHEX('6d03c72271a646599326d47313bee8b9'));
CALL insert_study_file (UNHEX('f2d106ad7e2642faafc150c1d8e621db'),'Archivo 2.jpg',UNHEX('6d03c72271a646599326d47313bee8b9'));
CALL insert_study_file (UNHEX('3aff6037184d493bb361e613d82d8797'),'Archivo 3.txt',UNHEX('6d03c72271a646599326d47313bee8b9'));
CALL insert_study_file (UNHEX('4ccb3f6aef6b4ca09ff2ded331130ee7'),'Archivo 4.txt',UNHEX('6d03c72271a646599326d47313bee8b9'));
CALL insert_study_file (UNHEX('0b65a12927c346e2ad967eb1f7a6b6a8'),'Archivo 5.pdf',UNHEX('6d03c72271a646599326d47313bee8b9'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('698f474b37094a049bf2a6f7bc698a0a'),'Observación correspondiente al estudio 698f474b37094a049bf2a6f7bc698a0a.',UNHEX('c4ed421cdf8f41babb71be557410c38e'),'BT');
# Se craran 3 archivos para el estudio 698f474b37094a049bf2a6f7bc698a0a
CALL insert_study_file (UNHEX('7713ef3c1b55408fafc58ad631c047d1'),'Archivo 0.txt',UNHEX('698f474b37094a049bf2a6f7bc698a0a'));
CALL insert_study_file (UNHEX('34cab2fba6d647a5b50ce4aaee402c2c'),'Archivo 1.doc',UNHEX('698f474b37094a049bf2a6f7bc698a0a'));
CALL insert_study_file (UNHEX('ff31a953ceea42ceaaf645a998b14344'),'Archivo 2.txt',UNHEX('698f474b37094a049bf2a6f7bc698a0a'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('0204382ab6394384a87b25a6cd8ea8b4'),'Observación correspondiente al estudio 0204382ab6394384a87b25a6cd8ea8b4.',UNHEX('c4ed421cdf8f41babb71be557410c38e'),'UA');
# Se craran 8 archivos para el estudio 0204382ab6394384a87b25a6cd8ea8b4
CALL insert_study_file (UNHEX('70a6e953f1e94cb3ad0ac64b225c8db8'),'Archivo 0.pdf',UNHEX('0204382ab6394384a87b25a6cd8ea8b4'));
CALL insert_study_file (UNHEX('f6e53f14eaa44fd69a073faee309c201'),'Archivo 1.doc',UNHEX('0204382ab6394384a87b25a6cd8ea8b4'));
CALL insert_study_file (UNHEX('a3b37b8211d04987b9ded1a84f763e85'),'Archivo 2.jpg',UNHEX('0204382ab6394384a87b25a6cd8ea8b4'));
CALL insert_study_file (UNHEX('4f10076db07d45cf84c108d115240b4e'),'Archivo 3.txt',UNHEX('0204382ab6394384a87b25a6cd8ea8b4'));
CALL insert_study_file (UNHEX('56876b153fa34386bb562ba00779b268'),'Archivo 4.txt',UNHEX('0204382ab6394384a87b25a6cd8ea8b4'));
CALL insert_study_file (UNHEX('9ff6310ce49d4be99af4922e0b32b120'),'Archivo 5.doc',UNHEX('0204382ab6394384a87b25a6cd8ea8b4'));
CALL insert_study_file (UNHEX('d1fba1d8fc1b4f79a37bf1571b7d5924'),'Archivo 6.txt',UNHEX('0204382ab6394384a87b25a6cd8ea8b4'));
CALL insert_study_file (UNHEX('2734d51b0a964f108374865a56c0a251'),'Archivo 7.txt',UNHEX('0204382ab6394384a87b25a6cd8ea8b4'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('0a5f71be11c6437889d78cace3a712c2'),'Observación correspondiente al estudio 0a5f71be11c6437889d78cace3a712c2.',UNHEX('c4ed421cdf8f41babb71be557410c38e'),'BT');
# Se craran 5 archivos para el estudio 0a5f71be11c6437889d78cace3a712c2
CALL insert_study_file (UNHEX('a4303446f90e4edd8032cddeee942694'),'Archivo 0.txt',UNHEX('0a5f71be11c6437889d78cace3a712c2'));
CALL insert_study_file (UNHEX('25c4dcfbe7dc4a989631d0a9ce48eed4'),'Archivo 1.pdf',UNHEX('0a5f71be11c6437889d78cace3a712c2'));
CALL insert_study_file (UNHEX('bc9978605b6e461786cae1ba08646bc0'),'Archivo 2.jpg',UNHEX('0a5f71be11c6437889d78cace3a712c2'));
CALL insert_study_file (UNHEX('acce2150a18247a8b8617360fbb1173f'),'Archivo 3.txt',UNHEX('0a5f71be11c6437889d78cace3a712c2'));
CALL insert_study_file (UNHEX('870a93d69d5a403da3c22c4821918803'),'Archivo 4.doc',UNHEX('0a5f71be11c6437889d78cace3a712c2'));
# Fin creacion de archivos
CALL insert_study ('2014-07-29',UNHEX('517fff151003444397cf009cfcc1c1f3'),'Observación correspondiente al estudio 517fff151003444397cf009cfcc1c1f3.',UNHEX('c4ed421cdf8f41babb71be557410c38e'),'BT');
# Se craran 3 archivos para el estudio 517fff151003444397cf009cfcc1c1f3
CALL insert_study_file (UNHEX('6076a17e9c05430eb73ad89f9539f089'),'Archivo 0.pdf',UNHEX('517fff151003444397cf009cfcc1c1f3'));
CALL insert_study_file (UNHEX('7da9ecf0f46647bcad6dab39f1f325ae'),'Archivo 1.jpg',UNHEX('517fff151003444397cf009cfcc1c1f3'));
CALL insert_study_file (UNHEX('8569d7b0f5924155834429e4a9c60655'),'Archivo 2.jpg',UNHEX('517fff151003444397cf009cfcc1c1f3'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('553c1bc46e9843f7a70cafab6688e847'),'Observación correspondiente al estudio 553c1bc46e9843f7a70cafab6688e847.',UNHEX('c4ed421cdf8f41babb71be557410c38e'),'BT');
# Se craran 9 archivos para el estudio 553c1bc46e9843f7a70cafab6688e847
CALL insert_study_file (UNHEX('ca0c1d6ae2b544ce8bc74f020742c0cf'),'Archivo 0.pdf',UNHEX('553c1bc46e9843f7a70cafab6688e847'));
CALL insert_study_file (UNHEX('dc0062acfbe24faca6397f0be4057a6e'),'Archivo 1.doc',UNHEX('553c1bc46e9843f7a70cafab6688e847'));
CALL insert_study_file (UNHEX('58f487e4652c49c495ee00b76d4b180c'),'Archivo 2.jpg',UNHEX('553c1bc46e9843f7a70cafab6688e847'));
CALL insert_study_file (UNHEX('363b00f3ff8546cf89a1564e3c4c5521'),'Archivo 3.doc',UNHEX('553c1bc46e9843f7a70cafab6688e847'));
CALL insert_study_file (UNHEX('626495c4c0444ce4aca80be11a5e1a54'),'Archivo 4.txt',UNHEX('553c1bc46e9843f7a70cafab6688e847'));
CALL insert_study_file (UNHEX('8d56059493db46778ba3c090f9faa941'),'Archivo 5.txt',UNHEX('553c1bc46e9843f7a70cafab6688e847'));
CALL insert_study_file (UNHEX('152ba81372da43d18d2e723e70aa39d3'),'Archivo 6.jpg',UNHEX('553c1bc46e9843f7a70cafab6688e847'));
CALL insert_study_file (UNHEX('619fdf0e36f94c57866d4c70b6c39b28'),'Archivo 7.pdf',UNHEX('553c1bc46e9843f7a70cafab6688e847'));
CALL insert_study_file (UNHEX('b5251a4dbe1446bc90e05851a6b2dc9e'),'Archivo 8.jpg',UNHEX('553c1bc46e9843f7a70cafab6688e847'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('1e0a32d024dd4d90ba8091fdba2b2097'),'Observación correspondiente al estudio 1e0a32d024dd4d90ba8091fdba2b2097.',UNHEX('c4ed421cdf8f41babb71be557410c38e'),'UA');
# Se craran 7 archivos para el estudio 1e0a32d024dd4d90ba8091fdba2b2097
CALL insert_study_file (UNHEX('a6d2c3e4160a43cea5c3539f0a48c5bc'),'Archivo 0.doc',UNHEX('1e0a32d024dd4d90ba8091fdba2b2097'));
CALL insert_study_file (UNHEX('ab23acdc4c484ce7afedfaeb01794e4b'),'Archivo 1.doc',UNHEX('1e0a32d024dd4d90ba8091fdba2b2097'));
CALL insert_study_file (UNHEX('b46a9a2ad18e4549875b9bc2ae3a04ae'),'Archivo 2.jpg',UNHEX('1e0a32d024dd4d90ba8091fdba2b2097'));
CALL insert_study_file (UNHEX('dce927adb8bd42fa9472d5ddce6a2542'),'Archivo 3.pdf',UNHEX('1e0a32d024dd4d90ba8091fdba2b2097'));
CALL insert_study_file (UNHEX('db2639696ac947258d82da07bb147502'),'Archivo 4.doc',UNHEX('1e0a32d024dd4d90ba8091fdba2b2097'));
CALL insert_study_file (UNHEX('f242a147d93348b1b6ae3227e617bbce'),'Archivo 5.jpg',UNHEX('1e0a32d024dd4d90ba8091fdba2b2097'));
CALL insert_study_file (UNHEX('e74f2df958da4696937d59d8afb9eb29'),'Archivo 6.txt',UNHEX('1e0a32d024dd4d90ba8091fdba2b2097'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('7d444ca17216411cb2798b4763201387'),'Observación correspondiente al estudio 7d444ca17216411cb2798b4763201387.',UNHEX('c4ed421cdf8f41babb71be557410c38e'),'UA');
# Se craran 5 archivos para el estudio 7d444ca17216411cb2798b4763201387
CALL insert_study_file (UNHEX('0461ad7eab704c7cadf6548b0b185a6a'),'Archivo 0.txt',UNHEX('7d444ca17216411cb2798b4763201387'));
CALL insert_study_file (UNHEX('c6bb87e23a4f4b97876504ad73426a86'),'Archivo 1.txt',UNHEX('7d444ca17216411cb2798b4763201387'));
CALL insert_study_file (UNHEX('834ce64d0ff94b518e9013312dac244a'),'Archivo 2.doc',UNHEX('7d444ca17216411cb2798b4763201387'));
CALL insert_study_file (UNHEX('6efb1713fa8644dd8f64bc23ae4502df'),'Archivo 3.jpg',UNHEX('7d444ca17216411cb2798b4763201387'));
CALL insert_study_file (UNHEX('613e19f4ebc54d9584d7ae83f81688d6'),'Archivo 4.pdf',UNHEX('7d444ca17216411cb2798b4763201387'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 09dd02e538d14bf98c9905403167a4a8
CALL insert_patient ('1984-01-04','0','M', UNHEX('09dd02e538d14bf98c9905403167a4a8'),'Goodrich, phillipe','doctor');
# Se craran 18 estudios para el paciente 09dd02e538d14bf98c9905403167a4a8
CALL insert_study ('2014-07-31',UNHEX('4195dcdb82814601a7599435f7f62d09'),'Observación correspondiente al estudio 4195dcdb82814601a7599435f7f62d09.',UNHEX('09dd02e538d14bf98c9905403167a4a8'),'UA');
# Se craran 6 archivos para el estudio 4195dcdb82814601a7599435f7f62d09
CALL insert_study_file (UNHEX('3d84c39837704ac4ba5e23b4d87c8188'),'Archivo 0.txt',UNHEX('4195dcdb82814601a7599435f7f62d09'));
CALL insert_study_file (UNHEX('228e886786ee419ca2f7a46897d466bc'),'Archivo 1.pdf',UNHEX('4195dcdb82814601a7599435f7f62d09'));
CALL insert_study_file (UNHEX('c9c5903c9cf9444ab3851829217de2e3'),'Archivo 2.pdf',UNHEX('4195dcdb82814601a7599435f7f62d09'));
CALL insert_study_file (UNHEX('d7716edcb65546e9b902ad651e12ed73'),'Archivo 3.doc',UNHEX('4195dcdb82814601a7599435f7f62d09'));
CALL insert_study_file (UNHEX('31fbb9a0cd8748678a2d8eb02a405a61'),'Archivo 4.pdf',UNHEX('4195dcdb82814601a7599435f7f62d09'));
CALL insert_study_file (UNHEX('ec7de915e50c444c835484209ced7672'),'Archivo 5.txt',UNHEX('4195dcdb82814601a7599435f7f62d09'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('37587747eaf44d9faf250e3fd564d45a'),'Observación correspondiente al estudio 37587747eaf44d9faf250e3fd564d45a.',UNHEX('09dd02e538d14bf98c9905403167a4a8'),'BT');
# Se craran 6 archivos para el estudio 37587747eaf44d9faf250e3fd564d45a
CALL insert_study_file (UNHEX('e2eb6d5dd1c1454d8b3c0ea5d566c947'),'Archivo 0.jpg',UNHEX('37587747eaf44d9faf250e3fd564d45a'));
CALL insert_study_file (UNHEX('47c1e42cf88c4a19b1b8b1e0d386fedd'),'Archivo 1.jpg',UNHEX('37587747eaf44d9faf250e3fd564d45a'));
CALL insert_study_file (UNHEX('52b6010bce5c4d58ac73eb670e96549e'),'Archivo 2.jpg',UNHEX('37587747eaf44d9faf250e3fd564d45a'));
CALL insert_study_file (UNHEX('a1977bd8ee854f018d3732e902fc6e7e'),'Archivo 3.pdf',UNHEX('37587747eaf44d9faf250e3fd564d45a'));
CALL insert_study_file (UNHEX('249f00f4458c4b9cae413af27a836275'),'Archivo 4.jpg',UNHEX('37587747eaf44d9faf250e3fd564d45a'));
CALL insert_study_file (UNHEX('1602b6dddc194c97875b932847a45d1d'),'Archivo 5.jpg',UNHEX('37587747eaf44d9faf250e3fd564d45a'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('141b79e06afd4627ad7550a1ec185958'),'Observación correspondiente al estudio 141b79e06afd4627ad7550a1ec185958.',UNHEX('09dd02e538d14bf98c9905403167a4a8'),'UA');
# Se craran 0 archivos para el estudio 141b79e06afd4627ad7550a1ec185958
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('64c03f1425854f79bb15807d6ba8a37c'),'Observación correspondiente al estudio 64c03f1425854f79bb15807d6ba8a37c.',UNHEX('09dd02e538d14bf98c9905403167a4a8'),'ET');
# Se craran 3 archivos para el estudio 64c03f1425854f79bb15807d6ba8a37c
CALL insert_study_file (UNHEX('756fd782d3e74b68b6963f531d931b7f'),'Archivo 0.txt',UNHEX('64c03f1425854f79bb15807d6ba8a37c'));
CALL insert_study_file (UNHEX('5cddab536b50409aa52d1b4f84c3a28e'),'Archivo 1.jpg',UNHEX('64c03f1425854f79bb15807d6ba8a37c'));
CALL insert_study_file (UNHEX('7dc327e105984d03a70ca01c3eba70bb'),'Archivo 2.txt',UNHEX('64c03f1425854f79bb15807d6ba8a37c'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('0affdca86a8e4524b1f81eaa0a68df15'),'Observación correspondiente al estudio 0affdca86a8e4524b1f81eaa0a68df15.',UNHEX('09dd02e538d14bf98c9905403167a4a8'),'UA');
# Se craran 3 archivos para el estudio 0affdca86a8e4524b1f81eaa0a68df15
CALL insert_study_file (UNHEX('4141816539774158bafa20197c342dcd'),'Archivo 0.pdf',UNHEX('0affdca86a8e4524b1f81eaa0a68df15'));
CALL insert_study_file (UNHEX('b6a249af52af4165858d3cd9b96163c6'),'Archivo 1.txt',UNHEX('0affdca86a8e4524b1f81eaa0a68df15'));
CALL insert_study_file (UNHEX('87e642d58d9842099e52fc5fca1f6290'),'Archivo 2.pdf',UNHEX('0affdca86a8e4524b1f81eaa0a68df15'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('c353cdd10bda412cba28d3dc133cc342'),'Observación correspondiente al estudio c353cdd10bda412cba28d3dc133cc342.',UNHEX('09dd02e538d14bf98c9905403167a4a8'),'UA');
# Se craran 2 archivos para el estudio c353cdd10bda412cba28d3dc133cc342
CALL insert_study_file (UNHEX('ba950eb3c649471fb8c037b16ae25e4d'),'Archivo 0.jpg',UNHEX('c353cdd10bda412cba28d3dc133cc342'));
CALL insert_study_file (UNHEX('8ca921d2abc04404ac6e6ae42f740634'),'Archivo 1.txt',UNHEX('c353cdd10bda412cba28d3dc133cc342'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('6fea28d1dcb241d58b92027a5e932719'),'Observación correspondiente al estudio 6fea28d1dcb241d58b92027a5e932719.',UNHEX('09dd02e538d14bf98c9905403167a4a8'),'ET');
# Se craran 5 archivos para el estudio 6fea28d1dcb241d58b92027a5e932719
CALL insert_study_file (UNHEX('7b0081e633594bf0bdf2317da79f5660'),'Archivo 0.pdf',UNHEX('6fea28d1dcb241d58b92027a5e932719'));
CALL insert_study_file (UNHEX('4843f7fd5f254577b8bf5b1047d9f377'),'Archivo 1.pdf',UNHEX('6fea28d1dcb241d58b92027a5e932719'));
CALL insert_study_file (UNHEX('4351c913e57941e6a9e00d6b0c62b7eb'),'Archivo 2.doc',UNHEX('6fea28d1dcb241d58b92027a5e932719'));
CALL insert_study_file (UNHEX('9e906b6b5ff548fda2bd0c96f7b80560'),'Archivo 3.pdf',UNHEX('6fea28d1dcb241d58b92027a5e932719'));
CALL insert_study_file (UNHEX('395fff823df24d7e9637179c74df84af'),'Archivo 4.txt',UNHEX('6fea28d1dcb241d58b92027a5e932719'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('b4069564c2a54c4d9402b44b40d8af10'),'Observación correspondiente al estudio b4069564c2a54c4d9402b44b40d8af10.',UNHEX('09dd02e538d14bf98c9905403167a4a8'),'BT');
# Se craran 1 archivos para el estudio b4069564c2a54c4d9402b44b40d8af10
CALL insert_study_file (UNHEX('dddb51e7f60f4b37a9b6c12bcbacb069'),'Archivo 0.doc',UNHEX('b4069564c2a54c4d9402b44b40d8af10'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('0ceb406840854d78a2891898dafb6d91'),'Observación correspondiente al estudio 0ceb406840854d78a2891898dafb6d91.',UNHEX('09dd02e538d14bf98c9905403167a4a8'),'ET');
# Se craran 4 archivos para el estudio 0ceb406840854d78a2891898dafb6d91
CALL insert_study_file (UNHEX('9b142da6dd854a9481f7541a1acb90d9'),'Archivo 0.txt',UNHEX('0ceb406840854d78a2891898dafb6d91'));
CALL insert_study_file (UNHEX('d1d117a57f5e40239775846af0ac87b5'),'Archivo 1.txt',UNHEX('0ceb406840854d78a2891898dafb6d91'));
CALL insert_study_file (UNHEX('23f1d048546f4cd689995dc858b0149d'),'Archivo 2.jpg',UNHEX('0ceb406840854d78a2891898dafb6d91'));
CALL insert_study_file (UNHEX('4109b0cfdef045c394bd17cdd12b6dc0'),'Archivo 3.txt',UNHEX('0ceb406840854d78a2891898dafb6d91'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('dcac3eef05d8445c832e4e43bc2edb99'),'Observación correspondiente al estudio dcac3eef05d8445c832e4e43bc2edb99.',UNHEX('09dd02e538d14bf98c9905403167a4a8'),'UA');
# Se craran 4 archivos para el estudio dcac3eef05d8445c832e4e43bc2edb99
CALL insert_study_file (UNHEX('f5972e90d13e4d589aaede7596c57558'),'Archivo 0.txt',UNHEX('dcac3eef05d8445c832e4e43bc2edb99'));
CALL insert_study_file (UNHEX('ca449ab83cb146e49a81af4a97ceb648'),'Archivo 1.doc',UNHEX('dcac3eef05d8445c832e4e43bc2edb99'));
CALL insert_study_file (UNHEX('11ed1516b6214b0ca3993051f9c62528'),'Archivo 2.doc',UNHEX('dcac3eef05d8445c832e4e43bc2edb99'));
CALL insert_study_file (UNHEX('b16b69f1b9e44349abd94463bf7d7f7b'),'Archivo 3.txt',UNHEX('dcac3eef05d8445c832e4e43bc2edb99'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('31651c258d4e4cf2ae838bb6e412093b'),'Observación correspondiente al estudio 31651c258d4e4cf2ae838bb6e412093b.',UNHEX('09dd02e538d14bf98c9905403167a4a8'),'UA');
# Se craran 1 archivos para el estudio 31651c258d4e4cf2ae838bb6e412093b
CALL insert_study_file (UNHEX('ee63caaa85674df3842864474b590047'),'Archivo 0.pdf',UNHEX('31651c258d4e4cf2ae838bb6e412093b'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('82accb2507be4015a173fc37c1db9b2f'),'Observación correspondiente al estudio 82accb2507be4015a173fc37c1db9b2f.',UNHEX('09dd02e538d14bf98c9905403167a4a8'),'UA');
# Se craran 3 archivos para el estudio 82accb2507be4015a173fc37c1db9b2f
CALL insert_study_file (UNHEX('a700e39f8b214bbcab24f4f72e4462fd'),'Archivo 0.pdf',UNHEX('82accb2507be4015a173fc37c1db9b2f'));
CALL insert_study_file (UNHEX('3d34364893dc4b2491b1198071c84a7d'),'Archivo 1.doc',UNHEX('82accb2507be4015a173fc37c1db9b2f'));
CALL insert_study_file (UNHEX('68ed004bfe1944f18f7c9b1edea63ce3'),'Archivo 2.pdf',UNHEX('82accb2507be4015a173fc37c1db9b2f'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('59b001056fbf4971896bd7d25edbdb8e'),'Observación correspondiente al estudio 59b001056fbf4971896bd7d25edbdb8e.',UNHEX('09dd02e538d14bf98c9905403167a4a8'),'ET');
# Se craran 7 archivos para el estudio 59b001056fbf4971896bd7d25edbdb8e
CALL insert_study_file (UNHEX('041b61121d424d539d7df3995d5a0ee7'),'Archivo 0.doc',UNHEX('59b001056fbf4971896bd7d25edbdb8e'));
CALL insert_study_file (UNHEX('62ad55c5f7294c57bfb6f29e03e3d24d'),'Archivo 1.jpg',UNHEX('59b001056fbf4971896bd7d25edbdb8e'));
CALL insert_study_file (UNHEX('5c3ea495d24a4bb3b680dee7a4d54e30'),'Archivo 2.txt',UNHEX('59b001056fbf4971896bd7d25edbdb8e'));
CALL insert_study_file (UNHEX('e555b7fc6852466fb0860fd7529bfab7'),'Archivo 3.jpg',UNHEX('59b001056fbf4971896bd7d25edbdb8e'));
CALL insert_study_file (UNHEX('60f222b2cd6c436494ed0969d110a1e1'),'Archivo 4.jpg',UNHEX('59b001056fbf4971896bd7d25edbdb8e'));
CALL insert_study_file (UNHEX('2f33c5ca30a143d48961d860e941f1ad'),'Archivo 5.txt',UNHEX('59b001056fbf4971896bd7d25edbdb8e'));
CALL insert_study_file (UNHEX('9871e45e954a4269a91205f7220c461e'),'Archivo 6.pdf',UNHEX('59b001056fbf4971896bd7d25edbdb8e'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('357affe83ac9407583a98eb4b7796b1f'),'Observación correspondiente al estudio 357affe83ac9407583a98eb4b7796b1f.',UNHEX('09dd02e538d14bf98c9905403167a4a8'),'ET');
# Se craran 7 archivos para el estudio 357affe83ac9407583a98eb4b7796b1f
CALL insert_study_file (UNHEX('040af5fd4e084cfabf0cb5857dbaadd1'),'Archivo 0.txt',UNHEX('357affe83ac9407583a98eb4b7796b1f'));
CALL insert_study_file (UNHEX('9513c0bf68f84b558d562058cbea97c0'),'Archivo 1.txt',UNHEX('357affe83ac9407583a98eb4b7796b1f'));
CALL insert_study_file (UNHEX('5e40b62e9f954f4e96604494a02bb656'),'Archivo 2.pdf',UNHEX('357affe83ac9407583a98eb4b7796b1f'));
CALL insert_study_file (UNHEX('2494d1232a5247119dcd86485a47a1dd'),'Archivo 3.jpg',UNHEX('357affe83ac9407583a98eb4b7796b1f'));
CALL insert_study_file (UNHEX('16c2e9bcd2664e7792e01a81890f7828'),'Archivo 4.doc',UNHEX('357affe83ac9407583a98eb4b7796b1f'));
CALL insert_study_file (UNHEX('a959f6b8e1a44beeabd99e6aeba47d61'),'Archivo 5.jpg',UNHEX('357affe83ac9407583a98eb4b7796b1f'));
CALL insert_study_file (UNHEX('efbf9f7659a848ac88012c7618b60647'),'Archivo 6.pdf',UNHEX('357affe83ac9407583a98eb4b7796b1f'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('726a2ff2d9b54081947be9edd952d5ff'),'Observación correspondiente al estudio 726a2ff2d9b54081947be9edd952d5ff.',UNHEX('09dd02e538d14bf98c9905403167a4a8'),'ET');
# Se craran 2 archivos para el estudio 726a2ff2d9b54081947be9edd952d5ff
CALL insert_study_file (UNHEX('db74e44d35ab4337aba117cb80fbbdfc'),'Archivo 0.pdf',UNHEX('726a2ff2d9b54081947be9edd952d5ff'));
CALL insert_study_file (UNHEX('177d1490e5584fe683945c5113261433'),'Archivo 1.pdf',UNHEX('726a2ff2d9b54081947be9edd952d5ff'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('9e2d2e6592d246e8acd25d0e538bc3e6'),'Observación correspondiente al estudio 9e2d2e6592d246e8acd25d0e538bc3e6.',UNHEX('09dd02e538d14bf98c9905403167a4a8'),'UA');
# Se craran 0 archivos para el estudio 9e2d2e6592d246e8acd25d0e538bc3e6
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('183ecc64a00e487fb35bdec01b612030'),'Observación correspondiente al estudio 183ecc64a00e487fb35bdec01b612030.',UNHEX('09dd02e538d14bf98c9905403167a4a8'),'ET');
# Se craran 4 archivos para el estudio 183ecc64a00e487fb35bdec01b612030
CALL insert_study_file (UNHEX('139be06caa414e0c92580145067b18d8'),'Archivo 0.txt',UNHEX('183ecc64a00e487fb35bdec01b612030'));
CALL insert_study_file (UNHEX('3aa4f94eb3694826884e7cd967be0b72'),'Archivo 1.doc',UNHEX('183ecc64a00e487fb35bdec01b612030'));
CALL insert_study_file (UNHEX('03fe842f99ab4601bb166808260c75a9'),'Archivo 2.pdf',UNHEX('183ecc64a00e487fb35bdec01b612030'));
CALL insert_study_file (UNHEX('b31f7ef9f2324f16bfdd8d945e851394'),'Archivo 3.txt',UNHEX('183ecc64a00e487fb35bdec01b612030'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('b9767ec9022646999b630925c7a5cc10'),'Observación correspondiente al estudio b9767ec9022646999b630925c7a5cc10.',UNHEX('09dd02e538d14bf98c9905403167a4a8'),'UA');
# Se craran 0 archivos para el estudio b9767ec9022646999b630925c7a5cc10
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 5e2fd3e30a084387a6ea88ed369e9954
CALL insert_patient ('1945-05-03','2','F', UNHEX('5e2fd3e30a084387a6ea88ed369e9954'),'Lundell, elly','doctor');
# Se craran 3 estudios para el paciente 5e2fd3e30a084387a6ea88ed369e9954
CALL insert_study ('2014-07-31',UNHEX('6cd11eb9e31b46fe8f8d0f3ffc0e493a'),'Observación correspondiente al estudio 6cd11eb9e31b46fe8f8d0f3ffc0e493a.',UNHEX('5e2fd3e30a084387a6ea88ed369e9954'),'ET');
# Se craran 1 archivos para el estudio 6cd11eb9e31b46fe8f8d0f3ffc0e493a
CALL insert_study_file (UNHEX('29bece2296284e2ea9b4fa24bbfcec6f'),'Archivo 0.doc',UNHEX('6cd11eb9e31b46fe8f8d0f3ffc0e493a'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('833ad12045ee4c929dcdf26a46058546'),'Observación correspondiente al estudio 833ad12045ee4c929dcdf26a46058546.',UNHEX('5e2fd3e30a084387a6ea88ed369e9954'),'ET');
# Se craran 6 archivos para el estudio 833ad12045ee4c929dcdf26a46058546
CALL insert_study_file (UNHEX('41a86711017d42aabdb05e04ae2cc346'),'Archivo 0.pdf',UNHEX('833ad12045ee4c929dcdf26a46058546'));
CALL insert_study_file (UNHEX('266686b7a72a4a979477e4d0268bf101'),'Archivo 1.pdf',UNHEX('833ad12045ee4c929dcdf26a46058546'));
CALL insert_study_file (UNHEX('f1063abe542840bdb4d707aae5f1b7cc'),'Archivo 2.doc',UNHEX('833ad12045ee4c929dcdf26a46058546'));
CALL insert_study_file (UNHEX('ab7ae26440c0492f8b34df724830b677'),'Archivo 3.txt',UNHEX('833ad12045ee4c929dcdf26a46058546'));
CALL insert_study_file (UNHEX('b4e6f24e0edb4501add91441e47899b4'),'Archivo 4.txt',UNHEX('833ad12045ee4c929dcdf26a46058546'));
CALL insert_study_file (UNHEX('1e83a263c2c34045bf4a103dbc0dcfee'),'Archivo 5.pdf',UNHEX('833ad12045ee4c929dcdf26a46058546'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('b9d5102085794cfb8528719b80ff712c'),'Observación correspondiente al estudio b9d5102085794cfb8528719b80ff712c.',UNHEX('5e2fd3e30a084387a6ea88ed369e9954'),'UA');
# Se craran 7 archivos para el estudio b9d5102085794cfb8528719b80ff712c
CALL insert_study_file (UNHEX('9bfcb5968cce4c47a3bd12198bbcad71'),'Archivo 0.jpg',UNHEX('b9d5102085794cfb8528719b80ff712c'));
CALL insert_study_file (UNHEX('127aff5619f7481a82c338c60c006a5d'),'Archivo 1.jpg',UNHEX('b9d5102085794cfb8528719b80ff712c'));
CALL insert_study_file (UNHEX('5267cbe03d28474095df78a2ef5600f1'),'Archivo 2.txt',UNHEX('b9d5102085794cfb8528719b80ff712c'));
CALL insert_study_file (UNHEX('b437d9bb207845bea75b86750bb5db7f'),'Archivo 3.pdf',UNHEX('b9d5102085794cfb8528719b80ff712c'));
CALL insert_study_file (UNHEX('0d2ee387cb4a4879b2ac646065923291'),'Archivo 4.pdf',UNHEX('b9d5102085794cfb8528719b80ff712c'));
CALL insert_study_file (UNHEX('e21440be669c408dbc8cbf57ce0971c7'),'Archivo 5.jpg',UNHEX('b9d5102085794cfb8528719b80ff712c'));
CALL insert_study_file (UNHEX('cfa7eaafb5454c01b1f0b6e8e6668fdf'),'Archivo 6.txt',UNHEX('b9d5102085794cfb8528719b80ff712c'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente f4b2510fca044ba7b8183fb4f1cf16dc
CALL insert_patient ('1954-10-28','0','M', UNHEX('f4b2510fca044ba7b8183fb4f1cf16dc'),'Song, Cobbie','doctor');
# Se craran 9 estudios para el paciente f4b2510fca044ba7b8183fb4f1cf16dc
CALL insert_study ('2014-07-30',UNHEX('a88e4a278012414ca42cc318389dd04b'),'Observación correspondiente al estudio a88e4a278012414ca42cc318389dd04b.',UNHEX('f4b2510fca044ba7b8183fb4f1cf16dc'),'UA');
# Se craran 0 archivos para el estudio a88e4a278012414ca42cc318389dd04b
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('aa64a3f865c74fbfad67c49ab3a0d404'),'Observación correspondiente al estudio aa64a3f865c74fbfad67c49ab3a0d404.',UNHEX('f4b2510fca044ba7b8183fb4f1cf16dc'),'UA');
# Se craran 6 archivos para el estudio aa64a3f865c74fbfad67c49ab3a0d404
CALL insert_study_file (UNHEX('b08e1a8fffa3400fb51e8e8fd6f009cd'),'Archivo 0.txt',UNHEX('aa64a3f865c74fbfad67c49ab3a0d404'));
CALL insert_study_file (UNHEX('8cd696f5a67b4f099007b8d294b9d6c2'),'Archivo 1.pdf',UNHEX('aa64a3f865c74fbfad67c49ab3a0d404'));
CALL insert_study_file (UNHEX('d0c8deaa92bf4f69adf08c32b8179637'),'Archivo 2.jpg',UNHEX('aa64a3f865c74fbfad67c49ab3a0d404'));
CALL insert_study_file (UNHEX('5d1d0ddb6dec4ee080fe509fd08c5e06'),'Archivo 3.txt',UNHEX('aa64a3f865c74fbfad67c49ab3a0d404'));
CALL insert_study_file (UNHEX('a831ef2d9ce04babbe009427a98e2df7'),'Archivo 4.jpg',UNHEX('aa64a3f865c74fbfad67c49ab3a0d404'));
CALL insert_study_file (UNHEX('7106b2bcae1e4e6883eb8d0fdb5db5be'),'Archivo 5.doc',UNHEX('aa64a3f865c74fbfad67c49ab3a0d404'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('09ceea71268442749140d044b7850206'),'Observación correspondiente al estudio 09ceea71268442749140d044b7850206.',UNHEX('f4b2510fca044ba7b8183fb4f1cf16dc'),'ET');
# Se craran 0 archivos para el estudio 09ceea71268442749140d044b7850206
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('ac25e920d0114c6197b072d5ed2eda93'),'Observación correspondiente al estudio ac25e920d0114c6197b072d5ed2eda93.',UNHEX('f4b2510fca044ba7b8183fb4f1cf16dc'),'ET');
# Se craran 6 archivos para el estudio ac25e920d0114c6197b072d5ed2eda93
CALL insert_study_file (UNHEX('291bdb915b2947779df588731ec7fe2d'),'Archivo 0.jpg',UNHEX('ac25e920d0114c6197b072d5ed2eda93'));
CALL insert_study_file (UNHEX('bc3ee0e7fe4448dbbb535caee17a06b8'),'Archivo 1.txt',UNHEX('ac25e920d0114c6197b072d5ed2eda93'));
CALL insert_study_file (UNHEX('1f1d0e31fb884a759b4ac76bb4f180b2'),'Archivo 2.doc',UNHEX('ac25e920d0114c6197b072d5ed2eda93'));
CALL insert_study_file (UNHEX('b2d255c5d75949dfbb4d2fb72a320c99'),'Archivo 3.txt',UNHEX('ac25e920d0114c6197b072d5ed2eda93'));
CALL insert_study_file (UNHEX('a8045e8c230b48d8a4b0dcee229f060f'),'Archivo 4.pdf',UNHEX('ac25e920d0114c6197b072d5ed2eda93'));
CALL insert_study_file (UNHEX('14a4048060fd43dea87f7c88592e0be4'),'Archivo 5.txt',UNHEX('ac25e920d0114c6197b072d5ed2eda93'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('10f0255141c64043808b71ca0acd3f5d'),'Observación correspondiente al estudio 10f0255141c64043808b71ca0acd3f5d.',UNHEX('f4b2510fca044ba7b8183fb4f1cf16dc'),'UA');
# Se craran 7 archivos para el estudio 10f0255141c64043808b71ca0acd3f5d
CALL insert_study_file (UNHEX('0d9a6181c3de4b738e010d6e910fba35'),'Archivo 0.pdf',UNHEX('10f0255141c64043808b71ca0acd3f5d'));
CALL insert_study_file (UNHEX('3abf9a17084344f98152a9512a9dfda4'),'Archivo 1.doc',UNHEX('10f0255141c64043808b71ca0acd3f5d'));
CALL insert_study_file (UNHEX('6bbedf304f354d2caea7d4e117fd5bbd'),'Archivo 2.jpg',UNHEX('10f0255141c64043808b71ca0acd3f5d'));
CALL insert_study_file (UNHEX('d54e9ed7b0274dc1982f3cf657b6fcfc'),'Archivo 3.doc',UNHEX('10f0255141c64043808b71ca0acd3f5d'));
CALL insert_study_file (UNHEX('10339a63eb7b4dcfaf82d6cfdeaa3d03'),'Archivo 4.jpg',UNHEX('10f0255141c64043808b71ca0acd3f5d'));
CALL insert_study_file (UNHEX('4caa291ae5a94d27a12a2dca7903b0db'),'Archivo 5.jpg',UNHEX('10f0255141c64043808b71ca0acd3f5d'));
CALL insert_study_file (UNHEX('2df4bb26c0ec48848bb307bd0471ebbb'),'Archivo 6.pdf',UNHEX('10f0255141c64043808b71ca0acd3f5d'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('110f00706a164f2ba6bad431170d4744'),'Observación correspondiente al estudio 110f00706a164f2ba6bad431170d4744.',UNHEX('f4b2510fca044ba7b8183fb4f1cf16dc'),'ET');
# Se craran 1 archivos para el estudio 110f00706a164f2ba6bad431170d4744
CALL insert_study_file (UNHEX('3b20711a79e74d04a77b0155b9237ff3'),'Archivo 0.doc',UNHEX('110f00706a164f2ba6bad431170d4744'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('c4788d4987cf45dcbe7821572b114966'),'Observación correspondiente al estudio c4788d4987cf45dcbe7821572b114966.',UNHEX('f4b2510fca044ba7b8183fb4f1cf16dc'),'UA');
# Se craran 9 archivos para el estudio c4788d4987cf45dcbe7821572b114966
CALL insert_study_file (UNHEX('24216e1fd52142b3b2d034f7ccce557f'),'Archivo 0.doc',UNHEX('c4788d4987cf45dcbe7821572b114966'));
CALL insert_study_file (UNHEX('6fa3067d1a064a079b6c39d6c6198da6'),'Archivo 1.pdf',UNHEX('c4788d4987cf45dcbe7821572b114966'));
CALL insert_study_file (UNHEX('18d4036f153e45118f9946f9af3ecab4'),'Archivo 2.doc',UNHEX('c4788d4987cf45dcbe7821572b114966'));
CALL insert_study_file (UNHEX('bc26eb8dffc1411f9d26c8c6f0c5c0c5'),'Archivo 3.jpg',UNHEX('c4788d4987cf45dcbe7821572b114966'));
CALL insert_study_file (UNHEX('162ca2b999ff41cb8ee38b813240c591'),'Archivo 4.txt',UNHEX('c4788d4987cf45dcbe7821572b114966'));
CALL insert_study_file (UNHEX('646f7b4159864e8180201103a1a05a61'),'Archivo 5.pdf',UNHEX('c4788d4987cf45dcbe7821572b114966'));
CALL insert_study_file (UNHEX('5d9c5738eeee426a8e1033d81d5ed873'),'Archivo 6.pdf',UNHEX('c4788d4987cf45dcbe7821572b114966'));
CALL insert_study_file (UNHEX('6914ce907cf7463698290c5170ecb52d'),'Archivo 7.doc',UNHEX('c4788d4987cf45dcbe7821572b114966'));
CALL insert_study_file (UNHEX('371f353d11d747f2a2e453669315eded'),'Archivo 8.jpg',UNHEX('c4788d4987cf45dcbe7821572b114966'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('ac50674c52504d06be0dc357d2c0e233'),'Observación correspondiente al estudio ac50674c52504d06be0dc357d2c0e233.',UNHEX('f4b2510fca044ba7b8183fb4f1cf16dc'),'UA');
# Se craran 9 archivos para el estudio ac50674c52504d06be0dc357d2c0e233
CALL insert_study_file (UNHEX('85731d9915604dd38a674f41c4d7b978'),'Archivo 0.pdf',UNHEX('ac50674c52504d06be0dc357d2c0e233'));
CALL insert_study_file (UNHEX('bf0d05f9b49f46a9bc789f647187df40'),'Archivo 1.jpg',UNHEX('ac50674c52504d06be0dc357d2c0e233'));
CALL insert_study_file (UNHEX('0f2f14c8c6d944ceb1dd598c6ea8aa64'),'Archivo 2.doc',UNHEX('ac50674c52504d06be0dc357d2c0e233'));
CALL insert_study_file (UNHEX('3e4819d6940b40b6aa45b2a4fa2d9535'),'Archivo 3.pdf',UNHEX('ac50674c52504d06be0dc357d2c0e233'));
CALL insert_study_file (UNHEX('e13632dd992d4285b88a62b20d31cf60'),'Archivo 4.jpg',UNHEX('ac50674c52504d06be0dc357d2c0e233'));
CALL insert_study_file (UNHEX('6927db8581194bb2abda2462c128cb5d'),'Archivo 5.doc',UNHEX('ac50674c52504d06be0dc357d2c0e233'));
CALL insert_study_file (UNHEX('6f897477e45d48bd8250464b049b43a0'),'Archivo 6.doc',UNHEX('ac50674c52504d06be0dc357d2c0e233'));
CALL insert_study_file (UNHEX('f5e3291c398d47f5be63dbef555daacd'),'Archivo 7.doc',UNHEX('ac50674c52504d06be0dc357d2c0e233'));
CALL insert_study_file (UNHEX('251cf157fc0c4693a17027e85968b01e'),'Archivo 8.doc',UNHEX('ac50674c52504d06be0dc357d2c0e233'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('c8ac2c87d2f649f5b3062917e4f29260'),'Observación correspondiente al estudio c8ac2c87d2f649f5b3062917e4f29260.',UNHEX('f4b2510fca044ba7b8183fb4f1cf16dc'),'BT');
# Se craran 6 archivos para el estudio c8ac2c87d2f649f5b3062917e4f29260
CALL insert_study_file (UNHEX('9cf134747a3042919764d070967efb3d'),'Archivo 0.pdf',UNHEX('c8ac2c87d2f649f5b3062917e4f29260'));
CALL insert_study_file (UNHEX('22ac3231cac44372bb541ff3dacb931e'),'Archivo 1.doc',UNHEX('c8ac2c87d2f649f5b3062917e4f29260'));
CALL insert_study_file (UNHEX('f69788c9025e4544b410e4e9eb339435'),'Archivo 2.doc',UNHEX('c8ac2c87d2f649f5b3062917e4f29260'));
CALL insert_study_file (UNHEX('5df92a87fa52451b8510f87642b0bd7e'),'Archivo 3.doc',UNHEX('c8ac2c87d2f649f5b3062917e4f29260'));
CALL insert_study_file (UNHEX('5f6a0ea477b34fd6805a052fe64024d3'),'Archivo 4.txt',UNHEX('c8ac2c87d2f649f5b3062917e4f29260'));
CALL insert_study_file (UNHEX('a6b152df5c8944858fd1f2bc0b984e18'),'Archivo 5.doc',UNHEX('c8ac2c87d2f649f5b3062917e4f29260'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente caec4b9c425a4c9b9a9e4c2b1c376bf7
CALL insert_patient ('1950-02-02','6','M', UNHEX('caec4b9c425a4c9b9a9e4c2b1c376bf7'),'Glassow, lloyd','doctor');
# Se craran 3 estudios para el paciente caec4b9c425a4c9b9a9e4c2b1c376bf7
CALL insert_study ('2014-08-03',UNHEX('a4b4b591e1ef40718a2dc6cf2389ba2f'),'Observación correspondiente al estudio a4b4b591e1ef40718a2dc6cf2389ba2f.',UNHEX('caec4b9c425a4c9b9a9e4c2b1c376bf7'),'BT');
# Se craran 9 archivos para el estudio a4b4b591e1ef40718a2dc6cf2389ba2f
CALL insert_study_file (UNHEX('f24ff767d76f476e83b997dd34e71eeb'),'Archivo 0.doc',UNHEX('a4b4b591e1ef40718a2dc6cf2389ba2f'));
CALL insert_study_file (UNHEX('e92e3e954dbb481f8f71faadd778d203'),'Archivo 1.txt',UNHEX('a4b4b591e1ef40718a2dc6cf2389ba2f'));
CALL insert_study_file (UNHEX('2eeee825a63e482792c6aa96ef12791c'),'Archivo 2.pdf',UNHEX('a4b4b591e1ef40718a2dc6cf2389ba2f'));
CALL insert_study_file (UNHEX('6bf40d3e38fb4aa39d90272bb5c7d24e'),'Archivo 3.doc',UNHEX('a4b4b591e1ef40718a2dc6cf2389ba2f'));
CALL insert_study_file (UNHEX('a0f5802f5794435bae958360ea263d0e'),'Archivo 4.txt',UNHEX('a4b4b591e1ef40718a2dc6cf2389ba2f'));
CALL insert_study_file (UNHEX('838f9c66fa7a4f429999a1a9d701f63d'),'Archivo 5.jpg',UNHEX('a4b4b591e1ef40718a2dc6cf2389ba2f'));
CALL insert_study_file (UNHEX('0cf640cc25cc4c97b45dc59f6363d4b3'),'Archivo 6.jpg',UNHEX('a4b4b591e1ef40718a2dc6cf2389ba2f'));
CALL insert_study_file (UNHEX('8c83b41a30b54d788bfeaedb7b3e74b5'),'Archivo 7.doc',UNHEX('a4b4b591e1ef40718a2dc6cf2389ba2f'));
CALL insert_study_file (UNHEX('1734323f958b4b0c9a7b229d9d86306c'),'Archivo 8.pdf',UNHEX('a4b4b591e1ef40718a2dc6cf2389ba2f'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('4409e6b0ed5c4f6ea5f9941cdce16a7d'),'Observación correspondiente al estudio 4409e6b0ed5c4f6ea5f9941cdce16a7d.',UNHEX('caec4b9c425a4c9b9a9e4c2b1c376bf7'),'ET');
# Se craran 3 archivos para el estudio 4409e6b0ed5c4f6ea5f9941cdce16a7d
CALL insert_study_file (UNHEX('b47fbc846ee54cd7bd926a3466267a74'),'Archivo 0.pdf',UNHEX('4409e6b0ed5c4f6ea5f9941cdce16a7d'));
CALL insert_study_file (UNHEX('d10d64d28ede44eebdf5d5c4ef5a854d'),'Archivo 1.jpg',UNHEX('4409e6b0ed5c4f6ea5f9941cdce16a7d'));
CALL insert_study_file (UNHEX('69eab864bf1e4f519c0a0ac5de030283'),'Archivo 2.jpg',UNHEX('4409e6b0ed5c4f6ea5f9941cdce16a7d'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('492ea2a3072c43d2aa68c8726080b538'),'Observación correspondiente al estudio 492ea2a3072c43d2aa68c8726080b538.',UNHEX('caec4b9c425a4c9b9a9e4c2b1c376bf7'),'BT');
# Se craran 4 archivos para el estudio 492ea2a3072c43d2aa68c8726080b538
CALL insert_study_file (UNHEX('e8e438d2687b49deba5e6036589808e7'),'Archivo 0.pdf',UNHEX('492ea2a3072c43d2aa68c8726080b538'));
CALL insert_study_file (UNHEX('2a082856318046f2b01456725a01898e'),'Archivo 1.pdf',UNHEX('492ea2a3072c43d2aa68c8726080b538'));
CALL insert_study_file (UNHEX('1a7c6cef14e04233b6e99e1bcab500c5'),'Archivo 2.pdf',UNHEX('492ea2a3072c43d2aa68c8726080b538'));
CALL insert_study_file (UNHEX('c24760753dfa4b2185b31291254f50ae'),'Archivo 3.pdf',UNHEX('492ea2a3072c43d2aa68c8726080b538'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 35818f0b92a34e56bb088d32fdd06336
CALL insert_patient ('1972-03-29','6','M', UNHEX('35818f0b92a34e56bb088d32fdd06336'),'Josselson, Damian','doctor');
# Se craran 4 estudios para el paciente 35818f0b92a34e56bb088d32fdd06336
CALL insert_study ('2014-08-02',UNHEX('9c4e268bc2ff4e30bac9b604d07a57d9'),'Observación correspondiente al estudio 9c4e268bc2ff4e30bac9b604d07a57d9.',UNHEX('35818f0b92a34e56bb088d32fdd06336'),'ET');
# Se craran 1 archivos para el estudio 9c4e268bc2ff4e30bac9b604d07a57d9
CALL insert_study_file (UNHEX('4ff94ac444b042bdac450f228192e398'),'Archivo 0.pdf',UNHEX('9c4e268bc2ff4e30bac9b604d07a57d9'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('4b6702a245fa439da14668a43b0f7145'),'Observación correspondiente al estudio 4b6702a245fa439da14668a43b0f7145.',UNHEX('35818f0b92a34e56bb088d32fdd06336'),'UA');
# Se craran 1 archivos para el estudio 4b6702a245fa439da14668a43b0f7145
CALL insert_study_file (UNHEX('744f4cb82b4642008bf40571c3119a53'),'Archivo 0.jpg',UNHEX('4b6702a245fa439da14668a43b0f7145'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('dfb8bb772ab74cd485a3679b8417af61'),'Observación correspondiente al estudio dfb8bb772ab74cd485a3679b8417af61.',UNHEX('35818f0b92a34e56bb088d32fdd06336'),'BT');
# Se craran 1 archivos para el estudio dfb8bb772ab74cd485a3679b8417af61
CALL insert_study_file (UNHEX('0845f74073c64f27a2be5d871c785b28'),'Archivo 0.jpg',UNHEX('dfb8bb772ab74cd485a3679b8417af61'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('0acfe4d634d54b5694868d886a8cb01a'),'Observación correspondiente al estudio 0acfe4d634d54b5694868d886a8cb01a.',UNHEX('35818f0b92a34e56bb088d32fdd06336'),'BT');
# Se craran 7 archivos para el estudio 0acfe4d634d54b5694868d886a8cb01a
CALL insert_study_file (UNHEX('bc712cb798884228aba66f51ae88b7d7'),'Archivo 0.doc',UNHEX('0acfe4d634d54b5694868d886a8cb01a'));
CALL insert_study_file (UNHEX('7aa4a5c3dccd41bfb059989ab178a0f5'),'Archivo 1.pdf',UNHEX('0acfe4d634d54b5694868d886a8cb01a'));
CALL insert_study_file (UNHEX('f16973e66fd5490793346823fe9451fb'),'Archivo 2.txt',UNHEX('0acfe4d634d54b5694868d886a8cb01a'));
CALL insert_study_file (UNHEX('b39a77880ce9449793597448b022b732'),'Archivo 3.txt',UNHEX('0acfe4d634d54b5694868d886a8cb01a'));
CALL insert_study_file (UNHEX('1af73701d8e9433a8b74a9d40b2cb942'),'Archivo 4.jpg',UNHEX('0acfe4d634d54b5694868d886a8cb01a'));
CALL insert_study_file (UNHEX('82bad94ce9e347c8954e7ce5dce516e9'),'Archivo 5.jpg',UNHEX('0acfe4d634d54b5694868d886a8cb01a'));
CALL insert_study_file (UNHEX('bb9adfd8db584a84a17888db310b0f48'),'Archivo 6.jpg',UNHEX('0acfe4d634d54b5694868d886a8cb01a'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente e42be40907ab4782af5205da6e598ffd
CALL insert_patient ('1988-12-29','5','M', UNHEX('e42be40907ab4782af5205da6e598ffd'),'Sheikh, Lancelot thornton','doctor');
# Se craran 11 estudios para el paciente e42be40907ab4782af5205da6e598ffd
CALL insert_study ('2014-08-04',UNHEX('efa3e4d46811400c9392907a0d3a7674'),'Observación correspondiente al estudio efa3e4d46811400c9392907a0d3a7674.',UNHEX('e42be40907ab4782af5205da6e598ffd'),'UA');
# Se craran 8 archivos para el estudio efa3e4d46811400c9392907a0d3a7674
CALL insert_study_file (UNHEX('5d8b3cb189c84ddfb0523b263dde5b07'),'Archivo 0.txt',UNHEX('efa3e4d46811400c9392907a0d3a7674'));
CALL insert_study_file (UNHEX('a9c9851cf5444ed3bd885357cbf1a3cd'),'Archivo 1.pdf',UNHEX('efa3e4d46811400c9392907a0d3a7674'));
CALL insert_study_file (UNHEX('e631eb5403fa49f9b980adfa509d5437'),'Archivo 2.txt',UNHEX('efa3e4d46811400c9392907a0d3a7674'));
CALL insert_study_file (UNHEX('a495a064b0c24885a12eaf5761d962bc'),'Archivo 3.pdf',UNHEX('efa3e4d46811400c9392907a0d3a7674'));
CALL insert_study_file (UNHEX('fe095f15679a4691b47875589dab1128'),'Archivo 4.jpg',UNHEX('efa3e4d46811400c9392907a0d3a7674'));
CALL insert_study_file (UNHEX('cf70667efd5449be95bd28d0e6783bf9'),'Archivo 5.jpg',UNHEX('efa3e4d46811400c9392907a0d3a7674'));
CALL insert_study_file (UNHEX('58d5a18a75c94dbeb14fe6c9cb1c54da'),'Archivo 6.jpg',UNHEX('efa3e4d46811400c9392907a0d3a7674'));
CALL insert_study_file (UNHEX('0b6337fc516d469fb911208dab0778de'),'Archivo 7.pdf',UNHEX('efa3e4d46811400c9392907a0d3a7674'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('7701be9df4b0415c8009e1760146935b'),'Observación correspondiente al estudio 7701be9df4b0415c8009e1760146935b.',UNHEX('e42be40907ab4782af5205da6e598ffd'),'ET');
# Se craran 6 archivos para el estudio 7701be9df4b0415c8009e1760146935b
CALL insert_study_file (UNHEX('1b1f804afe974d12b8872b0ff9ba296c'),'Archivo 0.pdf',UNHEX('7701be9df4b0415c8009e1760146935b'));
CALL insert_study_file (UNHEX('bd563f64ff6147c2baea5e143dadc237'),'Archivo 1.pdf',UNHEX('7701be9df4b0415c8009e1760146935b'));
CALL insert_study_file (UNHEX('f128e717556043fd98ba8e9aaae75efc'),'Archivo 2.jpg',UNHEX('7701be9df4b0415c8009e1760146935b'));
CALL insert_study_file (UNHEX('b30a3111eecc4844bcaa10bf76417c6e'),'Archivo 3.jpg',UNHEX('7701be9df4b0415c8009e1760146935b'));
CALL insert_study_file (UNHEX('c4cedc1c78704c77be9c0ef7aa8f4924'),'Archivo 4.txt',UNHEX('7701be9df4b0415c8009e1760146935b'));
CALL insert_study_file (UNHEX('08a31201d5ca4b5caf8051cd07cd57a6'),'Archivo 5.txt',UNHEX('7701be9df4b0415c8009e1760146935b'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('6dadfb82c0494a09af83f5b1b82bfe11'),'Observación correspondiente al estudio 6dadfb82c0494a09af83f5b1b82bfe11.',UNHEX('e42be40907ab4782af5205da6e598ffd'),'UA');
# Se craran 8 archivos para el estudio 6dadfb82c0494a09af83f5b1b82bfe11
CALL insert_study_file (UNHEX('b67612d06d7e477bb6930dea563d07d2'),'Archivo 0.txt',UNHEX('6dadfb82c0494a09af83f5b1b82bfe11'));
CALL insert_study_file (UNHEX('7ac530c74dcb4e56af41323945fdd920'),'Archivo 1.jpg',UNHEX('6dadfb82c0494a09af83f5b1b82bfe11'));
CALL insert_study_file (UNHEX('c852a5fbd4e2431b904c0017a14c9f75'),'Archivo 2.jpg',UNHEX('6dadfb82c0494a09af83f5b1b82bfe11'));
CALL insert_study_file (UNHEX('aa4351d35d37412c923d039dd6422586'),'Archivo 3.pdf',UNHEX('6dadfb82c0494a09af83f5b1b82bfe11'));
CALL insert_study_file (UNHEX('a1a87c105b9e4d7abfafcb5b35d46ba0'),'Archivo 4.doc',UNHEX('6dadfb82c0494a09af83f5b1b82bfe11'));
CALL insert_study_file (UNHEX('8bf7f9f4497f4a788bae76b2d80ad50a'),'Archivo 5.jpg',UNHEX('6dadfb82c0494a09af83f5b1b82bfe11'));
CALL insert_study_file (UNHEX('468505930dd64067a5999424e23b3dcf'),'Archivo 6.txt',UNHEX('6dadfb82c0494a09af83f5b1b82bfe11'));
CALL insert_study_file (UNHEX('16a7bd0a716743848ffcb9938a6a7cdc'),'Archivo 7.jpg',UNHEX('6dadfb82c0494a09af83f5b1b82bfe11'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('6477989be3234597b56eda84d54ed327'),'Observación correspondiente al estudio 6477989be3234597b56eda84d54ed327.',UNHEX('e42be40907ab4782af5205da6e598ffd'),'BT');
# Se craran 3 archivos para el estudio 6477989be3234597b56eda84d54ed327
CALL insert_study_file (UNHEX('dfe6d9f39dc5457eba0d73c8a7a946d5'),'Archivo 0.txt',UNHEX('6477989be3234597b56eda84d54ed327'));
CALL insert_study_file (UNHEX('b790e3aa3d37483ab4c782bd510ce3d2'),'Archivo 1.pdf',UNHEX('6477989be3234597b56eda84d54ed327'));
CALL insert_study_file (UNHEX('07ab4dd74f3d488c9181dd4c5c1a9eb3'),'Archivo 2.doc',UNHEX('6477989be3234597b56eda84d54ed327'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('3de2ab74f0a54593b63f6ee794a2472a'),'Observación correspondiente al estudio 3de2ab74f0a54593b63f6ee794a2472a.',UNHEX('e42be40907ab4782af5205da6e598ffd'),'BT');
# Se craran 6 archivos para el estudio 3de2ab74f0a54593b63f6ee794a2472a
CALL insert_study_file (UNHEX('0780b0ac697a46e0a03d9822ab2b1153'),'Archivo 0.pdf',UNHEX('3de2ab74f0a54593b63f6ee794a2472a'));
CALL insert_study_file (UNHEX('a769bdfaf592449c9d1aa548be6d6d74'),'Archivo 1.jpg',UNHEX('3de2ab74f0a54593b63f6ee794a2472a'));
CALL insert_study_file (UNHEX('e38397a5c1ec4efb80b8d51f55dd16cb'),'Archivo 2.txt',UNHEX('3de2ab74f0a54593b63f6ee794a2472a'));
CALL insert_study_file (UNHEX('c32207a2afa14408a4f600fd140ce2ea'),'Archivo 3.txt',UNHEX('3de2ab74f0a54593b63f6ee794a2472a'));
CALL insert_study_file (UNHEX('1d3287b99fc14493a6b5421497b3db34'),'Archivo 4.pdf',UNHEX('3de2ab74f0a54593b63f6ee794a2472a'));
CALL insert_study_file (UNHEX('bf4179de31d943fe815920090d8a7416'),'Archivo 5.txt',UNHEX('3de2ab74f0a54593b63f6ee794a2472a'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('12da4ca9d6ba4f709e06bbad74d22a21'),'Observación correspondiente al estudio 12da4ca9d6ba4f709e06bbad74d22a21.',UNHEX('e42be40907ab4782af5205da6e598ffd'),'ET');
# Se craran 4 archivos para el estudio 12da4ca9d6ba4f709e06bbad74d22a21
CALL insert_study_file (UNHEX('f31adee47c8144a48f26673dcf027952'),'Archivo 0.pdf',UNHEX('12da4ca9d6ba4f709e06bbad74d22a21'));
CALL insert_study_file (UNHEX('a57db6eba6e24aecada7881bd5f81e5f'),'Archivo 1.jpg',UNHEX('12da4ca9d6ba4f709e06bbad74d22a21'));
CALL insert_study_file (UNHEX('ce45692cc6384520a2e8c9ecf8598e58'),'Archivo 2.jpg',UNHEX('12da4ca9d6ba4f709e06bbad74d22a21'));
CALL insert_study_file (UNHEX('f7780d9bf7b14a1c9f4a76057e4e5751'),'Archivo 3.jpg',UNHEX('12da4ca9d6ba4f709e06bbad74d22a21'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('331fc51d0e1343859e3eb6b1bf144c19'),'Observación correspondiente al estudio 331fc51d0e1343859e3eb6b1bf144c19.',UNHEX('e42be40907ab4782af5205da6e598ffd'),'BT');
# Se craran 4 archivos para el estudio 331fc51d0e1343859e3eb6b1bf144c19
CALL insert_study_file (UNHEX('f3d1a81e921647978da4f754ef82e4a4'),'Archivo 0.doc',UNHEX('331fc51d0e1343859e3eb6b1bf144c19'));
CALL insert_study_file (UNHEX('54f7d46891b745b8b568c7740f2bfe00'),'Archivo 1.pdf',UNHEX('331fc51d0e1343859e3eb6b1bf144c19'));
CALL insert_study_file (UNHEX('63b894098c5b47f28e1079c69a475270'),'Archivo 2.doc',UNHEX('331fc51d0e1343859e3eb6b1bf144c19'));
CALL insert_study_file (UNHEX('c9ff3f288afd4eca81c6f4ee5e1d3854'),'Archivo 3.txt',UNHEX('331fc51d0e1343859e3eb6b1bf144c19'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('36616d663f9f49caa0b9f2683f0bc680'),'Observación correspondiente al estudio 36616d663f9f49caa0b9f2683f0bc680.',UNHEX('e42be40907ab4782af5205da6e598ffd'),'UA');
# Se craran 4 archivos para el estudio 36616d663f9f49caa0b9f2683f0bc680
CALL insert_study_file (UNHEX('10ade035f7e144dd8923aaec17fa5e0c'),'Archivo 0.doc',UNHEX('36616d663f9f49caa0b9f2683f0bc680'));
CALL insert_study_file (UNHEX('a97ea91f05424d9f87f813daee78b6e8'),'Archivo 1.txt',UNHEX('36616d663f9f49caa0b9f2683f0bc680'));
CALL insert_study_file (UNHEX('ad603f24456748a7b969d0fde1e48421'),'Archivo 2.pdf',UNHEX('36616d663f9f49caa0b9f2683f0bc680'));
CALL insert_study_file (UNHEX('bc8a595763e642228d7a5e86729190ff'),'Archivo 3.pdf',UNHEX('36616d663f9f49caa0b9f2683f0bc680'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('53e1ecadfc7e470581e6828a8cb074f6'),'Observación correspondiente al estudio 53e1ecadfc7e470581e6828a8cb074f6.',UNHEX('e42be40907ab4782af5205da6e598ffd'),'BT');
# Se craran 1 archivos para el estudio 53e1ecadfc7e470581e6828a8cb074f6
CALL insert_study_file (UNHEX('601efb718b004e43be6ce841188e877a'),'Archivo 0.doc',UNHEX('53e1ecadfc7e470581e6828a8cb074f6'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('6ab139b1796b49eeadbafc8ba9980ac6'),'Observación correspondiente al estudio 6ab139b1796b49eeadbafc8ba9980ac6.',UNHEX('e42be40907ab4782af5205da6e598ffd'),'BT');
# Se craran 1 archivos para el estudio 6ab139b1796b49eeadbafc8ba9980ac6
CALL insert_study_file (UNHEX('8033df388d414d31bd83fcd4e9be6c50'),'Archivo 0.txt',UNHEX('6ab139b1796b49eeadbafc8ba9980ac6'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('f5ee6e464caa49638247fb0db446f6a4'),'Observación correspondiente al estudio f5ee6e464caa49638247fb0db446f6a4.',UNHEX('e42be40907ab4782af5205da6e598ffd'),'UA');
# Se craran 6 archivos para el estudio f5ee6e464caa49638247fb0db446f6a4
CALL insert_study_file (UNHEX('54ca1dfb1c48472da084c4f170c73330'),'Archivo 0.txt',UNHEX('f5ee6e464caa49638247fb0db446f6a4'));
CALL insert_study_file (UNHEX('429bcdba1bab4f3d961b62118e3ce79f'),'Archivo 1.txt',UNHEX('f5ee6e464caa49638247fb0db446f6a4'));
CALL insert_study_file (UNHEX('2f143a2d8747464f802f55db6cea9ef3'),'Archivo 2.jpg',UNHEX('f5ee6e464caa49638247fb0db446f6a4'));
CALL insert_study_file (UNHEX('0fd9537412744740bf180c7431c276f3'),'Archivo 3.jpg',UNHEX('f5ee6e464caa49638247fb0db446f6a4'));
CALL insert_study_file (UNHEX('a91effbfe0b9403c985c7cc872d3df2f'),'Archivo 4.txt',UNHEX('f5ee6e464caa49638247fb0db446f6a4'));
CALL insert_study_file (UNHEX('1abec21a67e94ed2ba421682eab51bc2'),'Archivo 5.doc',UNHEX('f5ee6e464caa49638247fb0db446f6a4'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente d08c749a387c499d9912a234c1a86bbc
CALL insert_patient ('1961-02-25','4','M', UNHEX('d08c749a387c499d9912a234c1a86bbc'),'Jakoulov, morgen','doctor');
# Se craran 3 estudios para el paciente d08c749a387c499d9912a234c1a86bbc
CALL insert_study ('2014-07-31',UNHEX('42b04efc52ca4de1bb4a3c4e0c294c24'),'Observación correspondiente al estudio 42b04efc52ca4de1bb4a3c4e0c294c24.',UNHEX('d08c749a387c499d9912a234c1a86bbc'),'ET');
# Se craran 1 archivos para el estudio 42b04efc52ca4de1bb4a3c4e0c294c24
CALL insert_study_file (UNHEX('1acfc60421af4f3db1bb489a8e94befa'),'Archivo 0.txt',UNHEX('42b04efc52ca4de1bb4a3c4e0c294c24'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('c32d6289b7c84165a88d87c2ca746481'),'Observación correspondiente al estudio c32d6289b7c84165a88d87c2ca746481.',UNHEX('d08c749a387c499d9912a234c1a86bbc'),'UA');
# Se craran 7 archivos para el estudio c32d6289b7c84165a88d87c2ca746481
CALL insert_study_file (UNHEX('e4278a05af21413cb1cf55eb0b408186'),'Archivo 0.doc',UNHEX('c32d6289b7c84165a88d87c2ca746481'));
CALL insert_study_file (UNHEX('c70c89101d584b829a9e4e86d99c657d'),'Archivo 1.jpg',UNHEX('c32d6289b7c84165a88d87c2ca746481'));
CALL insert_study_file (UNHEX('70fd764842d94fddadaa522c50295ae8'),'Archivo 2.jpg',UNHEX('c32d6289b7c84165a88d87c2ca746481'));
CALL insert_study_file (UNHEX('3f967aa7415b4379b935b6eda5f58975'),'Archivo 3.doc',UNHEX('c32d6289b7c84165a88d87c2ca746481'));
CALL insert_study_file (UNHEX('0b493d7664a14e6ebfaffcfb9b796678'),'Archivo 4.jpg',UNHEX('c32d6289b7c84165a88d87c2ca746481'));
CALL insert_study_file (UNHEX('3002201264ab4fe085ad23cc17a0e8e9'),'Archivo 5.pdf',UNHEX('c32d6289b7c84165a88d87c2ca746481'));
CALL insert_study_file (UNHEX('aadea4781bdc4e82ba261d83fb3b00ec'),'Archivo 6.doc',UNHEX('c32d6289b7c84165a88d87c2ca746481'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('a46d005d5256444ca54477ea77ea6e51'),'Observación correspondiente al estudio a46d005d5256444ca54477ea77ea6e51.',UNHEX('d08c749a387c499d9912a234c1a86bbc'),'BT');
# Se craran 1 archivos para el estudio a46d005d5256444ca54477ea77ea6e51
CALL insert_study_file (UNHEX('c5b5ca7a067f4a6eba26a967535675aa'),'Archivo 0.jpg',UNHEX('a46d005d5256444ca54477ea77ea6e51'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente f63bbe9c0c2d4f15b6012ed8c6a456e2
CALL insert_patient ('1971-05-24','2','F', UNHEX('f63bbe9c0c2d4f15b6012ed8c6a456e2'),'Lewis-Fernandez, Bunnie Davine','doctor');
# Se craran 12 estudios para el paciente f63bbe9c0c2d4f15b6012ed8c6a456e2
CALL insert_study ('2014-07-30',UNHEX('1e6c698f26b5422bbd068ca2f465b0e1'),'Observación correspondiente al estudio 1e6c698f26b5422bbd068ca2f465b0e1.',UNHEX('f63bbe9c0c2d4f15b6012ed8c6a456e2'),'UA');
# Se craran 5 archivos para el estudio 1e6c698f26b5422bbd068ca2f465b0e1
CALL insert_study_file (UNHEX('c5f11232ec5c496b9fc298c5f616a7eb'),'Archivo 0.txt',UNHEX('1e6c698f26b5422bbd068ca2f465b0e1'));
CALL insert_study_file (UNHEX('3a926eaceaab4f55a52df55c913a95dc'),'Archivo 1.pdf',UNHEX('1e6c698f26b5422bbd068ca2f465b0e1'));
CALL insert_study_file (UNHEX('bb2a6bca6ce24e3d96f6b062fe1ada60'),'Archivo 2.jpg',UNHEX('1e6c698f26b5422bbd068ca2f465b0e1'));
CALL insert_study_file (UNHEX('50782e5e741147bb914fbe7d12aebe91'),'Archivo 3.jpg',UNHEX('1e6c698f26b5422bbd068ca2f465b0e1'));
CALL insert_study_file (UNHEX('76212c00220e423cb59d1bc95cfea5fe'),'Archivo 4.pdf',UNHEX('1e6c698f26b5422bbd068ca2f465b0e1'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('1a6c73004162414788332d447cbf4a14'),'Observación correspondiente al estudio 1a6c73004162414788332d447cbf4a14.',UNHEX('f63bbe9c0c2d4f15b6012ed8c6a456e2'),'BT');
# Se craran 4 archivos para el estudio 1a6c73004162414788332d447cbf4a14
CALL insert_study_file (UNHEX('5d7cd2aa33ca4b3ea435aa322b44aef0'),'Archivo 0.pdf',UNHEX('1a6c73004162414788332d447cbf4a14'));
CALL insert_study_file (UNHEX('2dec9d228a834b0bb4aaaa6706c3ec54'),'Archivo 1.pdf',UNHEX('1a6c73004162414788332d447cbf4a14'));
CALL insert_study_file (UNHEX('ee280226396a4c2cb8fa2591206d534b'),'Archivo 2.doc',UNHEX('1a6c73004162414788332d447cbf4a14'));
CALL insert_study_file (UNHEX('ff86f8ed3e5f4b72b2fda2c407cc7abb'),'Archivo 3.txt',UNHEX('1a6c73004162414788332d447cbf4a14'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('20f0cf451205471bafe5e56251520463'),'Observación correspondiente al estudio 20f0cf451205471bafe5e56251520463.',UNHEX('f63bbe9c0c2d4f15b6012ed8c6a456e2'),'ET');
# Se craran 2 archivos para el estudio 20f0cf451205471bafe5e56251520463
CALL insert_study_file (UNHEX('e0d69795e2b34afd8fdfc4edd6807ac7'),'Archivo 0.doc',UNHEX('20f0cf451205471bafe5e56251520463'));
CALL insert_study_file (UNHEX('5f7ad4c2727c45d089616f20ac937ca7'),'Archivo 1.doc',UNHEX('20f0cf451205471bafe5e56251520463'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('ec8ce8dfa2804e7e917f45ddcbfe37a6'),'Observación correspondiente al estudio ec8ce8dfa2804e7e917f45ddcbfe37a6.',UNHEX('f63bbe9c0c2d4f15b6012ed8c6a456e2'),'UA');
# Se craran 4 archivos para el estudio ec8ce8dfa2804e7e917f45ddcbfe37a6
CALL insert_study_file (UNHEX('cd7a5b4c626042b3b206e896644ee33f'),'Archivo 0.txt',UNHEX('ec8ce8dfa2804e7e917f45ddcbfe37a6'));
CALL insert_study_file (UNHEX('4bf23d1fe7654520982424ffa77bcd28'),'Archivo 1.txt',UNHEX('ec8ce8dfa2804e7e917f45ddcbfe37a6'));
CALL insert_study_file (UNHEX('d6dd9c61b39848bc9ee4afa49526bb61'),'Archivo 2.jpg',UNHEX('ec8ce8dfa2804e7e917f45ddcbfe37a6'));
CALL insert_study_file (UNHEX('c569b768b8c541d2a6445cd4380d47f4'),'Archivo 3.pdf',UNHEX('ec8ce8dfa2804e7e917f45ddcbfe37a6'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('763be0127ad14a52b145c87e1a18047f'),'Observación correspondiente al estudio 763be0127ad14a52b145c87e1a18047f.',UNHEX('f63bbe9c0c2d4f15b6012ed8c6a456e2'),'ET');
# Se craran 9 archivos para el estudio 763be0127ad14a52b145c87e1a18047f
CALL insert_study_file (UNHEX('88282bca99da48eebcc74c363a1e3232'),'Archivo 0.doc',UNHEX('763be0127ad14a52b145c87e1a18047f'));
CALL insert_study_file (UNHEX('d49a415dec834b60b4174dc0e1137d34'),'Archivo 1.pdf',UNHEX('763be0127ad14a52b145c87e1a18047f'));
CALL insert_study_file (UNHEX('19cc7c33e1ce4ffc9212fd5f0fdf9330'),'Archivo 2.txt',UNHEX('763be0127ad14a52b145c87e1a18047f'));
CALL insert_study_file (UNHEX('27fd56b9ac914b81bcf2efa78ba7da43'),'Archivo 3.doc',UNHEX('763be0127ad14a52b145c87e1a18047f'));
CALL insert_study_file (UNHEX('fd5230e06c334ff4b1896bde56e712ba'),'Archivo 4.txt',UNHEX('763be0127ad14a52b145c87e1a18047f'));
CALL insert_study_file (UNHEX('f4839d8f55d340e99e346a87160142e8'),'Archivo 5.txt',UNHEX('763be0127ad14a52b145c87e1a18047f'));
CALL insert_study_file (UNHEX('d183a5a5f8244b72a7f11e078fe815fd'),'Archivo 6.txt',UNHEX('763be0127ad14a52b145c87e1a18047f'));
CALL insert_study_file (UNHEX('f27c43f2d933411e9e2f8be72770fb0b'),'Archivo 7.txt',UNHEX('763be0127ad14a52b145c87e1a18047f'));
CALL insert_study_file (UNHEX('b7bfa78fab924d5da1cd1a0528aa4488'),'Archivo 8.pdf',UNHEX('763be0127ad14a52b145c87e1a18047f'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('37673c3226fe4e7188c214a06cd2355e'),'Observación correspondiente al estudio 37673c3226fe4e7188c214a06cd2355e.',UNHEX('f63bbe9c0c2d4f15b6012ed8c6a456e2'),'BT');
# Se craran 4 archivos para el estudio 37673c3226fe4e7188c214a06cd2355e
CALL insert_study_file (UNHEX('c5b54f56079a4e79add3669dd067b00b'),'Archivo 0.txt',UNHEX('37673c3226fe4e7188c214a06cd2355e'));
CALL insert_study_file (UNHEX('b2f5e9bd35134fab989dc5c024b92a5a'),'Archivo 1.txt',UNHEX('37673c3226fe4e7188c214a06cd2355e'));
CALL insert_study_file (UNHEX('efb546151ff743219795aa4bb78fc046'),'Archivo 2.doc',UNHEX('37673c3226fe4e7188c214a06cd2355e'));
CALL insert_study_file (UNHEX('a0af1caa07e5425f87b03eedd71a65f5'),'Archivo 3.pdf',UNHEX('37673c3226fe4e7188c214a06cd2355e'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('6c4aa7255a0744b3986527017611ed09'),'Observación correspondiente al estudio 6c4aa7255a0744b3986527017611ed09.',UNHEX('f63bbe9c0c2d4f15b6012ed8c6a456e2'),'BT');
# Se craran 7 archivos para el estudio 6c4aa7255a0744b3986527017611ed09
CALL insert_study_file (UNHEX('81fc2f68efa7479e8857b406ca7fd879'),'Archivo 0.doc',UNHEX('6c4aa7255a0744b3986527017611ed09'));
CALL insert_study_file (UNHEX('6b9d324f89dd4a4bb480bb13e6bbde83'),'Archivo 1.jpg',UNHEX('6c4aa7255a0744b3986527017611ed09'));
CALL insert_study_file (UNHEX('5158e32102914dfe933c33cc737e519e'),'Archivo 2.pdf',UNHEX('6c4aa7255a0744b3986527017611ed09'));
CALL insert_study_file (UNHEX('84512a6aba924bfc86ef0d4cf188fc72'),'Archivo 3.pdf',UNHEX('6c4aa7255a0744b3986527017611ed09'));
CALL insert_study_file (UNHEX('acdc9a3ba5c34470b5aaa6510ab90de3'),'Archivo 4.doc',UNHEX('6c4aa7255a0744b3986527017611ed09'));
CALL insert_study_file (UNHEX('aabde514c3334349b39c8840a4c4765c'),'Archivo 5.txt',UNHEX('6c4aa7255a0744b3986527017611ed09'));
CALL insert_study_file (UNHEX('d7b3bee3d6424b00825624c1f1874efc'),'Archivo 6.jpg',UNHEX('6c4aa7255a0744b3986527017611ed09'));
# Fin creacion de archivos
CALL insert_study ('2014-07-29',UNHEX('976445834cee45b791719bb673fa571b'),'Observación correspondiente al estudio 976445834cee45b791719bb673fa571b.',UNHEX('f63bbe9c0c2d4f15b6012ed8c6a456e2'),'BT');
# Se craran 6 archivos para el estudio 976445834cee45b791719bb673fa571b
CALL insert_study_file (UNHEX('4c18fea4e87645b6b16903b716123199'),'Archivo 0.pdf',UNHEX('976445834cee45b791719bb673fa571b'));
CALL insert_study_file (UNHEX('cc3728e11d6b4ea5bb32f79e3ad51920'),'Archivo 1.doc',UNHEX('976445834cee45b791719bb673fa571b'));
CALL insert_study_file (UNHEX('91e696b796b64ea79005a52e2611f8ce'),'Archivo 2.pdf',UNHEX('976445834cee45b791719bb673fa571b'));
CALL insert_study_file (UNHEX('b6ea524965f844f1adbac072f6f7ad3c'),'Archivo 3.doc',UNHEX('976445834cee45b791719bb673fa571b'));
CALL insert_study_file (UNHEX('fabc10e6555345949840c466bb696291'),'Archivo 4.doc',UNHEX('976445834cee45b791719bb673fa571b'));
CALL insert_study_file (UNHEX('56addc1c23ca4e68bf516074b97865a2'),'Archivo 5.txt',UNHEX('976445834cee45b791719bb673fa571b'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('4ea1af250ee84063b3a9e614ecbeba75'),'Observación correspondiente al estudio 4ea1af250ee84063b3a9e614ecbeba75.',UNHEX('f63bbe9c0c2d4f15b6012ed8c6a456e2'),'ET');
# Se craran 6 archivos para el estudio 4ea1af250ee84063b3a9e614ecbeba75
CALL insert_study_file (UNHEX('931fb4ca4e5a439ea07127f5e75eda54'),'Archivo 0.txt',UNHEX('4ea1af250ee84063b3a9e614ecbeba75'));
CALL insert_study_file (UNHEX('d19fbe4969da44f4bb307d603aa012cf'),'Archivo 1.doc',UNHEX('4ea1af250ee84063b3a9e614ecbeba75'));
CALL insert_study_file (UNHEX('7ccf05c499ef4c13a52fc40d5e84a6fb'),'Archivo 2.pdf',UNHEX('4ea1af250ee84063b3a9e614ecbeba75'));
CALL insert_study_file (UNHEX('7bbbbc46a2f8472bab82e685f171a466'),'Archivo 3.pdf',UNHEX('4ea1af250ee84063b3a9e614ecbeba75'));
CALL insert_study_file (UNHEX('86a84223bf124663ab27689b695d2198'),'Archivo 4.pdf',UNHEX('4ea1af250ee84063b3a9e614ecbeba75'));
CALL insert_study_file (UNHEX('aeb144735053400ca633acf23438d52b'),'Archivo 5.jpg',UNHEX('4ea1af250ee84063b3a9e614ecbeba75'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('e050d8812296455d9971a1dbe3dde13f'),'Observación correspondiente al estudio e050d8812296455d9971a1dbe3dde13f.',UNHEX('f63bbe9c0c2d4f15b6012ed8c6a456e2'),'UA');
# Se craran 7 archivos para el estudio e050d8812296455d9971a1dbe3dde13f
CALL insert_study_file (UNHEX('5331d9833e3f423dbff55f6af782ec98'),'Archivo 0.doc',UNHEX('e050d8812296455d9971a1dbe3dde13f'));
CALL insert_study_file (UNHEX('1ea7cd90b3fa4aa4a0af18630de6b4c8'),'Archivo 1.txt',UNHEX('e050d8812296455d9971a1dbe3dde13f'));
CALL insert_study_file (UNHEX('3450019450194ea7914e4d9e405b709a'),'Archivo 2.doc',UNHEX('e050d8812296455d9971a1dbe3dde13f'));
CALL insert_study_file (UNHEX('626ec087ef584f58a0a367dc092b446a'),'Archivo 3.txt',UNHEX('e050d8812296455d9971a1dbe3dde13f'));
CALL insert_study_file (UNHEX('239b74a68a884e0788403c8bcf07c7ff'),'Archivo 4.txt',UNHEX('e050d8812296455d9971a1dbe3dde13f'));
CALL insert_study_file (UNHEX('2d105133891f429f8bd3da538dba471a'),'Archivo 5.doc',UNHEX('e050d8812296455d9971a1dbe3dde13f'));
CALL insert_study_file (UNHEX('49e719b5f2d34935b6bbd9166fe93a13'),'Archivo 6.jpg',UNHEX('e050d8812296455d9971a1dbe3dde13f'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('6d853c42a5a14b9d865ab730f0b62366'),'Observación correspondiente al estudio 6d853c42a5a14b9d865ab730f0b62366.',UNHEX('f63bbe9c0c2d4f15b6012ed8c6a456e2'),'UA');
# Se craran 7 archivos para el estudio 6d853c42a5a14b9d865ab730f0b62366
CALL insert_study_file (UNHEX('2c7d4d5f398947f9b3c0187bc585f500'),'Archivo 0.txt',UNHEX('6d853c42a5a14b9d865ab730f0b62366'));
CALL insert_study_file (UNHEX('2f3433c3b107401cbae661de16594096'),'Archivo 1.jpg',UNHEX('6d853c42a5a14b9d865ab730f0b62366'));
CALL insert_study_file (UNHEX('66bd1f9bcdd64d3a847805ca1538f9f9'),'Archivo 2.doc',UNHEX('6d853c42a5a14b9d865ab730f0b62366'));
CALL insert_study_file (UNHEX('28f0f50454b24849868d8fd29a1cee84'),'Archivo 3.jpg',UNHEX('6d853c42a5a14b9d865ab730f0b62366'));
CALL insert_study_file (UNHEX('9976ad34fe53409aa51cf931eea766b4'),'Archivo 4.txt',UNHEX('6d853c42a5a14b9d865ab730f0b62366'));
CALL insert_study_file (UNHEX('cf72234d403a45678dbc8ebe40834d5d'),'Archivo 5.pdf',UNHEX('6d853c42a5a14b9d865ab730f0b62366'));
CALL insert_study_file (UNHEX('6fa241eda32d4abc84d2b3c2a0b4824f'),'Archivo 6.doc',UNHEX('6d853c42a5a14b9d865ab730f0b62366'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('a3eb5afabc334e39af68e96cd4db693c'),'Observación correspondiente al estudio a3eb5afabc334e39af68e96cd4db693c.',UNHEX('f63bbe9c0c2d4f15b6012ed8c6a456e2'),'ET');
# Se craran 3 archivos para el estudio a3eb5afabc334e39af68e96cd4db693c
CALL insert_study_file (UNHEX('d7384946ba3e4ff8a55f3321f3f72fab'),'Archivo 0.txt',UNHEX('a3eb5afabc334e39af68e96cd4db693c'));
CALL insert_study_file (UNHEX('97ce06cf2d8b40a3aadf284abb93e840'),'Archivo 1.txt',UNHEX('a3eb5afabc334e39af68e96cd4db693c'));
CALL insert_study_file (UNHEX('b4f5a42526cd46ea8a72c55e5c7e597a'),'Archivo 2.doc',UNHEX('a3eb5afabc334e39af68e96cd4db693c'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 2b0bc1f917b740c696287391bb0ede3d
CALL insert_patient ('1989-05-22','7','F', UNHEX('2b0bc1f917b740c696287391bb0ede3d'),'Stimpfle, Pietra Robinia','doctor');
# Se craran 18 estudios para el paciente 2b0bc1f917b740c696287391bb0ede3d
CALL insert_study ('2014-08-02',UNHEX('a5efe815e659457a8a9e5533d6bc5fc3'),'Observación correspondiente al estudio a5efe815e659457a8a9e5533d6bc5fc3.',UNHEX('2b0bc1f917b740c696287391bb0ede3d'),'UA');
# Se craran 0 archivos para el estudio a5efe815e659457a8a9e5533d6bc5fc3
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('9bce2f68db7f4043a5e4358f9c67ca53'),'Observación correspondiente al estudio 9bce2f68db7f4043a5e4358f9c67ca53.',UNHEX('2b0bc1f917b740c696287391bb0ede3d'),'UA');
# Se craran 2 archivos para el estudio 9bce2f68db7f4043a5e4358f9c67ca53
CALL insert_study_file (UNHEX('e1da22a10ece4eaf9438f0504f964a2d'),'Archivo 0.jpg',UNHEX('9bce2f68db7f4043a5e4358f9c67ca53'));
CALL insert_study_file (UNHEX('b9cf32cdb08e4f07a515d8f55bfec811'),'Archivo 1.jpg',UNHEX('9bce2f68db7f4043a5e4358f9c67ca53'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('5337dce631034da294017a23216cd416'),'Observación correspondiente al estudio 5337dce631034da294017a23216cd416.',UNHEX('2b0bc1f917b740c696287391bb0ede3d'),'ET');
# Se craran 6 archivos para el estudio 5337dce631034da294017a23216cd416
CALL insert_study_file (UNHEX('229c1b1696e24f77bff515a9b96a0975'),'Archivo 0.doc',UNHEX('5337dce631034da294017a23216cd416'));
CALL insert_study_file (UNHEX('5fa0a4893d594cacaca8bf7dab58fb94'),'Archivo 1.txt',UNHEX('5337dce631034da294017a23216cd416'));
CALL insert_study_file (UNHEX('e66057a4873349ccae39782437c2ef7b'),'Archivo 2.jpg',UNHEX('5337dce631034da294017a23216cd416'));
CALL insert_study_file (UNHEX('022c47648abe4434a1159bc9066a343c'),'Archivo 3.txt',UNHEX('5337dce631034da294017a23216cd416'));
CALL insert_study_file (UNHEX('6a6d390c0f614976ad66463ce52b9194'),'Archivo 4.jpg',UNHEX('5337dce631034da294017a23216cd416'));
CALL insert_study_file (UNHEX('5a663be1f5ea435888868fa129dca9e4'),'Archivo 5.pdf',UNHEX('5337dce631034da294017a23216cd416'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('ebc1fbc8daa8415f9a387de8ed79bab3'),'Observación correspondiente al estudio ebc1fbc8daa8415f9a387de8ed79bab3.',UNHEX('2b0bc1f917b740c696287391bb0ede3d'),'BT');
# Se craran 3 archivos para el estudio ebc1fbc8daa8415f9a387de8ed79bab3
CALL insert_study_file (UNHEX('8cf274381334424e87351723db906277'),'Archivo 0.txt',UNHEX('ebc1fbc8daa8415f9a387de8ed79bab3'));
CALL insert_study_file (UNHEX('c558017d09e04542a4c05696a4c7074d'),'Archivo 1.doc',UNHEX('ebc1fbc8daa8415f9a387de8ed79bab3'));
CALL insert_study_file (UNHEX('ae40207a34024085acef5db26b1f19fc'),'Archivo 2.txt',UNHEX('ebc1fbc8daa8415f9a387de8ed79bab3'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('a8588785976d427b849a8ff826fe6c10'),'Observación correspondiente al estudio a8588785976d427b849a8ff826fe6c10.',UNHEX('2b0bc1f917b740c696287391bb0ede3d'),'BT');
# Se craran 6 archivos para el estudio a8588785976d427b849a8ff826fe6c10
CALL insert_study_file (UNHEX('4b6e690e360d4af68f70d5735d8f74b7'),'Archivo 0.txt',UNHEX('a8588785976d427b849a8ff826fe6c10'));
CALL insert_study_file (UNHEX('76435011142f477b8a985ac12ff3d43a'),'Archivo 1.jpg',UNHEX('a8588785976d427b849a8ff826fe6c10'));
CALL insert_study_file (UNHEX('d1be1435f8fc40088a27c79821aefaae'),'Archivo 2.txt',UNHEX('a8588785976d427b849a8ff826fe6c10'));
CALL insert_study_file (UNHEX('3fab633ac99e4d4e8a3328d6e5536e50'),'Archivo 3.pdf',UNHEX('a8588785976d427b849a8ff826fe6c10'));
CALL insert_study_file (UNHEX('62d202633f2f4b25961a9279aa57ab08'),'Archivo 4.txt',UNHEX('a8588785976d427b849a8ff826fe6c10'));
CALL insert_study_file (UNHEX('d52514b4b397436c8148d753ac8fc478'),'Archivo 5.pdf',UNHEX('a8588785976d427b849a8ff826fe6c10'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('e1f1d044ed644feeab531eaa219b2b73'),'Observación correspondiente al estudio e1f1d044ed644feeab531eaa219b2b73.',UNHEX('2b0bc1f917b740c696287391bb0ede3d'),'UA');
# Se craran 8 archivos para el estudio e1f1d044ed644feeab531eaa219b2b73
CALL insert_study_file (UNHEX('57055c99ac3846628e76bbd19238d10c'),'Archivo 0.pdf',UNHEX('e1f1d044ed644feeab531eaa219b2b73'));
CALL insert_study_file (UNHEX('400a30b5ad9847d5911044c95cfe17be'),'Archivo 1.pdf',UNHEX('e1f1d044ed644feeab531eaa219b2b73'));
CALL insert_study_file (UNHEX('39d05e0497184fab8812c975084e561e'),'Archivo 2.txt',UNHEX('e1f1d044ed644feeab531eaa219b2b73'));
CALL insert_study_file (UNHEX('04cf23774494447189f9b2f14e514405'),'Archivo 3.jpg',UNHEX('e1f1d044ed644feeab531eaa219b2b73'));
CALL insert_study_file (UNHEX('fa1e23f83993457fad0a89b7a02561ac'),'Archivo 4.txt',UNHEX('e1f1d044ed644feeab531eaa219b2b73'));
CALL insert_study_file (UNHEX('763c822bcf564753b6938096b92630f5'),'Archivo 5.doc',UNHEX('e1f1d044ed644feeab531eaa219b2b73'));
CALL insert_study_file (UNHEX('9289cd1dbb2f4bebb91e088a37a7082e'),'Archivo 6.pdf',UNHEX('e1f1d044ed644feeab531eaa219b2b73'));
CALL insert_study_file (UNHEX('9184c91319c54f8cbdb62407720d53a2'),'Archivo 7.doc',UNHEX('e1f1d044ed644feeab531eaa219b2b73'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('8a1a46876ef44bfd88c06f83c45fe069'),'Observación correspondiente al estudio 8a1a46876ef44bfd88c06f83c45fe069.',UNHEX('2b0bc1f917b740c696287391bb0ede3d'),'ET');
# Se craran 4 archivos para el estudio 8a1a46876ef44bfd88c06f83c45fe069
CALL insert_study_file (UNHEX('e837b71165a0456cacfbdb1a38201719'),'Archivo 0.doc',UNHEX('8a1a46876ef44bfd88c06f83c45fe069'));
CALL insert_study_file (UNHEX('f18f1085cfb346c5864087907ee2c385'),'Archivo 1.txt',UNHEX('8a1a46876ef44bfd88c06f83c45fe069'));
CALL insert_study_file (UNHEX('790ec1116791413b80007c73e813c056'),'Archivo 2.txt',UNHEX('8a1a46876ef44bfd88c06f83c45fe069'));
CALL insert_study_file (UNHEX('fee8e7d2acd0412784b10c4619096ef4'),'Archivo 3.doc',UNHEX('8a1a46876ef44bfd88c06f83c45fe069'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('0c9f68c861244f69ac56b889d5245db0'),'Observación correspondiente al estudio 0c9f68c861244f69ac56b889d5245db0.',UNHEX('2b0bc1f917b740c696287391bb0ede3d'),'BT');
# Se craran 3 archivos para el estudio 0c9f68c861244f69ac56b889d5245db0
CALL insert_study_file (UNHEX('fbc1ed28455b4a90adf62b1bf47cb7a2'),'Archivo 0.txt',UNHEX('0c9f68c861244f69ac56b889d5245db0'));
CALL insert_study_file (UNHEX('6756f1abecc2471ca653c016fcfc6f2c'),'Archivo 1.txt',UNHEX('0c9f68c861244f69ac56b889d5245db0'));
CALL insert_study_file (UNHEX('3fa9f515f1c6423f98db1627b8439c46'),'Archivo 2.txt',UNHEX('0c9f68c861244f69ac56b889d5245db0'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('78a0235182e041e2a1a539c037442ec7'),'Observación correspondiente al estudio 78a0235182e041e2a1a539c037442ec7.',UNHEX('2b0bc1f917b740c696287391bb0ede3d'),'UA');
# Se craran 5 archivos para el estudio 78a0235182e041e2a1a539c037442ec7
CALL insert_study_file (UNHEX('59bb6696cfb84afd93e9df547cf423fd'),'Archivo 0.txt',UNHEX('78a0235182e041e2a1a539c037442ec7'));
CALL insert_study_file (UNHEX('fcd5f55b53a64dc9bcd582876e8783bf'),'Archivo 1.jpg',UNHEX('78a0235182e041e2a1a539c037442ec7'));
CALL insert_study_file (UNHEX('135e7817c9c34d738eb8a9c6367f91c1'),'Archivo 2.txt',UNHEX('78a0235182e041e2a1a539c037442ec7'));
CALL insert_study_file (UNHEX('ff332b90cfa644d2aedaf64d9e230fc5'),'Archivo 3.pdf',UNHEX('78a0235182e041e2a1a539c037442ec7'));
CALL insert_study_file (UNHEX('a776ce2b7d0e471fb3c913c84b3225a4'),'Archivo 4.jpg',UNHEX('78a0235182e041e2a1a539c037442ec7'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('c82fe811f98f4cfaa8035561221b333d'),'Observación correspondiente al estudio c82fe811f98f4cfaa8035561221b333d.',UNHEX('2b0bc1f917b740c696287391bb0ede3d'),'BT');
# Se craran 8 archivos para el estudio c82fe811f98f4cfaa8035561221b333d
CALL insert_study_file (UNHEX('744fab780aab44018cd88aacdca0b93a'),'Archivo 0.pdf',UNHEX('c82fe811f98f4cfaa8035561221b333d'));
CALL insert_study_file (UNHEX('d6452b419ab44fbc85cfef794745d7a1'),'Archivo 1.jpg',UNHEX('c82fe811f98f4cfaa8035561221b333d'));
CALL insert_study_file (UNHEX('47eac377d0fd4b9c8011909bf8d90c53'),'Archivo 2.txt',UNHEX('c82fe811f98f4cfaa8035561221b333d'));
CALL insert_study_file (UNHEX('a9bc8748ebab4f7e916a911aad776317'),'Archivo 3.txt',UNHEX('c82fe811f98f4cfaa8035561221b333d'));
CALL insert_study_file (UNHEX('a0c51ed70b6940f785e078460705f537'),'Archivo 4.txt',UNHEX('c82fe811f98f4cfaa8035561221b333d'));
CALL insert_study_file (UNHEX('08cc407fc5954350a91296cb47994bb9'),'Archivo 5.doc',UNHEX('c82fe811f98f4cfaa8035561221b333d'));
CALL insert_study_file (UNHEX('4d0457d6832f4e58a66d6d6bdeb4c30c'),'Archivo 6.jpg',UNHEX('c82fe811f98f4cfaa8035561221b333d'));
CALL insert_study_file (UNHEX('ec78cba3d3f247febd34cb48cc819e02'),'Archivo 7.txt',UNHEX('c82fe811f98f4cfaa8035561221b333d'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('7cf9aa4dbbab41b987621948cd947122'),'Observación correspondiente al estudio 7cf9aa4dbbab41b987621948cd947122.',UNHEX('2b0bc1f917b740c696287391bb0ede3d'),'ET');
# Se craran 6 archivos para el estudio 7cf9aa4dbbab41b987621948cd947122
CALL insert_study_file (UNHEX('6bca4df3c7164f1b926d587ada3dd16e'),'Archivo 0.pdf',UNHEX('7cf9aa4dbbab41b987621948cd947122'));
CALL insert_study_file (UNHEX('7c6018ec087c4356b7ae6d9fabf09a0e'),'Archivo 1.pdf',UNHEX('7cf9aa4dbbab41b987621948cd947122'));
CALL insert_study_file (UNHEX('5cad6230d55d4942abe07907c13e0b01'),'Archivo 2.jpg',UNHEX('7cf9aa4dbbab41b987621948cd947122'));
CALL insert_study_file (UNHEX('fcde95e93e03412b9d8cb9433da04e55'),'Archivo 3.doc',UNHEX('7cf9aa4dbbab41b987621948cd947122'));
CALL insert_study_file (UNHEX('d069274983c24f0683e9df40d6abe27a'),'Archivo 4.jpg',UNHEX('7cf9aa4dbbab41b987621948cd947122'));
CALL insert_study_file (UNHEX('9b3035dd2d4c45aeae1b61e210acd709'),'Archivo 5.txt',UNHEX('7cf9aa4dbbab41b987621948cd947122'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('048d970b07b64ba59ba419e6380af841'),'Observación correspondiente al estudio 048d970b07b64ba59ba419e6380af841.',UNHEX('2b0bc1f917b740c696287391bb0ede3d'),'BT');
# Se craran 0 archivos para el estudio 048d970b07b64ba59ba419e6380af841
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('8c49d71c42e7486685cc8720fb79f486'),'Observación correspondiente al estudio 8c49d71c42e7486685cc8720fb79f486.',UNHEX('2b0bc1f917b740c696287391bb0ede3d'),'UA');
# Se craran 2 archivos para el estudio 8c49d71c42e7486685cc8720fb79f486
CALL insert_study_file (UNHEX('5aa5f30a1a7847f2aab8f32ec036e1c8'),'Archivo 0.doc',UNHEX('8c49d71c42e7486685cc8720fb79f486'));
CALL insert_study_file (UNHEX('dfd7d184d12240d9b4c491225a29f35a'),'Archivo 1.doc',UNHEX('8c49d71c42e7486685cc8720fb79f486'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('f48f9a43b31b4e8b80a019001a37e398'),'Observación correspondiente al estudio f48f9a43b31b4e8b80a019001a37e398.',UNHEX('2b0bc1f917b740c696287391bb0ede3d'),'BT');
# Se craran 9 archivos para el estudio f48f9a43b31b4e8b80a019001a37e398
CALL insert_study_file (UNHEX('4aeae50fee7442f4b6dc9a0eb7dc5745'),'Archivo 0.pdf',UNHEX('f48f9a43b31b4e8b80a019001a37e398'));
CALL insert_study_file (UNHEX('8100b11a02ae47688d31b3972395e311'),'Archivo 1.doc',UNHEX('f48f9a43b31b4e8b80a019001a37e398'));
CALL insert_study_file (UNHEX('3ac3deb665fb41a68aba79f2a5a60126'),'Archivo 2.jpg',UNHEX('f48f9a43b31b4e8b80a019001a37e398'));
CALL insert_study_file (UNHEX('6af104bfdd8144458cc91d949a586dcb'),'Archivo 3.pdf',UNHEX('f48f9a43b31b4e8b80a019001a37e398'));
CALL insert_study_file (UNHEX('0492791b8bce42c496f1d8121c01dc1d'),'Archivo 4.txt',UNHEX('f48f9a43b31b4e8b80a019001a37e398'));
CALL insert_study_file (UNHEX('a84eae5e9dcd4cc1a36d5c9f1f42ba35'),'Archivo 5.pdf',UNHEX('f48f9a43b31b4e8b80a019001a37e398'));
CALL insert_study_file (UNHEX('da3a7f0ee1ba442cbe39ed897d40433d'),'Archivo 6.pdf',UNHEX('f48f9a43b31b4e8b80a019001a37e398'));
CALL insert_study_file (UNHEX('b59c905d54b742958ea72cfefa393378'),'Archivo 7.doc',UNHEX('f48f9a43b31b4e8b80a019001a37e398'));
CALL insert_study_file (UNHEX('816bda56392a4fad8acc2f32013a3ef1'),'Archivo 8.doc',UNHEX('f48f9a43b31b4e8b80a019001a37e398'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('3b4bcff607004ba6b251d87107f6faaa'),'Observación correspondiente al estudio 3b4bcff607004ba6b251d87107f6faaa.',UNHEX('2b0bc1f917b740c696287391bb0ede3d'),'ET');
# Se craran 0 archivos para el estudio 3b4bcff607004ba6b251d87107f6faaa
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('2572c707f37549dfaf2f865bb6b86cb2'),'Observación correspondiente al estudio 2572c707f37549dfaf2f865bb6b86cb2.',UNHEX('2b0bc1f917b740c696287391bb0ede3d'),'ET');
# Se craran 1 archivos para el estudio 2572c707f37549dfaf2f865bb6b86cb2
CALL insert_study_file (UNHEX('b258292b1ae74107be6d35165f4134b1'),'Archivo 0.jpg',UNHEX('2572c707f37549dfaf2f865bb6b86cb2'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('4f90d7399d78442bb1fb39bac5863dd3'),'Observación correspondiente al estudio 4f90d7399d78442bb1fb39bac5863dd3.',UNHEX('2b0bc1f917b740c696287391bb0ede3d'),'BT');
# Se craran 0 archivos para el estudio 4f90d7399d78442bb1fb39bac5863dd3
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('4a875ecb48574f3fba8832292aaacd26'),'Observación correspondiente al estudio 4a875ecb48574f3fba8832292aaacd26.',UNHEX('2b0bc1f917b740c696287391bb0ede3d'),'UA');
# Se craran 1 archivos para el estudio 4a875ecb48574f3fba8832292aaacd26
CALL insert_study_file (UNHEX('ae693c55de944d6a8e48cb55185c5c65'),'Archivo 0.doc',UNHEX('4a875ecb48574f3fba8832292aaacd26'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente c0d7d10478b94f63a53589de7d83da3d
CALL insert_patient ('1952-11-13','5','F', UNHEX('c0d7d10478b94f63a53589de7d83da3d'),'Delger, haley cherri','doctor');
# Se craran 10 estudios para el paciente c0d7d10478b94f63a53589de7d83da3d
CALL insert_study ('2014-07-30',UNHEX('f7f1868b688b4f0788cd253ddf8d1bdf'),'Observación correspondiente al estudio f7f1868b688b4f0788cd253ddf8d1bdf.',UNHEX('c0d7d10478b94f63a53589de7d83da3d'),'ET');
# Se craran 6 archivos para el estudio f7f1868b688b4f0788cd253ddf8d1bdf
CALL insert_study_file (UNHEX('2e6ce7abb1214b2c9388d68b632256dd'),'Archivo 0.txt',UNHEX('f7f1868b688b4f0788cd253ddf8d1bdf'));
CALL insert_study_file (UNHEX('2f5704bba3d0429ea1d3a48db5184d79'),'Archivo 1.doc',UNHEX('f7f1868b688b4f0788cd253ddf8d1bdf'));
CALL insert_study_file (UNHEX('a53f955f13ee49d1a9479b6abbbfcf16'),'Archivo 2.jpg',UNHEX('f7f1868b688b4f0788cd253ddf8d1bdf'));
CALL insert_study_file (UNHEX('f9b7e39798d04db684d3ecfa3ad6aed2'),'Archivo 3.jpg',UNHEX('f7f1868b688b4f0788cd253ddf8d1bdf'));
CALL insert_study_file (UNHEX('b3c4ce8eaa1e4bb3b82609bbad5e4556'),'Archivo 4.pdf',UNHEX('f7f1868b688b4f0788cd253ddf8d1bdf'));
CALL insert_study_file (UNHEX('192561ba47e74d86964f8ec7aa76915e'),'Archivo 5.txt',UNHEX('f7f1868b688b4f0788cd253ddf8d1bdf'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('8dea9be8c28d4fcf820cdc4a64854237'),'Observación correspondiente al estudio 8dea9be8c28d4fcf820cdc4a64854237.',UNHEX('c0d7d10478b94f63a53589de7d83da3d'),'BT');
# Se craran 9 archivos para el estudio 8dea9be8c28d4fcf820cdc4a64854237
CALL insert_study_file (UNHEX('77f7ad1d6d8e4bcb82eecceba7d2808e'),'Archivo 0.jpg',UNHEX('8dea9be8c28d4fcf820cdc4a64854237'));
CALL insert_study_file (UNHEX('84fbc3ce7f4543da9791467b7158f6f3'),'Archivo 1.jpg',UNHEX('8dea9be8c28d4fcf820cdc4a64854237'));
CALL insert_study_file (UNHEX('5a6ac300a1a44069a8353250bd0ec5e1'),'Archivo 2.jpg',UNHEX('8dea9be8c28d4fcf820cdc4a64854237'));
CALL insert_study_file (UNHEX('77d2e45823284ae0b5c91771415b65fd'),'Archivo 3.pdf',UNHEX('8dea9be8c28d4fcf820cdc4a64854237'));
CALL insert_study_file (UNHEX('7691e14192d641f8881e0f2bda926935'),'Archivo 4.pdf',UNHEX('8dea9be8c28d4fcf820cdc4a64854237'));
CALL insert_study_file (UNHEX('2ec8de1e65964ed5af3ce291b14ae8e1'),'Archivo 5.pdf',UNHEX('8dea9be8c28d4fcf820cdc4a64854237'));
CALL insert_study_file (UNHEX('304514fab9934af68bfff141c5060fd7'),'Archivo 6.jpg',UNHEX('8dea9be8c28d4fcf820cdc4a64854237'));
CALL insert_study_file (UNHEX('a901c009a5a2493d9a95c77dbddd7707'),'Archivo 7.doc',UNHEX('8dea9be8c28d4fcf820cdc4a64854237'));
CALL insert_study_file (UNHEX('ec06141730524603a6e94dda81cb9b4d'),'Archivo 8.txt',UNHEX('8dea9be8c28d4fcf820cdc4a64854237'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('8991a5869c064be1be893c7d11220194'),'Observación correspondiente al estudio 8991a5869c064be1be893c7d11220194.',UNHEX('c0d7d10478b94f63a53589de7d83da3d'),'UA');
# Se craran 3 archivos para el estudio 8991a5869c064be1be893c7d11220194
CALL insert_study_file (UNHEX('b6c3a0986a524f919d71c92580e2273e'),'Archivo 0.pdf',UNHEX('8991a5869c064be1be893c7d11220194'));
CALL insert_study_file (UNHEX('be0d667f04164f7c84d60e63c1bbf20e'),'Archivo 1.pdf',UNHEX('8991a5869c064be1be893c7d11220194'));
CALL insert_study_file (UNHEX('684c1d66e64f485fab83b3457e7f72fe'),'Archivo 2.txt',UNHEX('8991a5869c064be1be893c7d11220194'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('3522292fc9e9448dacb482d3321e0638'),'Observación correspondiente al estudio 3522292fc9e9448dacb482d3321e0638.',UNHEX('c0d7d10478b94f63a53589de7d83da3d'),'BT');
# Se craran 7 archivos para el estudio 3522292fc9e9448dacb482d3321e0638
CALL insert_study_file (UNHEX('978dde68d5294bab89fd879b5c806c55'),'Archivo 0.jpg',UNHEX('3522292fc9e9448dacb482d3321e0638'));
CALL insert_study_file (UNHEX('2e64dcd3dd604a83894e3d84969db39b'),'Archivo 1.txt',UNHEX('3522292fc9e9448dacb482d3321e0638'));
CALL insert_study_file (UNHEX('53275f1e5a5b44aaa1c63ebb5d298803'),'Archivo 2.txt',UNHEX('3522292fc9e9448dacb482d3321e0638'));
CALL insert_study_file (UNHEX('57d7eec761e3404988e8a0b1438c52e3'),'Archivo 3.jpg',UNHEX('3522292fc9e9448dacb482d3321e0638'));
CALL insert_study_file (UNHEX('9dec9ae029a14b26ad6a30f04799a6da'),'Archivo 4.txt',UNHEX('3522292fc9e9448dacb482d3321e0638'));
CALL insert_study_file (UNHEX('656e6830c2964fdca65f3e438c999279'),'Archivo 5.txt',UNHEX('3522292fc9e9448dacb482d3321e0638'));
CALL insert_study_file (UNHEX('a35a4a9b08624a509319c5c71f26c8e9'),'Archivo 6.jpg',UNHEX('3522292fc9e9448dacb482d3321e0638'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('ca5d5ff02170487c893554d6a874e457'),'Observación correspondiente al estudio ca5d5ff02170487c893554d6a874e457.',UNHEX('c0d7d10478b94f63a53589de7d83da3d'),'ET');
# Se craran 8 archivos para el estudio ca5d5ff02170487c893554d6a874e457
CALL insert_study_file (UNHEX('e0f79808e5da447987f384d864421e15'),'Archivo 0.doc',UNHEX('ca5d5ff02170487c893554d6a874e457'));
CALL insert_study_file (UNHEX('fd784ff438744790b7b510a647aa2493'),'Archivo 1.pdf',UNHEX('ca5d5ff02170487c893554d6a874e457'));
CALL insert_study_file (UNHEX('dfe0b60fd0c845aeb73261c161e0cb89'),'Archivo 2.doc',UNHEX('ca5d5ff02170487c893554d6a874e457'));
CALL insert_study_file (UNHEX('a8032e87c6424b98a2f5a0e6f3155447'),'Archivo 3.doc',UNHEX('ca5d5ff02170487c893554d6a874e457'));
CALL insert_study_file (UNHEX('14fa67095f73493eb181a0fa18f16981'),'Archivo 4.doc',UNHEX('ca5d5ff02170487c893554d6a874e457'));
CALL insert_study_file (UNHEX('db1940a23cd447f0be4d72908a7fc8c7'),'Archivo 5.doc',UNHEX('ca5d5ff02170487c893554d6a874e457'));
CALL insert_study_file (UNHEX('5604f92ad6914946815be758d6c1b9dd'),'Archivo 6.txt',UNHEX('ca5d5ff02170487c893554d6a874e457'));
CALL insert_study_file (UNHEX('88841d9b638f47d985bfb80df8c27ef0'),'Archivo 7.txt',UNHEX('ca5d5ff02170487c893554d6a874e457'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('55230e43ad5b4fcf9092a8933379f0ac'),'Observación correspondiente al estudio 55230e43ad5b4fcf9092a8933379f0ac.',UNHEX('c0d7d10478b94f63a53589de7d83da3d'),'UA');
# Se craran 7 archivos para el estudio 55230e43ad5b4fcf9092a8933379f0ac
CALL insert_study_file (UNHEX('a2f791e4df9540918dc4fce2aa713442'),'Archivo 0.pdf',UNHEX('55230e43ad5b4fcf9092a8933379f0ac'));
CALL insert_study_file (UNHEX('3ddef22c74b849c0abb2507723152521'),'Archivo 1.jpg',UNHEX('55230e43ad5b4fcf9092a8933379f0ac'));
CALL insert_study_file (UNHEX('03e19610ce824a4eb0f2c18d6f352cac'),'Archivo 2.txt',UNHEX('55230e43ad5b4fcf9092a8933379f0ac'));
CALL insert_study_file (UNHEX('4da6e1a07ea945b19b6737c7ab98afe7'),'Archivo 3.pdf',UNHEX('55230e43ad5b4fcf9092a8933379f0ac'));
CALL insert_study_file (UNHEX('030fd5aaf03f4c3cb07fdd1352e7c8b3'),'Archivo 4.txt',UNHEX('55230e43ad5b4fcf9092a8933379f0ac'));
CALL insert_study_file (UNHEX('7f71e62801bc4fbabba849f79e977562'),'Archivo 5.jpg',UNHEX('55230e43ad5b4fcf9092a8933379f0ac'));
CALL insert_study_file (UNHEX('5a7975926b7d4f60a83dba2c22dceb39'),'Archivo 6.jpg',UNHEX('55230e43ad5b4fcf9092a8933379f0ac'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('5c622bf448924c508b2882312d8c6901'),'Observación correspondiente al estudio 5c622bf448924c508b2882312d8c6901.',UNHEX('c0d7d10478b94f63a53589de7d83da3d'),'ET');
# Se craran 8 archivos para el estudio 5c622bf448924c508b2882312d8c6901
CALL insert_study_file (UNHEX('67c525716b0e45ed91d519141ee0d867'),'Archivo 0.doc',UNHEX('5c622bf448924c508b2882312d8c6901'));
CALL insert_study_file (UNHEX('7ac9e00788a44df48bcc4944ef457913'),'Archivo 1.pdf',UNHEX('5c622bf448924c508b2882312d8c6901'));
CALL insert_study_file (UNHEX('a9d52041ddea49868cde665021677ef0'),'Archivo 2.jpg',UNHEX('5c622bf448924c508b2882312d8c6901'));
CALL insert_study_file (UNHEX('9ca471671974443f90e6c88a0e3edb79'),'Archivo 3.pdf',UNHEX('5c622bf448924c508b2882312d8c6901'));
CALL insert_study_file (UNHEX('4ef9a76fd0cf4137b219df488e739c65'),'Archivo 4.pdf',UNHEX('5c622bf448924c508b2882312d8c6901'));
CALL insert_study_file (UNHEX('6045fd10ccd44325a6229093df6f9ab6'),'Archivo 5.pdf',UNHEX('5c622bf448924c508b2882312d8c6901'));
CALL insert_study_file (UNHEX('f2837640ddb446e3b4ab1dc0c50171ef'),'Archivo 6.txt',UNHEX('5c622bf448924c508b2882312d8c6901'));
CALL insert_study_file (UNHEX('4b16539c2c214e638530b440bb8ba8d0'),'Archivo 7.jpg',UNHEX('5c622bf448924c508b2882312d8c6901'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('f43c01ddc1154f34966837ada1ba6ee2'),'Observación correspondiente al estudio f43c01ddc1154f34966837ada1ba6ee2.',UNHEX('c0d7d10478b94f63a53589de7d83da3d'),'UA');
# Se craran 9 archivos para el estudio f43c01ddc1154f34966837ada1ba6ee2
CALL insert_study_file (UNHEX('2fd6bda0cb4c4d28ad8e336b234e1f6f'),'Archivo 0.jpg',UNHEX('f43c01ddc1154f34966837ada1ba6ee2'));
CALL insert_study_file (UNHEX('b8bc4f2c886b4a65a8f27dec6ec48f8f'),'Archivo 1.txt',UNHEX('f43c01ddc1154f34966837ada1ba6ee2'));
CALL insert_study_file (UNHEX('fc680d64b20a401181de3784de0184f5'),'Archivo 2.pdf',UNHEX('f43c01ddc1154f34966837ada1ba6ee2'));
CALL insert_study_file (UNHEX('5968d0d9853e4d9089b9f7fa9ee34c3e'),'Archivo 3.jpg',UNHEX('f43c01ddc1154f34966837ada1ba6ee2'));
CALL insert_study_file (UNHEX('8258598f7eb04946988af9135fdf2e0c'),'Archivo 4.doc',UNHEX('f43c01ddc1154f34966837ada1ba6ee2'));
CALL insert_study_file (UNHEX('a921088b47aa43029b67173d297f8234'),'Archivo 5.pdf',UNHEX('f43c01ddc1154f34966837ada1ba6ee2'));
CALL insert_study_file (UNHEX('0933df2bfaac46ca833bceffa99f4268'),'Archivo 6.jpg',UNHEX('f43c01ddc1154f34966837ada1ba6ee2'));
CALL insert_study_file (UNHEX('fbb82f12b36c43ae85fd6a39e74d0502'),'Archivo 7.jpg',UNHEX('f43c01ddc1154f34966837ada1ba6ee2'));
CALL insert_study_file (UNHEX('7edffd34eafe4edeb60832e574344ac7'),'Archivo 8.txt',UNHEX('f43c01ddc1154f34966837ada1ba6ee2'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('2152d6ae36274cf5ac10a1d49f78c118'),'Observación correspondiente al estudio 2152d6ae36274cf5ac10a1d49f78c118.',UNHEX('c0d7d10478b94f63a53589de7d83da3d'),'UA');
# Se craran 5 archivos para el estudio 2152d6ae36274cf5ac10a1d49f78c118
CALL insert_study_file (UNHEX('82a45338031e4e17808a9dc4c8ce3cca'),'Archivo 0.jpg',UNHEX('2152d6ae36274cf5ac10a1d49f78c118'));
CALL insert_study_file (UNHEX('949fd36c9f444031a1e301546dab0f0c'),'Archivo 1.txt',UNHEX('2152d6ae36274cf5ac10a1d49f78c118'));
CALL insert_study_file (UNHEX('7c0b1dbd644a4858a958463b5f1bae7e'),'Archivo 2.jpg',UNHEX('2152d6ae36274cf5ac10a1d49f78c118'));
CALL insert_study_file (UNHEX('238a8511dc884317a239db32541f534f'),'Archivo 3.pdf',UNHEX('2152d6ae36274cf5ac10a1d49f78c118'));
CALL insert_study_file (UNHEX('208952a30b2247b0af4c023996482b55'),'Archivo 4.txt',UNHEX('2152d6ae36274cf5ac10a1d49f78c118'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('f3dfa061ca614063a3f6fb81bb479372'),'Observación correspondiente al estudio f3dfa061ca614063a3f6fb81bb479372.',UNHEX('c0d7d10478b94f63a53589de7d83da3d'),'ET');
# Se craran 6 archivos para el estudio f3dfa061ca614063a3f6fb81bb479372
CALL insert_study_file (UNHEX('5e2f9431ad80428d865c1ee7c7b3fcbc'),'Archivo 0.pdf',UNHEX('f3dfa061ca614063a3f6fb81bb479372'));
CALL insert_study_file (UNHEX('3c1f8afe93604fb59b0938a5efbd181c'),'Archivo 1.doc',UNHEX('f3dfa061ca614063a3f6fb81bb479372'));
CALL insert_study_file (UNHEX('3caa297725674ad89da1ffaad00006e7'),'Archivo 2.jpg',UNHEX('f3dfa061ca614063a3f6fb81bb479372'));
CALL insert_study_file (UNHEX('819139e42465446886536f675725a9db'),'Archivo 3.pdf',UNHEX('f3dfa061ca614063a3f6fb81bb479372'));
CALL insert_study_file (UNHEX('c833399f0b59403f94b797d4c1bbeb8d'),'Archivo 4.pdf',UNHEX('f3dfa061ca614063a3f6fb81bb479372'));
CALL insert_study_file (UNHEX('5c1c7361e0f6497c8c226fb3a156b5b0'),'Archivo 5.doc',UNHEX('f3dfa061ca614063a3f6fb81bb479372'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 92aa4e60d8144b9e9b77f96f20908d04
CALL insert_patient ('1956-03-14','4','F', UNHEX('92aa4e60d8144b9e9b77f96f20908d04'),'Hesterberg, margot','doctor');
# Se craran 7 estudios para el paciente 92aa4e60d8144b9e9b77f96f20908d04
CALL insert_study ('2014-08-04',UNHEX('65440bffece54b5b96c06533b0e442a0'),'Observación correspondiente al estudio 65440bffece54b5b96c06533b0e442a0.',UNHEX('92aa4e60d8144b9e9b77f96f20908d04'),'BT');
# Se craran 3 archivos para el estudio 65440bffece54b5b96c06533b0e442a0
CALL insert_study_file (UNHEX('86b23d9c5ebc4585b080407f67e842eb'),'Archivo 0.pdf',UNHEX('65440bffece54b5b96c06533b0e442a0'));
CALL insert_study_file (UNHEX('a4405c3290cc4635942b58530771f011'),'Archivo 1.txt',UNHEX('65440bffece54b5b96c06533b0e442a0'));
CALL insert_study_file (UNHEX('c60e7a419eb04245a36b31f83fa24075'),'Archivo 2.txt',UNHEX('65440bffece54b5b96c06533b0e442a0'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('2651f56eb5ac4b4095ed9c8a6f597271'),'Observación correspondiente al estudio 2651f56eb5ac4b4095ed9c8a6f597271.',UNHEX('92aa4e60d8144b9e9b77f96f20908d04'),'UA');
# Se craran 2 archivos para el estudio 2651f56eb5ac4b4095ed9c8a6f597271
CALL insert_study_file (UNHEX('8098c7ea82a24d0d99a0338f8a17ed03'),'Archivo 0.pdf',UNHEX('2651f56eb5ac4b4095ed9c8a6f597271'));
CALL insert_study_file (UNHEX('9c06bce0fbe54c6e8172d05c7379deff'),'Archivo 1.txt',UNHEX('2651f56eb5ac4b4095ed9c8a6f597271'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('f08f5b9b58914e099fa2bf963f2ce0b6'),'Observación correspondiente al estudio f08f5b9b58914e099fa2bf963f2ce0b6.',UNHEX('92aa4e60d8144b9e9b77f96f20908d04'),'ET');
# Se craran 3 archivos para el estudio f08f5b9b58914e099fa2bf963f2ce0b6
CALL insert_study_file (UNHEX('f670eb00910b4fe1a399398db6dced64'),'Archivo 0.doc',UNHEX('f08f5b9b58914e099fa2bf963f2ce0b6'));
CALL insert_study_file (UNHEX('bb86f626102e45cfbb61ec234cbdd0dd'),'Archivo 1.doc',UNHEX('f08f5b9b58914e099fa2bf963f2ce0b6'));
CALL insert_study_file (UNHEX('df984c1a77e54828959be1d963209628'),'Archivo 2.doc',UNHEX('f08f5b9b58914e099fa2bf963f2ce0b6'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('a7ddc4a198d74829967820ec45a7897a'),'Observación correspondiente al estudio a7ddc4a198d74829967820ec45a7897a.',UNHEX('92aa4e60d8144b9e9b77f96f20908d04'),'ET');
# Se craran 5 archivos para el estudio a7ddc4a198d74829967820ec45a7897a
CALL insert_study_file (UNHEX('b1d9dd00e160447b8fe089385fc50d41'),'Archivo 0.doc',UNHEX('a7ddc4a198d74829967820ec45a7897a'));
CALL insert_study_file (UNHEX('8de4313023c1477d84671dbe2fbd2c8e'),'Archivo 1.txt',UNHEX('a7ddc4a198d74829967820ec45a7897a'));
CALL insert_study_file (UNHEX('7e2c305873d0491998dac9fcb34d4f7c'),'Archivo 2.doc',UNHEX('a7ddc4a198d74829967820ec45a7897a'));
CALL insert_study_file (UNHEX('747e0f6305d040de9dfed778983b78e6'),'Archivo 3.doc',UNHEX('a7ddc4a198d74829967820ec45a7897a'));
CALL insert_study_file (UNHEX('a46e7d76027f43cbb4aa0a40b4861cef'),'Archivo 4.pdf',UNHEX('a7ddc4a198d74829967820ec45a7897a'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('b8d18f76203e4c81a140f26aaf4bdf8c'),'Observación correspondiente al estudio b8d18f76203e4c81a140f26aaf4bdf8c.',UNHEX('92aa4e60d8144b9e9b77f96f20908d04'),'ET');
# Se craran 1 archivos para el estudio b8d18f76203e4c81a140f26aaf4bdf8c
CALL insert_study_file (UNHEX('a89555ac472648d3b165aa606de5216f'),'Archivo 0.jpg',UNHEX('b8d18f76203e4c81a140f26aaf4bdf8c'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('6ed2f25c20964f90962e5f323eb4a10a'),'Observación correspondiente al estudio 6ed2f25c20964f90962e5f323eb4a10a.',UNHEX('92aa4e60d8144b9e9b77f96f20908d04'),'BT');
# Se craran 9 archivos para el estudio 6ed2f25c20964f90962e5f323eb4a10a
CALL insert_study_file (UNHEX('89d2944e60c24a3aa80af0fc127893a7'),'Archivo 0.jpg',UNHEX('6ed2f25c20964f90962e5f323eb4a10a'));
CALL insert_study_file (UNHEX('2db6dd319d3c48eb9c18477b9fccdf13'),'Archivo 1.jpg',UNHEX('6ed2f25c20964f90962e5f323eb4a10a'));
CALL insert_study_file (UNHEX('903e3172e0b64298bc81eb11f37fe12f'),'Archivo 2.jpg',UNHEX('6ed2f25c20964f90962e5f323eb4a10a'));
CALL insert_study_file (UNHEX('b8d34cc02f354d62984002eb05a86590'),'Archivo 3.txt',UNHEX('6ed2f25c20964f90962e5f323eb4a10a'));
CALL insert_study_file (UNHEX('04257f3b66f44f17875ebe2efd80c6cc'),'Archivo 4.txt',UNHEX('6ed2f25c20964f90962e5f323eb4a10a'));
CALL insert_study_file (UNHEX('a055f3f78b3f48918eb5874de1be6608'),'Archivo 5.doc',UNHEX('6ed2f25c20964f90962e5f323eb4a10a'));
CALL insert_study_file (UNHEX('20a6475dcd0341eb8b2f17b1a24a80be'),'Archivo 6.pdf',UNHEX('6ed2f25c20964f90962e5f323eb4a10a'));
CALL insert_study_file (UNHEX('6e7294539b6648d396173a41e91f8126'),'Archivo 7.jpg',UNHEX('6ed2f25c20964f90962e5f323eb4a10a'));
CALL insert_study_file (UNHEX('c2729041e2204ed9ababa995943dee8c'),'Archivo 8.txt',UNHEX('6ed2f25c20964f90962e5f323eb4a10a'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('6c05b42a7e1446aea5de858275aae767'),'Observación correspondiente al estudio 6c05b42a7e1446aea5de858275aae767.',UNHEX('92aa4e60d8144b9e9b77f96f20908d04'),'UA');
# Se craran 6 archivos para el estudio 6c05b42a7e1446aea5de858275aae767
CALL insert_study_file (UNHEX('78ccdfd54ba9468d96d9fb8f57f8ddc9'),'Archivo 0.pdf',UNHEX('6c05b42a7e1446aea5de858275aae767'));
CALL insert_study_file (UNHEX('b12de81004ca4cdfb45530dadac4bbd1'),'Archivo 1.jpg',UNHEX('6c05b42a7e1446aea5de858275aae767'));
CALL insert_study_file (UNHEX('7983801dd7244e769cb30be33fe0eccc'),'Archivo 2.jpg',UNHEX('6c05b42a7e1446aea5de858275aae767'));
CALL insert_study_file (UNHEX('53608543c1414e859aabc340ca612f60'),'Archivo 3.jpg',UNHEX('6c05b42a7e1446aea5de858275aae767'));
CALL insert_study_file (UNHEX('bfb57f88e19649e18cccbaecca512b16'),'Archivo 4.txt',UNHEX('6c05b42a7e1446aea5de858275aae767'));
CALL insert_study_file (UNHEX('97c5462be4444e3eab0c5e82376aebf1'),'Archivo 5.jpg',UNHEX('6c05b42a7e1446aea5de858275aae767'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 099786e507ee482a88c7298fd90ae3a2
CALL insert_patient ('1980-12-04','3','F', UNHEX('099786e507ee482a88c7298fd90ae3a2'),'Fabian, angelle','doctor');
# Se craran 17 estudios para el paciente 099786e507ee482a88c7298fd90ae3a2
CALL insert_study ('2014-08-05',UNHEX('99c4de40681f4e05889f29b815949b39'),'Observación correspondiente al estudio 99c4de40681f4e05889f29b815949b39.',UNHEX('099786e507ee482a88c7298fd90ae3a2'),'ET');
# Se craran 6 archivos para el estudio 99c4de40681f4e05889f29b815949b39
CALL insert_study_file (UNHEX('1c991228fff14e6086c05fe994d1efd1'),'Archivo 0.doc',UNHEX('99c4de40681f4e05889f29b815949b39'));
CALL insert_study_file (UNHEX('11573b6ee3d54adc9288cbfb57ff020b'),'Archivo 1.txt',UNHEX('99c4de40681f4e05889f29b815949b39'));
CALL insert_study_file (UNHEX('e953afa4b7ed4134bc0218e1258326fb'),'Archivo 2.jpg',UNHEX('99c4de40681f4e05889f29b815949b39'));
CALL insert_study_file (UNHEX('7a94d0729855495db9bcd3cf88fdcf03'),'Archivo 3.txt',UNHEX('99c4de40681f4e05889f29b815949b39'));
CALL insert_study_file (UNHEX('7f5f35db3f60453fbcce52d4ccf9592c'),'Archivo 4.doc',UNHEX('99c4de40681f4e05889f29b815949b39'));
CALL insert_study_file (UNHEX('14662dca406241f1b426546ab7c93ed5'),'Archivo 5.pdf',UNHEX('99c4de40681f4e05889f29b815949b39'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('6be7675d62cb419eb37471ae65b19966'),'Observación correspondiente al estudio 6be7675d62cb419eb37471ae65b19966.',UNHEX('099786e507ee482a88c7298fd90ae3a2'),'BT');
# Se craran 2 archivos para el estudio 6be7675d62cb419eb37471ae65b19966
CALL insert_study_file (UNHEX('cd373ca2948b4c94bfcb7107d666f8a9'),'Archivo 0.doc',UNHEX('6be7675d62cb419eb37471ae65b19966'));
CALL insert_study_file (UNHEX('7f57abf6599a47e3a471205e002c4799'),'Archivo 1.doc',UNHEX('6be7675d62cb419eb37471ae65b19966'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('d9e5d757df31425f81bb59f7a7bb113e'),'Observación correspondiente al estudio d9e5d757df31425f81bb59f7a7bb113e.',UNHEX('099786e507ee482a88c7298fd90ae3a2'),'UA');
# Se craran 1 archivos para el estudio d9e5d757df31425f81bb59f7a7bb113e
CALL insert_study_file (UNHEX('1ba80098dbf54ef6b9c95c840520ab67'),'Archivo 0.doc',UNHEX('d9e5d757df31425f81bb59f7a7bb113e'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('0b7a533e0e744b74b1c68519c8b179d1'),'Observación correspondiente al estudio 0b7a533e0e744b74b1c68519c8b179d1.',UNHEX('099786e507ee482a88c7298fd90ae3a2'),'ET');
# Se craran 9 archivos para el estudio 0b7a533e0e744b74b1c68519c8b179d1
CALL insert_study_file (UNHEX('53b801b9bfea45c6bda6b4724059e92d'),'Archivo 0.jpg',UNHEX('0b7a533e0e744b74b1c68519c8b179d1'));
CALL insert_study_file (UNHEX('912300b827b2465e8dfdebb492b56797'),'Archivo 1.pdf',UNHEX('0b7a533e0e744b74b1c68519c8b179d1'));
CALL insert_study_file (UNHEX('33945657cff54917ac10528bcfaf339b'),'Archivo 2.doc',UNHEX('0b7a533e0e744b74b1c68519c8b179d1'));
CALL insert_study_file (UNHEX('82ac56023acd40dfbdd285247ee10e8a'),'Archivo 3.pdf',UNHEX('0b7a533e0e744b74b1c68519c8b179d1'));
CALL insert_study_file (UNHEX('63228f0395ca4b0fa70232ea6b87ddd7'),'Archivo 4.doc',UNHEX('0b7a533e0e744b74b1c68519c8b179d1'));
CALL insert_study_file (UNHEX('7a5105959aa44939af8c80adc9c90bc5'),'Archivo 5.jpg',UNHEX('0b7a533e0e744b74b1c68519c8b179d1'));
CALL insert_study_file (UNHEX('c2fa5896cf014967a3367d41b724a0e0'),'Archivo 6.txt',UNHEX('0b7a533e0e744b74b1c68519c8b179d1'));
CALL insert_study_file (UNHEX('f005d836aac84c02a0f9f612e557d0c2'),'Archivo 7.jpg',UNHEX('0b7a533e0e744b74b1c68519c8b179d1'));
CALL insert_study_file (UNHEX('67d01cd0f75b45eca5b4d037c2f38c10'),'Archivo 8.txt',UNHEX('0b7a533e0e744b74b1c68519c8b179d1'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('a2eca25d1190428aa60890a1162ab33b'),'Observación correspondiente al estudio a2eca25d1190428aa60890a1162ab33b.',UNHEX('099786e507ee482a88c7298fd90ae3a2'),'UA');
# Se craran 0 archivos para el estudio a2eca25d1190428aa60890a1162ab33b
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('641741ab8faf4ba997a80896b20f792f'),'Observación correspondiente al estudio 641741ab8faf4ba997a80896b20f792f.',UNHEX('099786e507ee482a88c7298fd90ae3a2'),'BT');
# Se craran 9 archivos para el estudio 641741ab8faf4ba997a80896b20f792f
CALL insert_study_file (UNHEX('2814f65c5eb4486fa2bb118944b83977'),'Archivo 0.pdf',UNHEX('641741ab8faf4ba997a80896b20f792f'));
CALL insert_study_file (UNHEX('f070e616bb1e447099c2de022517a001'),'Archivo 1.txt',UNHEX('641741ab8faf4ba997a80896b20f792f'));
CALL insert_study_file (UNHEX('4766e33b5c7547708b5b2decbd6d2db6'),'Archivo 2.pdf',UNHEX('641741ab8faf4ba997a80896b20f792f'));
CALL insert_study_file (UNHEX('2ee7561a10584b36be991a2209c07945'),'Archivo 3.txt',UNHEX('641741ab8faf4ba997a80896b20f792f'));
CALL insert_study_file (UNHEX('9c94aa04caf34ff9a5628c54f51ace49'),'Archivo 4.jpg',UNHEX('641741ab8faf4ba997a80896b20f792f'));
CALL insert_study_file (UNHEX('2500f89bd93c42c88496482e89ad9da1'),'Archivo 5.txt',UNHEX('641741ab8faf4ba997a80896b20f792f'));
CALL insert_study_file (UNHEX('1ce1976adcc446128819ea692a9b6f69'),'Archivo 6.txt',UNHEX('641741ab8faf4ba997a80896b20f792f'));
CALL insert_study_file (UNHEX('770c6aa81ca3467cb3759011a71886cf'),'Archivo 7.jpg',UNHEX('641741ab8faf4ba997a80896b20f792f'));
CALL insert_study_file (UNHEX('a2d4dac8fd6e4d749d282c578b86d08e'),'Archivo 8.doc',UNHEX('641741ab8faf4ba997a80896b20f792f'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('bba9eec6926d4e47a6a46169503ec543'),'Observación correspondiente al estudio bba9eec6926d4e47a6a46169503ec543.',UNHEX('099786e507ee482a88c7298fd90ae3a2'),'ET');
# Se craran 7 archivos para el estudio bba9eec6926d4e47a6a46169503ec543
CALL insert_study_file (UNHEX('49f31a0b9cfc4323bfb167157bf70e6f'),'Archivo 0.pdf',UNHEX('bba9eec6926d4e47a6a46169503ec543'));
CALL insert_study_file (UNHEX('cdfc196cc59141c4808e56e414bc8032'),'Archivo 1.jpg',UNHEX('bba9eec6926d4e47a6a46169503ec543'));
CALL insert_study_file (UNHEX('92046765cf224ed6b2801c3da7c2e636'),'Archivo 2.pdf',UNHEX('bba9eec6926d4e47a6a46169503ec543'));
CALL insert_study_file (UNHEX('244358404a3a4a6fa34ec3ba4d8ad676'),'Archivo 3.pdf',UNHEX('bba9eec6926d4e47a6a46169503ec543'));
CALL insert_study_file (UNHEX('e991abe650d448bc908cbcfbcd2098f8'),'Archivo 4.pdf',UNHEX('bba9eec6926d4e47a6a46169503ec543'));
CALL insert_study_file (UNHEX('6fd818666966407a90287f48b2f82093'),'Archivo 5.pdf',UNHEX('bba9eec6926d4e47a6a46169503ec543'));
CALL insert_study_file (UNHEX('e8d57ce7932d40ebb0d609a886556ea5'),'Archivo 6.doc',UNHEX('bba9eec6926d4e47a6a46169503ec543'));
# Fin creacion de archivos
CALL insert_study ('2014-07-29',UNHEX('0d119e9f50b94054aa9ee56526e117fc'),'Observación correspondiente al estudio 0d119e9f50b94054aa9ee56526e117fc.',UNHEX('099786e507ee482a88c7298fd90ae3a2'),'UA');
# Se craran 7 archivos para el estudio 0d119e9f50b94054aa9ee56526e117fc
CALL insert_study_file (UNHEX('ce852b8b254540fc8969f9ba99f4c053'),'Archivo 0.txt',UNHEX('0d119e9f50b94054aa9ee56526e117fc'));
CALL insert_study_file (UNHEX('f820146f76bc462da5a16e35310baa38'),'Archivo 1.pdf',UNHEX('0d119e9f50b94054aa9ee56526e117fc'));
CALL insert_study_file (UNHEX('f9370f54d60f45e79ccc05c9723315d8'),'Archivo 2.doc',UNHEX('0d119e9f50b94054aa9ee56526e117fc'));
CALL insert_study_file (UNHEX('b431179dfdcf405ba9d888472381d67a'),'Archivo 3.txt',UNHEX('0d119e9f50b94054aa9ee56526e117fc'));
CALL insert_study_file (UNHEX('7b903ec611c5483db0bf7a4fd344a97b'),'Archivo 4.pdf',UNHEX('0d119e9f50b94054aa9ee56526e117fc'));
CALL insert_study_file (UNHEX('079063f1ea3142a48f59e77817f7375e'),'Archivo 5.pdf',UNHEX('0d119e9f50b94054aa9ee56526e117fc'));
CALL insert_study_file (UNHEX('9e70de8afc634d1a823c52950c40077e'),'Archivo 6.jpg',UNHEX('0d119e9f50b94054aa9ee56526e117fc'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('d5a18565e72c41dab07a346e2c46dfa6'),'Observación correspondiente al estudio d5a18565e72c41dab07a346e2c46dfa6.',UNHEX('099786e507ee482a88c7298fd90ae3a2'),'ET');
# Se craran 3 archivos para el estudio d5a18565e72c41dab07a346e2c46dfa6
CALL insert_study_file (UNHEX('2ceed646a95e4396a4b4a1fea7d0f382'),'Archivo 0.doc',UNHEX('d5a18565e72c41dab07a346e2c46dfa6'));
CALL insert_study_file (UNHEX('e9d92cfb4d504f1faae529d0fd5a7029'),'Archivo 1.pdf',UNHEX('d5a18565e72c41dab07a346e2c46dfa6'));
CALL insert_study_file (UNHEX('d58e5679ab424c1d9ff2e4e55b950091'),'Archivo 2.txt',UNHEX('d5a18565e72c41dab07a346e2c46dfa6'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('4a5b34010b8c45388ef1132a85847cad'),'Observación correspondiente al estudio 4a5b34010b8c45388ef1132a85847cad.',UNHEX('099786e507ee482a88c7298fd90ae3a2'),'UA');
# Se craran 8 archivos para el estudio 4a5b34010b8c45388ef1132a85847cad
CALL insert_study_file (UNHEX('19b8249fcfa347b3b8e8ccb2f5add122'),'Archivo 0.doc',UNHEX('4a5b34010b8c45388ef1132a85847cad'));
CALL insert_study_file (UNHEX('1f86f0aab97e4b84bc45f8778b33b00a'),'Archivo 1.txt',UNHEX('4a5b34010b8c45388ef1132a85847cad'));
CALL insert_study_file (UNHEX('33a0bbc251e64e6a9f0996f29b63a4ac'),'Archivo 2.txt',UNHEX('4a5b34010b8c45388ef1132a85847cad'));
CALL insert_study_file (UNHEX('75cf6b7b32a04ab596b937e86fb59305'),'Archivo 3.pdf',UNHEX('4a5b34010b8c45388ef1132a85847cad'));
CALL insert_study_file (UNHEX('20876fa62e024f5894ace1d788b0e7de'),'Archivo 4.jpg',UNHEX('4a5b34010b8c45388ef1132a85847cad'));
CALL insert_study_file (UNHEX('770ac2138f2d4672b01c00410212b644'),'Archivo 5.jpg',UNHEX('4a5b34010b8c45388ef1132a85847cad'));
CALL insert_study_file (UNHEX('86b63f7018174976bfe128d7386c10d9'),'Archivo 6.txt',UNHEX('4a5b34010b8c45388ef1132a85847cad'));
CALL insert_study_file (UNHEX('6103f053d315464e9a4163dd2b1ef9bd'),'Archivo 7.pdf',UNHEX('4a5b34010b8c45388ef1132a85847cad'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('d4fa7801675e46edb9ffc5c0911417a2'),'Observación correspondiente al estudio d4fa7801675e46edb9ffc5c0911417a2.',UNHEX('099786e507ee482a88c7298fd90ae3a2'),'ET');
# Se craran 6 archivos para el estudio d4fa7801675e46edb9ffc5c0911417a2
CALL insert_study_file (UNHEX('a9325e9a291642e0b1d473b40878ddbe'),'Archivo 0.jpg',UNHEX('d4fa7801675e46edb9ffc5c0911417a2'));
CALL insert_study_file (UNHEX('3c0f16b01c4d4b668aeda5453f3c5519'),'Archivo 1.pdf',UNHEX('d4fa7801675e46edb9ffc5c0911417a2'));
CALL insert_study_file (UNHEX('d0209878c07247cbaa73ba3d3b577eee'),'Archivo 2.jpg',UNHEX('d4fa7801675e46edb9ffc5c0911417a2'));
CALL insert_study_file (UNHEX('0df2d5af29de46e7ad51f79ee309141f'),'Archivo 3.pdf',UNHEX('d4fa7801675e46edb9ffc5c0911417a2'));
CALL insert_study_file (UNHEX('82bb98e24119484c95f2ee9f51b5d787'),'Archivo 4.jpg',UNHEX('d4fa7801675e46edb9ffc5c0911417a2'));
CALL insert_study_file (UNHEX('ab0d7e291e084a23b9731ad9fe95d5ed'),'Archivo 5.pdf',UNHEX('d4fa7801675e46edb9ffc5c0911417a2'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('eafb02660b504197bff8b44473d139f4'),'Observación correspondiente al estudio eafb02660b504197bff8b44473d139f4.',UNHEX('099786e507ee482a88c7298fd90ae3a2'),'ET');
# Se craran 4 archivos para el estudio eafb02660b504197bff8b44473d139f4
CALL insert_study_file (UNHEX('fd497bae2c43480eb4fc21b806593090'),'Archivo 0.jpg',UNHEX('eafb02660b504197bff8b44473d139f4'));
CALL insert_study_file (UNHEX('eb9e2ba4ecc64bfb86efc33822b40468'),'Archivo 1.doc',UNHEX('eafb02660b504197bff8b44473d139f4'));
CALL insert_study_file (UNHEX('fe0383ba95f44787851ad62f1eb41ca7'),'Archivo 2.txt',UNHEX('eafb02660b504197bff8b44473d139f4'));
CALL insert_study_file (UNHEX('c78f08ddda594364866bc1a41c28ae13'),'Archivo 3.doc',UNHEX('eafb02660b504197bff8b44473d139f4'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('92de3b120fef48c5a82660823de4697f'),'Observación correspondiente al estudio 92de3b120fef48c5a82660823de4697f.',UNHEX('099786e507ee482a88c7298fd90ae3a2'),'ET');
# Se craran 8 archivos para el estudio 92de3b120fef48c5a82660823de4697f
CALL insert_study_file (UNHEX('617c99c2d3cc47dcac00fb1da1fb54ca'),'Archivo 0.txt',UNHEX('92de3b120fef48c5a82660823de4697f'));
CALL insert_study_file (UNHEX('a4d583cc2105439a8d7a049cfb1b2ca8'),'Archivo 1.txt',UNHEX('92de3b120fef48c5a82660823de4697f'));
CALL insert_study_file (UNHEX('d53722d6b44a474d8f0c7fc9bcfc69ba'),'Archivo 2.pdf',UNHEX('92de3b120fef48c5a82660823de4697f'));
CALL insert_study_file (UNHEX('0f0b20d2d43e404caf2b74d6eb25fdaf'),'Archivo 3.jpg',UNHEX('92de3b120fef48c5a82660823de4697f'));
CALL insert_study_file (UNHEX('db9cbbb5dea242589234a2ce7a284145'),'Archivo 4.jpg',UNHEX('92de3b120fef48c5a82660823de4697f'));
CALL insert_study_file (UNHEX('e184e92b8b2c43158eea0ebf681cc701'),'Archivo 5.jpg',UNHEX('92de3b120fef48c5a82660823de4697f'));
CALL insert_study_file (UNHEX('aee547713b6c4b359a980e169ebc680a'),'Archivo 6.pdf',UNHEX('92de3b120fef48c5a82660823de4697f'));
CALL insert_study_file (UNHEX('3cc5da558f314237b83a1787f1902227'),'Archivo 7.doc',UNHEX('92de3b120fef48c5a82660823de4697f'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('26488aa5fcb4463ea09e8e2026942e89'),'Observación correspondiente al estudio 26488aa5fcb4463ea09e8e2026942e89.',UNHEX('099786e507ee482a88c7298fd90ae3a2'),'ET');
# Se craran 2 archivos para el estudio 26488aa5fcb4463ea09e8e2026942e89
CALL insert_study_file (UNHEX('c3a1b1761f584000a266f07fe0f988c5'),'Archivo 0.doc',UNHEX('26488aa5fcb4463ea09e8e2026942e89'));
CALL insert_study_file (UNHEX('d936c3e1a2ca47c6b45d6b1b97bc290a'),'Archivo 1.txt',UNHEX('26488aa5fcb4463ea09e8e2026942e89'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('a49852e580dc4831b5eb47b097fdd4ab'),'Observación correspondiente al estudio a49852e580dc4831b5eb47b097fdd4ab.',UNHEX('099786e507ee482a88c7298fd90ae3a2'),'UA');
# Se craran 3 archivos para el estudio a49852e580dc4831b5eb47b097fdd4ab
CALL insert_study_file (UNHEX('73efaabe7267453eb4daeb1914ea5cef'),'Archivo 0.jpg',UNHEX('a49852e580dc4831b5eb47b097fdd4ab'));
CALL insert_study_file (UNHEX('63b75b9237244c78817cd2db8f274bef'),'Archivo 1.pdf',UNHEX('a49852e580dc4831b5eb47b097fdd4ab'));
CALL insert_study_file (UNHEX('f2e95b90198144a09e55378542aa8e8c'),'Archivo 2.pdf',UNHEX('a49852e580dc4831b5eb47b097fdd4ab'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('927b8e2eae934ac2bff756a3039a9dd0'),'Observación correspondiente al estudio 927b8e2eae934ac2bff756a3039a9dd0.',UNHEX('099786e507ee482a88c7298fd90ae3a2'),'BT');
# Se craran 6 archivos para el estudio 927b8e2eae934ac2bff756a3039a9dd0
CALL insert_study_file (UNHEX('6d1cbb47d24947c99df6d3b22675647e'),'Archivo 0.pdf',UNHEX('927b8e2eae934ac2bff756a3039a9dd0'));
CALL insert_study_file (UNHEX('a0f71f1bcddd4eb682327ed32867260b'),'Archivo 1.txt',UNHEX('927b8e2eae934ac2bff756a3039a9dd0'));
CALL insert_study_file (UNHEX('16c7d689f10647d486f801af0fdcf615'),'Archivo 2.jpg',UNHEX('927b8e2eae934ac2bff756a3039a9dd0'));
CALL insert_study_file (UNHEX('b07d3ff1d6f74e6aa4a5107df6081355'),'Archivo 3.doc',UNHEX('927b8e2eae934ac2bff756a3039a9dd0'));
CALL insert_study_file (UNHEX('bfcd7f9eab6f4d858ef6e8c2a15e6f98'),'Archivo 4.doc',UNHEX('927b8e2eae934ac2bff756a3039a9dd0'));
CALL insert_study_file (UNHEX('9913f5db32cd428a9f07b6ec3bf23643'),'Archivo 5.txt',UNHEX('927b8e2eae934ac2bff756a3039a9dd0'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('aac073248c554be0a22373a3de8139b9'),'Observación correspondiente al estudio aac073248c554be0a22373a3de8139b9.',UNHEX('099786e507ee482a88c7298fd90ae3a2'),'ET');
# Se craran 1 archivos para el estudio aac073248c554be0a22373a3de8139b9
CALL insert_study_file (UNHEX('84c1d024fa7d4929ac41fa1c71a9ba55'),'Archivo 0.txt',UNHEX('aac073248c554be0a22373a3de8139b9'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 18fe91a434e74334a2f97209c6cc4ac1
CALL insert_patient ('1933-06-18','2','F', UNHEX('18fe91a434e74334a2f97209c6cc4ac1'),'Shelby, kaylil','doctor');
# Se craran 16 estudios para el paciente 18fe91a434e74334a2f97209c6cc4ac1
CALL insert_study ('2014-08-04',UNHEX('aaddd12912be42f7834342320b80864c'),'Observación correspondiente al estudio aaddd12912be42f7834342320b80864c.',UNHEX('18fe91a434e74334a2f97209c6cc4ac1'),'ET');
# Se craran 3 archivos para el estudio aaddd12912be42f7834342320b80864c
CALL insert_study_file (UNHEX('2d4d30c6a79244ac8d6714a31972ce39'),'Archivo 0.pdf',UNHEX('aaddd12912be42f7834342320b80864c'));
CALL insert_study_file (UNHEX('54b2781753fb4ce4bfa5c6b16ea8092a'),'Archivo 1.txt',UNHEX('aaddd12912be42f7834342320b80864c'));
CALL insert_study_file (UNHEX('f924b54eaf7c403bbf61f34af9c521aa'),'Archivo 2.txt',UNHEX('aaddd12912be42f7834342320b80864c'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('306446304e7c426bad62e62b6d91e780'),'Observación correspondiente al estudio 306446304e7c426bad62e62b6d91e780.',UNHEX('18fe91a434e74334a2f97209c6cc4ac1'),'UA');
# Se craran 4 archivos para el estudio 306446304e7c426bad62e62b6d91e780
CALL insert_study_file (UNHEX('de48ec243a18435da957b7cc113c2422'),'Archivo 0.txt',UNHEX('306446304e7c426bad62e62b6d91e780'));
CALL insert_study_file (UNHEX('255a783ed1524f7987945c71ddbf1114'),'Archivo 1.jpg',UNHEX('306446304e7c426bad62e62b6d91e780'));
CALL insert_study_file (UNHEX('3c58938ee97e483694cef4640718bd32'),'Archivo 2.jpg',UNHEX('306446304e7c426bad62e62b6d91e780'));
CALL insert_study_file (UNHEX('d704ed6b64314f50888425dc45f54627'),'Archivo 3.txt',UNHEX('306446304e7c426bad62e62b6d91e780'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('e9f11894bda44d2990db1ce04c9b9dea'),'Observación correspondiente al estudio e9f11894bda44d2990db1ce04c9b9dea.',UNHEX('18fe91a434e74334a2f97209c6cc4ac1'),'BT');
# Se craran 2 archivos para el estudio e9f11894bda44d2990db1ce04c9b9dea
CALL insert_study_file (UNHEX('c75e034980674ac0a9163fe2f7933c0e'),'Archivo 0.pdf',UNHEX('e9f11894bda44d2990db1ce04c9b9dea'));
CALL insert_study_file (UNHEX('babcf624835a45fc8a3fcfcf81340acf'),'Archivo 1.txt',UNHEX('e9f11894bda44d2990db1ce04c9b9dea'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('0e6b0529467545159352270615d4140d'),'Observación correspondiente al estudio 0e6b0529467545159352270615d4140d.',UNHEX('18fe91a434e74334a2f97209c6cc4ac1'),'ET');
# Se craran 9 archivos para el estudio 0e6b0529467545159352270615d4140d
CALL insert_study_file (UNHEX('05f6416d5fad4a73b3189289aef8479e'),'Archivo 0.pdf',UNHEX('0e6b0529467545159352270615d4140d'));
CALL insert_study_file (UNHEX('b1992bc0156b44eea692d744815c5136'),'Archivo 1.jpg',UNHEX('0e6b0529467545159352270615d4140d'));
CALL insert_study_file (UNHEX('67d47f8ba91f442e8ebf712b32d1a072'),'Archivo 2.jpg',UNHEX('0e6b0529467545159352270615d4140d'));
CALL insert_study_file (UNHEX('e73778688e7e4fe5ac4b2c1625813f15'),'Archivo 3.doc',UNHEX('0e6b0529467545159352270615d4140d'));
CALL insert_study_file (UNHEX('107632c4e8f84a259c176ba5d0635241'),'Archivo 4.doc',UNHEX('0e6b0529467545159352270615d4140d'));
CALL insert_study_file (UNHEX('7ea58dbef47a4160ba687a776ff23110'),'Archivo 5.txt',UNHEX('0e6b0529467545159352270615d4140d'));
CALL insert_study_file (UNHEX('2e16bc36325c49059bed132fc2c679aa'),'Archivo 6.pdf',UNHEX('0e6b0529467545159352270615d4140d'));
CALL insert_study_file (UNHEX('7837f408412d46008bdeed1f6ced6709'),'Archivo 7.pdf',UNHEX('0e6b0529467545159352270615d4140d'));
CALL insert_study_file (UNHEX('f872be5c9ad8400291694d4fb4a8dfb0'),'Archivo 8.pdf',UNHEX('0e6b0529467545159352270615d4140d'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('8fed222f4d4f497dbf2fa5611052acdd'),'Observación correspondiente al estudio 8fed222f4d4f497dbf2fa5611052acdd.',UNHEX('18fe91a434e74334a2f97209c6cc4ac1'),'UA');
# Se craran 2 archivos para el estudio 8fed222f4d4f497dbf2fa5611052acdd
CALL insert_study_file (UNHEX('b5c0cbb259264396913bd819287a5d9a'),'Archivo 0.jpg',UNHEX('8fed222f4d4f497dbf2fa5611052acdd'));
CALL insert_study_file (UNHEX('7c125eb9634c4c31ac8fdc6f0410012a'),'Archivo 1.txt',UNHEX('8fed222f4d4f497dbf2fa5611052acdd'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('94b9d8d06c12480087d631d51c7f9af3'),'Observación correspondiente al estudio 94b9d8d06c12480087d631d51c7f9af3.',UNHEX('18fe91a434e74334a2f97209c6cc4ac1'),'UA');
# Se craran 2 archivos para el estudio 94b9d8d06c12480087d631d51c7f9af3
CALL insert_study_file (UNHEX('029392094524465a858cde38bfb19fba'),'Archivo 0.pdf',UNHEX('94b9d8d06c12480087d631d51c7f9af3'));
CALL insert_study_file (UNHEX('eca5583888eb4f62a92442b856387b58'),'Archivo 1.pdf',UNHEX('94b9d8d06c12480087d631d51c7f9af3'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('d2434f2531e24dc1b714001f81058aa0'),'Observación correspondiente al estudio d2434f2531e24dc1b714001f81058aa0.',UNHEX('18fe91a434e74334a2f97209c6cc4ac1'),'UA');
# Se craran 2 archivos para el estudio d2434f2531e24dc1b714001f81058aa0
CALL insert_study_file (UNHEX('2acc90b4c80b46259609fc9a49ffc0fb'),'Archivo 0.doc',UNHEX('d2434f2531e24dc1b714001f81058aa0'));
CALL insert_study_file (UNHEX('c1749d766bc3404c9f5a69b5f6fa714b'),'Archivo 1.doc',UNHEX('d2434f2531e24dc1b714001f81058aa0'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('212e272fc8614d10a1020d6e7fbac3cf'),'Observación correspondiente al estudio 212e272fc8614d10a1020d6e7fbac3cf.',UNHEX('18fe91a434e74334a2f97209c6cc4ac1'),'ET');
# Se craran 4 archivos para el estudio 212e272fc8614d10a1020d6e7fbac3cf
CALL insert_study_file (UNHEX('671c115f9a604a66b923825a2b40cc23'),'Archivo 0.doc',UNHEX('212e272fc8614d10a1020d6e7fbac3cf'));
CALL insert_study_file (UNHEX('7de0b5f01b29464d91065b2a20c574d4'),'Archivo 1.txt',UNHEX('212e272fc8614d10a1020d6e7fbac3cf'));
CALL insert_study_file (UNHEX('ff11a5d6761a48f6b4a55be1464cb56f'),'Archivo 2.doc',UNHEX('212e272fc8614d10a1020d6e7fbac3cf'));
CALL insert_study_file (UNHEX('950c4c9d218c443ebde68ca6bab073e2'),'Archivo 3.jpg',UNHEX('212e272fc8614d10a1020d6e7fbac3cf'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('97dfde41467641efb785f9a7e46e8973'),'Observación correspondiente al estudio 97dfde41467641efb785f9a7e46e8973.',UNHEX('18fe91a434e74334a2f97209c6cc4ac1'),'BT');
# Se craran 8 archivos para el estudio 97dfde41467641efb785f9a7e46e8973
CALL insert_study_file (UNHEX('b5002a54d76b43638af91411b09a7569'),'Archivo 0.txt',UNHEX('97dfde41467641efb785f9a7e46e8973'));
CALL insert_study_file (UNHEX('700329883c2448029cd56117db964fc7'),'Archivo 1.doc',UNHEX('97dfde41467641efb785f9a7e46e8973'));
CALL insert_study_file (UNHEX('5cc53c450a9a4d93931ca74921394a51'),'Archivo 2.pdf',UNHEX('97dfde41467641efb785f9a7e46e8973'));
CALL insert_study_file (UNHEX('c9a8ac0fe9ab4cee9f7924a9ebdc0b42'),'Archivo 3.jpg',UNHEX('97dfde41467641efb785f9a7e46e8973'));
CALL insert_study_file (UNHEX('f582aca5a61640399132f0cd3a303d71'),'Archivo 4.txt',UNHEX('97dfde41467641efb785f9a7e46e8973'));
CALL insert_study_file (UNHEX('c27bd46e1bc841859f84a9032de6919c'),'Archivo 5.doc',UNHEX('97dfde41467641efb785f9a7e46e8973'));
CALL insert_study_file (UNHEX('5d0005374adb44bfa4960047126576ba'),'Archivo 6.jpg',UNHEX('97dfde41467641efb785f9a7e46e8973'));
CALL insert_study_file (UNHEX('8823235465f44f4b931a29a2462b1912'),'Archivo 7.doc',UNHEX('97dfde41467641efb785f9a7e46e8973'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('1aafbbffd1ee4786a5b5373970266fed'),'Observación correspondiente al estudio 1aafbbffd1ee4786a5b5373970266fed.',UNHEX('18fe91a434e74334a2f97209c6cc4ac1'),'BT');
# Se craran 2 archivos para el estudio 1aafbbffd1ee4786a5b5373970266fed
CALL insert_study_file (UNHEX('06ce77f65afa410eb8891b974cb8d8b6'),'Archivo 0.jpg',UNHEX('1aafbbffd1ee4786a5b5373970266fed'));
CALL insert_study_file (UNHEX('3b554cae94d840ffa6ef2a8f4cf5ade7'),'Archivo 1.pdf',UNHEX('1aafbbffd1ee4786a5b5373970266fed'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('ae39a58d249d46e3a538fb9e5878204c'),'Observación correspondiente al estudio ae39a58d249d46e3a538fb9e5878204c.',UNHEX('18fe91a434e74334a2f97209c6cc4ac1'),'ET');
# Se craran 4 archivos para el estudio ae39a58d249d46e3a538fb9e5878204c
CALL insert_study_file (UNHEX('d7e22b38de844c7db0862815c8065e47'),'Archivo 0.doc',UNHEX('ae39a58d249d46e3a538fb9e5878204c'));
CALL insert_study_file (UNHEX('1b7d375e1d604b96a3115f4636fb4391'),'Archivo 1.txt',UNHEX('ae39a58d249d46e3a538fb9e5878204c'));
CALL insert_study_file (UNHEX('24af132755cc4bf9b722837f67ffa76f'),'Archivo 2.pdf',UNHEX('ae39a58d249d46e3a538fb9e5878204c'));
CALL insert_study_file (UNHEX('ea09a523eb2549b59c1535495d326a93'),'Archivo 3.txt',UNHEX('ae39a58d249d46e3a538fb9e5878204c'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('20de33f30fe247028a3edd182fd5de30'),'Observación correspondiente al estudio 20de33f30fe247028a3edd182fd5de30.',UNHEX('18fe91a434e74334a2f97209c6cc4ac1'),'BT');
# Se craran 0 archivos para el estudio 20de33f30fe247028a3edd182fd5de30
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('722de8db24be4bacb506a25206073136'),'Observación correspondiente al estudio 722de8db24be4bacb506a25206073136.',UNHEX('18fe91a434e74334a2f97209c6cc4ac1'),'ET');
# Se craran 5 archivos para el estudio 722de8db24be4bacb506a25206073136
CALL insert_study_file (UNHEX('a2bac9b7e3be421889a779d0e6fc9edb'),'Archivo 0.jpg',UNHEX('722de8db24be4bacb506a25206073136'));
CALL insert_study_file (UNHEX('017d5010633940c8bef43e39ebb0010c'),'Archivo 1.doc',UNHEX('722de8db24be4bacb506a25206073136'));
CALL insert_study_file (UNHEX('4b5e27b79b894c3aafa414455aa102e5'),'Archivo 2.txt',UNHEX('722de8db24be4bacb506a25206073136'));
CALL insert_study_file (UNHEX('ac396e1ba201400ea2c68d7c0d81cf86'),'Archivo 3.doc',UNHEX('722de8db24be4bacb506a25206073136'));
CALL insert_study_file (UNHEX('a16bdbcdd44042168dc88933df3486ed'),'Archivo 4.txt',UNHEX('722de8db24be4bacb506a25206073136'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('8739c1837358496fbffcf87cf6275c55'),'Observación correspondiente al estudio 8739c1837358496fbffcf87cf6275c55.',UNHEX('18fe91a434e74334a2f97209c6cc4ac1'),'UA');
# Se craran 4 archivos para el estudio 8739c1837358496fbffcf87cf6275c55
CALL insert_study_file (UNHEX('5d5192f152284834bafa1da7b0d88bee'),'Archivo 0.doc',UNHEX('8739c1837358496fbffcf87cf6275c55'));
CALL insert_study_file (UNHEX('3b3e65e2074e4de7b2ed3ab1e3e6422a'),'Archivo 1.jpg',UNHEX('8739c1837358496fbffcf87cf6275c55'));
CALL insert_study_file (UNHEX('ebdaae35049c44bc94fec410b58c09e8'),'Archivo 2.doc',UNHEX('8739c1837358496fbffcf87cf6275c55'));
CALL insert_study_file (UNHEX('8a9b8423cc054d208a2b260587e976ca'),'Archivo 3.doc',UNHEX('8739c1837358496fbffcf87cf6275c55'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('f5a177ddf0c34e668025ac2de70a96ed'),'Observación correspondiente al estudio f5a177ddf0c34e668025ac2de70a96ed.',UNHEX('18fe91a434e74334a2f97209c6cc4ac1'),'BT');
# Se craran 9 archivos para el estudio f5a177ddf0c34e668025ac2de70a96ed
CALL insert_study_file (UNHEX('1df8d6444c21492db7d8ca0545295b36'),'Archivo 0.jpg',UNHEX('f5a177ddf0c34e668025ac2de70a96ed'));
CALL insert_study_file (UNHEX('f3cd7bf03d6441cc9d045349c5aa8628'),'Archivo 1.doc',UNHEX('f5a177ddf0c34e668025ac2de70a96ed'));
CALL insert_study_file (UNHEX('12f16c99be414c8c8e57de1ae67a7397'),'Archivo 2.txt',UNHEX('f5a177ddf0c34e668025ac2de70a96ed'));
CALL insert_study_file (UNHEX('ca35cc747df541939ccd1af4c91e72ee'),'Archivo 3.jpg',UNHEX('f5a177ddf0c34e668025ac2de70a96ed'));
CALL insert_study_file (UNHEX('9c8172895b104684a9a9d02d4b8aa694'),'Archivo 4.pdf',UNHEX('f5a177ddf0c34e668025ac2de70a96ed'));
CALL insert_study_file (UNHEX('90b96e615fc74334aa88f6d5658f93ba'),'Archivo 5.txt',UNHEX('f5a177ddf0c34e668025ac2de70a96ed'));
CALL insert_study_file (UNHEX('ef076825c41e4b64a65bce9061b8d167'),'Archivo 6.doc',UNHEX('f5a177ddf0c34e668025ac2de70a96ed'));
CALL insert_study_file (UNHEX('4b5333536fcd4d12b69c6acf1e9d7caf'),'Archivo 7.pdf',UNHEX('f5a177ddf0c34e668025ac2de70a96ed'));
CALL insert_study_file (UNHEX('bae09f2b7a4e4f3aa84febf5bbdcbe10'),'Archivo 8.pdf',UNHEX('f5a177ddf0c34e668025ac2de70a96ed'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('82c9ed99ddc046189c56a83548c3d5c4'),'Observación correspondiente al estudio 82c9ed99ddc046189c56a83548c3d5c4.',UNHEX('18fe91a434e74334a2f97209c6cc4ac1'),'ET');
# Se craran 6 archivos para el estudio 82c9ed99ddc046189c56a83548c3d5c4
CALL insert_study_file (UNHEX('c3daf6b634694dfb9244b85a633a8a78'),'Archivo 0.txt',UNHEX('82c9ed99ddc046189c56a83548c3d5c4'));
CALL insert_study_file (UNHEX('085cdc6cb73b4631a2931425cb07ea17'),'Archivo 1.pdf',UNHEX('82c9ed99ddc046189c56a83548c3d5c4'));
CALL insert_study_file (UNHEX('22a6a4919f5e46e9a5e50a9bc14231c3'),'Archivo 2.jpg',UNHEX('82c9ed99ddc046189c56a83548c3d5c4'));
CALL insert_study_file (UNHEX('0e3386a376c34deb89d84046850a2bbb'),'Archivo 3.doc',UNHEX('82c9ed99ddc046189c56a83548c3d5c4'));
CALL insert_study_file (UNHEX('233420b2315f4d9e90581947a590bd96'),'Archivo 4.doc',UNHEX('82c9ed99ddc046189c56a83548c3d5c4'));
CALL insert_study_file (UNHEX('4bce7e6972ec46e4949f910c890cef21'),'Archivo 5.txt',UNHEX('82c9ed99ddc046189c56a83548c3d5c4'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 4500d13f7dc54b7186f132866160c373
CALL insert_patient ('1935-09-29','0','F', UNHEX('4500d13f7dc54b7186f132866160c373'),'Sealock, almire','doctor');
# Se craran 0 estudios para el paciente 4500d13f7dc54b7186f132866160c373
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 8dd58f28fde9442ca1a14bb6adbf2bd9
CALL insert_patient ('1957-12-24','6','M', UNHEX('8dd58f28fde9442ca1a14bb6adbf2bd9'),'Mittal, fraze Wally','doctor');
# Se craran 11 estudios para el paciente 8dd58f28fde9442ca1a14bb6adbf2bd9
CALL insert_study ('2014-07-31',UNHEX('3b98db64efa840e9910deaa4b0717cdc'),'Observación correspondiente al estudio 3b98db64efa840e9910deaa4b0717cdc.',UNHEX('8dd58f28fde9442ca1a14bb6adbf2bd9'),'UA');
# Se craran 2 archivos para el estudio 3b98db64efa840e9910deaa4b0717cdc
CALL insert_study_file (UNHEX('813d90a132044758a78045108e79600c'),'Archivo 0.pdf',UNHEX('3b98db64efa840e9910deaa4b0717cdc'));
CALL insert_study_file (UNHEX('0b04588635464520ad554bff367bc23f'),'Archivo 1.pdf',UNHEX('3b98db64efa840e9910deaa4b0717cdc'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('638335dcd2534ca0b10201b12b9faf25'),'Observación correspondiente al estudio 638335dcd2534ca0b10201b12b9faf25.',UNHEX('8dd58f28fde9442ca1a14bb6adbf2bd9'),'ET');
# Se craran 8 archivos para el estudio 638335dcd2534ca0b10201b12b9faf25
CALL insert_study_file (UNHEX('8eba3130fa724da6974690536fb61454'),'Archivo 0.txt',UNHEX('638335dcd2534ca0b10201b12b9faf25'));
CALL insert_study_file (UNHEX('bf74d228aee741bbae4a2f55daaddb25'),'Archivo 1.jpg',UNHEX('638335dcd2534ca0b10201b12b9faf25'));
CALL insert_study_file (UNHEX('da2d21f232f44c4faa75966786d88ead'),'Archivo 2.jpg',UNHEX('638335dcd2534ca0b10201b12b9faf25'));
CALL insert_study_file (UNHEX('37a37245c87949a6ba7cac7437278a99'),'Archivo 3.pdf',UNHEX('638335dcd2534ca0b10201b12b9faf25'));
CALL insert_study_file (UNHEX('a23c5edd4935438098ae773cc018f79a'),'Archivo 4.pdf',UNHEX('638335dcd2534ca0b10201b12b9faf25'));
CALL insert_study_file (UNHEX('c2927498600e40508e26a68a268ec366'),'Archivo 5.txt',UNHEX('638335dcd2534ca0b10201b12b9faf25'));
CALL insert_study_file (UNHEX('ef1367f3758440b5a32595334bf80574'),'Archivo 6.doc',UNHEX('638335dcd2534ca0b10201b12b9faf25'));
CALL insert_study_file (UNHEX('68e4613ced4e49b1ad4b5cd28197d531'),'Archivo 7.pdf',UNHEX('638335dcd2534ca0b10201b12b9faf25'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('b5335fa1a8524e9898790f515d260416'),'Observación correspondiente al estudio b5335fa1a8524e9898790f515d260416.',UNHEX('8dd58f28fde9442ca1a14bb6adbf2bd9'),'ET');
# Se craran 3 archivos para el estudio b5335fa1a8524e9898790f515d260416
CALL insert_study_file (UNHEX('b8327591b0684e8eabfbc56f520a03f5'),'Archivo 0.txt',UNHEX('b5335fa1a8524e9898790f515d260416'));
CALL insert_study_file (UNHEX('6a0b5ee50ef044b49ada636d8efc4a63'),'Archivo 1.jpg',UNHEX('b5335fa1a8524e9898790f515d260416'));
CALL insert_study_file (UNHEX('a1e7b025fbe1497a9a9b512828f1e24e'),'Archivo 2.doc',UNHEX('b5335fa1a8524e9898790f515d260416'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('3482f88597714b31953463ab59c2f4a0'),'Observación correspondiente al estudio 3482f88597714b31953463ab59c2f4a0.',UNHEX('8dd58f28fde9442ca1a14bb6adbf2bd9'),'ET');
# Se craran 1 archivos para el estudio 3482f88597714b31953463ab59c2f4a0
CALL insert_study_file (UNHEX('560fabcdf4314886b27256ec38924e63'),'Archivo 0.doc',UNHEX('3482f88597714b31953463ab59c2f4a0'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('bcf7500644fa4424af4b70dd4ebe9c50'),'Observación correspondiente al estudio bcf7500644fa4424af4b70dd4ebe9c50.',UNHEX('8dd58f28fde9442ca1a14bb6adbf2bd9'),'ET');
# Se craran 2 archivos para el estudio bcf7500644fa4424af4b70dd4ebe9c50
CALL insert_study_file (UNHEX('9cb5e49da8a84974b20f8fcc6bd87ef1'),'Archivo 0.doc',UNHEX('bcf7500644fa4424af4b70dd4ebe9c50'));
CALL insert_study_file (UNHEX('4c50bfeb00d04694aec88948d094eddd'),'Archivo 1.doc',UNHEX('bcf7500644fa4424af4b70dd4ebe9c50'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('0e548c409202449e8d61ee744f28a080'),'Observación correspondiente al estudio 0e548c409202449e8d61ee744f28a080.',UNHEX('8dd58f28fde9442ca1a14bb6adbf2bd9'),'BT');
# Se craran 1 archivos para el estudio 0e548c409202449e8d61ee744f28a080
CALL insert_study_file (UNHEX('dde61fadbe3741f590b7dd51024a76de'),'Archivo 0.doc',UNHEX('0e548c409202449e8d61ee744f28a080'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('1fc465e334134106aa554452c00daadd'),'Observación correspondiente al estudio 1fc465e334134106aa554452c00daadd.',UNHEX('8dd58f28fde9442ca1a14bb6adbf2bd9'),'BT');
# Se craran 0 archivos para el estudio 1fc465e334134106aa554452c00daadd
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('2b37e9faa9af446db7cfa66ad1a92427'),'Observación correspondiente al estudio 2b37e9faa9af446db7cfa66ad1a92427.',UNHEX('8dd58f28fde9442ca1a14bb6adbf2bd9'),'BT');
# Se craran 2 archivos para el estudio 2b37e9faa9af446db7cfa66ad1a92427
CALL insert_study_file (UNHEX('c562fa611c9e40859aa3a59c6d1ec5a6'),'Archivo 0.txt',UNHEX('2b37e9faa9af446db7cfa66ad1a92427'));
CALL insert_study_file (UNHEX('396105fb4b484d02861a188f372604d9'),'Archivo 1.pdf',UNHEX('2b37e9faa9af446db7cfa66ad1a92427'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('7fd48ac8b1e343df9782ae9eb1b14f4f'),'Observación correspondiente al estudio 7fd48ac8b1e343df9782ae9eb1b14f4f.',UNHEX('8dd58f28fde9442ca1a14bb6adbf2bd9'),'ET');
# Se craran 1 archivos para el estudio 7fd48ac8b1e343df9782ae9eb1b14f4f
CALL insert_study_file (UNHEX('532c838770e94c828f516e167a295e4c'),'Archivo 0.jpg',UNHEX('7fd48ac8b1e343df9782ae9eb1b14f4f'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('f4efe8b840c6433b919ea44c499d48e9'),'Observación correspondiente al estudio f4efe8b840c6433b919ea44c499d48e9.',UNHEX('8dd58f28fde9442ca1a14bb6adbf2bd9'),'UA');
# Se craran 2 archivos para el estudio f4efe8b840c6433b919ea44c499d48e9
CALL insert_study_file (UNHEX('41ca3ccad66048958d58e27c07fccfd8'),'Archivo 0.doc',UNHEX('f4efe8b840c6433b919ea44c499d48e9'));
CALL insert_study_file (UNHEX('47eddf94b415486886bb50d8655bc179'),'Archivo 1.jpg',UNHEX('f4efe8b840c6433b919ea44c499d48e9'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('65717d02fc2d4ccaa87683ed016ac363'),'Observación correspondiente al estudio 65717d02fc2d4ccaa87683ed016ac363.',UNHEX('8dd58f28fde9442ca1a14bb6adbf2bd9'),'BT');
# Se craran 2 archivos para el estudio 65717d02fc2d4ccaa87683ed016ac363
CALL insert_study_file (UNHEX('1badc99a94ec4c87b5c3926f87b8365d'),'Archivo 0.jpg',UNHEX('65717d02fc2d4ccaa87683ed016ac363'));
CALL insert_study_file (UNHEX('3b13040609bf4748a2151c55e0eb2398'),'Archivo 1.pdf',UNHEX('65717d02fc2d4ccaa87683ed016ac363'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 741e377dc83346268dd18d6ee34183cb
CALL insert_patient ('1980-08-11','5','F', UNHEX('741e377dc83346268dd18d6ee34183cb'),'Goldhaber, ranee','doctor');
# Se craran 10 estudios para el paciente 741e377dc83346268dd18d6ee34183cb
CALL insert_study ('2014-08-04',UNHEX('c049b1362c7a434b8a6cf1c8a078e5e7'),'Observación correspondiente al estudio c049b1362c7a434b8a6cf1c8a078e5e7.',UNHEX('741e377dc83346268dd18d6ee34183cb'),'BT');
# Se craran 0 archivos para el estudio c049b1362c7a434b8a6cf1c8a078e5e7
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('f64698b64d0a4d2d87b158cb5266fcdc'),'Observación correspondiente al estudio f64698b64d0a4d2d87b158cb5266fcdc.',UNHEX('741e377dc83346268dd18d6ee34183cb'),'BT');
# Se craran 1 archivos para el estudio f64698b64d0a4d2d87b158cb5266fcdc
CALL insert_study_file (UNHEX('116107e6b9c5432a8c3ca3b76999ad77'),'Archivo 0.jpg',UNHEX('f64698b64d0a4d2d87b158cb5266fcdc'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('c341c22f6046448688f915dd1254f39a'),'Observación correspondiente al estudio c341c22f6046448688f915dd1254f39a.',UNHEX('741e377dc83346268dd18d6ee34183cb'),'UA');
# Se craran 8 archivos para el estudio c341c22f6046448688f915dd1254f39a
CALL insert_study_file (UNHEX('3bf99f2d5cab4097b0df4d6934900642'),'Archivo 0.pdf',UNHEX('c341c22f6046448688f915dd1254f39a'));
CALL insert_study_file (UNHEX('71cb9fde36c440eb844bdbd1c71d6e1a'),'Archivo 1.pdf',UNHEX('c341c22f6046448688f915dd1254f39a'));
CALL insert_study_file (UNHEX('20ea6175b3934d2ba92a623ab14c1d77'),'Archivo 2.pdf',UNHEX('c341c22f6046448688f915dd1254f39a'));
CALL insert_study_file (UNHEX('b03bf6e6ae3941319f8d49d3399d8a86'),'Archivo 3.doc',UNHEX('c341c22f6046448688f915dd1254f39a'));
CALL insert_study_file (UNHEX('9eecf59e0b8041adb720112f78844d75'),'Archivo 4.doc',UNHEX('c341c22f6046448688f915dd1254f39a'));
CALL insert_study_file (UNHEX('edc5ca63722449bdb37c3976d5133730'),'Archivo 5.pdf',UNHEX('c341c22f6046448688f915dd1254f39a'));
CALL insert_study_file (UNHEX('cb137b51bff0415e94578b49c22508fe'),'Archivo 6.jpg',UNHEX('c341c22f6046448688f915dd1254f39a'));
CALL insert_study_file (UNHEX('39a4791812484d45a2750f07c2dfc7cc'),'Archivo 7.jpg',UNHEX('c341c22f6046448688f915dd1254f39a'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('09e6f3d513db4085853d6bc71d2196b2'),'Observación correspondiente al estudio 09e6f3d513db4085853d6bc71d2196b2.',UNHEX('741e377dc83346268dd18d6ee34183cb'),'UA');
# Se craran 0 archivos para el estudio 09e6f3d513db4085853d6bc71d2196b2
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('8dff1efcd6d446e7a3c30d8c1aceec4a'),'Observación correspondiente al estudio 8dff1efcd6d446e7a3c30d8c1aceec4a.',UNHEX('741e377dc83346268dd18d6ee34183cb'),'BT');
# Se craran 3 archivos para el estudio 8dff1efcd6d446e7a3c30d8c1aceec4a
CALL insert_study_file (UNHEX('759883427a1b486ba75bab208e7efa8e'),'Archivo 0.txt',UNHEX('8dff1efcd6d446e7a3c30d8c1aceec4a'));
CALL insert_study_file (UNHEX('13ed30cd927f4bb0be4832419d49ef9c'),'Archivo 1.txt',UNHEX('8dff1efcd6d446e7a3c30d8c1aceec4a'));
CALL insert_study_file (UNHEX('8670adb098894779b27262bca39aa89f'),'Archivo 2.jpg',UNHEX('8dff1efcd6d446e7a3c30d8c1aceec4a'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('b8453d1a6a224bb6903ce79963afc3a7'),'Observación correspondiente al estudio b8453d1a6a224bb6903ce79963afc3a7.',UNHEX('741e377dc83346268dd18d6ee34183cb'),'UA');
# Se craran 2 archivos para el estudio b8453d1a6a224bb6903ce79963afc3a7
CALL insert_study_file (UNHEX('23b49ad9d8c440359c2a152030ee0b7d'),'Archivo 0.txt',UNHEX('b8453d1a6a224bb6903ce79963afc3a7'));
CALL insert_study_file (UNHEX('de26db346e0741e2be641f011493ec57'),'Archivo 1.txt',UNHEX('b8453d1a6a224bb6903ce79963afc3a7'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('33f6a03fa65d4595aa0cf48b098c13ca'),'Observación correspondiente al estudio 33f6a03fa65d4595aa0cf48b098c13ca.',UNHEX('741e377dc83346268dd18d6ee34183cb'),'BT');
# Se craran 1 archivos para el estudio 33f6a03fa65d4595aa0cf48b098c13ca
CALL insert_study_file (UNHEX('6854e3095b5145faabcf223d08594bed'),'Archivo 0.txt',UNHEX('33f6a03fa65d4595aa0cf48b098c13ca'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('5b4b9991f9ab41d081cc100c468315b7'),'Observación correspondiente al estudio 5b4b9991f9ab41d081cc100c468315b7.',UNHEX('741e377dc83346268dd18d6ee34183cb'),'UA');
# Se craran 3 archivos para el estudio 5b4b9991f9ab41d081cc100c468315b7
CALL insert_study_file (UNHEX('18ddc935c0ae4051adc22677ef675644'),'Archivo 0.doc',UNHEX('5b4b9991f9ab41d081cc100c468315b7'));
CALL insert_study_file (UNHEX('f66b88e0fa184d09a437ca19d0e5987e'),'Archivo 1.pdf',UNHEX('5b4b9991f9ab41d081cc100c468315b7'));
CALL insert_study_file (UNHEX('4dc558b5b0974f1fbd00b4074aba75dd'),'Archivo 2.jpg',UNHEX('5b4b9991f9ab41d081cc100c468315b7'));
# Fin creacion de archivos
CALL insert_study ('2014-07-29',UNHEX('5b3edb12dd7848c585b2abd44f441941'),'Observación correspondiente al estudio 5b3edb12dd7848c585b2abd44f441941.',UNHEX('741e377dc83346268dd18d6ee34183cb'),'BT');
# Se craran 9 archivos para el estudio 5b3edb12dd7848c585b2abd44f441941
CALL insert_study_file (UNHEX('755578b9e9674894938e57811c76aef4'),'Archivo 0.jpg',UNHEX('5b3edb12dd7848c585b2abd44f441941'));
CALL insert_study_file (UNHEX('d2c72a2638324804a23f852f9121e86d'),'Archivo 1.pdf',UNHEX('5b3edb12dd7848c585b2abd44f441941'));
CALL insert_study_file (UNHEX('09902289e85f4a7d888a53265f8a212a'),'Archivo 2.pdf',UNHEX('5b3edb12dd7848c585b2abd44f441941'));
CALL insert_study_file (UNHEX('7cafa70cb7ac4b5f865a6ed13dd59b13'),'Archivo 3.pdf',UNHEX('5b3edb12dd7848c585b2abd44f441941'));
CALL insert_study_file (UNHEX('259f71b3346140dc878d6729209e4254'),'Archivo 4.pdf',UNHEX('5b3edb12dd7848c585b2abd44f441941'));
CALL insert_study_file (UNHEX('3a8bf8e6379545999febb46b68bf6e43'),'Archivo 5.pdf',UNHEX('5b3edb12dd7848c585b2abd44f441941'));
CALL insert_study_file (UNHEX('068fe4632aaf46c1a5b1bd14696c6ffb'),'Archivo 6.txt',UNHEX('5b3edb12dd7848c585b2abd44f441941'));
CALL insert_study_file (UNHEX('cf60de59ca924898b6e6775e1e2efeeb'),'Archivo 7.doc',UNHEX('5b3edb12dd7848c585b2abd44f441941'));
CALL insert_study_file (UNHEX('d528fb8bd7f54dafa7ea1731f9043504'),'Archivo 8.doc',UNHEX('5b3edb12dd7848c585b2abd44f441941'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('95a53b3ba8b54102819d954d840d9289'),'Observación correspondiente al estudio 95a53b3ba8b54102819d954d840d9289.',UNHEX('741e377dc83346268dd18d6ee34183cb'),'BT');
# Se craran 7 archivos para el estudio 95a53b3ba8b54102819d954d840d9289
CALL insert_study_file (UNHEX('f6ee830f1f8c4800a87d6d0605f4f94f'),'Archivo 0.txt',UNHEX('95a53b3ba8b54102819d954d840d9289'));
CALL insert_study_file (UNHEX('a43e79d8174141429b7dc7883c57faac'),'Archivo 1.jpg',UNHEX('95a53b3ba8b54102819d954d840d9289'));
CALL insert_study_file (UNHEX('aca620e00a24468bb24587acc19698d6'),'Archivo 2.jpg',UNHEX('95a53b3ba8b54102819d954d840d9289'));
CALL insert_study_file (UNHEX('47743d51d2f14456b2917b5b921916d9'),'Archivo 3.txt',UNHEX('95a53b3ba8b54102819d954d840d9289'));
CALL insert_study_file (UNHEX('c36ff8bbed0c467198063259b28b1f62'),'Archivo 4.jpg',UNHEX('95a53b3ba8b54102819d954d840d9289'));
CALL insert_study_file (UNHEX('3399d5881b1c43eab5f30754d513ce5e'),'Archivo 5.pdf',UNHEX('95a53b3ba8b54102819d954d840d9289'));
CALL insert_study_file (UNHEX('c410a0f1420e44aa99dd311b0f1e72b4'),'Archivo 6.jpg',UNHEX('95a53b3ba8b54102819d954d840d9289'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 14ef53c4f00649aba3ce2e8ad6400fe6
CALL insert_patient ('1958-01-04','4','M', UNHEX('14ef53c4f00649aba3ce2e8ad6400fe6'),'Fixsen, merle','doctor');
# Se craran 12 estudios para el paciente 14ef53c4f00649aba3ce2e8ad6400fe6
CALL insert_study ('2014-07-30',UNHEX('ae608f5a48cb4d7593a111e598a5a078'),'Observación correspondiente al estudio ae608f5a48cb4d7593a111e598a5a078.',UNHEX('14ef53c4f00649aba3ce2e8ad6400fe6'),'BT');
# Se craran 3 archivos para el estudio ae608f5a48cb4d7593a111e598a5a078
CALL insert_study_file (UNHEX('94c3809717db4bc3a939e03786eccf13'),'Archivo 0.jpg',UNHEX('ae608f5a48cb4d7593a111e598a5a078'));
CALL insert_study_file (UNHEX('d250f1d6bd3843e39f45582086dd8992'),'Archivo 1.jpg',UNHEX('ae608f5a48cb4d7593a111e598a5a078'));
CALL insert_study_file (UNHEX('ce57a60806264777bde5c423f210bec5'),'Archivo 2.jpg',UNHEX('ae608f5a48cb4d7593a111e598a5a078'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('60958bb3b0df4d178d283cd399ac5be1'),'Observación correspondiente al estudio 60958bb3b0df4d178d283cd399ac5be1.',UNHEX('14ef53c4f00649aba3ce2e8ad6400fe6'),'ET');
# Se craran 6 archivos para el estudio 60958bb3b0df4d178d283cd399ac5be1
CALL insert_study_file (UNHEX('4c2b85781a87498fa3221f4ef89f54ee'),'Archivo 0.pdf',UNHEX('60958bb3b0df4d178d283cd399ac5be1'));
CALL insert_study_file (UNHEX('1deebb5e86544c5ab7edc6c2c1063e26'),'Archivo 1.jpg',UNHEX('60958bb3b0df4d178d283cd399ac5be1'));
CALL insert_study_file (UNHEX('b16189c86212434995ff6de3c1ad2703'),'Archivo 2.doc',UNHEX('60958bb3b0df4d178d283cd399ac5be1'));
CALL insert_study_file (UNHEX('b55132c0f000417f9ec84b64c49e0e56'),'Archivo 3.doc',UNHEX('60958bb3b0df4d178d283cd399ac5be1'));
CALL insert_study_file (UNHEX('fb7c140f7a4346d4b6aad7536af799ad'),'Archivo 4.jpg',UNHEX('60958bb3b0df4d178d283cd399ac5be1'));
CALL insert_study_file (UNHEX('ba0128701f594c73b76873b973d1ce7d'),'Archivo 5.jpg',UNHEX('60958bb3b0df4d178d283cd399ac5be1'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('5663a181580d41609cfbfb49f9a3dbb9'),'Observación correspondiente al estudio 5663a181580d41609cfbfb49f9a3dbb9.',UNHEX('14ef53c4f00649aba3ce2e8ad6400fe6'),'BT');
# Se craran 6 archivos para el estudio 5663a181580d41609cfbfb49f9a3dbb9
CALL insert_study_file (UNHEX('215e2e2dacf24b4f80f9c5f4b0f34831'),'Archivo 0.jpg',UNHEX('5663a181580d41609cfbfb49f9a3dbb9'));
CALL insert_study_file (UNHEX('d7b62d626b6a4c41aa36cdd6ca7c16db'),'Archivo 1.jpg',UNHEX('5663a181580d41609cfbfb49f9a3dbb9'));
CALL insert_study_file (UNHEX('adcd194ba10a4b27a2848251017f075e'),'Archivo 2.jpg',UNHEX('5663a181580d41609cfbfb49f9a3dbb9'));
CALL insert_study_file (UNHEX('f0e490706b424fbb9749ab1826bd553f'),'Archivo 3.doc',UNHEX('5663a181580d41609cfbfb49f9a3dbb9'));
CALL insert_study_file (UNHEX('fc14ec4985424fa79c8c8c96eb487359'),'Archivo 4.txt',UNHEX('5663a181580d41609cfbfb49f9a3dbb9'));
CALL insert_study_file (UNHEX('96df5223e37447cca6fd111d2cc3cec5'),'Archivo 5.pdf',UNHEX('5663a181580d41609cfbfb49f9a3dbb9'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('b616768b217b49fab99691d56f3d6020'),'Observación correspondiente al estudio b616768b217b49fab99691d56f3d6020.',UNHEX('14ef53c4f00649aba3ce2e8ad6400fe6'),'UA');
# Se craran 2 archivos para el estudio b616768b217b49fab99691d56f3d6020
CALL insert_study_file (UNHEX('ffa2e2c5ecb94c81ba686d1ccc5b11d9'),'Archivo 0.pdf',UNHEX('b616768b217b49fab99691d56f3d6020'));
CALL insert_study_file (UNHEX('50f47412c1484783828880a698f4bc05'),'Archivo 1.pdf',UNHEX('b616768b217b49fab99691d56f3d6020'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('38b8501705f0498d9f5826cdf854601b'),'Observación correspondiente al estudio 38b8501705f0498d9f5826cdf854601b.',UNHEX('14ef53c4f00649aba3ce2e8ad6400fe6'),'UA');
# Se craran 0 archivos para el estudio 38b8501705f0498d9f5826cdf854601b
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('2cc0305f2a624a5a8f68e9a86ebc29bd'),'Observación correspondiente al estudio 2cc0305f2a624a5a8f68e9a86ebc29bd.',UNHEX('14ef53c4f00649aba3ce2e8ad6400fe6'),'ET');
# Se craran 2 archivos para el estudio 2cc0305f2a624a5a8f68e9a86ebc29bd
CALL insert_study_file (UNHEX('26f36fb0197a40f8bd6a0021c6a4739c'),'Archivo 0.pdf',UNHEX('2cc0305f2a624a5a8f68e9a86ebc29bd'));
CALL insert_study_file (UNHEX('7d0baf1629e94f8abc22af3cd5580dba'),'Archivo 1.pdf',UNHEX('2cc0305f2a624a5a8f68e9a86ebc29bd'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('ca172c06a0924f93ba70031178d9f448'),'Observación correspondiente al estudio ca172c06a0924f93ba70031178d9f448.',UNHEX('14ef53c4f00649aba3ce2e8ad6400fe6'),'UA');
# Se craran 1 archivos para el estudio ca172c06a0924f93ba70031178d9f448
CALL insert_study_file (UNHEX('27e9c6998cfb49b7ad5c477d21657620'),'Archivo 0.doc',UNHEX('ca172c06a0924f93ba70031178d9f448'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('b80ec19de734434bae2f3ea2854517dc'),'Observación correspondiente al estudio b80ec19de734434bae2f3ea2854517dc.',UNHEX('14ef53c4f00649aba3ce2e8ad6400fe6'),'BT');
# Se craran 9 archivos para el estudio b80ec19de734434bae2f3ea2854517dc
CALL insert_study_file (UNHEX('99be0b4daa2e47419efbce55d805193d'),'Archivo 0.doc',UNHEX('b80ec19de734434bae2f3ea2854517dc'));
CALL insert_study_file (UNHEX('c2057b2658da4c448921b7aa12c92f28'),'Archivo 1.jpg',UNHEX('b80ec19de734434bae2f3ea2854517dc'));
CALL insert_study_file (UNHEX('dc1afaa5c0664edb9106ea4ff8eaedd5'),'Archivo 2.pdf',UNHEX('b80ec19de734434bae2f3ea2854517dc'));
CALL insert_study_file (UNHEX('7f3caef5f5d847849d93d7482bf2df1c'),'Archivo 3.jpg',UNHEX('b80ec19de734434bae2f3ea2854517dc'));
CALL insert_study_file (UNHEX('1e0a9fdec52c4dd48db2102e247d3433'),'Archivo 4.txt',UNHEX('b80ec19de734434bae2f3ea2854517dc'));
CALL insert_study_file (UNHEX('613cda35e4724aa5b7fa111e69c20427'),'Archivo 5.pdf',UNHEX('b80ec19de734434bae2f3ea2854517dc'));
CALL insert_study_file (UNHEX('9ee70c22490842a4abffe6bd3b7a6aa2'),'Archivo 6.pdf',UNHEX('b80ec19de734434bae2f3ea2854517dc'));
CALL insert_study_file (UNHEX('72b3d7321a174dfd98fb40102dd72630'),'Archivo 7.txt',UNHEX('b80ec19de734434bae2f3ea2854517dc'));
CALL insert_study_file (UNHEX('1842f99305014ebf9f144666d4e62f77'),'Archivo 8.pdf',UNHEX('b80ec19de734434bae2f3ea2854517dc'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('afad0fe21b0b4b938e173b5b11033a0f'),'Observación correspondiente al estudio afad0fe21b0b4b938e173b5b11033a0f.',UNHEX('14ef53c4f00649aba3ce2e8ad6400fe6'),'ET');
# Se craran 0 archivos para el estudio afad0fe21b0b4b938e173b5b11033a0f
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('65deec51be7940d89759ae0d13722d75'),'Observación correspondiente al estudio 65deec51be7940d89759ae0d13722d75.',UNHEX('14ef53c4f00649aba3ce2e8ad6400fe6'),'UA');
# Se craran 1 archivos para el estudio 65deec51be7940d89759ae0d13722d75
CALL insert_study_file (UNHEX('7dbf352e9632410ebe228920adbb3e67'),'Archivo 0.doc',UNHEX('65deec51be7940d89759ae0d13722d75'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('0fb96a3322724885bd085fb602e82349'),'Observación correspondiente al estudio 0fb96a3322724885bd085fb602e82349.',UNHEX('14ef53c4f00649aba3ce2e8ad6400fe6'),'BT');
# Se craran 1 archivos para el estudio 0fb96a3322724885bd085fb602e82349
CALL insert_study_file (UNHEX('a8206fa56aaa4aa0b9f0ddd6f00989cb'),'Archivo 0.doc',UNHEX('0fb96a3322724885bd085fb602e82349'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('31cf6d7ede3a421697ea1a8eda29c782'),'Observación correspondiente al estudio 31cf6d7ede3a421697ea1a8eda29c782.',UNHEX('14ef53c4f00649aba3ce2e8ad6400fe6'),'UA');
# Se craran 9 archivos para el estudio 31cf6d7ede3a421697ea1a8eda29c782
CALL insert_study_file (UNHEX('80ef2b83f9d6417c8c117e2d0731ff40'),'Archivo 0.jpg',UNHEX('31cf6d7ede3a421697ea1a8eda29c782'));
CALL insert_study_file (UNHEX('89fbcadf91b9498fae6089e53e6dffaa'),'Archivo 1.doc',UNHEX('31cf6d7ede3a421697ea1a8eda29c782'));
CALL insert_study_file (UNHEX('6df0a912c1ba4ed5854ea02e7efae2b0'),'Archivo 2.jpg',UNHEX('31cf6d7ede3a421697ea1a8eda29c782'));
CALL insert_study_file (UNHEX('522808d1931f4f009359fe7e42c4c395'),'Archivo 3.jpg',UNHEX('31cf6d7ede3a421697ea1a8eda29c782'));
CALL insert_study_file (UNHEX('af973e82155e40bbaa202ed921262037'),'Archivo 4.jpg',UNHEX('31cf6d7ede3a421697ea1a8eda29c782'));
CALL insert_study_file (UNHEX('540750f4788940779524f7afaead0242'),'Archivo 5.pdf',UNHEX('31cf6d7ede3a421697ea1a8eda29c782'));
CALL insert_study_file (UNHEX('c2fba80e4dfa47bdb5c1dff052903fbb'),'Archivo 6.doc',UNHEX('31cf6d7ede3a421697ea1a8eda29c782'));
CALL insert_study_file (UNHEX('d864d1380296494f921209c93bd788b0'),'Archivo 7.doc',UNHEX('31cf6d7ede3a421697ea1a8eda29c782'));
CALL insert_study_file (UNHEX('43ade6ef69a747419c307ec88777499e'),'Archivo 8.txt',UNHEX('31cf6d7ede3a421697ea1a8eda29c782'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 4b8e9cd217544ccf984cacb1d14928c8
CALL insert_patient ('1951-02-18','2','F', UNHEX('4b8e9cd217544ccf984cacb1d14928c8'),'Consonni, Melony Eolanda','doctor');
# Se craran 0 estudios para el paciente 4b8e9cd217544ccf984cacb1d14928c8
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente a1b10732ba984222aa1b87454129e938
CALL insert_patient ('1943-04-06','6','F', UNHEX('a1b10732ba984222aa1b87454129e938'),'Irvine, jody','doctor');
# Se craran 13 estudios para el paciente a1b10732ba984222aa1b87454129e938
CALL insert_study ('2014-07-31',UNHEX('9587afd4eac1422692572a8a89492355'),'Observación correspondiente al estudio 9587afd4eac1422692572a8a89492355.',UNHEX('a1b10732ba984222aa1b87454129e938'),'ET');
# Se craran 1 archivos para el estudio 9587afd4eac1422692572a8a89492355
CALL insert_study_file (UNHEX('0d0565c0e9c242ddbde5402e7a52f9dc'),'Archivo 0.jpg',UNHEX('9587afd4eac1422692572a8a89492355'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('212ca40b0c5f4eda8eb75814438702ea'),'Observación correspondiente al estudio 212ca40b0c5f4eda8eb75814438702ea.',UNHEX('a1b10732ba984222aa1b87454129e938'),'BT');
# Se craran 9 archivos para el estudio 212ca40b0c5f4eda8eb75814438702ea
CALL insert_study_file (UNHEX('705e08e75bf9424d99739028d6d16130'),'Archivo 0.pdf',UNHEX('212ca40b0c5f4eda8eb75814438702ea'));
CALL insert_study_file (UNHEX('a00c88ec58674c01a9e2926a1cc43c94'),'Archivo 1.pdf',UNHEX('212ca40b0c5f4eda8eb75814438702ea'));
CALL insert_study_file (UNHEX('e4cf267e28ab4c4a9b2a209ca229e51f'),'Archivo 2.pdf',UNHEX('212ca40b0c5f4eda8eb75814438702ea'));
CALL insert_study_file (UNHEX('f9f3f41f35df4264921443e3299c4785'),'Archivo 3.jpg',UNHEX('212ca40b0c5f4eda8eb75814438702ea'));
CALL insert_study_file (UNHEX('ca65abaf0f2240788adc86ee5bdb4c5e'),'Archivo 4.doc',UNHEX('212ca40b0c5f4eda8eb75814438702ea'));
CALL insert_study_file (UNHEX('8a9051a81f154ad48d142d479a8e690d'),'Archivo 5.txt',UNHEX('212ca40b0c5f4eda8eb75814438702ea'));
CALL insert_study_file (UNHEX('8dd85e7bebd04b22bbeb8a88f783537e'),'Archivo 6.doc',UNHEX('212ca40b0c5f4eda8eb75814438702ea'));
CALL insert_study_file (UNHEX('7beaa5ce547a4a2e8fbd23d6506d3966'),'Archivo 7.doc',UNHEX('212ca40b0c5f4eda8eb75814438702ea'));
CALL insert_study_file (UNHEX('05b430c368264162a88548df2efb6cb8'),'Archivo 8.pdf',UNHEX('212ca40b0c5f4eda8eb75814438702ea'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('7ddf3d5d49f44e68a964ba7916a858ec'),'Observación correspondiente al estudio 7ddf3d5d49f44e68a964ba7916a858ec.',UNHEX('a1b10732ba984222aa1b87454129e938'),'UA');
# Se craran 4 archivos para el estudio 7ddf3d5d49f44e68a964ba7916a858ec
CALL insert_study_file (UNHEX('3a8cd9d795194a948254a15ac5d9711d'),'Archivo 0.pdf',UNHEX('7ddf3d5d49f44e68a964ba7916a858ec'));
CALL insert_study_file (UNHEX('b36c96d053004304977192e354b0015f'),'Archivo 1.jpg',UNHEX('7ddf3d5d49f44e68a964ba7916a858ec'));
CALL insert_study_file (UNHEX('b61841e27fbf4a3385b2c4ff1a7f7662'),'Archivo 2.jpg',UNHEX('7ddf3d5d49f44e68a964ba7916a858ec'));
CALL insert_study_file (UNHEX('6966ed1973f14875b72c5670f9687419'),'Archivo 3.jpg',UNHEX('7ddf3d5d49f44e68a964ba7916a858ec'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('30d2e5d42eee490d93504ce547b0206b'),'Observación correspondiente al estudio 30d2e5d42eee490d93504ce547b0206b.',UNHEX('a1b10732ba984222aa1b87454129e938'),'ET');
# Se craran 8 archivos para el estudio 30d2e5d42eee490d93504ce547b0206b
CALL insert_study_file (UNHEX('481a5cf5830f4c7b857cd4a3d46b7490'),'Archivo 0.pdf',UNHEX('30d2e5d42eee490d93504ce547b0206b'));
CALL insert_study_file (UNHEX('6b1a778c73aa498aae112d98b6b7295a'),'Archivo 1.pdf',UNHEX('30d2e5d42eee490d93504ce547b0206b'));
CALL insert_study_file (UNHEX('6019ddd01d9246269cbf7e41e9232e3c'),'Archivo 2.pdf',UNHEX('30d2e5d42eee490d93504ce547b0206b'));
CALL insert_study_file (UNHEX('97ba35e397614e509fff551cda9311a3'),'Archivo 3.pdf',UNHEX('30d2e5d42eee490d93504ce547b0206b'));
CALL insert_study_file (UNHEX('a55ef1b2dc5e43d3a6088f804ba07603'),'Archivo 4.txt',UNHEX('30d2e5d42eee490d93504ce547b0206b'));
CALL insert_study_file (UNHEX('7ef8c21106ee4b598b1ddf87cd5467d3'),'Archivo 5.pdf',UNHEX('30d2e5d42eee490d93504ce547b0206b'));
CALL insert_study_file (UNHEX('e36698b4ca3f4874a4bfbf62cdaeb126'),'Archivo 6.txt',UNHEX('30d2e5d42eee490d93504ce547b0206b'));
CALL insert_study_file (UNHEX('4df9d501652846719a3def33eab706ed'),'Archivo 7.doc',UNHEX('30d2e5d42eee490d93504ce547b0206b'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('eb03decda51f41078bce61d1f980ced1'),'Observación correspondiente al estudio eb03decda51f41078bce61d1f980ced1.',UNHEX('a1b10732ba984222aa1b87454129e938'),'BT');
# Se craran 8 archivos para el estudio eb03decda51f41078bce61d1f980ced1
CALL insert_study_file (UNHEX('22e5cb361f794689acb3dbbeb2959e4d'),'Archivo 0.jpg',UNHEX('eb03decda51f41078bce61d1f980ced1'));
CALL insert_study_file (UNHEX('7ea6f92a04ca4f8d87ee6a9a9db265ae'),'Archivo 1.doc',UNHEX('eb03decda51f41078bce61d1f980ced1'));
CALL insert_study_file (UNHEX('a24ea4296dab4b25a211a710f505eeab'),'Archivo 2.txt',UNHEX('eb03decda51f41078bce61d1f980ced1'));
CALL insert_study_file (UNHEX('6ef992fac6534304a71ed0b1831cc4ce'),'Archivo 3.jpg',UNHEX('eb03decda51f41078bce61d1f980ced1'));
CALL insert_study_file (UNHEX('13f77a614707418295d82b12f56e30f5'),'Archivo 4.doc',UNHEX('eb03decda51f41078bce61d1f980ced1'));
CALL insert_study_file (UNHEX('ef6519e6674345158d58589bc4640a18'),'Archivo 5.jpg',UNHEX('eb03decda51f41078bce61d1f980ced1'));
CALL insert_study_file (UNHEX('712ae5372b0a4c6ca7e9fd0e9eea280a'),'Archivo 6.pdf',UNHEX('eb03decda51f41078bce61d1f980ced1'));
CALL insert_study_file (UNHEX('ee5f03097e8e4e769af00b9e0c0a6788'),'Archivo 7.pdf',UNHEX('eb03decda51f41078bce61d1f980ced1'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('cd7f09162aec4273b577171c6832a09a'),'Observación correspondiente al estudio cd7f09162aec4273b577171c6832a09a.',UNHEX('a1b10732ba984222aa1b87454129e938'),'ET');
# Se craran 3 archivos para el estudio cd7f09162aec4273b577171c6832a09a
CALL insert_study_file (UNHEX('a9274277b98a4adb9768fdca807db759'),'Archivo 0.txt',UNHEX('cd7f09162aec4273b577171c6832a09a'));
CALL insert_study_file (UNHEX('9f46b2201b2c414da5f15e9e0fce8703'),'Archivo 1.doc',UNHEX('cd7f09162aec4273b577171c6832a09a'));
CALL insert_study_file (UNHEX('ad7ef9f621d84dc9ae5a3117274c3579'),'Archivo 2.pdf',UNHEX('cd7f09162aec4273b577171c6832a09a'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('cae16013e2794df492b7b3b859319f74'),'Observación correspondiente al estudio cae16013e2794df492b7b3b859319f74.',UNHEX('a1b10732ba984222aa1b87454129e938'),'ET');
# Se craran 0 archivos para el estudio cae16013e2794df492b7b3b859319f74
# Fin creacion de archivos
CALL insert_study ('2014-07-29',UNHEX('c53f28eef5d54ee4b0a6fbc458f6dafc'),'Observación correspondiente al estudio c53f28eef5d54ee4b0a6fbc458f6dafc.',UNHEX('a1b10732ba984222aa1b87454129e938'),'UA');
# Se craran 2 archivos para el estudio c53f28eef5d54ee4b0a6fbc458f6dafc
CALL insert_study_file (UNHEX('e8012c295f5948fca14985ba94869287'),'Archivo 0.jpg',UNHEX('c53f28eef5d54ee4b0a6fbc458f6dafc'));
CALL insert_study_file (UNHEX('769d9a874eb647b99af10e34bba1c7a2'),'Archivo 1.jpg',UNHEX('c53f28eef5d54ee4b0a6fbc458f6dafc'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('4cba8a2e8831445aade68da6a07bcb84'),'Observación correspondiente al estudio 4cba8a2e8831445aade68da6a07bcb84.',UNHEX('a1b10732ba984222aa1b87454129e938'),'UA');
# Se craran 5 archivos para el estudio 4cba8a2e8831445aade68da6a07bcb84
CALL insert_study_file (UNHEX('40afe1ea96b34acd81c7f3f808d11f3e'),'Archivo 0.jpg',UNHEX('4cba8a2e8831445aade68da6a07bcb84'));
CALL insert_study_file (UNHEX('cb285297c09940afb54878fe619cab0e'),'Archivo 1.doc',UNHEX('4cba8a2e8831445aade68da6a07bcb84'));
CALL insert_study_file (UNHEX('b4880ed597dd4c1c8f4786f0e2553e6b'),'Archivo 2.pdf',UNHEX('4cba8a2e8831445aade68da6a07bcb84'));
CALL insert_study_file (UNHEX('29666d3384e94d5ab261cc98beaee9ad'),'Archivo 3.pdf',UNHEX('4cba8a2e8831445aade68da6a07bcb84'));
CALL insert_study_file (UNHEX('9ec876cb34c44e6e91ad8761e8c5f217'),'Archivo 4.pdf',UNHEX('4cba8a2e8831445aade68da6a07bcb84'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('c951e9ea43454151aec3c77dcf346c30'),'Observación correspondiente al estudio c951e9ea43454151aec3c77dcf346c30.',UNHEX('a1b10732ba984222aa1b87454129e938'),'BT');
# Se craran 9 archivos para el estudio c951e9ea43454151aec3c77dcf346c30
CALL insert_study_file (UNHEX('f7f127ece1844fb1b38d2d1614cef35f'),'Archivo 0.pdf',UNHEX('c951e9ea43454151aec3c77dcf346c30'));
CALL insert_study_file (UNHEX('d5ed024781f343e6aaf6c7d54be026af'),'Archivo 1.doc',UNHEX('c951e9ea43454151aec3c77dcf346c30'));
CALL insert_study_file (UNHEX('cf89edd417964874af7eb2c5267d3792'),'Archivo 2.jpg',UNHEX('c951e9ea43454151aec3c77dcf346c30'));
CALL insert_study_file (UNHEX('e05ae8c905224f6ab48146a682672c0b'),'Archivo 3.jpg',UNHEX('c951e9ea43454151aec3c77dcf346c30'));
CALL insert_study_file (UNHEX('e7dd1e7e49cb4600975ff02b0d5e6aa8'),'Archivo 4.txt',UNHEX('c951e9ea43454151aec3c77dcf346c30'));
CALL insert_study_file (UNHEX('6cdc9acbcdf74ca0b83ea332d100f34a'),'Archivo 5.txt',UNHEX('c951e9ea43454151aec3c77dcf346c30'));
CALL insert_study_file (UNHEX('eb9d5625f3144ff4899d09bfcd8c59e0'),'Archivo 6.pdf',UNHEX('c951e9ea43454151aec3c77dcf346c30'));
CALL insert_study_file (UNHEX('402bdf47e5474f5ca2ba1ff6c664f9f5'),'Archivo 7.jpg',UNHEX('c951e9ea43454151aec3c77dcf346c30'));
CALL insert_study_file (UNHEX('8045a7bfa01e45d896a44cdb96b3b8aa'),'Archivo 8.txt',UNHEX('c951e9ea43454151aec3c77dcf346c30'));
# Fin creacion de archivos
CALL insert_study ('2014-07-29',UNHEX('4608b8a8dfc94549a0abffce1366c651'),'Observación correspondiente al estudio 4608b8a8dfc94549a0abffce1366c651.',UNHEX('a1b10732ba984222aa1b87454129e938'),'ET');
# Se craran 4 archivos para el estudio 4608b8a8dfc94549a0abffce1366c651
CALL insert_study_file (UNHEX('eb5b2faa286948ef97ddf7b75e031e62'),'Archivo 0.pdf',UNHEX('4608b8a8dfc94549a0abffce1366c651'));
CALL insert_study_file (UNHEX('ce5e0cae2e9149f9b2cd8df4f9e19ecc'),'Archivo 1.pdf',UNHEX('4608b8a8dfc94549a0abffce1366c651'));
CALL insert_study_file (UNHEX('3869e4146dcc4239ae42bedb937c6d6b'),'Archivo 2.doc',UNHEX('4608b8a8dfc94549a0abffce1366c651'));
CALL insert_study_file (UNHEX('547375d8e3ba4c44ab99902e495b1d56'),'Archivo 3.txt',UNHEX('4608b8a8dfc94549a0abffce1366c651'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('e9ea73cbb8b445c1b663430e3e65e814'),'Observación correspondiente al estudio e9ea73cbb8b445c1b663430e3e65e814.',UNHEX('a1b10732ba984222aa1b87454129e938'),'ET');
# Se craran 2 archivos para el estudio e9ea73cbb8b445c1b663430e3e65e814
CALL insert_study_file (UNHEX('2523993277534c3ea8ab5e8247c22fbf'),'Archivo 0.txt',UNHEX('e9ea73cbb8b445c1b663430e3e65e814'));
CALL insert_study_file (UNHEX('193f32f740934ffe819e619e063bc013'),'Archivo 1.doc',UNHEX('e9ea73cbb8b445c1b663430e3e65e814'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('91742864cef747879f8625a32d96cd5d'),'Observación correspondiente al estudio 91742864cef747879f8625a32d96cd5d.',UNHEX('a1b10732ba984222aa1b87454129e938'),'UA');
# Se craran 7 archivos para el estudio 91742864cef747879f8625a32d96cd5d
CALL insert_study_file (UNHEX('d26b923101b84a09b01e6336f092dfd2'),'Archivo 0.pdf',UNHEX('91742864cef747879f8625a32d96cd5d'));
CALL insert_study_file (UNHEX('6867bf480e9a456585c364ff442dc107'),'Archivo 1.pdf',UNHEX('91742864cef747879f8625a32d96cd5d'));
CALL insert_study_file (UNHEX('797d669579b1407d8b679b551d8619ac'),'Archivo 2.doc',UNHEX('91742864cef747879f8625a32d96cd5d'));
CALL insert_study_file (UNHEX('3decdcca333041bfa94673b3f43f1704'),'Archivo 3.pdf',UNHEX('91742864cef747879f8625a32d96cd5d'));
CALL insert_study_file (UNHEX('2282bae86a8a4b519fd9e17858d0b0e6'),'Archivo 4.txt',UNHEX('91742864cef747879f8625a32d96cd5d'));
CALL insert_study_file (UNHEX('8353540366e24950a8935e4a8678b6e5'),'Archivo 5.doc',UNHEX('91742864cef747879f8625a32d96cd5d'));
CALL insert_study_file (UNHEX('a9eeb13fd8304d35ad1026d2356a5bd5'),'Archivo 6.pdf',UNHEX('91742864cef747879f8625a32d96cd5d'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 368c14c55b9b4c45a660028a8808df13
CALL insert_patient ('1958-05-05','1','F', UNHEX('368c14c55b9b4c45a660028a8808df13'),'Shrouf, Lyndy sophi','doctor');
# Se craran 16 estudios para el paciente 368c14c55b9b4c45a660028a8808df13
CALL insert_study ('2014-08-03',UNHEX('8632c2f19e504f52a907a507cf045394'),'Observación correspondiente al estudio 8632c2f19e504f52a907a507cf045394.',UNHEX('368c14c55b9b4c45a660028a8808df13'),'ET');
# Se craran 6 archivos para el estudio 8632c2f19e504f52a907a507cf045394
CALL insert_study_file (UNHEX('e51d919166a44d8aa8998d5dca806dfd'),'Archivo 0.txt',UNHEX('8632c2f19e504f52a907a507cf045394'));
CALL insert_study_file (UNHEX('9e07d6fda5684eff8b316e649a54f2f6'),'Archivo 1.pdf',UNHEX('8632c2f19e504f52a907a507cf045394'));
CALL insert_study_file (UNHEX('0a78efdce84a48dfbecb7a73f0c7ad0d'),'Archivo 2.txt',UNHEX('8632c2f19e504f52a907a507cf045394'));
CALL insert_study_file (UNHEX('077901b80e374af8af855490643e5f7b'),'Archivo 3.jpg',UNHEX('8632c2f19e504f52a907a507cf045394'));
CALL insert_study_file (UNHEX('4bb6645a966b42a98c71d4d1b1a373f3'),'Archivo 4.pdf',UNHEX('8632c2f19e504f52a907a507cf045394'));
CALL insert_study_file (UNHEX('c6be89bd2e9a4f69a9a707d210be905e'),'Archivo 5.pdf',UNHEX('8632c2f19e504f52a907a507cf045394'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('887c876cba1c449f9b313d78c82859fc'),'Observación correspondiente al estudio 887c876cba1c449f9b313d78c82859fc.',UNHEX('368c14c55b9b4c45a660028a8808df13'),'ET');
# Se craran 6 archivos para el estudio 887c876cba1c449f9b313d78c82859fc
CALL insert_study_file (UNHEX('44048ce5f5a14c87adc6d601e7ce6c55'),'Archivo 0.txt',UNHEX('887c876cba1c449f9b313d78c82859fc'));
CALL insert_study_file (UNHEX('950ffaf557cd40638e70edc77dd024e3'),'Archivo 1.doc',UNHEX('887c876cba1c449f9b313d78c82859fc'));
CALL insert_study_file (UNHEX('743d117e5be24496a4e4d7125b8ca476'),'Archivo 2.pdf',UNHEX('887c876cba1c449f9b313d78c82859fc'));
CALL insert_study_file (UNHEX('c5dd0872aeed47208915860c936be637'),'Archivo 3.jpg',UNHEX('887c876cba1c449f9b313d78c82859fc'));
CALL insert_study_file (UNHEX('1d48ed795c1f45b6a2c12b4d299fed6d'),'Archivo 4.jpg',UNHEX('887c876cba1c449f9b313d78c82859fc'));
CALL insert_study_file (UNHEX('7fa7c92deddc4fdc9f740c21034fe88e'),'Archivo 5.pdf',UNHEX('887c876cba1c449f9b313d78c82859fc'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('63b5dfc9c7ff4cdcb2b1e40f680074b8'),'Observación correspondiente al estudio 63b5dfc9c7ff4cdcb2b1e40f680074b8.',UNHEX('368c14c55b9b4c45a660028a8808df13'),'BT');
# Se craran 1 archivos para el estudio 63b5dfc9c7ff4cdcb2b1e40f680074b8
CALL insert_study_file (UNHEX('a1f21a91c8654eeeae4c2851d07292d5'),'Archivo 0.txt',UNHEX('63b5dfc9c7ff4cdcb2b1e40f680074b8'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('6e99a4ea5f7342d899b65523915f54d7'),'Observación correspondiente al estudio 6e99a4ea5f7342d899b65523915f54d7.',UNHEX('368c14c55b9b4c45a660028a8808df13'),'BT');
# Se craran 6 archivos para el estudio 6e99a4ea5f7342d899b65523915f54d7
CALL insert_study_file (UNHEX('653214f42d584182a44ce2068e5a5478'),'Archivo 0.txt',UNHEX('6e99a4ea5f7342d899b65523915f54d7'));
CALL insert_study_file (UNHEX('fccf8906df8f4774b0dcdd56de62ab19'),'Archivo 1.txt',UNHEX('6e99a4ea5f7342d899b65523915f54d7'));
CALL insert_study_file (UNHEX('19b13b4dad0244fca15ab3efa7fce353'),'Archivo 2.jpg',UNHEX('6e99a4ea5f7342d899b65523915f54d7'));
CALL insert_study_file (UNHEX('9a1db344c4a94964be8a393f1788ee46'),'Archivo 3.pdf',UNHEX('6e99a4ea5f7342d899b65523915f54d7'));
CALL insert_study_file (UNHEX('435e7136cdf546579ae1215fc070f650'),'Archivo 4.doc',UNHEX('6e99a4ea5f7342d899b65523915f54d7'));
CALL insert_study_file (UNHEX('cc00206c2eb14610b4ab19b67b3e460e'),'Archivo 5.doc',UNHEX('6e99a4ea5f7342d899b65523915f54d7'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('e1e6de42bb324440abe901606f1f7146'),'Observación correspondiente al estudio e1e6de42bb324440abe901606f1f7146.',UNHEX('368c14c55b9b4c45a660028a8808df13'),'ET');
# Se craran 6 archivos para el estudio e1e6de42bb324440abe901606f1f7146
CALL insert_study_file (UNHEX('9374ae6565514f97aef7e2a5d0d6703f'),'Archivo 0.jpg',UNHEX('e1e6de42bb324440abe901606f1f7146'));
CALL insert_study_file (UNHEX('ffe0a0dc227b4667944442e34d4f7d27'),'Archivo 1.jpg',UNHEX('e1e6de42bb324440abe901606f1f7146'));
CALL insert_study_file (UNHEX('dce51b2a29034d0a907443507eb55eb1'),'Archivo 2.doc',UNHEX('e1e6de42bb324440abe901606f1f7146'));
CALL insert_study_file (UNHEX('4f1fa9ebf6bf46e59750370fd462af2a'),'Archivo 3.doc',UNHEX('e1e6de42bb324440abe901606f1f7146'));
CALL insert_study_file (UNHEX('9da2307a2c854322bd7e1fd131bd8a95'),'Archivo 4.txt',UNHEX('e1e6de42bb324440abe901606f1f7146'));
CALL insert_study_file (UNHEX('568b7e90b8984347b92673ca2913683f'),'Archivo 5.jpg',UNHEX('e1e6de42bb324440abe901606f1f7146'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('8a2bd9aec8b342d3a444b1a48583b6e3'),'Observación correspondiente al estudio 8a2bd9aec8b342d3a444b1a48583b6e3.',UNHEX('368c14c55b9b4c45a660028a8808df13'),'UA');
# Se craran 8 archivos para el estudio 8a2bd9aec8b342d3a444b1a48583b6e3
CALL insert_study_file (UNHEX('496dfb09b09f48e58635447e75f1899b'),'Archivo 0.doc',UNHEX('8a2bd9aec8b342d3a444b1a48583b6e3'));
CALL insert_study_file (UNHEX('b739b9f09d1d456f842bd28962628a0a'),'Archivo 1.doc',UNHEX('8a2bd9aec8b342d3a444b1a48583b6e3'));
CALL insert_study_file (UNHEX('c1723633fdc1492bb1570c8f6ef50761'),'Archivo 2.jpg',UNHEX('8a2bd9aec8b342d3a444b1a48583b6e3'));
CALL insert_study_file (UNHEX('75afc5eee4b04bb49a2f43c9cbff65c0'),'Archivo 3.jpg',UNHEX('8a2bd9aec8b342d3a444b1a48583b6e3'));
CALL insert_study_file (UNHEX('d3de67a88a4841f5b38025e657a3117a'),'Archivo 4.jpg',UNHEX('8a2bd9aec8b342d3a444b1a48583b6e3'));
CALL insert_study_file (UNHEX('71f67afebf14499783162892a67b7f25'),'Archivo 5.txt',UNHEX('8a2bd9aec8b342d3a444b1a48583b6e3'));
CALL insert_study_file (UNHEX('143cd75926de439baf219ffaff1901dd'),'Archivo 6.txt',UNHEX('8a2bd9aec8b342d3a444b1a48583b6e3'));
CALL insert_study_file (UNHEX('9dcfd5f7029741d3962c0d8a1fefc559'),'Archivo 7.jpg',UNHEX('8a2bd9aec8b342d3a444b1a48583b6e3'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('c3b479ee4961457394af9935ed3bf52f'),'Observación correspondiente al estudio c3b479ee4961457394af9935ed3bf52f.',UNHEX('368c14c55b9b4c45a660028a8808df13'),'UA');
# Se craran 1 archivos para el estudio c3b479ee4961457394af9935ed3bf52f
CALL insert_study_file (UNHEX('b3b1460e3590472d814f0be172a752d7'),'Archivo 0.jpg',UNHEX('c3b479ee4961457394af9935ed3bf52f'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('8ffea34ca9ed4697b166bfa9daeb442c'),'Observación correspondiente al estudio 8ffea34ca9ed4697b166bfa9daeb442c.',UNHEX('368c14c55b9b4c45a660028a8808df13'),'BT');
# Se craran 1 archivos para el estudio 8ffea34ca9ed4697b166bfa9daeb442c
CALL insert_study_file (UNHEX('2c0da21cd13a4a6cbb0a8d7597e55b50'),'Archivo 0.jpg',UNHEX('8ffea34ca9ed4697b166bfa9daeb442c'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('93ef0842bfc245d9a036800c217e2fa2'),'Observación correspondiente al estudio 93ef0842bfc245d9a036800c217e2fa2.',UNHEX('368c14c55b9b4c45a660028a8808df13'),'ET');
# Se craran 2 archivos para el estudio 93ef0842bfc245d9a036800c217e2fa2
CALL insert_study_file (UNHEX('3403c94a06534c6c89aeb336a38baff8'),'Archivo 0.jpg',UNHEX('93ef0842bfc245d9a036800c217e2fa2'));
CALL insert_study_file (UNHEX('b909ea3506834e448e0963f5953f67b3'),'Archivo 1.txt',UNHEX('93ef0842bfc245d9a036800c217e2fa2'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('a1f0b49986234de28664196cd467b412'),'Observación correspondiente al estudio a1f0b49986234de28664196cd467b412.',UNHEX('368c14c55b9b4c45a660028a8808df13'),'ET');
# Se craran 4 archivos para el estudio a1f0b49986234de28664196cd467b412
CALL insert_study_file (UNHEX('64de49c499c34c5eb0078d8fb683ec70'),'Archivo 0.jpg',UNHEX('a1f0b49986234de28664196cd467b412'));
CALL insert_study_file (UNHEX('1609b6906ffb423e8e5ba2b14403cf6f'),'Archivo 1.txt',UNHEX('a1f0b49986234de28664196cd467b412'));
CALL insert_study_file (UNHEX('57417ba749dd460e9bee621b30ccce38'),'Archivo 2.txt',UNHEX('a1f0b49986234de28664196cd467b412'));
CALL insert_study_file (UNHEX('a7a487079c7d4705a0a3d07bd3c8f104'),'Archivo 3.jpg',UNHEX('a1f0b49986234de28664196cd467b412'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('7259b85fa4e64203ad6d22083e81b71b'),'Observación correspondiente al estudio 7259b85fa4e64203ad6d22083e81b71b.',UNHEX('368c14c55b9b4c45a660028a8808df13'),'ET');
# Se craran 8 archivos para el estudio 7259b85fa4e64203ad6d22083e81b71b
CALL insert_study_file (UNHEX('a1de878846164c8fbc01c0334839876d'),'Archivo 0.pdf',UNHEX('7259b85fa4e64203ad6d22083e81b71b'));
CALL insert_study_file (UNHEX('e8fcf22eb7644a5f9b667256b6bec244'),'Archivo 1.pdf',UNHEX('7259b85fa4e64203ad6d22083e81b71b'));
CALL insert_study_file (UNHEX('35e76a17f1334a85aebd5c481d1a78fa'),'Archivo 2.pdf',UNHEX('7259b85fa4e64203ad6d22083e81b71b'));
CALL insert_study_file (UNHEX('3b2cfe00d03a4f39b764cd1ca9522117'),'Archivo 3.jpg',UNHEX('7259b85fa4e64203ad6d22083e81b71b'));
CALL insert_study_file (UNHEX('62f3eab6cec64daab2ffe62f1d5cc2ee'),'Archivo 4.txt',UNHEX('7259b85fa4e64203ad6d22083e81b71b'));
CALL insert_study_file (UNHEX('f6ad1d20206d4d1b84227512a6fb7824'),'Archivo 5.txt',UNHEX('7259b85fa4e64203ad6d22083e81b71b'));
CALL insert_study_file (UNHEX('dfb4b5a4afda4cbf98c419d4573e81ab'),'Archivo 6.pdf',UNHEX('7259b85fa4e64203ad6d22083e81b71b'));
CALL insert_study_file (UNHEX('8a4101207fad4451bcfd3dd0d46f6301'),'Archivo 7.txt',UNHEX('7259b85fa4e64203ad6d22083e81b71b'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('d6e1b67aa7154c86bf58a90ceb1aa309'),'Observación correspondiente al estudio d6e1b67aa7154c86bf58a90ceb1aa309.',UNHEX('368c14c55b9b4c45a660028a8808df13'),'BT');
# Se craran 5 archivos para el estudio d6e1b67aa7154c86bf58a90ceb1aa309
CALL insert_study_file (UNHEX('d517578f9506404a8a7f3db8fb09bb98'),'Archivo 0.pdf',UNHEX('d6e1b67aa7154c86bf58a90ceb1aa309'));
CALL insert_study_file (UNHEX('f88a792864db49b7a16ff8be3d77f5d0'),'Archivo 1.pdf',UNHEX('d6e1b67aa7154c86bf58a90ceb1aa309'));
CALL insert_study_file (UNHEX('48931fe99c274c93ab8efb1de6cef906'),'Archivo 2.txt',UNHEX('d6e1b67aa7154c86bf58a90ceb1aa309'));
CALL insert_study_file (UNHEX('c41037e306e643a28f7206250b4ff957'),'Archivo 3.doc',UNHEX('d6e1b67aa7154c86bf58a90ceb1aa309'));
CALL insert_study_file (UNHEX('6c16664f32a141038459737e75fa717b'),'Archivo 4.pdf',UNHEX('d6e1b67aa7154c86bf58a90ceb1aa309'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('be94687ef71a4c0b8a1b0a5f7576ce36'),'Observación correspondiente al estudio be94687ef71a4c0b8a1b0a5f7576ce36.',UNHEX('368c14c55b9b4c45a660028a8808df13'),'UA');
# Se craran 5 archivos para el estudio be94687ef71a4c0b8a1b0a5f7576ce36
CALL insert_study_file (UNHEX('6bc5140819904284b1832d4fb95b77b0'),'Archivo 0.doc',UNHEX('be94687ef71a4c0b8a1b0a5f7576ce36'));
CALL insert_study_file (UNHEX('c775b264249d47d48c0d7dcecee06d53'),'Archivo 1.jpg',UNHEX('be94687ef71a4c0b8a1b0a5f7576ce36'));
CALL insert_study_file (UNHEX('42d2959db35d44aa8f71a4fe50b1b7b9'),'Archivo 2.txt',UNHEX('be94687ef71a4c0b8a1b0a5f7576ce36'));
CALL insert_study_file (UNHEX('46b9f8a7087b46a18c1c56755cec9e1a'),'Archivo 3.pdf',UNHEX('be94687ef71a4c0b8a1b0a5f7576ce36'));
CALL insert_study_file (UNHEX('2d17cc3a74dd4826b7d35f910be7ae32'),'Archivo 4.doc',UNHEX('be94687ef71a4c0b8a1b0a5f7576ce36'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('1e3d4524db39493c9ac10e6532cea437'),'Observación correspondiente al estudio 1e3d4524db39493c9ac10e6532cea437.',UNHEX('368c14c55b9b4c45a660028a8808df13'),'ET');
# Se craran 5 archivos para el estudio 1e3d4524db39493c9ac10e6532cea437
CALL insert_study_file (UNHEX('adfdeed47040453f8d730bb470315a05'),'Archivo 0.pdf',UNHEX('1e3d4524db39493c9ac10e6532cea437'));
CALL insert_study_file (UNHEX('f39ee3ee9beb4519abfad88f4cd8b119'),'Archivo 1.txt',UNHEX('1e3d4524db39493c9ac10e6532cea437'));
CALL insert_study_file (UNHEX('9739b6d219184a4b8d3cd7e781029457'),'Archivo 2.jpg',UNHEX('1e3d4524db39493c9ac10e6532cea437'));
CALL insert_study_file (UNHEX('9ccaa6f026a34dd2b42624a69da6f4e4'),'Archivo 3.pdf',UNHEX('1e3d4524db39493c9ac10e6532cea437'));
CALL insert_study_file (UNHEX('2a369b9b10704435998e7559d29396e5'),'Archivo 4.doc',UNHEX('1e3d4524db39493c9ac10e6532cea437'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('17070ccd130b431da0d1a8c882c53eef'),'Observación correspondiente al estudio 17070ccd130b431da0d1a8c882c53eef.',UNHEX('368c14c55b9b4c45a660028a8808df13'),'UA');
# Se craran 9 archivos para el estudio 17070ccd130b431da0d1a8c882c53eef
CALL insert_study_file (UNHEX('813457df14c84e10aed28818a79e41f7'),'Archivo 0.jpg',UNHEX('17070ccd130b431da0d1a8c882c53eef'));
CALL insert_study_file (UNHEX('b8719f8170e44eb799560c7bdf17b70c'),'Archivo 1.doc',UNHEX('17070ccd130b431da0d1a8c882c53eef'));
CALL insert_study_file (UNHEX('c5b3bbc4fe1447e9b7280ad1a70735ce'),'Archivo 2.doc',UNHEX('17070ccd130b431da0d1a8c882c53eef'));
CALL insert_study_file (UNHEX('b5c21e83b2254764b047ecca8e4585ce'),'Archivo 3.doc',UNHEX('17070ccd130b431da0d1a8c882c53eef'));
CALL insert_study_file (UNHEX('d06f79bf6708465189ea85abaa39d5a0'),'Archivo 4.txt',UNHEX('17070ccd130b431da0d1a8c882c53eef'));
CALL insert_study_file (UNHEX('89da3e4e4e70481eb5d800eb78ee26c8'),'Archivo 5.doc',UNHEX('17070ccd130b431da0d1a8c882c53eef'));
CALL insert_study_file (UNHEX('47a21d7a577e4e1fb11ec14d8dd2d514'),'Archivo 6.doc',UNHEX('17070ccd130b431da0d1a8c882c53eef'));
CALL insert_study_file (UNHEX('5261a3450fb94cd6952282b37b85daa4'),'Archivo 7.doc',UNHEX('17070ccd130b431da0d1a8c882c53eef'));
CALL insert_study_file (UNHEX('7c0b4067397a4c78ad6e5e4164946c4f'),'Archivo 8.txt',UNHEX('17070ccd130b431da0d1a8c882c53eef'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('a3e2839e2d144768988c3d714144fb78'),'Observación correspondiente al estudio a3e2839e2d144768988c3d714144fb78.',UNHEX('368c14c55b9b4c45a660028a8808df13'),'ET');
# Se craran 3 archivos para el estudio a3e2839e2d144768988c3d714144fb78
CALL insert_study_file (UNHEX('337c721181c24abeb2431304b1099577'),'Archivo 0.doc',UNHEX('a3e2839e2d144768988c3d714144fb78'));
CALL insert_study_file (UNHEX('f9e084e01ad1426883e124f59706dbda'),'Archivo 1.doc',UNHEX('a3e2839e2d144768988c3d714144fb78'));
CALL insert_study_file (UNHEX('7498f5829c2446f4b19d794a1e32a33e'),'Archivo 2.pdf',UNHEX('a3e2839e2d144768988c3d714144fb78'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 4d2a9faf57b34a83ac8c4c6150071f38
CALL insert_patient ('1946-06-19','5','M', UNHEX('4d2a9faf57b34a83ac8c4c6150071f38'),'Blakelock, heriberto ric','doctor');
# Se craran 18 estudios para el paciente 4d2a9faf57b34a83ac8c4c6150071f38
CALL insert_study ('2014-08-02',UNHEX('962a269aaa1b4f1cb6280c9d81a1f0a7'),'Observación correspondiente al estudio 962a269aaa1b4f1cb6280c9d81a1f0a7.',UNHEX('4d2a9faf57b34a83ac8c4c6150071f38'),'ET');
# Se craran 8 archivos para el estudio 962a269aaa1b4f1cb6280c9d81a1f0a7
CALL insert_study_file (UNHEX('3eb2a5992c224ae89a16507743b311b5'),'Archivo 0.txt',UNHEX('962a269aaa1b4f1cb6280c9d81a1f0a7'));
CALL insert_study_file (UNHEX('22b7fe03e5a54e029f8cdd6cd960c3b4'),'Archivo 1.doc',UNHEX('962a269aaa1b4f1cb6280c9d81a1f0a7'));
CALL insert_study_file (UNHEX('5f7988cc2bac4acbbdabb3dd1c90b9a5'),'Archivo 2.jpg',UNHEX('962a269aaa1b4f1cb6280c9d81a1f0a7'));
CALL insert_study_file (UNHEX('6d67d3de5c5647648e3af286658aec67'),'Archivo 3.txt',UNHEX('962a269aaa1b4f1cb6280c9d81a1f0a7'));
CALL insert_study_file (UNHEX('a887f81c68bb41668dbb0f26fbcaa323'),'Archivo 4.pdf',UNHEX('962a269aaa1b4f1cb6280c9d81a1f0a7'));
CALL insert_study_file (UNHEX('a93621c2f5634e88900da041966b02f3'),'Archivo 5.txt',UNHEX('962a269aaa1b4f1cb6280c9d81a1f0a7'));
CALL insert_study_file (UNHEX('ecd66b3eab854b27a4fb2fdfb191fb7a'),'Archivo 6.doc',UNHEX('962a269aaa1b4f1cb6280c9d81a1f0a7'));
CALL insert_study_file (UNHEX('984637787df24511b5c2680c55f12eae'),'Archivo 7.pdf',UNHEX('962a269aaa1b4f1cb6280c9d81a1f0a7'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('3bbe289c6b2a474eab0cd8ee95db3d73'),'Observación correspondiente al estudio 3bbe289c6b2a474eab0cd8ee95db3d73.',UNHEX('4d2a9faf57b34a83ac8c4c6150071f38'),'ET');
# Se craran 9 archivos para el estudio 3bbe289c6b2a474eab0cd8ee95db3d73
CALL insert_study_file (UNHEX('c8ca634152ed458ab88eb21e864a42cf'),'Archivo 0.txt',UNHEX('3bbe289c6b2a474eab0cd8ee95db3d73'));
CALL insert_study_file (UNHEX('8e8ddfedab684beda7918a896fbcf40c'),'Archivo 1.doc',UNHEX('3bbe289c6b2a474eab0cd8ee95db3d73'));
CALL insert_study_file (UNHEX('228296e789e345a486b4954fe510bbae'),'Archivo 2.txt',UNHEX('3bbe289c6b2a474eab0cd8ee95db3d73'));
CALL insert_study_file (UNHEX('948e93a808c74e27b419b1e4dc389b5b'),'Archivo 3.jpg',UNHEX('3bbe289c6b2a474eab0cd8ee95db3d73'));
CALL insert_study_file (UNHEX('6657673077dc466893da2fe8a0efe773'),'Archivo 4.txt',UNHEX('3bbe289c6b2a474eab0cd8ee95db3d73'));
CALL insert_study_file (UNHEX('b06f61e69b9a412db57eea1dc9939142'),'Archivo 5.jpg',UNHEX('3bbe289c6b2a474eab0cd8ee95db3d73'));
CALL insert_study_file (UNHEX('6a8e72e837a74c1886593467a718e9fa'),'Archivo 6.jpg',UNHEX('3bbe289c6b2a474eab0cd8ee95db3d73'));
CALL insert_study_file (UNHEX('3479747b794c4aaaad3baf6662296d63'),'Archivo 7.doc',UNHEX('3bbe289c6b2a474eab0cd8ee95db3d73'));
CALL insert_study_file (UNHEX('984b661f424f46829739940f909578cd'),'Archivo 8.txt',UNHEX('3bbe289c6b2a474eab0cd8ee95db3d73'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('cefeb29a6cf74dafa43a509a60e3a116'),'Observación correspondiente al estudio cefeb29a6cf74dafa43a509a60e3a116.',UNHEX('4d2a9faf57b34a83ac8c4c6150071f38'),'BT');
# Se craran 0 archivos para el estudio cefeb29a6cf74dafa43a509a60e3a116
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('e8b185f9075d4eec8ed083081f75eec1'),'Observación correspondiente al estudio e8b185f9075d4eec8ed083081f75eec1.',UNHEX('4d2a9faf57b34a83ac8c4c6150071f38'),'BT');
# Se craran 4 archivos para el estudio e8b185f9075d4eec8ed083081f75eec1
CALL insert_study_file (UNHEX('3fd93e06a39e4f52851377f92ffd80c6'),'Archivo 0.txt',UNHEX('e8b185f9075d4eec8ed083081f75eec1'));
CALL insert_study_file (UNHEX('baece37ce4834d5b8345d66d9f1ddbc3'),'Archivo 1.jpg',UNHEX('e8b185f9075d4eec8ed083081f75eec1'));
CALL insert_study_file (UNHEX('4aa62a3a81e542e09b5855e8b85ef50a'),'Archivo 2.jpg',UNHEX('e8b185f9075d4eec8ed083081f75eec1'));
CALL insert_study_file (UNHEX('1d64910fdf8149a98c915499dee1cf70'),'Archivo 3.jpg',UNHEX('e8b185f9075d4eec8ed083081f75eec1'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('d5c6b285af884d849c0313f1dd1d1772'),'Observación correspondiente al estudio d5c6b285af884d849c0313f1dd1d1772.',UNHEX('4d2a9faf57b34a83ac8c4c6150071f38'),'ET');
# Se craran 6 archivos para el estudio d5c6b285af884d849c0313f1dd1d1772
CALL insert_study_file (UNHEX('61b2dc063a2f4fc493eb3cceb09e116e'),'Archivo 0.pdf',UNHEX('d5c6b285af884d849c0313f1dd1d1772'));
CALL insert_study_file (UNHEX('a5a0e949059f4200bb9677f582fd474d'),'Archivo 1.txt',UNHEX('d5c6b285af884d849c0313f1dd1d1772'));
CALL insert_study_file (UNHEX('1a8c0a7812434cd298651c53a1e3085f'),'Archivo 2.txt',UNHEX('d5c6b285af884d849c0313f1dd1d1772'));
CALL insert_study_file (UNHEX('bfa210436a5042198f764fdca3625025'),'Archivo 3.jpg',UNHEX('d5c6b285af884d849c0313f1dd1d1772'));
CALL insert_study_file (UNHEX('0d1110247a6940249d1265cf8b52226a'),'Archivo 4.jpg',UNHEX('d5c6b285af884d849c0313f1dd1d1772'));
CALL insert_study_file (UNHEX('8dce3448b6c84fde9805141033d6d67b'),'Archivo 5.txt',UNHEX('d5c6b285af884d849c0313f1dd1d1772'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('510f6a53f81a46da837a567ab4d6920a'),'Observación correspondiente al estudio 510f6a53f81a46da837a567ab4d6920a.',UNHEX('4d2a9faf57b34a83ac8c4c6150071f38'),'BT');
# Se craran 8 archivos para el estudio 510f6a53f81a46da837a567ab4d6920a
CALL insert_study_file (UNHEX('1da93c4c813f4269959e29e395cec585'),'Archivo 0.doc',UNHEX('510f6a53f81a46da837a567ab4d6920a'));
CALL insert_study_file (UNHEX('bb97c51871ae4cf78278d1937e754f6e'),'Archivo 1.jpg',UNHEX('510f6a53f81a46da837a567ab4d6920a'));
CALL insert_study_file (UNHEX('137256cec7e7461cb9e9e0cb1449e4af'),'Archivo 2.txt',UNHEX('510f6a53f81a46da837a567ab4d6920a'));
CALL insert_study_file (UNHEX('47fd831ea0ce445baf8460f54b764fbb'),'Archivo 3.pdf',UNHEX('510f6a53f81a46da837a567ab4d6920a'));
CALL insert_study_file (UNHEX('8b42180f58344e4990c3f46ecda15a59'),'Archivo 4.jpg',UNHEX('510f6a53f81a46da837a567ab4d6920a'));
CALL insert_study_file (UNHEX('901f62ebcc5d4d4eaf845ed389e6533f'),'Archivo 5.doc',UNHEX('510f6a53f81a46da837a567ab4d6920a'));
CALL insert_study_file (UNHEX('8cc42a09a5254e3bba0f55d2ea284b1a'),'Archivo 6.doc',UNHEX('510f6a53f81a46da837a567ab4d6920a'));
CALL insert_study_file (UNHEX('562b6c6dd64c4969918e7730e94c7276'),'Archivo 7.doc',UNHEX('510f6a53f81a46da837a567ab4d6920a'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('7ba5c94bc89b45669641e1f01a32f183'),'Observación correspondiente al estudio 7ba5c94bc89b45669641e1f01a32f183.',UNHEX('4d2a9faf57b34a83ac8c4c6150071f38'),'UA');
# Se craran 8 archivos para el estudio 7ba5c94bc89b45669641e1f01a32f183
CALL insert_study_file (UNHEX('cdb920995a6e4843b854c574394faf8a'),'Archivo 0.txt',UNHEX('7ba5c94bc89b45669641e1f01a32f183'));
CALL insert_study_file (UNHEX('ef3028ff33a5405fa2d7381a651825ed'),'Archivo 1.doc',UNHEX('7ba5c94bc89b45669641e1f01a32f183'));
CALL insert_study_file (UNHEX('4358f42af8354dea932ea88387211f34'),'Archivo 2.txt',UNHEX('7ba5c94bc89b45669641e1f01a32f183'));
CALL insert_study_file (UNHEX('d9b19d9b963144c393d02aa79df14bcd'),'Archivo 3.jpg',UNHEX('7ba5c94bc89b45669641e1f01a32f183'));
CALL insert_study_file (UNHEX('d1e6a7dc4fcd4b7fbd7882dcd15459a4'),'Archivo 4.pdf',UNHEX('7ba5c94bc89b45669641e1f01a32f183'));
CALL insert_study_file (UNHEX('79e1fb7765774d1dbe06fefba4bb3555'),'Archivo 5.txt',UNHEX('7ba5c94bc89b45669641e1f01a32f183'));
CALL insert_study_file (UNHEX('8d95aab5ea9d41b5804806a63ba6b379'),'Archivo 6.txt',UNHEX('7ba5c94bc89b45669641e1f01a32f183'));
CALL insert_study_file (UNHEX('d988594c527f43d38091c562e6d47dfb'),'Archivo 7.jpg',UNHEX('7ba5c94bc89b45669641e1f01a32f183'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('8373f0e70b95459b9925aa663f3dfed1'),'Observación correspondiente al estudio 8373f0e70b95459b9925aa663f3dfed1.',UNHEX('4d2a9faf57b34a83ac8c4c6150071f38'),'UA');
# Se craran 3 archivos para el estudio 8373f0e70b95459b9925aa663f3dfed1
CALL insert_study_file (UNHEX('b98f214befd6430396614c80c1fb2d68'),'Archivo 0.jpg',UNHEX('8373f0e70b95459b9925aa663f3dfed1'));
CALL insert_study_file (UNHEX('b5984019efea4f2cb9494956becdcee7'),'Archivo 1.txt',UNHEX('8373f0e70b95459b9925aa663f3dfed1'));
CALL insert_study_file (UNHEX('d54188b09ccb4616a0cbfb45cf58ca2b'),'Archivo 2.txt',UNHEX('8373f0e70b95459b9925aa663f3dfed1'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('da1e4dbef1224bcda9f359fe0a4716ef'),'Observación correspondiente al estudio da1e4dbef1224bcda9f359fe0a4716ef.',UNHEX('4d2a9faf57b34a83ac8c4c6150071f38'),'ET');
# Se craran 6 archivos para el estudio da1e4dbef1224bcda9f359fe0a4716ef
CALL insert_study_file (UNHEX('9b36f7a4a39b47a188d01ac05abd219f'),'Archivo 0.pdf',UNHEX('da1e4dbef1224bcda9f359fe0a4716ef'));
CALL insert_study_file (UNHEX('75910efb798145e3ba91aa9ee153dcfc'),'Archivo 1.pdf',UNHEX('da1e4dbef1224bcda9f359fe0a4716ef'));
CALL insert_study_file (UNHEX('e8e45c7c3b69410091b488272f398f0a'),'Archivo 2.doc',UNHEX('da1e4dbef1224bcda9f359fe0a4716ef'));
CALL insert_study_file (UNHEX('5ac8fec12b544f11b260cdb2a3e2f9dd'),'Archivo 3.doc',UNHEX('da1e4dbef1224bcda9f359fe0a4716ef'));
CALL insert_study_file (UNHEX('bbdde7b0962b4bf5806496f16d2e4377'),'Archivo 4.jpg',UNHEX('da1e4dbef1224bcda9f359fe0a4716ef'));
CALL insert_study_file (UNHEX('2b3ea4b4f3f647f19c4097fdcdea0807'),'Archivo 5.jpg',UNHEX('da1e4dbef1224bcda9f359fe0a4716ef'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('3f0616bc15b94aa694fadf94e01e82ad'),'Observación correspondiente al estudio 3f0616bc15b94aa694fadf94e01e82ad.',UNHEX('4d2a9faf57b34a83ac8c4c6150071f38'),'ET');
# Se craran 4 archivos para el estudio 3f0616bc15b94aa694fadf94e01e82ad
CALL insert_study_file (UNHEX('8e1f8ab4a0294fd9ba3cfa559a672b93'),'Archivo 0.jpg',UNHEX('3f0616bc15b94aa694fadf94e01e82ad'));
CALL insert_study_file (UNHEX('416ae30b753543f69448eea36bce6bb5'),'Archivo 1.jpg',UNHEX('3f0616bc15b94aa694fadf94e01e82ad'));
CALL insert_study_file (UNHEX('a2dcf8a1fc46439ba3c8607c9e8d0b9e'),'Archivo 2.jpg',UNHEX('3f0616bc15b94aa694fadf94e01e82ad'));
CALL insert_study_file (UNHEX('cca6009226254f2088497060d1488861'),'Archivo 3.pdf',UNHEX('3f0616bc15b94aa694fadf94e01e82ad'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('389499bc982c43d1a3639ab620893052'),'Observación correspondiente al estudio 389499bc982c43d1a3639ab620893052.',UNHEX('4d2a9faf57b34a83ac8c4c6150071f38'),'ET');
# Se craran 6 archivos para el estudio 389499bc982c43d1a3639ab620893052
CALL insert_study_file (UNHEX('a871611664bf4b329827cbe50d5a2456'),'Archivo 0.jpg',UNHEX('389499bc982c43d1a3639ab620893052'));
CALL insert_study_file (UNHEX('629a3160dc614ed399feb0868d231ff4'),'Archivo 1.doc',UNHEX('389499bc982c43d1a3639ab620893052'));
CALL insert_study_file (UNHEX('ed1aa134ce314c70a7091568bed81a4b'),'Archivo 2.txt',UNHEX('389499bc982c43d1a3639ab620893052'));
CALL insert_study_file (UNHEX('16485a796fd54596aa33c2ae1da44b4e'),'Archivo 3.txt',UNHEX('389499bc982c43d1a3639ab620893052'));
CALL insert_study_file (UNHEX('ee5baf9f8c8f4a7aac5cdee954721a64'),'Archivo 4.pdf',UNHEX('389499bc982c43d1a3639ab620893052'));
CALL insert_study_file (UNHEX('b90235bffe6047fbb0ca989042f618b2'),'Archivo 5.txt',UNHEX('389499bc982c43d1a3639ab620893052'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('55c149eff46f4811acd8d0e246cfedac'),'Observación correspondiente al estudio 55c149eff46f4811acd8d0e246cfedac.',UNHEX('4d2a9faf57b34a83ac8c4c6150071f38'),'ET');
# Se craran 7 archivos para el estudio 55c149eff46f4811acd8d0e246cfedac
CALL insert_study_file (UNHEX('d5324701267849fe922051111a7d2dea'),'Archivo 0.txt',UNHEX('55c149eff46f4811acd8d0e246cfedac'));
CALL insert_study_file (UNHEX('6fad2212de9d4cffb8dbe3c7b0d7a18a'),'Archivo 1.txt',UNHEX('55c149eff46f4811acd8d0e246cfedac'));
CALL insert_study_file (UNHEX('344dca188761456a8212d491a978d290'),'Archivo 2.doc',UNHEX('55c149eff46f4811acd8d0e246cfedac'));
CALL insert_study_file (UNHEX('b0ca78edf4be48e29661f244a4680f78'),'Archivo 3.txt',UNHEX('55c149eff46f4811acd8d0e246cfedac'));
CALL insert_study_file (UNHEX('6551c84580d24921b01900e7255fca9c'),'Archivo 4.pdf',UNHEX('55c149eff46f4811acd8d0e246cfedac'));
CALL insert_study_file (UNHEX('ef0d0b619cac4beeb839868415aa38c6'),'Archivo 5.doc',UNHEX('55c149eff46f4811acd8d0e246cfedac'));
CALL insert_study_file (UNHEX('cf02cbb51cf5484cb0a38867f7f1521f'),'Archivo 6.doc',UNHEX('55c149eff46f4811acd8d0e246cfedac'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('b3c16510d93b49cb946b707241e2a4c3'),'Observación correspondiente al estudio b3c16510d93b49cb946b707241e2a4c3.',UNHEX('4d2a9faf57b34a83ac8c4c6150071f38'),'BT');
# Se craran 7 archivos para el estudio b3c16510d93b49cb946b707241e2a4c3
CALL insert_study_file (UNHEX('4019d2a1d4064a0cb5d71b4d8c5dcbb6'),'Archivo 0.txt',UNHEX('b3c16510d93b49cb946b707241e2a4c3'));
CALL insert_study_file (UNHEX('977a789a226e40a78c0cdeefc41a9a01'),'Archivo 1.doc',UNHEX('b3c16510d93b49cb946b707241e2a4c3'));
CALL insert_study_file (UNHEX('6090ee1b1b7849879dc6212f73edf4ea'),'Archivo 2.jpg',UNHEX('b3c16510d93b49cb946b707241e2a4c3'));
CALL insert_study_file (UNHEX('6383d2c7cea04986aab12b071eb1f9be'),'Archivo 3.jpg',UNHEX('b3c16510d93b49cb946b707241e2a4c3'));
CALL insert_study_file (UNHEX('6f56d4a4b6b7447d8b73731af5dcd501'),'Archivo 4.pdf',UNHEX('b3c16510d93b49cb946b707241e2a4c3'));
CALL insert_study_file (UNHEX('ab95c0a079cb4bbda1352c2eb042cfcd'),'Archivo 5.txt',UNHEX('b3c16510d93b49cb946b707241e2a4c3'));
CALL insert_study_file (UNHEX('42495b2665a84725bf3b0a0570dacbe1'),'Archivo 6.jpg',UNHEX('b3c16510d93b49cb946b707241e2a4c3'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('0284c4384e1245a2b3ff2b1411dfdacb'),'Observación correspondiente al estudio 0284c4384e1245a2b3ff2b1411dfdacb.',UNHEX('4d2a9faf57b34a83ac8c4c6150071f38'),'UA');
# Se craran 2 archivos para el estudio 0284c4384e1245a2b3ff2b1411dfdacb
CALL insert_study_file (UNHEX('71a5c30690734159978b9eee2f8770b8'),'Archivo 0.doc',UNHEX('0284c4384e1245a2b3ff2b1411dfdacb'));
CALL insert_study_file (UNHEX('8618ad9983d744288f8714de53a7e62f'),'Archivo 1.doc',UNHEX('0284c4384e1245a2b3ff2b1411dfdacb'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('8464aa8e5ac343c8b4235fe50d7e770b'),'Observación correspondiente al estudio 8464aa8e5ac343c8b4235fe50d7e770b.',UNHEX('4d2a9faf57b34a83ac8c4c6150071f38'),'ET');
# Se craran 7 archivos para el estudio 8464aa8e5ac343c8b4235fe50d7e770b
CALL insert_study_file (UNHEX('48ca6165efc44d93b518091e7e65fde8'),'Archivo 0.pdf',UNHEX('8464aa8e5ac343c8b4235fe50d7e770b'));
CALL insert_study_file (UNHEX('000f5092b9c9464996290588e53aa189'),'Archivo 1.pdf',UNHEX('8464aa8e5ac343c8b4235fe50d7e770b'));
CALL insert_study_file (UNHEX('1e4056ca842c422aac21907e964f5848'),'Archivo 2.doc',UNHEX('8464aa8e5ac343c8b4235fe50d7e770b'));
CALL insert_study_file (UNHEX('51fa7ca4d04c497fa4ef865216a5c710'),'Archivo 3.doc',UNHEX('8464aa8e5ac343c8b4235fe50d7e770b'));
CALL insert_study_file (UNHEX('66404a21ee7e47959909d994af004ef8'),'Archivo 4.pdf',UNHEX('8464aa8e5ac343c8b4235fe50d7e770b'));
CALL insert_study_file (UNHEX('40bebe90cb83470f9cb9d8bfeb3db041'),'Archivo 5.doc',UNHEX('8464aa8e5ac343c8b4235fe50d7e770b'));
CALL insert_study_file (UNHEX('028253d3d131431c844af53ce4ce0ad1'),'Archivo 6.doc',UNHEX('8464aa8e5ac343c8b4235fe50d7e770b'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('ebca823b6cad45a38212be9f663b86de'),'Observación correspondiente al estudio ebca823b6cad45a38212be9f663b86de.',UNHEX('4d2a9faf57b34a83ac8c4c6150071f38'),'ET');
# Se craran 1 archivos para el estudio ebca823b6cad45a38212be9f663b86de
CALL insert_study_file (UNHEX('082bf52edf1f49628d4ed2e7e5e50c9f'),'Archivo 0.doc',UNHEX('ebca823b6cad45a38212be9f663b86de'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('2b9905bef7114b738e31e2d2452cfca3'),'Observación correspondiente al estudio 2b9905bef7114b738e31e2d2452cfca3.',UNHEX('4d2a9faf57b34a83ac8c4c6150071f38'),'UA');
# Se craran 7 archivos para el estudio 2b9905bef7114b738e31e2d2452cfca3
CALL insert_study_file (UNHEX('e509959a4a1545f4a45f58baa191fbd8'),'Archivo 0.txt',UNHEX('2b9905bef7114b738e31e2d2452cfca3'));
CALL insert_study_file (UNHEX('e55da8fb36df4ec5a16b8278649e0e0e'),'Archivo 1.pdf',UNHEX('2b9905bef7114b738e31e2d2452cfca3'));
CALL insert_study_file (UNHEX('6159ba55fce648669df592fbbbb8e58e'),'Archivo 2.pdf',UNHEX('2b9905bef7114b738e31e2d2452cfca3'));
CALL insert_study_file (UNHEX('9e2b8ab23fe1481892a6740ae6a26be6'),'Archivo 3.txt',UNHEX('2b9905bef7114b738e31e2d2452cfca3'));
CALL insert_study_file (UNHEX('c23ccf0bcb514b26973e228466a7b579'),'Archivo 4.pdf',UNHEX('2b9905bef7114b738e31e2d2452cfca3'));
CALL insert_study_file (UNHEX('e9b17f4c25e546a9b1bc2372e2779bf5'),'Archivo 5.txt',UNHEX('2b9905bef7114b738e31e2d2452cfca3'));
CALL insert_study_file (UNHEX('228b3520c4ac41d0bc2339d656092aa8'),'Archivo 6.doc',UNHEX('2b9905bef7114b738e31e2d2452cfca3'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('1dac451f582d438cbd55e9be3fe1ac7c'),'Observación correspondiente al estudio 1dac451f582d438cbd55e9be3fe1ac7c.',UNHEX('4d2a9faf57b34a83ac8c4c6150071f38'),'ET');
# Se craran 8 archivos para el estudio 1dac451f582d438cbd55e9be3fe1ac7c
CALL insert_study_file (UNHEX('3f0a87355a5b45baaea58373d0814c1f'),'Archivo 0.jpg',UNHEX('1dac451f582d438cbd55e9be3fe1ac7c'));
CALL insert_study_file (UNHEX('c64c351503dc45359fd2d6cd13ff4bd2'),'Archivo 1.txt',UNHEX('1dac451f582d438cbd55e9be3fe1ac7c'));
CALL insert_study_file (UNHEX('776224abc20e4de48b36ed179bedd7ee'),'Archivo 2.jpg',UNHEX('1dac451f582d438cbd55e9be3fe1ac7c'));
CALL insert_study_file (UNHEX('b031c5bd7efe4b1c9773fb87c0975363'),'Archivo 3.doc',UNHEX('1dac451f582d438cbd55e9be3fe1ac7c'));
CALL insert_study_file (UNHEX('26eff3cfd4f040a78eee20a06d850ee0'),'Archivo 4.doc',UNHEX('1dac451f582d438cbd55e9be3fe1ac7c'));
CALL insert_study_file (UNHEX('df270b0018804bdb99c490636ce3744a'),'Archivo 5.doc',UNHEX('1dac451f582d438cbd55e9be3fe1ac7c'));
CALL insert_study_file (UNHEX('548690c7754d430cb5876b9607517cc7'),'Archivo 6.txt',UNHEX('1dac451f582d438cbd55e9be3fe1ac7c'));
CALL insert_study_file (UNHEX('f2963371809a41a7ab4f12480d2f7c7c'),'Archivo 7.pdf',UNHEX('1dac451f582d438cbd55e9be3fe1ac7c'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 126e925821a4411cbaac4c55d01f0f82
CALL insert_patient ('1977-09-22','1','F', UNHEX('126e925821a4411cbaac4c55d01f0f82'),'Cuffaro, daryl','doctor');
# Se craran 5 estudios para el paciente 126e925821a4411cbaac4c55d01f0f82
CALL insert_study ('2014-08-01',UNHEX('4ecadaec9a9e4c37b63b4a07244c6696'),'Observación correspondiente al estudio 4ecadaec9a9e4c37b63b4a07244c6696.',UNHEX('126e925821a4411cbaac4c55d01f0f82'),'BT');
# Se craran 1 archivos para el estudio 4ecadaec9a9e4c37b63b4a07244c6696
CALL insert_study_file (UNHEX('22035e8a7d9e41869f89f03a2e606208'),'Archivo 0.pdf',UNHEX('4ecadaec9a9e4c37b63b4a07244c6696'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('bea91b365d664015b0fe41093d5fa283'),'Observación correspondiente al estudio bea91b365d664015b0fe41093d5fa283.',UNHEX('126e925821a4411cbaac4c55d01f0f82'),'BT');
# Se craran 8 archivos para el estudio bea91b365d664015b0fe41093d5fa283
CALL insert_study_file (UNHEX('f2b767cf5bdc4042876b7f28580ec487'),'Archivo 0.jpg',UNHEX('bea91b365d664015b0fe41093d5fa283'));
CALL insert_study_file (UNHEX('ae77333f240046d781a40251c6ff054a'),'Archivo 1.doc',UNHEX('bea91b365d664015b0fe41093d5fa283'));
CALL insert_study_file (UNHEX('b35c03aea2e148f0a3301b360a47a6c0'),'Archivo 2.doc',UNHEX('bea91b365d664015b0fe41093d5fa283'));
CALL insert_study_file (UNHEX('eee897210e1c48398f833cf59732a9ab'),'Archivo 3.doc',UNHEX('bea91b365d664015b0fe41093d5fa283'));
CALL insert_study_file (UNHEX('adb8571d923b40b191b63cabd74abec6'),'Archivo 4.doc',UNHEX('bea91b365d664015b0fe41093d5fa283'));
CALL insert_study_file (UNHEX('abc13cd6fee34e46bf9d51b2d8134b68'),'Archivo 5.doc',UNHEX('bea91b365d664015b0fe41093d5fa283'));
CALL insert_study_file (UNHEX('cab7ad2fed2444309de7e67493026fac'),'Archivo 6.doc',UNHEX('bea91b365d664015b0fe41093d5fa283'));
CALL insert_study_file (UNHEX('1454687d627f409fa51ce78ce8f4fa5a'),'Archivo 7.doc',UNHEX('bea91b365d664015b0fe41093d5fa283'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('388fdc50ecba48839ea80963b6ed5535'),'Observación correspondiente al estudio 388fdc50ecba48839ea80963b6ed5535.',UNHEX('126e925821a4411cbaac4c55d01f0f82'),'BT');
# Se craran 3 archivos para el estudio 388fdc50ecba48839ea80963b6ed5535
CALL insert_study_file (UNHEX('8a9c780294eb4764973275667ba95270'),'Archivo 0.jpg',UNHEX('388fdc50ecba48839ea80963b6ed5535'));
CALL insert_study_file (UNHEX('be1e9e2705544123b78aae10ee64153c'),'Archivo 1.pdf',UNHEX('388fdc50ecba48839ea80963b6ed5535'));
CALL insert_study_file (UNHEX('4f3e1715a2e14e2ca128929105907b22'),'Archivo 2.doc',UNHEX('388fdc50ecba48839ea80963b6ed5535'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('73ff3d079931483eb58f114e7e4ae8e6'),'Observación correspondiente al estudio 73ff3d079931483eb58f114e7e4ae8e6.',UNHEX('126e925821a4411cbaac4c55d01f0f82'),'ET');
# Se craran 2 archivos para el estudio 73ff3d079931483eb58f114e7e4ae8e6
CALL insert_study_file (UNHEX('c79a494b83b449999c67fe2ab9e3b7b4'),'Archivo 0.jpg',UNHEX('73ff3d079931483eb58f114e7e4ae8e6'));
CALL insert_study_file (UNHEX('b3750206e6f344ae85cc18bca4ecf612'),'Archivo 1.txt',UNHEX('73ff3d079931483eb58f114e7e4ae8e6'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('3a2da949194743b5bba879dddb7c6d3e'),'Observación correspondiente al estudio 3a2da949194743b5bba879dddb7c6d3e.',UNHEX('126e925821a4411cbaac4c55d01f0f82'),'BT');
# Se craran 0 archivos para el estudio 3a2da949194743b5bba879dddb7c6d3e
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente b70b5d28add745eeb4a576e6179af503
CALL insert_patient ('1945-05-30','1','M', UNHEX('b70b5d28add745eeb4a576e6179af503'),'Rosetti, tris ewen','doctor');
# Se craran 1 estudios para el paciente b70b5d28add745eeb4a576e6179af503
CALL insert_study ('2014-08-03',UNHEX('969a54732f924fd89ed50ab9172cd0cc'),'Observación correspondiente al estudio 969a54732f924fd89ed50ab9172cd0cc.',UNHEX('b70b5d28add745eeb4a576e6179af503'),'BT');
# Se craran 1 archivos para el estudio 969a54732f924fd89ed50ab9172cd0cc
CALL insert_study_file (UNHEX('75363e370c2a44a28579141d0059f79b'),'Archivo 0.pdf',UNHEX('969a54732f924fd89ed50ab9172cd0cc'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 8b93de305db342da8535039c8c8b57dc
CALL insert_patient ('1983-02-20','4','M', UNHEX('8b93de305db342da8535039c8c8b57dc'),'Silva, Napoleon Jehu','doctor');
# Se craran 8 estudios para el paciente 8b93de305db342da8535039c8c8b57dc
CALL insert_study ('2014-07-30',UNHEX('33152918a07346a496cc3c5dcbd8eb18'),'Observación correspondiente al estudio 33152918a07346a496cc3c5dcbd8eb18.',UNHEX('8b93de305db342da8535039c8c8b57dc'),'BT');
# Se craran 4 archivos para el estudio 33152918a07346a496cc3c5dcbd8eb18
CALL insert_study_file (UNHEX('c0e95cc61e2e4876a07da55e393f3484'),'Archivo 0.jpg',UNHEX('33152918a07346a496cc3c5dcbd8eb18'));
CALL insert_study_file (UNHEX('6c8f802e0dbd4990bebbeb6b919d39bf'),'Archivo 1.jpg',UNHEX('33152918a07346a496cc3c5dcbd8eb18'));
CALL insert_study_file (UNHEX('e29d8e519a3646bd8042ab4c9665806f'),'Archivo 2.pdf',UNHEX('33152918a07346a496cc3c5dcbd8eb18'));
CALL insert_study_file (UNHEX('90d260bb035440c8ad2761bbb1b76975'),'Archivo 3.jpg',UNHEX('33152918a07346a496cc3c5dcbd8eb18'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('3398076610804872ae491279c57af57b'),'Observación correspondiente al estudio 3398076610804872ae491279c57af57b.',UNHEX('8b93de305db342da8535039c8c8b57dc'),'ET');
# Se craran 1 archivos para el estudio 3398076610804872ae491279c57af57b
CALL insert_study_file (UNHEX('84289c5a726a4b94800c9e1dae8da090'),'Archivo 0.doc',UNHEX('3398076610804872ae491279c57af57b'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('75e76ea99c8841e29352a8215642eeb2'),'Observación correspondiente al estudio 75e76ea99c8841e29352a8215642eeb2.',UNHEX('8b93de305db342da8535039c8c8b57dc'),'BT');
# Se craran 0 archivos para el estudio 75e76ea99c8841e29352a8215642eeb2
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('b7b98aa9bdf94e1b8cd57a21d946d349'),'Observación correspondiente al estudio b7b98aa9bdf94e1b8cd57a21d946d349.',UNHEX('8b93de305db342da8535039c8c8b57dc'),'ET');
# Se craran 0 archivos para el estudio b7b98aa9bdf94e1b8cd57a21d946d349
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('000ab21d189149ac8b25debac6b976ba'),'Observación correspondiente al estudio 000ab21d189149ac8b25debac6b976ba.',UNHEX('8b93de305db342da8535039c8c8b57dc'),'BT');
# Se craran 5 archivos para el estudio 000ab21d189149ac8b25debac6b976ba
CALL insert_study_file (UNHEX('3732c2941b7d4241aa11de9ef1925e45'),'Archivo 0.doc',UNHEX('000ab21d189149ac8b25debac6b976ba'));
CALL insert_study_file (UNHEX('6686d9b1d03d4c408d47e5d72c81d489'),'Archivo 1.jpg',UNHEX('000ab21d189149ac8b25debac6b976ba'));
CALL insert_study_file (UNHEX('e95576c6092749b3b19360bf4c7b77cf'),'Archivo 2.doc',UNHEX('000ab21d189149ac8b25debac6b976ba'));
CALL insert_study_file (UNHEX('8a66b800410c4ad69af6d6b96d0433d3'),'Archivo 3.doc',UNHEX('000ab21d189149ac8b25debac6b976ba'));
CALL insert_study_file (UNHEX('952519f03fcf46278b3012dc15281c39'),'Archivo 4.txt',UNHEX('000ab21d189149ac8b25debac6b976ba'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('bfa4d8db1c454f989be56867ff39590b'),'Observación correspondiente al estudio bfa4d8db1c454f989be56867ff39590b.',UNHEX('8b93de305db342da8535039c8c8b57dc'),'UA');
# Se craran 4 archivos para el estudio bfa4d8db1c454f989be56867ff39590b
CALL insert_study_file (UNHEX('823cb365c9a14895a6ccca33ab0c59f4'),'Archivo 0.doc',UNHEX('bfa4d8db1c454f989be56867ff39590b'));
CALL insert_study_file (UNHEX('8e18b148f1ee4419b73ecbcdf6a87737'),'Archivo 1.txt',UNHEX('bfa4d8db1c454f989be56867ff39590b'));
CALL insert_study_file (UNHEX('4a7488529cd147569e1230d0a18e5549'),'Archivo 2.jpg',UNHEX('bfa4d8db1c454f989be56867ff39590b'));
CALL insert_study_file (UNHEX('beaa805880f4492c871c2a6ff4b34ee6'),'Archivo 3.pdf',UNHEX('bfa4d8db1c454f989be56867ff39590b'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('7141a4dfcec949b08ee6522fe284f428'),'Observación correspondiente al estudio 7141a4dfcec949b08ee6522fe284f428.',UNHEX('8b93de305db342da8535039c8c8b57dc'),'BT');
# Se craran 1 archivos para el estudio 7141a4dfcec949b08ee6522fe284f428
CALL insert_study_file (UNHEX('3453e099f58c4fa59b4cf5e1121ca286'),'Archivo 0.txt',UNHEX('7141a4dfcec949b08ee6522fe284f428'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('ec8c73a469ea4e5e85eff4098045d1de'),'Observación correspondiente al estudio ec8c73a469ea4e5e85eff4098045d1de.',UNHEX('8b93de305db342da8535039c8c8b57dc'),'UA');
# Se craran 9 archivos para el estudio ec8c73a469ea4e5e85eff4098045d1de
CALL insert_study_file (UNHEX('ce0032fd1b054430852f2a42ec512b74'),'Archivo 0.txt',UNHEX('ec8c73a469ea4e5e85eff4098045d1de'));
CALL insert_study_file (UNHEX('45779d5435b34ec4abacac52cd65c515'),'Archivo 1.jpg',UNHEX('ec8c73a469ea4e5e85eff4098045d1de'));
CALL insert_study_file (UNHEX('cbb3ee2d723f4cc584328378c0728917'),'Archivo 2.pdf',UNHEX('ec8c73a469ea4e5e85eff4098045d1de'));
CALL insert_study_file (UNHEX('9b6847c403d44a51a47cc3543a6c1f83'),'Archivo 3.txt',UNHEX('ec8c73a469ea4e5e85eff4098045d1de'));
CALL insert_study_file (UNHEX('94b6e695292f4caeac914f3d2518e6be'),'Archivo 4.pdf',UNHEX('ec8c73a469ea4e5e85eff4098045d1de'));
CALL insert_study_file (UNHEX('ed1e28f31d8f407ba1a9557953460e45'),'Archivo 5.txt',UNHEX('ec8c73a469ea4e5e85eff4098045d1de'));
CALL insert_study_file (UNHEX('10e9999280c04ec28c0a4c112b985367'),'Archivo 6.jpg',UNHEX('ec8c73a469ea4e5e85eff4098045d1de'));
CALL insert_study_file (UNHEX('3c2783a3c8924b5798087597747c2e01'),'Archivo 7.doc',UNHEX('ec8c73a469ea4e5e85eff4098045d1de'));
CALL insert_study_file (UNHEX('f613b8347a234e5187960a3ddc9964c4'),'Archivo 8.doc',UNHEX('ec8c73a469ea4e5e85eff4098045d1de'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente d6d57de8ccf040728943423d4348cb17
CALL insert_patient ('1940-09-22','3','M', UNHEX('d6d57de8ccf040728943423d4348cb17'),'Szent-Gyorgi, Han Horatio','doctor');
# Se craran 5 estudios para el paciente d6d57de8ccf040728943423d4348cb17
CALL insert_study ('2014-08-04',UNHEX('b8130ddf59be433e9df71276eeb388e8'),'Observación correspondiente al estudio b8130ddf59be433e9df71276eeb388e8.',UNHEX('d6d57de8ccf040728943423d4348cb17'),'UA');
# Se craran 4 archivos para el estudio b8130ddf59be433e9df71276eeb388e8
CALL insert_study_file (UNHEX('b670953ea15c4e6197275572fb09ed8d'),'Archivo 0.txt',UNHEX('b8130ddf59be433e9df71276eeb388e8'));
CALL insert_study_file (UNHEX('c16fbf21fd00465b8947dac8bc262a20'),'Archivo 1.jpg',UNHEX('b8130ddf59be433e9df71276eeb388e8'));
CALL insert_study_file (UNHEX('14d81243310944139bcd564163f208e3'),'Archivo 2.pdf',UNHEX('b8130ddf59be433e9df71276eeb388e8'));
CALL insert_study_file (UNHEX('f4c82d60f7f246aa96f4a3c4345255f1'),'Archivo 3.doc',UNHEX('b8130ddf59be433e9df71276eeb388e8'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('6d22da1583534d94a7be0a839bc83478'),'Observación correspondiente al estudio 6d22da1583534d94a7be0a839bc83478.',UNHEX('d6d57de8ccf040728943423d4348cb17'),'UA');
# Se craran 4 archivos para el estudio 6d22da1583534d94a7be0a839bc83478
CALL insert_study_file (UNHEX('d6007c717ebf48228cf6dfb03686d44d'),'Archivo 0.pdf',UNHEX('6d22da1583534d94a7be0a839bc83478'));
CALL insert_study_file (UNHEX('133c5cce15054f77882ddb3465d85aef'),'Archivo 1.jpg',UNHEX('6d22da1583534d94a7be0a839bc83478'));
CALL insert_study_file (UNHEX('5d3d6120727b46afa21c3e8bdd41b137'),'Archivo 2.txt',UNHEX('6d22da1583534d94a7be0a839bc83478'));
CALL insert_study_file (UNHEX('cdeab7665dba404eb4daa0f965df23ae'),'Archivo 3.doc',UNHEX('6d22da1583534d94a7be0a839bc83478'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('facf86e6833241939978d22267625832'),'Observación correspondiente al estudio facf86e6833241939978d22267625832.',UNHEX('d6d57de8ccf040728943423d4348cb17'),'BT');
# Se craran 2 archivos para el estudio facf86e6833241939978d22267625832
CALL insert_study_file (UNHEX('f71ed87887fe4dceb4ee684f30090fdb'),'Archivo 0.jpg',UNHEX('facf86e6833241939978d22267625832'));
CALL insert_study_file (UNHEX('56f4f69c0bd840d3847e86cd4ed18299'),'Archivo 1.pdf',UNHEX('facf86e6833241939978d22267625832'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('dcf1cd231c6942f1a8ffcfd3d0600110'),'Observación correspondiente al estudio dcf1cd231c6942f1a8ffcfd3d0600110.',UNHEX('d6d57de8ccf040728943423d4348cb17'),'BT');
# Se craran 7 archivos para el estudio dcf1cd231c6942f1a8ffcfd3d0600110
CALL insert_study_file (UNHEX('3aee2224469e47879e15e7886456a1c0'),'Archivo 0.txt',UNHEX('dcf1cd231c6942f1a8ffcfd3d0600110'));
CALL insert_study_file (UNHEX('c9e2de075b5c4636a00b35c62d4113cc'),'Archivo 1.jpg',UNHEX('dcf1cd231c6942f1a8ffcfd3d0600110'));
CALL insert_study_file (UNHEX('0461db20e45e47acb1c2adef0378bda4'),'Archivo 2.doc',UNHEX('dcf1cd231c6942f1a8ffcfd3d0600110'));
CALL insert_study_file (UNHEX('521a81ca76e14bc9b60da223b18bdad9'),'Archivo 3.pdf',UNHEX('dcf1cd231c6942f1a8ffcfd3d0600110'));
CALL insert_study_file (UNHEX('2c5fe9d606e847898fd0b92202e4f050'),'Archivo 4.doc',UNHEX('dcf1cd231c6942f1a8ffcfd3d0600110'));
CALL insert_study_file (UNHEX('3444dfdbaf60487188bd973dd47a6a4f'),'Archivo 5.doc',UNHEX('dcf1cd231c6942f1a8ffcfd3d0600110'));
CALL insert_study_file (UNHEX('06294094e3bb4338b1ebfc41f82c16da'),'Archivo 6.jpg',UNHEX('dcf1cd231c6942f1a8ffcfd3d0600110'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('af92c6e133a94355a0a546649bf271c9'),'Observación correspondiente al estudio af92c6e133a94355a0a546649bf271c9.',UNHEX('d6d57de8ccf040728943423d4348cb17'),'UA');
# Se craran 2 archivos para el estudio af92c6e133a94355a0a546649bf271c9
CALL insert_study_file (UNHEX('dc4cdd1f634e4921a76afa595c1dab1f'),'Archivo 0.jpg',UNHEX('af92c6e133a94355a0a546649bf271c9'));
CALL insert_study_file (UNHEX('00a6ab1390734b318730dcf46431ab82'),'Archivo 1.txt',UNHEX('af92c6e133a94355a0a546649bf271c9'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente c9800a48665b4b6095767c08a6ca89ca
CALL insert_patient ('1984-12-21','1','M', UNHEX('c9800a48665b4b6095767c08a6ca89ca'),'Sherr, Anatollo edik','doctor');
# Se craran 16 estudios para el paciente c9800a48665b4b6095767c08a6ca89ca
CALL insert_study ('2014-07-31',UNHEX('ebe064f04764451c981bce152a29ea22'),'Observación correspondiente al estudio ebe064f04764451c981bce152a29ea22.',UNHEX('c9800a48665b4b6095767c08a6ca89ca'),'UA');
# Se craran 5 archivos para el estudio ebe064f04764451c981bce152a29ea22
CALL insert_study_file (UNHEX('e23660d4abb045ad989b36a2bb8c03d0'),'Archivo 0.pdf',UNHEX('ebe064f04764451c981bce152a29ea22'));
CALL insert_study_file (UNHEX('a9bac29720ba4f5f9d0af52f03db7284'),'Archivo 1.jpg',UNHEX('ebe064f04764451c981bce152a29ea22'));
CALL insert_study_file (UNHEX('511789057f964e6a8220c91b36b0a174'),'Archivo 2.txt',UNHEX('ebe064f04764451c981bce152a29ea22'));
CALL insert_study_file (UNHEX('503beb25f8134fa6b94c84a3e8a2941f'),'Archivo 3.txt',UNHEX('ebe064f04764451c981bce152a29ea22'));
CALL insert_study_file (UNHEX('71270cca7b294f06ad7ab24344283288'),'Archivo 4.doc',UNHEX('ebe064f04764451c981bce152a29ea22'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('605c4ebb305a4dd98ae837b069adba14'),'Observación correspondiente al estudio 605c4ebb305a4dd98ae837b069adba14.',UNHEX('c9800a48665b4b6095767c08a6ca89ca'),'BT');
# Se craran 5 archivos para el estudio 605c4ebb305a4dd98ae837b069adba14
CALL insert_study_file (UNHEX('3d3406ed2731467abb7054dec7dfb97b'),'Archivo 0.doc',UNHEX('605c4ebb305a4dd98ae837b069adba14'));
CALL insert_study_file (UNHEX('ad4070b08a384ba7943aaf8f28d43e6e'),'Archivo 1.pdf',UNHEX('605c4ebb305a4dd98ae837b069adba14'));
CALL insert_study_file (UNHEX('bcf9ef872ed44ff79ca2b63dc3f77c7d'),'Archivo 2.jpg',UNHEX('605c4ebb305a4dd98ae837b069adba14'));
CALL insert_study_file (UNHEX('f3973f50b6a34d3fbd0c9a72069ff688'),'Archivo 3.pdf',UNHEX('605c4ebb305a4dd98ae837b069adba14'));
CALL insert_study_file (UNHEX('9dec6435abbb44daaf46312b0046c476'),'Archivo 4.doc',UNHEX('605c4ebb305a4dd98ae837b069adba14'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('03c9ad6d672346f8a9f65a16e3bb1b16'),'Observación correspondiente al estudio 03c9ad6d672346f8a9f65a16e3bb1b16.',UNHEX('c9800a48665b4b6095767c08a6ca89ca'),'BT');
# Se craran 7 archivos para el estudio 03c9ad6d672346f8a9f65a16e3bb1b16
CALL insert_study_file (UNHEX('24fd313fa92646a98a5504141cacbf67'),'Archivo 0.txt',UNHEX('03c9ad6d672346f8a9f65a16e3bb1b16'));
CALL insert_study_file (UNHEX('362ded5fd90745e78d22eb514a7d3134'),'Archivo 1.doc',UNHEX('03c9ad6d672346f8a9f65a16e3bb1b16'));
CALL insert_study_file (UNHEX('648dd5e0b80e461ca3e784d20b9b027d'),'Archivo 2.pdf',UNHEX('03c9ad6d672346f8a9f65a16e3bb1b16'));
CALL insert_study_file (UNHEX('c390dc83b0b44821aad96c167b3783b4'),'Archivo 3.pdf',UNHEX('03c9ad6d672346f8a9f65a16e3bb1b16'));
CALL insert_study_file (UNHEX('aaffc4dc3c884bb08ae4fb32f141d30a'),'Archivo 4.pdf',UNHEX('03c9ad6d672346f8a9f65a16e3bb1b16'));
CALL insert_study_file (UNHEX('68807d2fe92346ef8ed3da9ebe3b9cbb'),'Archivo 5.txt',UNHEX('03c9ad6d672346f8a9f65a16e3bb1b16'));
CALL insert_study_file (UNHEX('0c571f93102d441997efd2feb788a825'),'Archivo 6.doc',UNHEX('03c9ad6d672346f8a9f65a16e3bb1b16'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('2af7e1f439ee4571b76f1a52b0f26c81'),'Observación correspondiente al estudio 2af7e1f439ee4571b76f1a52b0f26c81.',UNHEX('c9800a48665b4b6095767c08a6ca89ca'),'BT');
# Se craran 7 archivos para el estudio 2af7e1f439ee4571b76f1a52b0f26c81
CALL insert_study_file (UNHEX('95df635c7c4b41ceb66e31705f971850'),'Archivo 0.doc',UNHEX('2af7e1f439ee4571b76f1a52b0f26c81'));
CALL insert_study_file (UNHEX('52d41d2d6c7146b8ae614f948ee9f6c2'),'Archivo 1.doc',UNHEX('2af7e1f439ee4571b76f1a52b0f26c81'));
CALL insert_study_file (UNHEX('e2d89ecdb8db45629d84689a5a6bec24'),'Archivo 2.pdf',UNHEX('2af7e1f439ee4571b76f1a52b0f26c81'));
CALL insert_study_file (UNHEX('d7c91b73dcea458689ff6f67be6a0455'),'Archivo 3.jpg',UNHEX('2af7e1f439ee4571b76f1a52b0f26c81'));
CALL insert_study_file (UNHEX('e0d03622819d4502b6f71ff265c0ea91'),'Archivo 4.pdf',UNHEX('2af7e1f439ee4571b76f1a52b0f26c81'));
CALL insert_study_file (UNHEX('7a4d39ae01c54016ae295312d876ca33'),'Archivo 5.doc',UNHEX('2af7e1f439ee4571b76f1a52b0f26c81'));
CALL insert_study_file (UNHEX('4deda4fa14a5455c9ea3ffdaff3130e1'),'Archivo 6.txt',UNHEX('2af7e1f439ee4571b76f1a52b0f26c81'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('b7a0e2d1265c448ab5d7ecc5bcd294d8'),'Observación correspondiente al estudio b7a0e2d1265c448ab5d7ecc5bcd294d8.',UNHEX('c9800a48665b4b6095767c08a6ca89ca'),'ET');
# Se craran 9 archivos para el estudio b7a0e2d1265c448ab5d7ecc5bcd294d8
CALL insert_study_file (UNHEX('72f48c2ad47447288743d3b6f7359d85'),'Archivo 0.txt',UNHEX('b7a0e2d1265c448ab5d7ecc5bcd294d8'));
CALL insert_study_file (UNHEX('e9642188ce0d4e96a7c223ea04b42b90'),'Archivo 1.doc',UNHEX('b7a0e2d1265c448ab5d7ecc5bcd294d8'));
CALL insert_study_file (UNHEX('c5cd48e11a3948e5a1791c038936a3bd'),'Archivo 2.jpg',UNHEX('b7a0e2d1265c448ab5d7ecc5bcd294d8'));
CALL insert_study_file (UNHEX('24cfe4c08b064090aadd1ad1946410ae'),'Archivo 3.doc',UNHEX('b7a0e2d1265c448ab5d7ecc5bcd294d8'));
CALL insert_study_file (UNHEX('a9583068fa334012891a63f84f9331f1'),'Archivo 4.txt',UNHEX('b7a0e2d1265c448ab5d7ecc5bcd294d8'));
CALL insert_study_file (UNHEX('c457d3119d534b49beccf960f5d54250'),'Archivo 5.doc',UNHEX('b7a0e2d1265c448ab5d7ecc5bcd294d8'));
CALL insert_study_file (UNHEX('7b4357554ca343f0a871bb8b9c1e700f'),'Archivo 6.pdf',UNHEX('b7a0e2d1265c448ab5d7ecc5bcd294d8'));
CALL insert_study_file (UNHEX('e4dc0dc26aef4aca96a25745bb860692'),'Archivo 7.jpg',UNHEX('b7a0e2d1265c448ab5d7ecc5bcd294d8'));
CALL insert_study_file (UNHEX('fcc3d505d5914173ae34a68a52fdf75a'),'Archivo 8.jpg',UNHEX('b7a0e2d1265c448ab5d7ecc5bcd294d8'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('ffc4902bcc384bf4b47de527b049cef7'),'Observación correspondiente al estudio ffc4902bcc384bf4b47de527b049cef7.',UNHEX('c9800a48665b4b6095767c08a6ca89ca'),'ET');
# Se craran 6 archivos para el estudio ffc4902bcc384bf4b47de527b049cef7
CALL insert_study_file (UNHEX('b86078c8a5284a02bf08518a0e068175'),'Archivo 0.pdf',UNHEX('ffc4902bcc384bf4b47de527b049cef7'));
CALL insert_study_file (UNHEX('bbd6ccdf71e14ffa8c60e2bc9975b253'),'Archivo 1.pdf',UNHEX('ffc4902bcc384bf4b47de527b049cef7'));
CALL insert_study_file (UNHEX('61607d3430984904a3e113d28c618eb4'),'Archivo 2.jpg',UNHEX('ffc4902bcc384bf4b47de527b049cef7'));
CALL insert_study_file (UNHEX('01fd0715ea434dc085b04a24062f7495'),'Archivo 3.jpg',UNHEX('ffc4902bcc384bf4b47de527b049cef7'));
CALL insert_study_file (UNHEX('a8552fc91deb460f8d733ecddb3821bd'),'Archivo 4.doc',UNHEX('ffc4902bcc384bf4b47de527b049cef7'));
CALL insert_study_file (UNHEX('ee53e22fe805483aa717d527125c59b3'),'Archivo 5.jpg',UNHEX('ffc4902bcc384bf4b47de527b049cef7'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('5ed6d8edf8bb4be6aefd97d78ea60609'),'Observación correspondiente al estudio 5ed6d8edf8bb4be6aefd97d78ea60609.',UNHEX('c9800a48665b4b6095767c08a6ca89ca'),'UA');
# Se craran 6 archivos para el estudio 5ed6d8edf8bb4be6aefd97d78ea60609
CALL insert_study_file (UNHEX('d563aa15f96f4dcca2c1b3994a79c4f2'),'Archivo 0.pdf',UNHEX('5ed6d8edf8bb4be6aefd97d78ea60609'));
CALL insert_study_file (UNHEX('afed904b0ed94869b9122d8e8d12ed2f'),'Archivo 1.pdf',UNHEX('5ed6d8edf8bb4be6aefd97d78ea60609'));
CALL insert_study_file (UNHEX('75237a6c5dfe472a8880604775fac77e'),'Archivo 2.jpg',UNHEX('5ed6d8edf8bb4be6aefd97d78ea60609'));
CALL insert_study_file (UNHEX('f491d7c3ce9f4161bfae368cdc631afc'),'Archivo 3.txt',UNHEX('5ed6d8edf8bb4be6aefd97d78ea60609'));
CALL insert_study_file (UNHEX('de1314c20b344adbaed7c8e2f56c16ef'),'Archivo 4.pdf',UNHEX('5ed6d8edf8bb4be6aefd97d78ea60609'));
CALL insert_study_file (UNHEX('6f595d6d8c4f43cc8c460f3551f9e139'),'Archivo 5.pdf',UNHEX('5ed6d8edf8bb4be6aefd97d78ea60609'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('ffca905d30f44dec9dd3628280373a5d'),'Observación correspondiente al estudio ffca905d30f44dec9dd3628280373a5d.',UNHEX('c9800a48665b4b6095767c08a6ca89ca'),'ET');
# Se craran 5 archivos para el estudio ffca905d30f44dec9dd3628280373a5d
CALL insert_study_file (UNHEX('439fe529e1834be0a64f729a090d098c'),'Archivo 0.pdf',UNHEX('ffca905d30f44dec9dd3628280373a5d'));
CALL insert_study_file (UNHEX('e4150f938b964317bfeb9706ee181ded'),'Archivo 1.jpg',UNHEX('ffca905d30f44dec9dd3628280373a5d'));
CALL insert_study_file (UNHEX('fd2d0845b094498faf3ea7e4a1ffe469'),'Archivo 2.txt',UNHEX('ffca905d30f44dec9dd3628280373a5d'));
CALL insert_study_file (UNHEX('8722388609a14cc89396953289738d8b'),'Archivo 3.txt',UNHEX('ffca905d30f44dec9dd3628280373a5d'));
CALL insert_study_file (UNHEX('b9a4239c6f3740489e73db21681f0f8b'),'Archivo 4.jpg',UNHEX('ffca905d30f44dec9dd3628280373a5d'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('aa5949c0ee4a4f57b3158f1518b28fc0'),'Observación correspondiente al estudio aa5949c0ee4a4f57b3158f1518b28fc0.',UNHEX('c9800a48665b4b6095767c08a6ca89ca'),'ET');
# Se craran 5 archivos para el estudio aa5949c0ee4a4f57b3158f1518b28fc0
CALL insert_study_file (UNHEX('437bd2e7cfcd4c17aa88017035684486'),'Archivo 0.pdf',UNHEX('aa5949c0ee4a4f57b3158f1518b28fc0'));
CALL insert_study_file (UNHEX('9a6726f774ba4783923307103bbf2aac'),'Archivo 1.txt',UNHEX('aa5949c0ee4a4f57b3158f1518b28fc0'));
CALL insert_study_file (UNHEX('a3f5613c622544139b2f1b7281f7df6e'),'Archivo 2.jpg',UNHEX('aa5949c0ee4a4f57b3158f1518b28fc0'));
CALL insert_study_file (UNHEX('3a8337352228440a96792d41011f8da7'),'Archivo 3.doc',UNHEX('aa5949c0ee4a4f57b3158f1518b28fc0'));
CALL insert_study_file (UNHEX('cbdb4bc558ce45ac81ca08483741c8a6'),'Archivo 4.jpg',UNHEX('aa5949c0ee4a4f57b3158f1518b28fc0'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('d2a9688388904e34a263454a2a5af030'),'Observación correspondiente al estudio d2a9688388904e34a263454a2a5af030.',UNHEX('c9800a48665b4b6095767c08a6ca89ca'),'UA');
# Se craran 5 archivos para el estudio d2a9688388904e34a263454a2a5af030
CALL insert_study_file (UNHEX('a812e3bfd44c4f33b2417754eb1469f2'),'Archivo 0.txt',UNHEX('d2a9688388904e34a263454a2a5af030'));
CALL insert_study_file (UNHEX('b0075bcdc05643b9a08f0424d86ab375'),'Archivo 1.jpg',UNHEX('d2a9688388904e34a263454a2a5af030'));
CALL insert_study_file (UNHEX('5829c88eba2f4c8cab4fae934498f39d'),'Archivo 2.txt',UNHEX('d2a9688388904e34a263454a2a5af030'));
CALL insert_study_file (UNHEX('770587c1a28e40da88ca087ce14a94de'),'Archivo 3.pdf',UNHEX('d2a9688388904e34a263454a2a5af030'));
CALL insert_study_file (UNHEX('77b1f435867d4b66b0d8d304c87f72ff'),'Archivo 4.doc',UNHEX('d2a9688388904e34a263454a2a5af030'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('b4e8154bbaa6439cb79fbf4e0018d45a'),'Observación correspondiente al estudio b4e8154bbaa6439cb79fbf4e0018d45a.',UNHEX('c9800a48665b4b6095767c08a6ca89ca'),'BT');
# Se craran 2 archivos para el estudio b4e8154bbaa6439cb79fbf4e0018d45a
CALL insert_study_file (UNHEX('5ffa2351fc2a4f8396249a3343383c09'),'Archivo 0.pdf',UNHEX('b4e8154bbaa6439cb79fbf4e0018d45a'));
CALL insert_study_file (UNHEX('2e53e21479fa42d1a52b2ecc64b023c7'),'Archivo 1.txt',UNHEX('b4e8154bbaa6439cb79fbf4e0018d45a'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('a4ecd25cde544e3f95be6cdc21c39480'),'Observación correspondiente al estudio a4ecd25cde544e3f95be6cdc21c39480.',UNHEX('c9800a48665b4b6095767c08a6ca89ca'),'ET');
# Se craran 3 archivos para el estudio a4ecd25cde544e3f95be6cdc21c39480
CALL insert_study_file (UNHEX('4129022f43894823b817861c4e46036a'),'Archivo 0.jpg',UNHEX('a4ecd25cde544e3f95be6cdc21c39480'));
CALL insert_study_file (UNHEX('e3a8bce0180b4484abeb7d03ad758a9d'),'Archivo 1.pdf',UNHEX('a4ecd25cde544e3f95be6cdc21c39480'));
CALL insert_study_file (UNHEX('885d21959b9a4becb1e35cfdc754ac1a'),'Archivo 2.pdf',UNHEX('a4ecd25cde544e3f95be6cdc21c39480'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('5e940bed1d47477a9439498533952fa4'),'Observación correspondiente al estudio 5e940bed1d47477a9439498533952fa4.',UNHEX('c9800a48665b4b6095767c08a6ca89ca'),'UA');
# Se craran 8 archivos para el estudio 5e940bed1d47477a9439498533952fa4
CALL insert_study_file (UNHEX('d1a0592d591f40a1bf85e83d01827550'),'Archivo 0.txt',UNHEX('5e940bed1d47477a9439498533952fa4'));
CALL insert_study_file (UNHEX('1fe37aef9dc44a5cb956722448455d70'),'Archivo 1.pdf',UNHEX('5e940bed1d47477a9439498533952fa4'));
CALL insert_study_file (UNHEX('4c3235c0305f455ebc9821bf57432c79'),'Archivo 2.doc',UNHEX('5e940bed1d47477a9439498533952fa4'));
CALL insert_study_file (UNHEX('4689c896f0a24e41b919baafdd61c64b'),'Archivo 3.txt',UNHEX('5e940bed1d47477a9439498533952fa4'));
CALL insert_study_file (UNHEX('cb130971a5e049d5ac960bd766e88794'),'Archivo 4.txt',UNHEX('5e940bed1d47477a9439498533952fa4'));
CALL insert_study_file (UNHEX('7693cfd6336f4e64b5c9c05e3884337c'),'Archivo 5.txt',UNHEX('5e940bed1d47477a9439498533952fa4'));
CALL insert_study_file (UNHEX('65b7a7f03129471d9c694b5455e0e2c4'),'Archivo 6.doc',UNHEX('5e940bed1d47477a9439498533952fa4'));
CALL insert_study_file (UNHEX('8cc2ea72fe164805847742ed9015231e'),'Archivo 7.pdf',UNHEX('5e940bed1d47477a9439498533952fa4'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('0226c589a2134b5ab99d03e7cad350c7'),'Observación correspondiente al estudio 0226c589a2134b5ab99d03e7cad350c7.',UNHEX('c9800a48665b4b6095767c08a6ca89ca'),'UA');
# Se craran 6 archivos para el estudio 0226c589a2134b5ab99d03e7cad350c7
CALL insert_study_file (UNHEX('4fb2d1563ece479f9be29c7830b9d392'),'Archivo 0.pdf',UNHEX('0226c589a2134b5ab99d03e7cad350c7'));
CALL insert_study_file (UNHEX('fa292442ba974a26a54608e9a20ef055'),'Archivo 1.txt',UNHEX('0226c589a2134b5ab99d03e7cad350c7'));
CALL insert_study_file (UNHEX('13840c47df114f849f39d32a089c8698'),'Archivo 2.pdf',UNHEX('0226c589a2134b5ab99d03e7cad350c7'));
CALL insert_study_file (UNHEX('2af38767232442d49267534c1717f8b7'),'Archivo 3.jpg',UNHEX('0226c589a2134b5ab99d03e7cad350c7'));
CALL insert_study_file (UNHEX('ffd11d07506a49708a6979db1c844f99'),'Archivo 4.txt',UNHEX('0226c589a2134b5ab99d03e7cad350c7'));
CALL insert_study_file (UNHEX('cf4d793b69884c6fa640e1c4658ff3ed'),'Archivo 5.doc',UNHEX('0226c589a2134b5ab99d03e7cad350c7'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('691c1844c1ab425d906c8b30c1005bb1'),'Observación correspondiente al estudio 691c1844c1ab425d906c8b30c1005bb1.',UNHEX('c9800a48665b4b6095767c08a6ca89ca'),'ET');
# Se craran 3 archivos para el estudio 691c1844c1ab425d906c8b30c1005bb1
CALL insert_study_file (UNHEX('014aa991bc6d402bb26f209fe4003cd1'),'Archivo 0.jpg',UNHEX('691c1844c1ab425d906c8b30c1005bb1'));
CALL insert_study_file (UNHEX('b847761e2334429185832485958e5d94'),'Archivo 1.txt',UNHEX('691c1844c1ab425d906c8b30c1005bb1'));
CALL insert_study_file (UNHEX('4f990e5b561f42c1b6dbe8612a076d89'),'Archivo 2.doc',UNHEX('691c1844c1ab425d906c8b30c1005bb1'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('ace8f8f995394f3581afdce574812078'),'Observación correspondiente al estudio ace8f8f995394f3581afdce574812078.',UNHEX('c9800a48665b4b6095767c08a6ca89ca'),'UA');
# Se craran 3 archivos para el estudio ace8f8f995394f3581afdce574812078
CALL insert_study_file (UNHEX('b0ce54081e824c9a8b04a4f49dfe40a0'),'Archivo 0.txt',UNHEX('ace8f8f995394f3581afdce574812078'));
CALL insert_study_file (UNHEX('ea5254ce95b448c09fde409cf61fd912'),'Archivo 1.doc',UNHEX('ace8f8f995394f3581afdce574812078'));
CALL insert_study_file (UNHEX('643991b646c34ba7800d2b35d56fe766'),'Archivo 2.doc',UNHEX('ace8f8f995394f3581afdce574812078'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 1e5f70358d2f43bd9266638fd5af353d
CALL insert_patient ('1978-12-09','5','M', UNHEX('1e5f70358d2f43bd9266638fd5af353d'),'taylor, Hunt juan','doctor');
# Se craran 4 estudios para el paciente 1e5f70358d2f43bd9266638fd5af353d
CALL insert_study ('2014-07-30',UNHEX('28e92f9854164d108d2dd97db326ad92'),'Observación correspondiente al estudio 28e92f9854164d108d2dd97db326ad92.',UNHEX('1e5f70358d2f43bd9266638fd5af353d'),'UA');
# Se craran 6 archivos para el estudio 28e92f9854164d108d2dd97db326ad92
CALL insert_study_file (UNHEX('04c8eaf443fc48d5a1ac422c27ab4645'),'Archivo 0.jpg',UNHEX('28e92f9854164d108d2dd97db326ad92'));
CALL insert_study_file (UNHEX('6c58ad39241c4b94abeece23ff534c25'),'Archivo 1.doc',UNHEX('28e92f9854164d108d2dd97db326ad92'));
CALL insert_study_file (UNHEX('c21eb194352c456c80bf593b86b1eb7a'),'Archivo 2.jpg',UNHEX('28e92f9854164d108d2dd97db326ad92'));
CALL insert_study_file (UNHEX('76bbb217f43f42cfb553c1985221fed4'),'Archivo 3.pdf',UNHEX('28e92f9854164d108d2dd97db326ad92'));
CALL insert_study_file (UNHEX('2d51c54f5dd34d55a992b4648bb98958'),'Archivo 4.txt',UNHEX('28e92f9854164d108d2dd97db326ad92'));
CALL insert_study_file (UNHEX('7030f509ac154709b8d39da0e06dfee9'),'Archivo 5.pdf',UNHEX('28e92f9854164d108d2dd97db326ad92'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('f8e4edb8a6c743608a7fe1ceb1a4fe3d'),'Observación correspondiente al estudio f8e4edb8a6c743608a7fe1ceb1a4fe3d.',UNHEX('1e5f70358d2f43bd9266638fd5af353d'),'BT');
# Se craran 7 archivos para el estudio f8e4edb8a6c743608a7fe1ceb1a4fe3d
CALL insert_study_file (UNHEX('a80b2b2a6aec4e2e9eeef8300e01ebae'),'Archivo 0.doc',UNHEX('f8e4edb8a6c743608a7fe1ceb1a4fe3d'));
CALL insert_study_file (UNHEX('c2ec3a28f4fc4715902f9d979b8df2bb'),'Archivo 1.jpg',UNHEX('f8e4edb8a6c743608a7fe1ceb1a4fe3d'));
CALL insert_study_file (UNHEX('b15ff86f9cd94958a7d0fc1e1b7486ba'),'Archivo 2.jpg',UNHEX('f8e4edb8a6c743608a7fe1ceb1a4fe3d'));
CALL insert_study_file (UNHEX('97b8e12d372742be8fbe4ca06728d137'),'Archivo 3.pdf',UNHEX('f8e4edb8a6c743608a7fe1ceb1a4fe3d'));
CALL insert_study_file (UNHEX('5cadcdba12504f319aec39fc02683588'),'Archivo 4.pdf',UNHEX('f8e4edb8a6c743608a7fe1ceb1a4fe3d'));
CALL insert_study_file (UNHEX('0ccc8e9aa05b43cb8ee5344d29a0d59d'),'Archivo 5.jpg',UNHEX('f8e4edb8a6c743608a7fe1ceb1a4fe3d'));
CALL insert_study_file (UNHEX('16f221d5a4544fcd9476b7323e313dc1'),'Archivo 6.doc',UNHEX('f8e4edb8a6c743608a7fe1ceb1a4fe3d'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('03bcdc7143db4e65b3a9b99e35ff1d57'),'Observación correspondiente al estudio 03bcdc7143db4e65b3a9b99e35ff1d57.',UNHEX('1e5f70358d2f43bd9266638fd5af353d'),'BT');
# Se craran 1 archivos para el estudio 03bcdc7143db4e65b3a9b99e35ff1d57
CALL insert_study_file (UNHEX('caf8ce3a71f14f34b14a9776826cbb04'),'Archivo 0.txt',UNHEX('03bcdc7143db4e65b3a9b99e35ff1d57'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('7b6df4b50f0545959f05c23ce35f7e09'),'Observación correspondiente al estudio 7b6df4b50f0545959f05c23ce35f7e09.',UNHEX('1e5f70358d2f43bd9266638fd5af353d'),'UA');
# Se craran 2 archivos para el estudio 7b6df4b50f0545959f05c23ce35f7e09
CALL insert_study_file (UNHEX('ba5d78b6fa7f4c75ace16b98d265163e'),'Archivo 0.doc',UNHEX('7b6df4b50f0545959f05c23ce35f7e09'));
CALL insert_study_file (UNHEX('0ad4881533ca42fe87d8655ca261528c'),'Archivo 1.pdf',UNHEX('7b6df4b50f0545959f05c23ce35f7e09'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 111a8bc9cd244821ad0e51e2f4303937
CALL insert_patient ('1956-07-09','3','M', UNHEX('111a8bc9cd244821ad0e51e2f4303937'),'Allen-Willoughby, jarvis sandro','doctor');
# Se craran 9 estudios para el paciente 111a8bc9cd244821ad0e51e2f4303937
CALL insert_study ('2014-08-02',UNHEX('6560dffa096c43efaac5cede99d9ad23'),'Observación correspondiente al estudio 6560dffa096c43efaac5cede99d9ad23.',UNHEX('111a8bc9cd244821ad0e51e2f4303937'),'BT');
# Se craran 0 archivos para el estudio 6560dffa096c43efaac5cede99d9ad23
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('f79cf7b3d0f14c0cb1fc85a2eac7589b'),'Observación correspondiente al estudio f79cf7b3d0f14c0cb1fc85a2eac7589b.',UNHEX('111a8bc9cd244821ad0e51e2f4303937'),'BT');
# Se craran 2 archivos para el estudio f79cf7b3d0f14c0cb1fc85a2eac7589b
CALL insert_study_file (UNHEX('bf8f55adf2bf4cd1879738e044e7d170'),'Archivo 0.doc',UNHEX('f79cf7b3d0f14c0cb1fc85a2eac7589b'));
CALL insert_study_file (UNHEX('96784d505f604d3695b1dc4a8671d985'),'Archivo 1.txt',UNHEX('f79cf7b3d0f14c0cb1fc85a2eac7589b'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('c1693656a595419cacc585cc467053f8'),'Observación correspondiente al estudio c1693656a595419cacc585cc467053f8.',UNHEX('111a8bc9cd244821ad0e51e2f4303937'),'ET');
# Se craran 2 archivos para el estudio c1693656a595419cacc585cc467053f8
CALL insert_study_file (UNHEX('039d57d34b594a52aa609df689f5027a'),'Archivo 0.txt',UNHEX('c1693656a595419cacc585cc467053f8'));
CALL insert_study_file (UNHEX('073511d0692446e29560b29997c59614'),'Archivo 1.pdf',UNHEX('c1693656a595419cacc585cc467053f8'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('e3a55f98f58a48b18598ec080e03b56b'),'Observación correspondiente al estudio e3a55f98f58a48b18598ec080e03b56b.',UNHEX('111a8bc9cd244821ad0e51e2f4303937'),'ET');
# Se craran 1 archivos para el estudio e3a55f98f58a48b18598ec080e03b56b
CALL insert_study_file (UNHEX('d4a5da24cf26412badab9de0dd568961'),'Archivo 0.txt',UNHEX('e3a55f98f58a48b18598ec080e03b56b'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('77fe9fc0ce16444096116523037bcba6'),'Observación correspondiente al estudio 77fe9fc0ce16444096116523037bcba6.',UNHEX('111a8bc9cd244821ad0e51e2f4303937'),'BT');
# Se craran 4 archivos para el estudio 77fe9fc0ce16444096116523037bcba6
CALL insert_study_file (UNHEX('78d0c489ab7744d095da2c5f5100ff40'),'Archivo 0.doc',UNHEX('77fe9fc0ce16444096116523037bcba6'));
CALL insert_study_file (UNHEX('9c6c197b75da4214bc82e889a11aae33'),'Archivo 1.txt',UNHEX('77fe9fc0ce16444096116523037bcba6'));
CALL insert_study_file (UNHEX('f704ee6d8c9442f9bf00386be571ad7c'),'Archivo 2.pdf',UNHEX('77fe9fc0ce16444096116523037bcba6'));
CALL insert_study_file (UNHEX('5c07a5c9cec448a9a78e4c30cd0c6ee3'),'Archivo 3.doc',UNHEX('77fe9fc0ce16444096116523037bcba6'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('442f0a62d9df41639a38ba72861ced53'),'Observación correspondiente al estudio 442f0a62d9df41639a38ba72861ced53.',UNHEX('111a8bc9cd244821ad0e51e2f4303937'),'UA');
# Se craran 9 archivos para el estudio 442f0a62d9df41639a38ba72861ced53
CALL insert_study_file (UNHEX('321d5614b7534f0c9bed9b0ead063def'),'Archivo 0.doc',UNHEX('442f0a62d9df41639a38ba72861ced53'));
CALL insert_study_file (UNHEX('600f218f80834fcda01aafaf86b13b94'),'Archivo 1.pdf',UNHEX('442f0a62d9df41639a38ba72861ced53'));
CALL insert_study_file (UNHEX('ee903cbf5ec24a3dae7fc669fc813d99'),'Archivo 2.pdf',UNHEX('442f0a62d9df41639a38ba72861ced53'));
CALL insert_study_file (UNHEX('09cdeb8e02a64958bdee0ce4c26d3308'),'Archivo 3.txt',UNHEX('442f0a62d9df41639a38ba72861ced53'));
CALL insert_study_file (UNHEX('8c441a3d48444e48a660a9f1923c111d'),'Archivo 4.doc',UNHEX('442f0a62d9df41639a38ba72861ced53'));
CALL insert_study_file (UNHEX('8a6e5acf90024599843b0b8d0c954379'),'Archivo 5.jpg',UNHEX('442f0a62d9df41639a38ba72861ced53'));
CALL insert_study_file (UNHEX('e8c0a7822bb2454e8ba50b9ce58d343d'),'Archivo 6.pdf',UNHEX('442f0a62d9df41639a38ba72861ced53'));
CALL insert_study_file (UNHEX('819d42116ff74cd1b2cb2fae5f732447'),'Archivo 7.doc',UNHEX('442f0a62d9df41639a38ba72861ced53'));
CALL insert_study_file (UNHEX('048a04fcaa514faf86f72e15de335897'),'Archivo 8.pdf',UNHEX('442f0a62d9df41639a38ba72861ced53'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('e43b47b5599a4cde82dfb51365c67ca2'),'Observación correspondiente al estudio e43b47b5599a4cde82dfb51365c67ca2.',UNHEX('111a8bc9cd244821ad0e51e2f4303937'),'ET');
# Se craran 0 archivos para el estudio e43b47b5599a4cde82dfb51365c67ca2
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('67f516dd26f14c4bab9575b15dcf3a36'),'Observación correspondiente al estudio 67f516dd26f14c4bab9575b15dcf3a36.',UNHEX('111a8bc9cd244821ad0e51e2f4303937'),'UA');
# Se craran 5 archivos para el estudio 67f516dd26f14c4bab9575b15dcf3a36
CALL insert_study_file (UNHEX('5abf1dfb6dc4496c8bf02b42617afac6'),'Archivo 0.doc',UNHEX('67f516dd26f14c4bab9575b15dcf3a36'));
CALL insert_study_file (UNHEX('e59f46818a1640fabb70cf54efa69d41'),'Archivo 1.doc',UNHEX('67f516dd26f14c4bab9575b15dcf3a36'));
CALL insert_study_file (UNHEX('30f2f17f9c8f45eb8719cc314836d864'),'Archivo 2.pdf',UNHEX('67f516dd26f14c4bab9575b15dcf3a36'));
CALL insert_study_file (UNHEX('79f7291458914e67816b5045ebfbbce9'),'Archivo 3.doc',UNHEX('67f516dd26f14c4bab9575b15dcf3a36'));
CALL insert_study_file (UNHEX('b64aa7f890b8447293b560f10b9041d3'),'Archivo 4.doc',UNHEX('67f516dd26f14c4bab9575b15dcf3a36'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('ee70b685c5d943d6bfd6ebf062a4defe'),'Observación correspondiente al estudio ee70b685c5d943d6bfd6ebf062a4defe.',UNHEX('111a8bc9cd244821ad0e51e2f4303937'),'BT');
# Se craran 7 archivos para el estudio ee70b685c5d943d6bfd6ebf062a4defe
CALL insert_study_file (UNHEX('c5fb9c86de6d41e9a0aa803f4347d557'),'Archivo 0.jpg',UNHEX('ee70b685c5d943d6bfd6ebf062a4defe'));
CALL insert_study_file (UNHEX('35fcc712f7824277aca62eb57fc3bcc6'),'Archivo 1.txt',UNHEX('ee70b685c5d943d6bfd6ebf062a4defe'));
CALL insert_study_file (UNHEX('14b8cbb96b844e36ab86de98936db02d'),'Archivo 2.jpg',UNHEX('ee70b685c5d943d6bfd6ebf062a4defe'));
CALL insert_study_file (UNHEX('5c1859d1734a44e8bf68f580d8d37c04'),'Archivo 3.jpg',UNHEX('ee70b685c5d943d6bfd6ebf062a4defe'));
CALL insert_study_file (UNHEX('5bd1810fa571443fa210a39c8a5ef064'),'Archivo 4.jpg',UNHEX('ee70b685c5d943d6bfd6ebf062a4defe'));
CALL insert_study_file (UNHEX('01eda8bf2e79466a885eb9678af315ec'),'Archivo 5.txt',UNHEX('ee70b685c5d943d6bfd6ebf062a4defe'));
CALL insert_study_file (UNHEX('ca5a632bf1ea4cdbbcf59ebc9bd9870f'),'Archivo 6.jpg',UNHEX('ee70b685c5d943d6bfd6ebf062a4defe'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente a56748257e5a4fcbaec113e96ea83b26
CALL insert_patient ('1934-06-15','3','M', UNHEX('a56748257e5a4fcbaec113e96ea83b26'),'Yelon, rock','doctor');
# Se craran 5 estudios para el paciente a56748257e5a4fcbaec113e96ea83b26
CALL insert_study ('2014-08-03',UNHEX('b85b293597b44dd99d0947a0ca134c6b'),'Observación correspondiente al estudio b85b293597b44dd99d0947a0ca134c6b.',UNHEX('a56748257e5a4fcbaec113e96ea83b26'),'ET');
# Se craran 4 archivos para el estudio b85b293597b44dd99d0947a0ca134c6b
CALL insert_study_file (UNHEX('4a9328e6a08e4aef8987683b60b92249'),'Archivo 0.pdf',UNHEX('b85b293597b44dd99d0947a0ca134c6b'));
CALL insert_study_file (UNHEX('08966c91b4ba407d8b165c7fcb759321'),'Archivo 1.txt',UNHEX('b85b293597b44dd99d0947a0ca134c6b'));
CALL insert_study_file (UNHEX('ffc87599781540fbbf4b1cf533821050'),'Archivo 2.pdf',UNHEX('b85b293597b44dd99d0947a0ca134c6b'));
CALL insert_study_file (UNHEX('c9ee7e3b2a0744e59c68d94cf0ceeb4a'),'Archivo 3.doc',UNHEX('b85b293597b44dd99d0947a0ca134c6b'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('490a7615b4184d00aff7f8845a84801a'),'Observación correspondiente al estudio 490a7615b4184d00aff7f8845a84801a.',UNHEX('a56748257e5a4fcbaec113e96ea83b26'),'ET');
# Se craran 1 archivos para el estudio 490a7615b4184d00aff7f8845a84801a
CALL insert_study_file (UNHEX('2775ab96a1a44afb886688345d2eb8f1'),'Archivo 0.jpg',UNHEX('490a7615b4184d00aff7f8845a84801a'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('559b584a236b406e8ddec5252284985b'),'Observación correspondiente al estudio 559b584a236b406e8ddec5252284985b.',UNHEX('a56748257e5a4fcbaec113e96ea83b26'),'BT');
# Se craran 9 archivos para el estudio 559b584a236b406e8ddec5252284985b
CALL insert_study_file (UNHEX('ccd22e9a94994c73bfb76af7efb0432d'),'Archivo 0.pdf',UNHEX('559b584a236b406e8ddec5252284985b'));
CALL insert_study_file (UNHEX('61614ff55d91496f95c5bee55ee3f9e9'),'Archivo 1.jpg',UNHEX('559b584a236b406e8ddec5252284985b'));
CALL insert_study_file (UNHEX('c4e4485e8cf9406dbbb1c63f73ab2886'),'Archivo 2.txt',UNHEX('559b584a236b406e8ddec5252284985b'));
CALL insert_study_file (UNHEX('de6019b68e9d451f94c05ddff9181f74'),'Archivo 3.txt',UNHEX('559b584a236b406e8ddec5252284985b'));
CALL insert_study_file (UNHEX('ff10f8f83a4940f4a4279e7ca08417cb'),'Archivo 4.doc',UNHEX('559b584a236b406e8ddec5252284985b'));
CALL insert_study_file (UNHEX('edae260514a6412b9a4dbf6bcefb820d'),'Archivo 5.txt',UNHEX('559b584a236b406e8ddec5252284985b'));
CALL insert_study_file (UNHEX('82c9cf29481d4da9aef02423445226ef'),'Archivo 6.pdf',UNHEX('559b584a236b406e8ddec5252284985b'));
CALL insert_study_file (UNHEX('f92b890622554d34a8c829c76b7124b4'),'Archivo 7.doc',UNHEX('559b584a236b406e8ddec5252284985b'));
CALL insert_study_file (UNHEX('6779ea3c78c246adb57992962f8b21bc'),'Archivo 8.jpg',UNHEX('559b584a236b406e8ddec5252284985b'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('65088b2d3acf4b9d82e3b061bae63153'),'Observación correspondiente al estudio 65088b2d3acf4b9d82e3b061bae63153.',UNHEX('a56748257e5a4fcbaec113e96ea83b26'),'ET');
# Se craran 6 archivos para el estudio 65088b2d3acf4b9d82e3b061bae63153
CALL insert_study_file (UNHEX('6cd0a40eba3243ada863a5e865bc2203'),'Archivo 0.pdf',UNHEX('65088b2d3acf4b9d82e3b061bae63153'));
CALL insert_study_file (UNHEX('d08ded62552c474c976757e5895738bb'),'Archivo 1.jpg',UNHEX('65088b2d3acf4b9d82e3b061bae63153'));
CALL insert_study_file (UNHEX('7d86fb95d6354380a4b04f656f65a4a5'),'Archivo 2.pdf',UNHEX('65088b2d3acf4b9d82e3b061bae63153'));
CALL insert_study_file (UNHEX('67f2d7dbfd0443d28b80bceb823d7e3e'),'Archivo 3.doc',UNHEX('65088b2d3acf4b9d82e3b061bae63153'));
CALL insert_study_file (UNHEX('24947d8e112441a8af4f790fe9cb61b2'),'Archivo 4.txt',UNHEX('65088b2d3acf4b9d82e3b061bae63153'));
CALL insert_study_file (UNHEX('71fd354812314bc7989c60abfd118345'),'Archivo 5.doc',UNHEX('65088b2d3acf4b9d82e3b061bae63153'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('aae8ba201d7247b8bd2ef7994bf36ba5'),'Observación correspondiente al estudio aae8ba201d7247b8bd2ef7994bf36ba5.',UNHEX('a56748257e5a4fcbaec113e96ea83b26'),'ET');
# Se craran 9 archivos para el estudio aae8ba201d7247b8bd2ef7994bf36ba5
CALL insert_study_file (UNHEX('305335352621433a920d834843151cff'),'Archivo 0.txt',UNHEX('aae8ba201d7247b8bd2ef7994bf36ba5'));
CALL insert_study_file (UNHEX('5e3c0016b67949af802edf43bd62d390'),'Archivo 1.jpg',UNHEX('aae8ba201d7247b8bd2ef7994bf36ba5'));
CALL insert_study_file (UNHEX('2d3a0296f52e41a9adee21e30f9f8002'),'Archivo 2.txt',UNHEX('aae8ba201d7247b8bd2ef7994bf36ba5'));
CALL insert_study_file (UNHEX('71606b8f37c2434ba9cadb95152c439b'),'Archivo 3.pdf',UNHEX('aae8ba201d7247b8bd2ef7994bf36ba5'));
CALL insert_study_file (UNHEX('3013d08127284ec9a6a259f11c32cfde'),'Archivo 4.pdf',UNHEX('aae8ba201d7247b8bd2ef7994bf36ba5'));
CALL insert_study_file (UNHEX('965614b74aa0430bb764abf828a98c35'),'Archivo 5.txt',UNHEX('aae8ba201d7247b8bd2ef7994bf36ba5'));
CALL insert_study_file (UNHEX('98c66feed20b4de4b8800f2a2611edb6'),'Archivo 6.txt',UNHEX('aae8ba201d7247b8bd2ef7994bf36ba5'));
CALL insert_study_file (UNHEX('f79b4aa01d4e418b9b3c4480a3b82532'),'Archivo 7.jpg',UNHEX('aae8ba201d7247b8bd2ef7994bf36ba5'));
CALL insert_study_file (UNHEX('faa86c44a00e4960acb3ec1c5f848828'),'Archivo 8.doc',UNHEX('aae8ba201d7247b8bd2ef7994bf36ba5'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 0170f3e4b3764cd087d7efe7345050d5
CALL insert_patient ('1977-06-06','3','M', UNHEX('0170f3e4b3764cd087d7efe7345050d5'),'Winny, Henrique clare','doctor');
# Se craran 18 estudios para el paciente 0170f3e4b3764cd087d7efe7345050d5
CALL insert_study ('2014-08-01',UNHEX('0202949ebbd9456591c14de47e70c8b8'),'Observación correspondiente al estudio 0202949ebbd9456591c14de47e70c8b8.',UNHEX('0170f3e4b3764cd087d7efe7345050d5'),'ET');
# Se craran 4 archivos para el estudio 0202949ebbd9456591c14de47e70c8b8
CALL insert_study_file (UNHEX('07025f10d73e4454ac702da725dea96e'),'Archivo 0.pdf',UNHEX('0202949ebbd9456591c14de47e70c8b8'));
CALL insert_study_file (UNHEX('c19511b69d96477883d8d2ec184d588f'),'Archivo 1.txt',UNHEX('0202949ebbd9456591c14de47e70c8b8'));
CALL insert_study_file (UNHEX('ac6ea34b9ec346848681cf5dfa19a9f8'),'Archivo 2.txt',UNHEX('0202949ebbd9456591c14de47e70c8b8'));
CALL insert_study_file (UNHEX('c610c150f7e84959af674aa9c8b114ed'),'Archivo 3.doc',UNHEX('0202949ebbd9456591c14de47e70c8b8'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('c6b4d974fca54f25bdc3aaa71f768b78'),'Observación correspondiente al estudio c6b4d974fca54f25bdc3aaa71f768b78.',UNHEX('0170f3e4b3764cd087d7efe7345050d5'),'BT');
# Se craran 5 archivos para el estudio c6b4d974fca54f25bdc3aaa71f768b78
CALL insert_study_file (UNHEX('59d0e4357d0d48a3a5ed7a9e9034e474'),'Archivo 0.pdf',UNHEX('c6b4d974fca54f25bdc3aaa71f768b78'));
CALL insert_study_file (UNHEX('4999eab3cfd645cfbc24c470c1d6e5c7'),'Archivo 1.doc',UNHEX('c6b4d974fca54f25bdc3aaa71f768b78'));
CALL insert_study_file (UNHEX('890793bcc9be456c96a15bbfc7c800ee'),'Archivo 2.jpg',UNHEX('c6b4d974fca54f25bdc3aaa71f768b78'));
CALL insert_study_file (UNHEX('e18f6d3e555b41e29a7a9ba78bcc3781'),'Archivo 3.jpg',UNHEX('c6b4d974fca54f25bdc3aaa71f768b78'));
CALL insert_study_file (UNHEX('2ac0871ba56c4fa98d6eb59628ea0ce1'),'Archivo 4.pdf',UNHEX('c6b4d974fca54f25bdc3aaa71f768b78'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('197ec3aec28a4ef29066b77e44eea04d'),'Observación correspondiente al estudio 197ec3aec28a4ef29066b77e44eea04d.',UNHEX('0170f3e4b3764cd087d7efe7345050d5'),'UA');
# Se craran 6 archivos para el estudio 197ec3aec28a4ef29066b77e44eea04d
CALL insert_study_file (UNHEX('39ef7d376c2d46099ef446e389717235'),'Archivo 0.jpg',UNHEX('197ec3aec28a4ef29066b77e44eea04d'));
CALL insert_study_file (UNHEX('090c28deb6554f4eb2353ced8caf5e84'),'Archivo 1.doc',UNHEX('197ec3aec28a4ef29066b77e44eea04d'));
CALL insert_study_file (UNHEX('2039f8ad7c7b42cd9f1f40816ae46217'),'Archivo 2.doc',UNHEX('197ec3aec28a4ef29066b77e44eea04d'));
CALL insert_study_file (UNHEX('799db2dc59c34f949792044eb349c4ee'),'Archivo 3.doc',UNHEX('197ec3aec28a4ef29066b77e44eea04d'));
CALL insert_study_file (UNHEX('d31ca4c4d75a4b2c92609a0a7fcdc79a'),'Archivo 4.pdf',UNHEX('197ec3aec28a4ef29066b77e44eea04d'));
CALL insert_study_file (UNHEX('88a8764490b840219bb1d2adcd5b17f9'),'Archivo 5.jpg',UNHEX('197ec3aec28a4ef29066b77e44eea04d'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('f31ed711fa88475db3998d931fab7f37'),'Observación correspondiente al estudio f31ed711fa88475db3998d931fab7f37.',UNHEX('0170f3e4b3764cd087d7efe7345050d5'),'BT');
# Se craran 9 archivos para el estudio f31ed711fa88475db3998d931fab7f37
CALL insert_study_file (UNHEX('380c148dc7da4d599e295df45b0aac3d'),'Archivo 0.doc',UNHEX('f31ed711fa88475db3998d931fab7f37'));
CALL insert_study_file (UNHEX('f014357212ac44a7a401c70b1d9f8864'),'Archivo 1.pdf',UNHEX('f31ed711fa88475db3998d931fab7f37'));
CALL insert_study_file (UNHEX('967a9a2c80594f238c6ad05e01219a44'),'Archivo 2.doc',UNHEX('f31ed711fa88475db3998d931fab7f37'));
CALL insert_study_file (UNHEX('357c9f2efdfd4fb7a2ea19e23bbc349d'),'Archivo 3.doc',UNHEX('f31ed711fa88475db3998d931fab7f37'));
CALL insert_study_file (UNHEX('c4e8a9a070a041cc93b5943ab7a8f789'),'Archivo 4.doc',UNHEX('f31ed711fa88475db3998d931fab7f37'));
CALL insert_study_file (UNHEX('945cfaff4e3b4954a9577fa03afd66bb'),'Archivo 5.doc',UNHEX('f31ed711fa88475db3998d931fab7f37'));
CALL insert_study_file (UNHEX('e41edb1093b44e79a7042c063291b811'),'Archivo 6.txt',UNHEX('f31ed711fa88475db3998d931fab7f37'));
CALL insert_study_file (UNHEX('bdb8b9d7b8fc418fa94a6fb559722ef7'),'Archivo 7.pdf',UNHEX('f31ed711fa88475db3998d931fab7f37'));
CALL insert_study_file (UNHEX('d40557af85334ca6a51976bd9ca6e8be'),'Archivo 8.jpg',UNHEX('f31ed711fa88475db3998d931fab7f37'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('2b067ad311b348bfa93a7443e4af1c32'),'Observación correspondiente al estudio 2b067ad311b348bfa93a7443e4af1c32.',UNHEX('0170f3e4b3764cd087d7efe7345050d5'),'BT');
# Se craran 9 archivos para el estudio 2b067ad311b348bfa93a7443e4af1c32
CALL insert_study_file (UNHEX('00d48338100b4983813a66f861916557'),'Archivo 0.jpg',UNHEX('2b067ad311b348bfa93a7443e4af1c32'));
CALL insert_study_file (UNHEX('0e85cebb1ab8404e97abc6d9022c3f27'),'Archivo 1.jpg',UNHEX('2b067ad311b348bfa93a7443e4af1c32'));
CALL insert_study_file (UNHEX('63c22c4021eb435cad1ce6f03ab1cf51'),'Archivo 2.txt',UNHEX('2b067ad311b348bfa93a7443e4af1c32'));
CALL insert_study_file (UNHEX('25538cd88d934333b8c56dcf0ca8998f'),'Archivo 3.doc',UNHEX('2b067ad311b348bfa93a7443e4af1c32'));
CALL insert_study_file (UNHEX('21fc962ac9b64729aa2ffb3a263926cd'),'Archivo 4.jpg',UNHEX('2b067ad311b348bfa93a7443e4af1c32'));
CALL insert_study_file (UNHEX('b0383aba7c2143748035550a8cf7148a'),'Archivo 5.doc',UNHEX('2b067ad311b348bfa93a7443e4af1c32'));
CALL insert_study_file (UNHEX('e2c079106af04693b7837b2c4f1b856e'),'Archivo 6.doc',UNHEX('2b067ad311b348bfa93a7443e4af1c32'));
CALL insert_study_file (UNHEX('70c27b54cca54a809c670695ebe9f27c'),'Archivo 7.doc',UNHEX('2b067ad311b348bfa93a7443e4af1c32'));
CALL insert_study_file (UNHEX('9ab68fb4594247d99636253edc179229'),'Archivo 8.jpg',UNHEX('2b067ad311b348bfa93a7443e4af1c32'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('bf2e2588217a4a379f47acdae51cb8de'),'Observación correspondiente al estudio bf2e2588217a4a379f47acdae51cb8de.',UNHEX('0170f3e4b3764cd087d7efe7345050d5'),'UA');
# Se craran 8 archivos para el estudio bf2e2588217a4a379f47acdae51cb8de
CALL insert_study_file (UNHEX('73a81de2e1ab41c4a2398bb4967bc081'),'Archivo 0.txt',UNHEX('bf2e2588217a4a379f47acdae51cb8de'));
CALL insert_study_file (UNHEX('819dc92e7deb4717b6c01d6e98fdbf23'),'Archivo 1.txt',UNHEX('bf2e2588217a4a379f47acdae51cb8de'));
CALL insert_study_file (UNHEX('92e1af69ae814640afc2b6beadee2097'),'Archivo 2.pdf',UNHEX('bf2e2588217a4a379f47acdae51cb8de'));
CALL insert_study_file (UNHEX('d306e4b9c3fd4aa6aba95bb21b449927'),'Archivo 3.doc',UNHEX('bf2e2588217a4a379f47acdae51cb8de'));
CALL insert_study_file (UNHEX('457f305245a44eb782895ebfe1a0851b'),'Archivo 4.txt',UNHEX('bf2e2588217a4a379f47acdae51cb8de'));
CALL insert_study_file (UNHEX('5f01093ff8704c8c859b1b784c7bb2fd'),'Archivo 5.pdf',UNHEX('bf2e2588217a4a379f47acdae51cb8de'));
CALL insert_study_file (UNHEX('da3e555a62e443b8b2d782fbe9777f9f'),'Archivo 6.pdf',UNHEX('bf2e2588217a4a379f47acdae51cb8de'));
CALL insert_study_file (UNHEX('393d673548c14f6699dd1683ed8fe978'),'Archivo 7.doc',UNHEX('bf2e2588217a4a379f47acdae51cb8de'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('affb0d305a36425bb0c10a4d2e545964'),'Observación correspondiente al estudio affb0d305a36425bb0c10a4d2e545964.',UNHEX('0170f3e4b3764cd087d7efe7345050d5'),'UA');
# Se craran 9 archivos para el estudio affb0d305a36425bb0c10a4d2e545964
CALL insert_study_file (UNHEX('c10c54089b2044dcab5085b0f4b35c7a'),'Archivo 0.pdf',UNHEX('affb0d305a36425bb0c10a4d2e545964'));
CALL insert_study_file (UNHEX('9e41206ec9e1459d92d23caad02b480c'),'Archivo 1.jpg',UNHEX('affb0d305a36425bb0c10a4d2e545964'));
CALL insert_study_file (UNHEX('451c8a67d54e4f71aef4c0f0f618ea8e'),'Archivo 2.pdf',UNHEX('affb0d305a36425bb0c10a4d2e545964'));
CALL insert_study_file (UNHEX('f76f5f0932f74031b36a62778a36c6ea'),'Archivo 3.jpg',UNHEX('affb0d305a36425bb0c10a4d2e545964'));
CALL insert_study_file (UNHEX('1074104019c748019946a24ac70efe58'),'Archivo 4.pdf',UNHEX('affb0d305a36425bb0c10a4d2e545964'));
CALL insert_study_file (UNHEX('bd90463d86fc4a079aae75d99727e079'),'Archivo 5.txt',UNHEX('affb0d305a36425bb0c10a4d2e545964'));
CALL insert_study_file (UNHEX('b2b1a9448caf46ebb752ff6703c5c42e'),'Archivo 6.jpg',UNHEX('affb0d305a36425bb0c10a4d2e545964'));
CALL insert_study_file (UNHEX('6dc831e977c04764ba9dcd4a16f359f3'),'Archivo 7.pdf',UNHEX('affb0d305a36425bb0c10a4d2e545964'));
CALL insert_study_file (UNHEX('38a7616c2bfa4ff2b7a59b31dd563d9c'),'Archivo 8.doc',UNHEX('affb0d305a36425bb0c10a4d2e545964'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('ecee18e50f1d43db9d0c9c2dfcfd41b1'),'Observación correspondiente al estudio ecee18e50f1d43db9d0c9c2dfcfd41b1.',UNHEX('0170f3e4b3764cd087d7efe7345050d5'),'UA');
# Se craran 1 archivos para el estudio ecee18e50f1d43db9d0c9c2dfcfd41b1
CALL insert_study_file (UNHEX('1cd6bc7a661f4c04b1a64321270b37c2'),'Archivo 0.doc',UNHEX('ecee18e50f1d43db9d0c9c2dfcfd41b1'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('807d19c454234fe48ef0b396f8b2aeaf'),'Observación correspondiente al estudio 807d19c454234fe48ef0b396f8b2aeaf.',UNHEX('0170f3e4b3764cd087d7efe7345050d5'),'ET');
# Se craran 3 archivos para el estudio 807d19c454234fe48ef0b396f8b2aeaf
CALL insert_study_file (UNHEX('16c31cab730547808ef7e43cbd3c5329'),'Archivo 0.pdf',UNHEX('807d19c454234fe48ef0b396f8b2aeaf'));
CALL insert_study_file (UNHEX('bd0076bf28804b57be9eafd5a8b9d6b1'),'Archivo 1.txt',UNHEX('807d19c454234fe48ef0b396f8b2aeaf'));
CALL insert_study_file (UNHEX('54464c852dad4f5280818dd1078bba11'),'Archivo 2.jpg',UNHEX('807d19c454234fe48ef0b396f8b2aeaf'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('18022fd22e314ca0aecff99214cfeb6a'),'Observación correspondiente al estudio 18022fd22e314ca0aecff99214cfeb6a.',UNHEX('0170f3e4b3764cd087d7efe7345050d5'),'UA');
# Se craran 4 archivos para el estudio 18022fd22e314ca0aecff99214cfeb6a
CALL insert_study_file (UNHEX('76dc0dde2b994f838f4a541a948a1569'),'Archivo 0.txt',UNHEX('18022fd22e314ca0aecff99214cfeb6a'));
CALL insert_study_file (UNHEX('5c0f2f793b04437cbf9256a8213e9b0a'),'Archivo 1.jpg',UNHEX('18022fd22e314ca0aecff99214cfeb6a'));
CALL insert_study_file (UNHEX('b3466d76be354a6bb3256bb7cc171a94'),'Archivo 2.doc',UNHEX('18022fd22e314ca0aecff99214cfeb6a'));
CALL insert_study_file (UNHEX('51f983e7af64479db15dfc512fcc6943'),'Archivo 3.txt',UNHEX('18022fd22e314ca0aecff99214cfeb6a'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('e1f84b9b3ec64584b5cf6e33e6ee052c'),'Observación correspondiente al estudio e1f84b9b3ec64584b5cf6e33e6ee052c.',UNHEX('0170f3e4b3764cd087d7efe7345050d5'),'ET');
# Se craran 6 archivos para el estudio e1f84b9b3ec64584b5cf6e33e6ee052c
CALL insert_study_file (UNHEX('73f9d992e4cb4e5bb815d560d2e62005'),'Archivo 0.txt',UNHEX('e1f84b9b3ec64584b5cf6e33e6ee052c'));
CALL insert_study_file (UNHEX('0a41b684ba51463fa6e0d3f8fa7c1441'),'Archivo 1.jpg',UNHEX('e1f84b9b3ec64584b5cf6e33e6ee052c'));
CALL insert_study_file (UNHEX('1675179d00f140d49cb84ac294b082d7'),'Archivo 2.jpg',UNHEX('e1f84b9b3ec64584b5cf6e33e6ee052c'));
CALL insert_study_file (UNHEX('eee059a2e6c249b5bcd5f48e16c61474'),'Archivo 3.jpg',UNHEX('e1f84b9b3ec64584b5cf6e33e6ee052c'));
CALL insert_study_file (UNHEX('cefaf833810745a39080b522a2da05e1'),'Archivo 4.doc',UNHEX('e1f84b9b3ec64584b5cf6e33e6ee052c'));
CALL insert_study_file (UNHEX('754ace18ca694484aa9efab02de7a035'),'Archivo 5.doc',UNHEX('e1f84b9b3ec64584b5cf6e33e6ee052c'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('bfc4cc491d3e44dfac01b1acca102c7f'),'Observación correspondiente al estudio bfc4cc491d3e44dfac01b1acca102c7f.',UNHEX('0170f3e4b3764cd087d7efe7345050d5'),'BT');
# Se craran 1 archivos para el estudio bfc4cc491d3e44dfac01b1acca102c7f
CALL insert_study_file (UNHEX('e293c3a37a5f4586a28fff2384f07d29'),'Archivo 0.jpg',UNHEX('bfc4cc491d3e44dfac01b1acca102c7f'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('f6469bd20a92413c8a47af3e8a6202c9'),'Observación correspondiente al estudio f6469bd20a92413c8a47af3e8a6202c9.',UNHEX('0170f3e4b3764cd087d7efe7345050d5'),'BT');
# Se craran 3 archivos para el estudio f6469bd20a92413c8a47af3e8a6202c9
CALL insert_study_file (UNHEX('fa20635d434646d49274e0ea712a91b5'),'Archivo 0.pdf',UNHEX('f6469bd20a92413c8a47af3e8a6202c9'));
CALL insert_study_file (UNHEX('560f1f2727f742d5affd7da7738edf32'),'Archivo 1.doc',UNHEX('f6469bd20a92413c8a47af3e8a6202c9'));
CALL insert_study_file (UNHEX('ad8cdd1088784a71bc0e53d61d10d5e3'),'Archivo 2.pdf',UNHEX('f6469bd20a92413c8a47af3e8a6202c9'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('f945d409e3bc4329bed501b50cd1451b'),'Observación correspondiente al estudio f945d409e3bc4329bed501b50cd1451b.',UNHEX('0170f3e4b3764cd087d7efe7345050d5'),'BT');
# Se craran 4 archivos para el estudio f945d409e3bc4329bed501b50cd1451b
CALL insert_study_file (UNHEX('f26889999d274e7eb3b5dce1fac8e230'),'Archivo 0.jpg',UNHEX('f945d409e3bc4329bed501b50cd1451b'));
CALL insert_study_file (UNHEX('516171ead31e4e7fa600f38c8ba2117b'),'Archivo 1.doc',UNHEX('f945d409e3bc4329bed501b50cd1451b'));
CALL insert_study_file (UNHEX('8b888cfe1720469b933ec86990d80d0b'),'Archivo 2.txt',UNHEX('f945d409e3bc4329bed501b50cd1451b'));
CALL insert_study_file (UNHEX('64bf3ed56eb14c81962c7e0e5b13c6f7'),'Archivo 3.pdf',UNHEX('f945d409e3bc4329bed501b50cd1451b'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('d472a253b5f047c8986215f8d0b4721c'),'Observación correspondiente al estudio d472a253b5f047c8986215f8d0b4721c.',UNHEX('0170f3e4b3764cd087d7efe7345050d5'),'BT');
# Se craran 0 archivos para el estudio d472a253b5f047c8986215f8d0b4721c
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('393d69146e2e411c9049723b5c9070c9'),'Observación correspondiente al estudio 393d69146e2e411c9049723b5c9070c9.',UNHEX('0170f3e4b3764cd087d7efe7345050d5'),'BT');
# Se craran 9 archivos para el estudio 393d69146e2e411c9049723b5c9070c9
CALL insert_study_file (UNHEX('e5fbd74e19814e489b04a8822c096c8c'),'Archivo 0.pdf',UNHEX('393d69146e2e411c9049723b5c9070c9'));
CALL insert_study_file (UNHEX('47eb5f8aef8c48f3b43575d49a23ae5b'),'Archivo 1.jpg',UNHEX('393d69146e2e411c9049723b5c9070c9'));
CALL insert_study_file (UNHEX('12fda58a4a3a41e88032fb1da4e3057d'),'Archivo 2.doc',UNHEX('393d69146e2e411c9049723b5c9070c9'));
CALL insert_study_file (UNHEX('eb17b417a577410582c9d375c2a895ed'),'Archivo 3.pdf',UNHEX('393d69146e2e411c9049723b5c9070c9'));
CALL insert_study_file (UNHEX('12234e64e8c1439fb56f8e0d5a99129f'),'Archivo 4.txt',UNHEX('393d69146e2e411c9049723b5c9070c9'));
CALL insert_study_file (UNHEX('9a6016f352ae4a83b8193972d66d9113'),'Archivo 5.jpg',UNHEX('393d69146e2e411c9049723b5c9070c9'));
CALL insert_study_file (UNHEX('c332dbbd566d4a76ba0b3c60dc68e347'),'Archivo 6.jpg',UNHEX('393d69146e2e411c9049723b5c9070c9'));
CALL insert_study_file (UNHEX('c55b44cd1a694c40b3ed75f2a00e7aab'),'Archivo 7.txt',UNHEX('393d69146e2e411c9049723b5c9070c9'));
CALL insert_study_file (UNHEX('cfc0ae0474ca490796cb912c6f869889'),'Archivo 8.jpg',UNHEX('393d69146e2e411c9049723b5c9070c9'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('a5658c6072004db1a2233b39661ff8fd'),'Observación correspondiente al estudio a5658c6072004db1a2233b39661ff8fd.',UNHEX('0170f3e4b3764cd087d7efe7345050d5'),'BT');
# Se craran 4 archivos para el estudio a5658c6072004db1a2233b39661ff8fd
CALL insert_study_file (UNHEX('411c66f25af34ad1a0f413a9a8895cb3'),'Archivo 0.pdf',UNHEX('a5658c6072004db1a2233b39661ff8fd'));
CALL insert_study_file (UNHEX('0009bed3a4da4d6e8ba079e348ae5b27'),'Archivo 1.txt',UNHEX('a5658c6072004db1a2233b39661ff8fd'));
CALL insert_study_file (UNHEX('90d4d7cf2a0a41fbb498d3ec311903c7'),'Archivo 2.jpg',UNHEX('a5658c6072004db1a2233b39661ff8fd'));
CALL insert_study_file (UNHEX('0b1acf8f247d4290b966ee93aaf4a538'),'Archivo 3.jpg',UNHEX('a5658c6072004db1a2233b39661ff8fd'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('fff4aff5e9964bceb7915004257d05e4'),'Observación correspondiente al estudio fff4aff5e9964bceb7915004257d05e4.',UNHEX('0170f3e4b3764cd087d7efe7345050d5'),'ET');
# Se craran 3 archivos para el estudio fff4aff5e9964bceb7915004257d05e4
CALL insert_study_file (UNHEX('1459e0270a684bf682e86753da1a158c'),'Archivo 0.txt',UNHEX('fff4aff5e9964bceb7915004257d05e4'));
CALL insert_study_file (UNHEX('826b13bca0a84454883e55bc958dce02'),'Archivo 1.jpg',UNHEX('fff4aff5e9964bceb7915004257d05e4'));
CALL insert_study_file (UNHEX('4a45475414474c6982ce7256143e3ab3'),'Archivo 2.doc',UNHEX('fff4aff5e9964bceb7915004257d05e4'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 94d49471cffe40da8eee67041cb58f46
CALL insert_patient ('1960-11-06','1','F', UNHEX('94d49471cffe40da8eee67041cb58f46'),'Silk, Dagmar','doctor');
# Se craran 0 estudios para el paciente 94d49471cffe40da8eee67041cb58f46
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 385b4f6371e84be0aa3fc719577ac43f
CALL insert_patient ('1967-12-01','2','M', UNHEX('385b4f6371e84be0aa3fc719577ac43f'),'Ahlfors, garrett Lex','doctor');
# Se craran 6 estudios para el paciente 385b4f6371e84be0aa3fc719577ac43f
CALL insert_study ('2014-07-31',UNHEX('3c90427248694be9b7a061b8dda745fa'),'Observación correspondiente al estudio 3c90427248694be9b7a061b8dda745fa.',UNHEX('385b4f6371e84be0aa3fc719577ac43f'),'BT');
# Se craran 5 archivos para el estudio 3c90427248694be9b7a061b8dda745fa
CALL insert_study_file (UNHEX('b5cbd8a0f444403c99927c25976408c5'),'Archivo 0.jpg',UNHEX('3c90427248694be9b7a061b8dda745fa'));
CALL insert_study_file (UNHEX('6c5c705dab334716a84e127a36286582'),'Archivo 1.jpg',UNHEX('3c90427248694be9b7a061b8dda745fa'));
CALL insert_study_file (UNHEX('f19247b5e7af468c9f98b50b1bf50469'),'Archivo 2.jpg',UNHEX('3c90427248694be9b7a061b8dda745fa'));
CALL insert_study_file (UNHEX('f23ad2fd15974bd28f392d2799a9c52d'),'Archivo 3.doc',UNHEX('3c90427248694be9b7a061b8dda745fa'));
CALL insert_study_file (UNHEX('68dc22c68f2c4a9da38d2529651bc624'),'Archivo 4.pdf',UNHEX('3c90427248694be9b7a061b8dda745fa'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('9e36d4d3cc6f4ce5bcb1d7e0147ac693'),'Observación correspondiente al estudio 9e36d4d3cc6f4ce5bcb1d7e0147ac693.',UNHEX('385b4f6371e84be0aa3fc719577ac43f'),'BT');
# Se craran 8 archivos para el estudio 9e36d4d3cc6f4ce5bcb1d7e0147ac693
CALL insert_study_file (UNHEX('de0656b51272464ea988a600836a445a'),'Archivo 0.jpg',UNHEX('9e36d4d3cc6f4ce5bcb1d7e0147ac693'));
CALL insert_study_file (UNHEX('e9776453b328465799d412dc50dca0db'),'Archivo 1.doc',UNHEX('9e36d4d3cc6f4ce5bcb1d7e0147ac693'));
CALL insert_study_file (UNHEX('acd121ad6bb74d66a622dcab256545fb'),'Archivo 2.jpg',UNHEX('9e36d4d3cc6f4ce5bcb1d7e0147ac693'));
CALL insert_study_file (UNHEX('526157f94442404a826815907a9c567e'),'Archivo 3.jpg',UNHEX('9e36d4d3cc6f4ce5bcb1d7e0147ac693'));
CALL insert_study_file (UNHEX('82608f0900e34c0a967a01eb5d23c3b8'),'Archivo 4.doc',UNHEX('9e36d4d3cc6f4ce5bcb1d7e0147ac693'));
CALL insert_study_file (UNHEX('0305b1a45b624c12bc6b14f76e22a46e'),'Archivo 5.jpg',UNHEX('9e36d4d3cc6f4ce5bcb1d7e0147ac693'));
CALL insert_study_file (UNHEX('de5ebd87bdc5405bb09d24f37ef6ad4c'),'Archivo 6.txt',UNHEX('9e36d4d3cc6f4ce5bcb1d7e0147ac693'));
CALL insert_study_file (UNHEX('fe1884fcdebf4d34a0fa58cd0e1fa34e'),'Archivo 7.doc',UNHEX('9e36d4d3cc6f4ce5bcb1d7e0147ac693'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('3d8e8f69b1884050bde9ef96f73b50a5'),'Observación correspondiente al estudio 3d8e8f69b1884050bde9ef96f73b50a5.',UNHEX('385b4f6371e84be0aa3fc719577ac43f'),'UA');
# Se craran 8 archivos para el estudio 3d8e8f69b1884050bde9ef96f73b50a5
CALL insert_study_file (UNHEX('139f487111f242deb83efa8c2d6a84b6'),'Archivo 0.jpg',UNHEX('3d8e8f69b1884050bde9ef96f73b50a5'));
CALL insert_study_file (UNHEX('2f37b55545ea4ed5a510a3e7b9811866'),'Archivo 1.pdf',UNHEX('3d8e8f69b1884050bde9ef96f73b50a5'));
CALL insert_study_file (UNHEX('9b350d6b57694066b411e1732de553e6'),'Archivo 2.txt',UNHEX('3d8e8f69b1884050bde9ef96f73b50a5'));
CALL insert_study_file (UNHEX('8a72ba45622241f685d282c8b49bcdfb'),'Archivo 3.jpg',UNHEX('3d8e8f69b1884050bde9ef96f73b50a5'));
CALL insert_study_file (UNHEX('d2bee9540f3643bb96ae2499098c67ef'),'Archivo 4.txt',UNHEX('3d8e8f69b1884050bde9ef96f73b50a5'));
CALL insert_study_file (UNHEX('750f5b3f17df40e2881334d219fe5b40'),'Archivo 5.txt',UNHEX('3d8e8f69b1884050bde9ef96f73b50a5'));
CALL insert_study_file (UNHEX('d731feefa0ee4c219f114a5ab3e60b57'),'Archivo 6.pdf',UNHEX('3d8e8f69b1884050bde9ef96f73b50a5'));
CALL insert_study_file (UNHEX('72ef6f58d27d4d6fb311ecef09f699d3'),'Archivo 7.txt',UNHEX('3d8e8f69b1884050bde9ef96f73b50a5'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('baca1a0f36874c24bc02298da812ae1a'),'Observación correspondiente al estudio baca1a0f36874c24bc02298da812ae1a.',UNHEX('385b4f6371e84be0aa3fc719577ac43f'),'BT');
# Se craran 6 archivos para el estudio baca1a0f36874c24bc02298da812ae1a
CALL insert_study_file (UNHEX('2248b0c45f6e4b9c913238ff27533b66'),'Archivo 0.txt',UNHEX('baca1a0f36874c24bc02298da812ae1a'));
CALL insert_study_file (UNHEX('4719a8d8ed2a45aca91a50ac38263be3'),'Archivo 1.jpg',UNHEX('baca1a0f36874c24bc02298da812ae1a'));
CALL insert_study_file (UNHEX('0fdcf9bbe054438da69a0d61e9a84331'),'Archivo 2.txt',UNHEX('baca1a0f36874c24bc02298da812ae1a'));
CALL insert_study_file (UNHEX('bab907d2968745b9b74ccbbaf8d3fff7'),'Archivo 3.txt',UNHEX('baca1a0f36874c24bc02298da812ae1a'));
CALL insert_study_file (UNHEX('2a2f44c7ec1149e5b1c0c530588982bf'),'Archivo 4.txt',UNHEX('baca1a0f36874c24bc02298da812ae1a'));
CALL insert_study_file (UNHEX('5296a7207ede4e23b461c7c5a565a8c2'),'Archivo 5.jpg',UNHEX('baca1a0f36874c24bc02298da812ae1a'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('9424d669fbad4963b320741303d2aa84'),'Observación correspondiente al estudio 9424d669fbad4963b320741303d2aa84.',UNHEX('385b4f6371e84be0aa3fc719577ac43f'),'UA');
# Se craran 6 archivos para el estudio 9424d669fbad4963b320741303d2aa84
CALL insert_study_file (UNHEX('3ecad6f751dd4893a1f7fea4c3815d16'),'Archivo 0.jpg',UNHEX('9424d669fbad4963b320741303d2aa84'));
CALL insert_study_file (UNHEX('afc9675e43304aa1b215961716e99457'),'Archivo 1.doc',UNHEX('9424d669fbad4963b320741303d2aa84'));
CALL insert_study_file (UNHEX('6acfe832a14d474380bc887a4700daab'),'Archivo 2.jpg',UNHEX('9424d669fbad4963b320741303d2aa84'));
CALL insert_study_file (UNHEX('2c9fb4e1c0ab4cf88c2093044982926b'),'Archivo 3.doc',UNHEX('9424d669fbad4963b320741303d2aa84'));
CALL insert_study_file (UNHEX('86d148c19ad847b79515913c617fc18f'),'Archivo 4.txt',UNHEX('9424d669fbad4963b320741303d2aa84'));
CALL insert_study_file (UNHEX('453742d9f4014f379f6c8d825b5f11da'),'Archivo 5.jpg',UNHEX('9424d669fbad4963b320741303d2aa84'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('9682c8ab76004c56bf87f7022c3c8c85'),'Observación correspondiente al estudio 9682c8ab76004c56bf87f7022c3c8c85.',UNHEX('385b4f6371e84be0aa3fc719577ac43f'),'UA');
# Se craran 7 archivos para el estudio 9682c8ab76004c56bf87f7022c3c8c85
CALL insert_study_file (UNHEX('6d06c094d1a84d87b3e515ab3b319dc3'),'Archivo 0.txt',UNHEX('9682c8ab76004c56bf87f7022c3c8c85'));
CALL insert_study_file (UNHEX('3ecb6204e4cf47819a9c882098c54724'),'Archivo 1.txt',UNHEX('9682c8ab76004c56bf87f7022c3c8c85'));
CALL insert_study_file (UNHEX('b9c7e0dc9b01487694f86358b23be17c'),'Archivo 2.txt',UNHEX('9682c8ab76004c56bf87f7022c3c8c85'));
CALL insert_study_file (UNHEX('b2237868d5da4a1aa1ad6158355876e8'),'Archivo 3.doc',UNHEX('9682c8ab76004c56bf87f7022c3c8c85'));
CALL insert_study_file (UNHEX('ce13b0284cc74910b5d250635e574dd1'),'Archivo 4.pdf',UNHEX('9682c8ab76004c56bf87f7022c3c8c85'));
CALL insert_study_file (UNHEX('ae8c1892d2514e488cc9550073b14a87'),'Archivo 5.jpg',UNHEX('9682c8ab76004c56bf87f7022c3c8c85'));
CALL insert_study_file (UNHEX('3b53e4c97de8421f8950a74dcc1b6f2f'),'Archivo 6.txt',UNHEX('9682c8ab76004c56bf87f7022c3c8c85'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 6608243d29fd4cc5bfae620c8c31d298
CALL insert_patient ('1966-01-09','5','M', UNHEX('6608243d29fd4cc5bfae620c8c31d298'),'Wheelwright, casey major','doctor');
# Se craran 6 estudios para el paciente 6608243d29fd4cc5bfae620c8c31d298
CALL insert_study ('2014-08-05',UNHEX('f2da99ea0471424ead50492dcb76e264'),'Observación correspondiente al estudio f2da99ea0471424ead50492dcb76e264.',UNHEX('6608243d29fd4cc5bfae620c8c31d298'),'ET');
# Se craran 0 archivos para el estudio f2da99ea0471424ead50492dcb76e264
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('6410cfd869214ba7a32639d655415937'),'Observación correspondiente al estudio 6410cfd869214ba7a32639d655415937.',UNHEX('6608243d29fd4cc5bfae620c8c31d298'),'UA');
# Se craran 6 archivos para el estudio 6410cfd869214ba7a32639d655415937
CALL insert_study_file (UNHEX('50b60eaf6bcd47318e52d33de3cf6442'),'Archivo 0.txt',UNHEX('6410cfd869214ba7a32639d655415937'));
CALL insert_study_file (UNHEX('58db69c1423f4f7895130de587549dbe'),'Archivo 1.txt',UNHEX('6410cfd869214ba7a32639d655415937'));
CALL insert_study_file (UNHEX('46a2eb377e6249049fdc4743d7b87c39'),'Archivo 2.txt',UNHEX('6410cfd869214ba7a32639d655415937'));
CALL insert_study_file (UNHEX('863ebd92c3bb4bcca1bc7bc80002fb73'),'Archivo 3.pdf',UNHEX('6410cfd869214ba7a32639d655415937'));
CALL insert_study_file (UNHEX('1ce54e05ff6c443d9fa68868aa69c8f7'),'Archivo 4.doc',UNHEX('6410cfd869214ba7a32639d655415937'));
CALL insert_study_file (UNHEX('0f8a9c2580fe43afa81a980ead1d98d6'),'Archivo 5.jpg',UNHEX('6410cfd869214ba7a32639d655415937'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('c1eb7d4dceea4fceb0bd348f616cc775'),'Observación correspondiente al estudio c1eb7d4dceea4fceb0bd348f616cc775.',UNHEX('6608243d29fd4cc5bfae620c8c31d298'),'UA');
# Se craran 2 archivos para el estudio c1eb7d4dceea4fceb0bd348f616cc775
CALL insert_study_file (UNHEX('d3c2c9043f804ffe9e053dc57e929dac'),'Archivo 0.jpg',UNHEX('c1eb7d4dceea4fceb0bd348f616cc775'));
CALL insert_study_file (UNHEX('f21abf4ecc2641809c4de4c13213abc1'),'Archivo 1.pdf',UNHEX('c1eb7d4dceea4fceb0bd348f616cc775'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('4671f41263344634bf26efa9316b1628'),'Observación correspondiente al estudio 4671f41263344634bf26efa9316b1628.',UNHEX('6608243d29fd4cc5bfae620c8c31d298'),'UA');
# Se craran 4 archivos para el estudio 4671f41263344634bf26efa9316b1628
CALL insert_study_file (UNHEX('777648567cd042d3b42377530a424a0d'),'Archivo 0.pdf',UNHEX('4671f41263344634bf26efa9316b1628'));
CALL insert_study_file (UNHEX('f8ff442d09244523ab17a2ee53698e45'),'Archivo 1.jpg',UNHEX('4671f41263344634bf26efa9316b1628'));
CALL insert_study_file (UNHEX('fc317b88684e48428e5329a2e984fb51'),'Archivo 2.doc',UNHEX('4671f41263344634bf26efa9316b1628'));
CALL insert_study_file (UNHEX('54c435a73f834d8083349bddacdc6327'),'Archivo 3.doc',UNHEX('4671f41263344634bf26efa9316b1628'));
# Fin creacion de archivos
CALL insert_study ('2014-07-29',UNHEX('6b8f8cdfd35f41f9927d1fbbc017cb73'),'Observación correspondiente al estudio 6b8f8cdfd35f41f9927d1fbbc017cb73.',UNHEX('6608243d29fd4cc5bfae620c8c31d298'),'UA');
# Se craran 9 archivos para el estudio 6b8f8cdfd35f41f9927d1fbbc017cb73
CALL insert_study_file (UNHEX('f80507f48ece42c589e1c8a9f3ada6bc'),'Archivo 0.jpg',UNHEX('6b8f8cdfd35f41f9927d1fbbc017cb73'));
CALL insert_study_file (UNHEX('a9430153382e406aa36eb8a990bcc8f9'),'Archivo 1.jpg',UNHEX('6b8f8cdfd35f41f9927d1fbbc017cb73'));
CALL insert_study_file (UNHEX('f22f8a5668384add821cf97290c9970c'),'Archivo 2.jpg',UNHEX('6b8f8cdfd35f41f9927d1fbbc017cb73'));
CALL insert_study_file (UNHEX('0f5df2f84a96433d88d653af21e86b49'),'Archivo 3.jpg',UNHEX('6b8f8cdfd35f41f9927d1fbbc017cb73'));
CALL insert_study_file (UNHEX('05538a61ed5749558fec7c30cc015a44'),'Archivo 4.txt',UNHEX('6b8f8cdfd35f41f9927d1fbbc017cb73'));
CALL insert_study_file (UNHEX('6c37b556a9114075a79db6dc87429c2f'),'Archivo 5.txt',UNHEX('6b8f8cdfd35f41f9927d1fbbc017cb73'));
CALL insert_study_file (UNHEX('f30b49ee296149619f22f4f95b37feef'),'Archivo 6.doc',UNHEX('6b8f8cdfd35f41f9927d1fbbc017cb73'));
CALL insert_study_file (UNHEX('84529aa0404942db804a0afc135d97db'),'Archivo 7.pdf',UNHEX('6b8f8cdfd35f41f9927d1fbbc017cb73'));
CALL insert_study_file (UNHEX('a40f65bf6cc04120bfbbd0de9075aa69'),'Archivo 8.jpg',UNHEX('6b8f8cdfd35f41f9927d1fbbc017cb73'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('bff35faa9f4249c1892db7b68a15c640'),'Observación correspondiente al estudio bff35faa9f4249c1892db7b68a15c640.',UNHEX('6608243d29fd4cc5bfae620c8c31d298'),'BT');
# Se craran 2 archivos para el estudio bff35faa9f4249c1892db7b68a15c640
CALL insert_study_file (UNHEX('f0c5eeb54e404d049e2691032a6bdc38'),'Archivo 0.txt',UNHEX('bff35faa9f4249c1892db7b68a15c640'));
CALL insert_study_file (UNHEX('d7d8288f438d4df1bd5e4f217c96b710'),'Archivo 1.pdf',UNHEX('bff35faa9f4249c1892db7b68a15c640'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 8eda0a94abe94f67aff3e222d17c0840
CALL insert_patient ('1936-04-15','1','F', UNHEX('8eda0a94abe94f67aff3e222d17c0840'),'Kleyna, Veda','doctor');
# Se craran 4 estudios para el paciente 8eda0a94abe94f67aff3e222d17c0840
CALL insert_study ('2014-08-05',UNHEX('6fec640e50474fc9ba2a118a96871a6c'),'Observación correspondiente al estudio 6fec640e50474fc9ba2a118a96871a6c.',UNHEX('8eda0a94abe94f67aff3e222d17c0840'),'BT');
# Se craran 2 archivos para el estudio 6fec640e50474fc9ba2a118a96871a6c
CALL insert_study_file (UNHEX('feb5f8b1817b49d6969079f147668868'),'Archivo 0.txt',UNHEX('6fec640e50474fc9ba2a118a96871a6c'));
CALL insert_study_file (UNHEX('7818379ea85042718376bedf227dd448'),'Archivo 1.pdf',UNHEX('6fec640e50474fc9ba2a118a96871a6c'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('348d404767d649b5af83a12c56624d5f'),'Observación correspondiente al estudio 348d404767d649b5af83a12c56624d5f.',UNHEX('8eda0a94abe94f67aff3e222d17c0840'),'UA');
# Se craran 5 archivos para el estudio 348d404767d649b5af83a12c56624d5f
CALL insert_study_file (UNHEX('d365f3746b4841cdb53c83ba3c7c442e'),'Archivo 0.jpg',UNHEX('348d404767d649b5af83a12c56624d5f'));
CALL insert_study_file (UNHEX('1f9a68fc9293447c8b110e27cfa2be84'),'Archivo 1.pdf',UNHEX('348d404767d649b5af83a12c56624d5f'));
CALL insert_study_file (UNHEX('f341fb8053364643bfbbd9c292e6e31e'),'Archivo 2.txt',UNHEX('348d404767d649b5af83a12c56624d5f'));
CALL insert_study_file (UNHEX('2eff63c94275406daa40dd74b38471a4'),'Archivo 3.txt',UNHEX('348d404767d649b5af83a12c56624d5f'));
CALL insert_study_file (UNHEX('9613e94ddaa0453bacdda612e63da102'),'Archivo 4.doc',UNHEX('348d404767d649b5af83a12c56624d5f'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('754ee3cc921c4eb2af2d3f55cd0de8f8'),'Observación correspondiente al estudio 754ee3cc921c4eb2af2d3f55cd0de8f8.',UNHEX('8eda0a94abe94f67aff3e222d17c0840'),'BT');
# Se craran 7 archivos para el estudio 754ee3cc921c4eb2af2d3f55cd0de8f8
CALL insert_study_file (UNHEX('5ee470e100014ebebb95788ef61f58e6'),'Archivo 0.jpg',UNHEX('754ee3cc921c4eb2af2d3f55cd0de8f8'));
CALL insert_study_file (UNHEX('a371ca02fb804785af7f72e43482ac31'),'Archivo 1.doc',UNHEX('754ee3cc921c4eb2af2d3f55cd0de8f8'));
CALL insert_study_file (UNHEX('9ca91702cf5249339e14c1801b2ba8c4'),'Archivo 2.jpg',UNHEX('754ee3cc921c4eb2af2d3f55cd0de8f8'));
CALL insert_study_file (UNHEX('e010fd683473429a94640a7b8045d612'),'Archivo 3.txt',UNHEX('754ee3cc921c4eb2af2d3f55cd0de8f8'));
CALL insert_study_file (UNHEX('30d3ab4973404aeab44e86847ea52e79'),'Archivo 4.txt',UNHEX('754ee3cc921c4eb2af2d3f55cd0de8f8'));
CALL insert_study_file (UNHEX('a4c85e076ee34f539d3dfa5c8eb72544'),'Archivo 5.jpg',UNHEX('754ee3cc921c4eb2af2d3f55cd0de8f8'));
CALL insert_study_file (UNHEX('ce5b3e2db14b48ab9ea1d0566d61fdab'),'Archivo 6.doc',UNHEX('754ee3cc921c4eb2af2d3f55cd0de8f8'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('ac7ccf337d9c40868f2ce36c451ffd40'),'Observación correspondiente al estudio ac7ccf337d9c40868f2ce36c451ffd40.',UNHEX('8eda0a94abe94f67aff3e222d17c0840'),'ET');
# Se craran 5 archivos para el estudio ac7ccf337d9c40868f2ce36c451ffd40
CALL insert_study_file (UNHEX('35a1a26a03fe484181ba8e64208031de'),'Archivo 0.pdf',UNHEX('ac7ccf337d9c40868f2ce36c451ffd40'));
CALL insert_study_file (UNHEX('a79799239f5f4952a2594e948b78c3cf'),'Archivo 1.pdf',UNHEX('ac7ccf337d9c40868f2ce36c451ffd40'));
CALL insert_study_file (UNHEX('3044d3da02414ce4b549f52f4cf792e8'),'Archivo 2.txt',UNHEX('ac7ccf337d9c40868f2ce36c451ffd40'));
CALL insert_study_file (UNHEX('08a038d4e8824fd984de4569fb04bcb8'),'Archivo 3.pdf',UNHEX('ac7ccf337d9c40868f2ce36c451ffd40'));
CALL insert_study_file (UNHEX('357ff9f6e0a54f6aa4f896aa68fe7229'),'Archivo 4.jpg',UNHEX('ac7ccf337d9c40868f2ce36c451ffd40'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 16163d0320cb4dd69d7edccf356098d5
CALL insert_patient ('1949-05-02','1','M', UNHEX('16163d0320cb4dd69d7edccf356098d5'),'Lissy, Ignacius town','doctor');
# Se craran 1 estudios para el paciente 16163d0320cb4dd69d7edccf356098d5
CALL insert_study ('2014-08-04',UNHEX('8f63a52bd67345b0ad0564ca843558cf'),'Observación correspondiente al estudio 8f63a52bd67345b0ad0564ca843558cf.',UNHEX('16163d0320cb4dd69d7edccf356098d5'),'UA');
# Se craran 6 archivos para el estudio 8f63a52bd67345b0ad0564ca843558cf
CALL insert_study_file (UNHEX('6e9566482136460697c2a089b1c8d8e0'),'Archivo 0.doc',UNHEX('8f63a52bd67345b0ad0564ca843558cf'));
CALL insert_study_file (UNHEX('868081fd0d1a451f81cc161b868ce0ce'),'Archivo 1.jpg',UNHEX('8f63a52bd67345b0ad0564ca843558cf'));
CALL insert_study_file (UNHEX('d8aa5eae49744c1d897d53968ac0c4ff'),'Archivo 2.doc',UNHEX('8f63a52bd67345b0ad0564ca843558cf'));
CALL insert_study_file (UNHEX('6b52e091e3ba4e18975bb6c8a057ba7a'),'Archivo 3.jpg',UNHEX('8f63a52bd67345b0ad0564ca843558cf'));
CALL insert_study_file (UNHEX('85d62fb060d747f88a7a3405d4f8f1b8'),'Archivo 4.jpg',UNHEX('8f63a52bd67345b0ad0564ca843558cf'));
CALL insert_study_file (UNHEX('75954495082340598d2c5c9912cf7b9f'),'Archivo 5.jpg',UNHEX('8f63a52bd67345b0ad0564ca843558cf'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente eb0c23e3dc20484b953bb701bebeece5
CALL insert_patient ('1931-03-08','3','F', UNHEX('eb0c23e3dc20484b953bb701bebeece5'),'Postelnicu, brynna Genevra','doctor');
# Se craran 13 estudios para el paciente eb0c23e3dc20484b953bb701bebeece5
CALL insert_study ('2014-08-03',UNHEX('0879e79574974eff85566fbd8aefcaf2'),'Observación correspondiente al estudio 0879e79574974eff85566fbd8aefcaf2.',UNHEX('eb0c23e3dc20484b953bb701bebeece5'),'BT');
# Se craran 0 archivos para el estudio 0879e79574974eff85566fbd8aefcaf2
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('fc9edff7c4c745938fc2291d26803569'),'Observación correspondiente al estudio fc9edff7c4c745938fc2291d26803569.',UNHEX('eb0c23e3dc20484b953bb701bebeece5'),'UA');
# Se craran 1 archivos para el estudio fc9edff7c4c745938fc2291d26803569
CALL insert_study_file (UNHEX('1c8ad47c447541a5a19901e88d10fc5c'),'Archivo 0.doc',UNHEX('fc9edff7c4c745938fc2291d26803569'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('7a62aeaad67144d3b25c2d499d0dd654'),'Observación correspondiente al estudio 7a62aeaad67144d3b25c2d499d0dd654.',UNHEX('eb0c23e3dc20484b953bb701bebeece5'),'BT');
# Se craran 3 archivos para el estudio 7a62aeaad67144d3b25c2d499d0dd654
CALL insert_study_file (UNHEX('990be6f1bf124d02b3d99161fb090fe8'),'Archivo 0.txt',UNHEX('7a62aeaad67144d3b25c2d499d0dd654'));
CALL insert_study_file (UNHEX('361dabd203a8484da621882a0d45a438'),'Archivo 1.doc',UNHEX('7a62aeaad67144d3b25c2d499d0dd654'));
CALL insert_study_file (UNHEX('88bfa70ceb214d1e9fd1a799a9bb9e10'),'Archivo 2.pdf',UNHEX('7a62aeaad67144d3b25c2d499d0dd654'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('605244c881354f0e9fbf61088fe26475'),'Observación correspondiente al estudio 605244c881354f0e9fbf61088fe26475.',UNHEX('eb0c23e3dc20484b953bb701bebeece5'),'UA');
# Se craran 3 archivos para el estudio 605244c881354f0e9fbf61088fe26475
CALL insert_study_file (UNHEX('9b1624c9695e406e833d8fa500ade9f4'),'Archivo 0.pdf',UNHEX('605244c881354f0e9fbf61088fe26475'));
CALL insert_study_file (UNHEX('c5e3299ae91344a2b637dc4b0e405b79'),'Archivo 1.doc',UNHEX('605244c881354f0e9fbf61088fe26475'));
CALL insert_study_file (UNHEX('b2a24eb645be4429ab31647f3b62889e'),'Archivo 2.jpg',UNHEX('605244c881354f0e9fbf61088fe26475'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('1baa8edbb1294bd59721bfa577a7491c'),'Observación correspondiente al estudio 1baa8edbb1294bd59721bfa577a7491c.',UNHEX('eb0c23e3dc20484b953bb701bebeece5'),'BT');
# Se craran 1 archivos para el estudio 1baa8edbb1294bd59721bfa577a7491c
CALL insert_study_file (UNHEX('4e09218a8bc047ba8996344e9197f58b'),'Archivo 0.pdf',UNHEX('1baa8edbb1294bd59721bfa577a7491c'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('9c0bbe13affd459c82a9eabfe15f9616'),'Observación correspondiente al estudio 9c0bbe13affd459c82a9eabfe15f9616.',UNHEX('eb0c23e3dc20484b953bb701bebeece5'),'ET');
# Se craran 1 archivos para el estudio 9c0bbe13affd459c82a9eabfe15f9616
CALL insert_study_file (UNHEX('85717a1423224acd81c23d59ee91f1d0'),'Archivo 0.doc',UNHEX('9c0bbe13affd459c82a9eabfe15f9616'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('7ac487dcdf7c4cb99416637e27e81518'),'Observación correspondiente al estudio 7ac487dcdf7c4cb99416637e27e81518.',UNHEX('eb0c23e3dc20484b953bb701bebeece5'),'BT');
# Se craran 5 archivos para el estudio 7ac487dcdf7c4cb99416637e27e81518
CALL insert_study_file (UNHEX('5c7f5ac836fc4efb9c653913685353f6'),'Archivo 0.pdf',UNHEX('7ac487dcdf7c4cb99416637e27e81518'));
CALL insert_study_file (UNHEX('3d1f046f6c87400d91e4475aa35a7db6'),'Archivo 1.txt',UNHEX('7ac487dcdf7c4cb99416637e27e81518'));
CALL insert_study_file (UNHEX('16a7d19dcaf04570bc96815da04b9e5c'),'Archivo 2.doc',UNHEX('7ac487dcdf7c4cb99416637e27e81518'));
CALL insert_study_file (UNHEX('0678f0433b1d4b689d8c3d83510c4c73'),'Archivo 3.doc',UNHEX('7ac487dcdf7c4cb99416637e27e81518'));
CALL insert_study_file (UNHEX('1d5d5d6503c14edba322e9bd33db0365'),'Archivo 4.txt',UNHEX('7ac487dcdf7c4cb99416637e27e81518'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('f53a5e46f3dc4b6ab063217898f9882a'),'Observación correspondiente al estudio f53a5e46f3dc4b6ab063217898f9882a.',UNHEX('eb0c23e3dc20484b953bb701bebeece5'),'BT');
# Se craran 8 archivos para el estudio f53a5e46f3dc4b6ab063217898f9882a
CALL insert_study_file (UNHEX('ca84dbdaef874d9688d5af7393f78b5b'),'Archivo 0.pdf',UNHEX('f53a5e46f3dc4b6ab063217898f9882a'));
CALL insert_study_file (UNHEX('6718e8e2a45d4b8d809b574b9dffea2f'),'Archivo 1.pdf',UNHEX('f53a5e46f3dc4b6ab063217898f9882a'));
CALL insert_study_file (UNHEX('d7d671ee1a484a1db281eb689d53081e'),'Archivo 2.pdf',UNHEX('f53a5e46f3dc4b6ab063217898f9882a'));
CALL insert_study_file (UNHEX('7b7ecac1b62346ada1e2dfc2e20af385'),'Archivo 3.jpg',UNHEX('f53a5e46f3dc4b6ab063217898f9882a'));
CALL insert_study_file (UNHEX('16ca5158b6a44608bbf38ec0146250c1'),'Archivo 4.txt',UNHEX('f53a5e46f3dc4b6ab063217898f9882a'));
CALL insert_study_file (UNHEX('6869593521b34fd480be566f6d83dc82'),'Archivo 5.doc',UNHEX('f53a5e46f3dc4b6ab063217898f9882a'));
CALL insert_study_file (UNHEX('f77ce0bfaabc44cbbe3e32fea85a81b2'),'Archivo 6.jpg',UNHEX('f53a5e46f3dc4b6ab063217898f9882a'));
CALL insert_study_file (UNHEX('2be538ffd6aa4600bf0af53965ba7987'),'Archivo 7.doc',UNHEX('f53a5e46f3dc4b6ab063217898f9882a'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('2b5abb0235644596b66ec24c58fbe5d7'),'Observación correspondiente al estudio 2b5abb0235644596b66ec24c58fbe5d7.',UNHEX('eb0c23e3dc20484b953bb701bebeece5'),'UA');
# Se craran 4 archivos para el estudio 2b5abb0235644596b66ec24c58fbe5d7
CALL insert_study_file (UNHEX('ae4f35c10a5d4c21b44207167f7aaf70'),'Archivo 0.txt',UNHEX('2b5abb0235644596b66ec24c58fbe5d7'));
CALL insert_study_file (UNHEX('94ef94ebc5714e2683fbb98b5eed7062'),'Archivo 1.txt',UNHEX('2b5abb0235644596b66ec24c58fbe5d7'));
CALL insert_study_file (UNHEX('187144357cda4de8bf223328d2232c7d'),'Archivo 2.doc',UNHEX('2b5abb0235644596b66ec24c58fbe5d7'));
CALL insert_study_file (UNHEX('60a9304fb3a84a13ae751f40233a54fa'),'Archivo 3.txt',UNHEX('2b5abb0235644596b66ec24c58fbe5d7'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('8f7cfb359af2416f9ae730992afd44d2'),'Observación correspondiente al estudio 8f7cfb359af2416f9ae730992afd44d2.',UNHEX('eb0c23e3dc20484b953bb701bebeece5'),'BT');
# Se craran 7 archivos para el estudio 8f7cfb359af2416f9ae730992afd44d2
CALL insert_study_file (UNHEX('7da11434649a4d50af4f0fb9f9f58860'),'Archivo 0.jpg',UNHEX('8f7cfb359af2416f9ae730992afd44d2'));
CALL insert_study_file (UNHEX('c43596a2135545e9bad9c7cf3f8e664f'),'Archivo 1.doc',UNHEX('8f7cfb359af2416f9ae730992afd44d2'));
CALL insert_study_file (UNHEX('4f55a046d1bc4b269d68d5b03e1e53d0'),'Archivo 2.pdf',UNHEX('8f7cfb359af2416f9ae730992afd44d2'));
CALL insert_study_file (UNHEX('62e6df9f834040e0b6372eae23a4aff1'),'Archivo 3.txt',UNHEX('8f7cfb359af2416f9ae730992afd44d2'));
CALL insert_study_file (UNHEX('53f1e89bbaf84c8999dea8b10a413fa7'),'Archivo 4.pdf',UNHEX('8f7cfb359af2416f9ae730992afd44d2'));
CALL insert_study_file (UNHEX('6be4f0a38b5f47eaae9a2b31a2241e1b'),'Archivo 5.jpg',UNHEX('8f7cfb359af2416f9ae730992afd44d2'));
CALL insert_study_file (UNHEX('7082b169ad9f4fcb8773a05021d52f6f'),'Archivo 6.txt',UNHEX('8f7cfb359af2416f9ae730992afd44d2'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('cb8945543d314c70aa6d7006ee63374d'),'Observación correspondiente al estudio cb8945543d314c70aa6d7006ee63374d.',UNHEX('eb0c23e3dc20484b953bb701bebeece5'),'BT');
# Se craran 3 archivos para el estudio cb8945543d314c70aa6d7006ee63374d
CALL insert_study_file (UNHEX('609a129e02454a9bba0a0d2519edd133'),'Archivo 0.doc',UNHEX('cb8945543d314c70aa6d7006ee63374d'));
CALL insert_study_file (UNHEX('a4529c728b4b421aa1ca5b051c555083'),'Archivo 1.doc',UNHEX('cb8945543d314c70aa6d7006ee63374d'));
CALL insert_study_file (UNHEX('4feb2708e206448db270d5ba59685ca8'),'Archivo 2.txt',UNHEX('cb8945543d314c70aa6d7006ee63374d'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('9069fdf9fbff43ab9bd45976324c664b'),'Observación correspondiente al estudio 9069fdf9fbff43ab9bd45976324c664b.',UNHEX('eb0c23e3dc20484b953bb701bebeece5'),'ET');
# Se craran 0 archivos para el estudio 9069fdf9fbff43ab9bd45976324c664b
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('015bb256549a4e88a5ef08248eeec7c0'),'Observación correspondiente al estudio 015bb256549a4e88a5ef08248eeec7c0.',UNHEX('eb0c23e3dc20484b953bb701bebeece5'),'ET');
# Se craran 1 archivos para el estudio 015bb256549a4e88a5ef08248eeec7c0
CALL insert_study_file (UNHEX('eb82bcf4a0e14958bf3233e483b7ce07'),'Archivo 0.jpg',UNHEX('015bb256549a4e88a5ef08248eeec7c0'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente f8b49d2025004d2ba372977a3e7a1086
CALL insert_patient ('1956-02-03','0','M', UNHEX('f8b49d2025004d2ba372977a3e7a1086'),'Kangaloo, Gale Tremayne','doctor');
# Se craran 15 estudios para el paciente f8b49d2025004d2ba372977a3e7a1086
CALL insert_study ('2014-08-05',UNHEX('16d0e2a1c95b4564b7abdc8429293015'),'Observación correspondiente al estudio 16d0e2a1c95b4564b7abdc8429293015.',UNHEX('f8b49d2025004d2ba372977a3e7a1086'),'BT');
# Se craran 9 archivos para el estudio 16d0e2a1c95b4564b7abdc8429293015
CALL insert_study_file (UNHEX('a76d64e81e5a4787a8945ac992731387'),'Archivo 0.pdf',UNHEX('16d0e2a1c95b4564b7abdc8429293015'));
CALL insert_study_file (UNHEX('aec34561061f491184cf65332e04f330'),'Archivo 1.doc',UNHEX('16d0e2a1c95b4564b7abdc8429293015'));
CALL insert_study_file (UNHEX('db379d9072424554b7d73dcc7305488b'),'Archivo 2.jpg',UNHEX('16d0e2a1c95b4564b7abdc8429293015'));
CALL insert_study_file (UNHEX('1c18828f91774693833c80d748910b04'),'Archivo 3.txt',UNHEX('16d0e2a1c95b4564b7abdc8429293015'));
CALL insert_study_file (UNHEX('1e045069c4184d918068dbe4c1f8c352'),'Archivo 4.txt',UNHEX('16d0e2a1c95b4564b7abdc8429293015'));
CALL insert_study_file (UNHEX('1d04d820843a4430b92b343186e38011'),'Archivo 5.txt',UNHEX('16d0e2a1c95b4564b7abdc8429293015'));
CALL insert_study_file (UNHEX('df383eabd54d46238c977127b01be86f'),'Archivo 6.doc',UNHEX('16d0e2a1c95b4564b7abdc8429293015'));
CALL insert_study_file (UNHEX('66202bcb4db84851854ffb3747c7d74a'),'Archivo 7.pdf',UNHEX('16d0e2a1c95b4564b7abdc8429293015'));
CALL insert_study_file (UNHEX('6bb4ef0ac61c43d9930b49dfe7acfc77'),'Archivo 8.txt',UNHEX('16d0e2a1c95b4564b7abdc8429293015'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('bfd7c498327145cf9da2184372a46d31'),'Observación correspondiente al estudio bfd7c498327145cf9da2184372a46d31.',UNHEX('f8b49d2025004d2ba372977a3e7a1086'),'UA');
# Se craran 9 archivos para el estudio bfd7c498327145cf9da2184372a46d31
CALL insert_study_file (UNHEX('625bd094c86e4155a44feedc85168197'),'Archivo 0.txt',UNHEX('bfd7c498327145cf9da2184372a46d31'));
CALL insert_study_file (UNHEX('41a613f0bf25401892d6bdd10b98b728'),'Archivo 1.txt',UNHEX('bfd7c498327145cf9da2184372a46d31'));
CALL insert_study_file (UNHEX('9836184cde3744d8ad172abb15d4049a'),'Archivo 2.doc',UNHEX('bfd7c498327145cf9da2184372a46d31'));
CALL insert_study_file (UNHEX('a004d192719d49eb96c0153b9047a3c0'),'Archivo 3.jpg',UNHEX('bfd7c498327145cf9da2184372a46d31'));
CALL insert_study_file (UNHEX('e71f18b9555e42649e9047aba48d2acf'),'Archivo 4.pdf',UNHEX('bfd7c498327145cf9da2184372a46d31'));
CALL insert_study_file (UNHEX('5b3598dd9f1345feae7e239af7ba624a'),'Archivo 5.jpg',UNHEX('bfd7c498327145cf9da2184372a46d31'));
CALL insert_study_file (UNHEX('ca340a4e95b840c6ae1e6e319940d04e'),'Archivo 6.pdf',UNHEX('bfd7c498327145cf9da2184372a46d31'));
CALL insert_study_file (UNHEX('39f61ab576824c1d9f31fbbd4828a3e3'),'Archivo 7.jpg',UNHEX('bfd7c498327145cf9da2184372a46d31'));
CALL insert_study_file (UNHEX('0dda9bd383724f6eaa133d6547018814'),'Archivo 8.pdf',UNHEX('bfd7c498327145cf9da2184372a46d31'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('f159dafc3dd5443093c8fc1f7bbc2969'),'Observación correspondiente al estudio f159dafc3dd5443093c8fc1f7bbc2969.',UNHEX('f8b49d2025004d2ba372977a3e7a1086'),'BT');
# Se craran 5 archivos para el estudio f159dafc3dd5443093c8fc1f7bbc2969
CALL insert_study_file (UNHEX('8101cd59dcf345d483532990a18aa46a'),'Archivo 0.txt',UNHEX('f159dafc3dd5443093c8fc1f7bbc2969'));
CALL insert_study_file (UNHEX('66002b3e8d30442293edc42335d24779'),'Archivo 1.txt',UNHEX('f159dafc3dd5443093c8fc1f7bbc2969'));
CALL insert_study_file (UNHEX('8655e688f39344afb72ec89f192dac8d'),'Archivo 2.txt',UNHEX('f159dafc3dd5443093c8fc1f7bbc2969'));
CALL insert_study_file (UNHEX('dc5110c826ca4dbd8b0c69d40ed7a7a1'),'Archivo 3.doc',UNHEX('f159dafc3dd5443093c8fc1f7bbc2969'));
CALL insert_study_file (UNHEX('0cf34bdcaff04ca98bd52fa7cd3aad94'),'Archivo 4.jpg',UNHEX('f159dafc3dd5443093c8fc1f7bbc2969'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('1bff49b3ce2f4d70a0b73c2cd0a6251a'),'Observación correspondiente al estudio 1bff49b3ce2f4d70a0b73c2cd0a6251a.',UNHEX('f8b49d2025004d2ba372977a3e7a1086'),'UA');
# Se craran 8 archivos para el estudio 1bff49b3ce2f4d70a0b73c2cd0a6251a
CALL insert_study_file (UNHEX('412729e006fa4fd2a3022d50cb818679'),'Archivo 0.jpg',UNHEX('1bff49b3ce2f4d70a0b73c2cd0a6251a'));
CALL insert_study_file (UNHEX('194e572f818f46fbbd68273cab47a10d'),'Archivo 1.jpg',UNHEX('1bff49b3ce2f4d70a0b73c2cd0a6251a'));
CALL insert_study_file (UNHEX('3bf0e0d1dada439c816b4d4284b5e2ba'),'Archivo 2.jpg',UNHEX('1bff49b3ce2f4d70a0b73c2cd0a6251a'));
CALL insert_study_file (UNHEX('9acc905086d14568bc667a48febccce4'),'Archivo 3.doc',UNHEX('1bff49b3ce2f4d70a0b73c2cd0a6251a'));
CALL insert_study_file (UNHEX('52dd341c8cf44b1984ec78456c767ad9'),'Archivo 4.pdf',UNHEX('1bff49b3ce2f4d70a0b73c2cd0a6251a'));
CALL insert_study_file (UNHEX('42d1c4549aaf4c1ea3a9ac3edd27d91d'),'Archivo 5.txt',UNHEX('1bff49b3ce2f4d70a0b73c2cd0a6251a'));
CALL insert_study_file (UNHEX('b45d4c259e8543fcb864213e8bbabcf2'),'Archivo 6.jpg',UNHEX('1bff49b3ce2f4d70a0b73c2cd0a6251a'));
CALL insert_study_file (UNHEX('d9dce0734e864f049df89495a194eb86'),'Archivo 7.jpg',UNHEX('1bff49b3ce2f4d70a0b73c2cd0a6251a'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('d1052239aa904ba39d4a3914fbdfbb7f'),'Observación correspondiente al estudio d1052239aa904ba39d4a3914fbdfbb7f.',UNHEX('f8b49d2025004d2ba372977a3e7a1086'),'BT');
# Se craran 4 archivos para el estudio d1052239aa904ba39d4a3914fbdfbb7f
CALL insert_study_file (UNHEX('5dc9df43ebf1436ab3a55fa45d5c8cc1'),'Archivo 0.jpg',UNHEX('d1052239aa904ba39d4a3914fbdfbb7f'));
CALL insert_study_file (UNHEX('3b617f532ff34a0e800870ad91a8bfe4'),'Archivo 1.doc',UNHEX('d1052239aa904ba39d4a3914fbdfbb7f'));
CALL insert_study_file (UNHEX('1fd6bbbdf2a543158928938a85b5c555'),'Archivo 2.txt',UNHEX('d1052239aa904ba39d4a3914fbdfbb7f'));
CALL insert_study_file (UNHEX('94bf79eae7af4159bb38ae4f754b0675'),'Archivo 3.doc',UNHEX('d1052239aa904ba39d4a3914fbdfbb7f'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('bfe1f7dc852b4a9faccc1a7ade9bdcb9'),'Observación correspondiente al estudio bfe1f7dc852b4a9faccc1a7ade9bdcb9.',UNHEX('f8b49d2025004d2ba372977a3e7a1086'),'BT');
# Se craran 1 archivos para el estudio bfe1f7dc852b4a9faccc1a7ade9bdcb9
CALL insert_study_file (UNHEX('a48836393fb047cba620dee72a847fd2'),'Archivo 0.jpg',UNHEX('bfe1f7dc852b4a9faccc1a7ade9bdcb9'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('c80ba94c9db049e4b69445b773ad33aa'),'Observación correspondiente al estudio c80ba94c9db049e4b69445b773ad33aa.',UNHEX('f8b49d2025004d2ba372977a3e7a1086'),'ET');
# Se craran 4 archivos para el estudio c80ba94c9db049e4b69445b773ad33aa
CALL insert_study_file (UNHEX('f66737981c3b4e6c9015d16ec9ea3797'),'Archivo 0.pdf',UNHEX('c80ba94c9db049e4b69445b773ad33aa'));
CALL insert_study_file (UNHEX('52c2f65256924fbcb4d77e9688a64af0'),'Archivo 1.jpg',UNHEX('c80ba94c9db049e4b69445b773ad33aa'));
CALL insert_study_file (UNHEX('3ca811cf8d26433aa3002ac7d1a697ce'),'Archivo 2.txt',UNHEX('c80ba94c9db049e4b69445b773ad33aa'));
CALL insert_study_file (UNHEX('5a6b353f6d17410592e4c0b009746b4f'),'Archivo 3.jpg',UNHEX('c80ba94c9db049e4b69445b773ad33aa'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('6938ec5396e24beea50f40b2914c876b'),'Observación correspondiente al estudio 6938ec5396e24beea50f40b2914c876b.',UNHEX('f8b49d2025004d2ba372977a3e7a1086'),'BT');
# Se craran 1 archivos para el estudio 6938ec5396e24beea50f40b2914c876b
CALL insert_study_file (UNHEX('f3a3a2e9de9d409592e712e60ea7f2d6'),'Archivo 0.txt',UNHEX('6938ec5396e24beea50f40b2914c876b'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('dfaaafb353334b068f7844256ed15e2e'),'Observación correspondiente al estudio dfaaafb353334b068f7844256ed15e2e.',UNHEX('f8b49d2025004d2ba372977a3e7a1086'),'UA');
# Se craran 6 archivos para el estudio dfaaafb353334b068f7844256ed15e2e
CALL insert_study_file (UNHEX('a524f1e71e824e78ad6ea8abf1ab58a2'),'Archivo 0.txt',UNHEX('dfaaafb353334b068f7844256ed15e2e'));
CALL insert_study_file (UNHEX('e22928ee29f8472a88b4780330f59cef'),'Archivo 1.txt',UNHEX('dfaaafb353334b068f7844256ed15e2e'));
CALL insert_study_file (UNHEX('34ee07a641dc475c8d56d60343e98b61'),'Archivo 2.pdf',UNHEX('dfaaafb353334b068f7844256ed15e2e'));
CALL insert_study_file (UNHEX('9d2c0c0a99d9413cbf39426eab011634'),'Archivo 3.jpg',UNHEX('dfaaafb353334b068f7844256ed15e2e'));
CALL insert_study_file (UNHEX('8cbf255e9c5840719c9a19296fa69ad4'),'Archivo 4.pdf',UNHEX('dfaaafb353334b068f7844256ed15e2e'));
CALL insert_study_file (UNHEX('8536b754899d4ee9813f44a9a02857f7'),'Archivo 5.pdf',UNHEX('dfaaafb353334b068f7844256ed15e2e'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('1798297445a2463fb9d3042c8f7d3098'),'Observación correspondiente al estudio 1798297445a2463fb9d3042c8f7d3098.',UNHEX('f8b49d2025004d2ba372977a3e7a1086'),'ET');
# Se craran 2 archivos para el estudio 1798297445a2463fb9d3042c8f7d3098
CALL insert_study_file (UNHEX('336f7ee2b7ef44a0bad96e2989776c98'),'Archivo 0.pdf',UNHEX('1798297445a2463fb9d3042c8f7d3098'));
CALL insert_study_file (UNHEX('355cc75434fd43618b3cc3664f883aec'),'Archivo 1.pdf',UNHEX('1798297445a2463fb9d3042c8f7d3098'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('6aace2a9146a418796a4712261d98fe6'),'Observación correspondiente al estudio 6aace2a9146a418796a4712261d98fe6.',UNHEX('f8b49d2025004d2ba372977a3e7a1086'),'BT');
# Se craran 3 archivos para el estudio 6aace2a9146a418796a4712261d98fe6
CALL insert_study_file (UNHEX('b2490973e44b43b3bfa6958b5ef435e5'),'Archivo 0.pdf',UNHEX('6aace2a9146a418796a4712261d98fe6'));
CALL insert_study_file (UNHEX('d62105a1631a43258c615a7c9d69c7b6'),'Archivo 1.pdf',UNHEX('6aace2a9146a418796a4712261d98fe6'));
CALL insert_study_file (UNHEX('9748d28cd5ae4344834dea3ee7caf1f5'),'Archivo 2.doc',UNHEX('6aace2a9146a418796a4712261d98fe6'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('602b91ff7c6046a18b3743713ff8b0de'),'Observación correspondiente al estudio 602b91ff7c6046a18b3743713ff8b0de.',UNHEX('f8b49d2025004d2ba372977a3e7a1086'),'UA');
# Se craran 5 archivos para el estudio 602b91ff7c6046a18b3743713ff8b0de
CALL insert_study_file (UNHEX('7b28589c593740a893d40b9c166b8d56'),'Archivo 0.doc',UNHEX('602b91ff7c6046a18b3743713ff8b0de'));
CALL insert_study_file (UNHEX('0f6fe6337a7a4d43a347fd6011c7a974'),'Archivo 1.txt',UNHEX('602b91ff7c6046a18b3743713ff8b0de'));
CALL insert_study_file (UNHEX('5d8440439f5242dfbe86b9c546e7f796'),'Archivo 2.doc',UNHEX('602b91ff7c6046a18b3743713ff8b0de'));
CALL insert_study_file (UNHEX('9fdf1108e03d43ebbb0dff67c9b3b23b'),'Archivo 3.jpg',UNHEX('602b91ff7c6046a18b3743713ff8b0de'));
CALL insert_study_file (UNHEX('8fd58188e25d4ba7ac23d8ab259d54e8'),'Archivo 4.doc',UNHEX('602b91ff7c6046a18b3743713ff8b0de'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('40e55b36696547ac94273fd9475a9f2a'),'Observación correspondiente al estudio 40e55b36696547ac94273fd9475a9f2a.',UNHEX('f8b49d2025004d2ba372977a3e7a1086'),'ET');
# Se craran 4 archivos para el estudio 40e55b36696547ac94273fd9475a9f2a
CALL insert_study_file (UNHEX('f71fd29f14ce4ef393a62dcd86dcd2c7'),'Archivo 0.pdf',UNHEX('40e55b36696547ac94273fd9475a9f2a'));
CALL insert_study_file (UNHEX('6ffdf02bb7714fb9a679554a5e3b7ba9'),'Archivo 1.doc',UNHEX('40e55b36696547ac94273fd9475a9f2a'));
CALL insert_study_file (UNHEX('1427ae9d7b814b20981b5821c2a6f997'),'Archivo 2.doc',UNHEX('40e55b36696547ac94273fd9475a9f2a'));
CALL insert_study_file (UNHEX('af06fccb41bb462883d2baf984bc5993'),'Archivo 3.pdf',UNHEX('40e55b36696547ac94273fd9475a9f2a'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('76f57d46976a4681a933c3ac7df31dae'),'Observación correspondiente al estudio 76f57d46976a4681a933c3ac7df31dae.',UNHEX('f8b49d2025004d2ba372977a3e7a1086'),'UA');
# Se craran 8 archivos para el estudio 76f57d46976a4681a933c3ac7df31dae
CALL insert_study_file (UNHEX('8fac311af4614da4b1de9099654afe9c'),'Archivo 0.doc',UNHEX('76f57d46976a4681a933c3ac7df31dae'));
CALL insert_study_file (UNHEX('a59922639dab42b7b887c7b366e52268'),'Archivo 1.doc',UNHEX('76f57d46976a4681a933c3ac7df31dae'));
CALL insert_study_file (UNHEX('9b7d87ddc9fc410486d198f0c57da757'),'Archivo 2.txt',UNHEX('76f57d46976a4681a933c3ac7df31dae'));
CALL insert_study_file (UNHEX('b975d43ea3d947f688fdb2f9617f17c3'),'Archivo 3.jpg',UNHEX('76f57d46976a4681a933c3ac7df31dae'));
CALL insert_study_file (UNHEX('a20328dca40346f6b67a97ccfba94c45'),'Archivo 4.doc',UNHEX('76f57d46976a4681a933c3ac7df31dae'));
CALL insert_study_file (UNHEX('cba5973edf9c421cb4c1e95c64afa68b'),'Archivo 5.pdf',UNHEX('76f57d46976a4681a933c3ac7df31dae'));
CALL insert_study_file (UNHEX('48bd0cd1152d4ebb8510cf91dd97a67b'),'Archivo 6.txt',UNHEX('76f57d46976a4681a933c3ac7df31dae'));
CALL insert_study_file (UNHEX('6adda85b35ea499982d56d586cc8e285'),'Archivo 7.pdf',UNHEX('76f57d46976a4681a933c3ac7df31dae'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('d82628e145884517afd71d21e855e3bb'),'Observación correspondiente al estudio d82628e145884517afd71d21e855e3bb.',UNHEX('f8b49d2025004d2ba372977a3e7a1086'),'ET');
# Se craran 3 archivos para el estudio d82628e145884517afd71d21e855e3bb
CALL insert_study_file (UNHEX('1df3f26058d84483ba8bd221af78d369'),'Archivo 0.doc',UNHEX('d82628e145884517afd71d21e855e3bb'));
CALL insert_study_file (UNHEX('8caea8c2bd794e48b5ac9752a1a328d7'),'Archivo 1.jpg',UNHEX('d82628e145884517afd71d21e855e3bb'));
CALL insert_study_file (UNHEX('6cbbffd6746a49ea964dceb68d15612c'),'Archivo 2.jpg',UNHEX('d82628e145884517afd71d21e855e3bb'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 9c5b8a7436c34db4bf9147385ceb82a4
CALL insert_patient ('1965-11-03','1','F', UNHEX('9c5b8a7436c34db4bf9147385ceb82a4'),'Dailey, Evey calida','doctor');
# Se craran 12 estudios para el paciente 9c5b8a7436c34db4bf9147385ceb82a4
CALL insert_study ('2014-07-31',UNHEX('0e38760b52dc465895dc5119edc05dd3'),'Observación correspondiente al estudio 0e38760b52dc465895dc5119edc05dd3.',UNHEX('9c5b8a7436c34db4bf9147385ceb82a4'),'UA');
# Se craran 9 archivos para el estudio 0e38760b52dc465895dc5119edc05dd3
CALL insert_study_file (UNHEX('152175edabe9409d8abfbeb65a252eae'),'Archivo 0.jpg',UNHEX('0e38760b52dc465895dc5119edc05dd3'));
CALL insert_study_file (UNHEX('b84a18ac8f66435eb551449978da91d1'),'Archivo 1.doc',UNHEX('0e38760b52dc465895dc5119edc05dd3'));
CALL insert_study_file (UNHEX('f35e516facbc40b9b0877af11244c060'),'Archivo 2.doc',UNHEX('0e38760b52dc465895dc5119edc05dd3'));
CALL insert_study_file (UNHEX('483dd8e3cb024f4786bc6a62310e26fc'),'Archivo 3.pdf',UNHEX('0e38760b52dc465895dc5119edc05dd3'));
CALL insert_study_file (UNHEX('e7c41c6d17984690b6046b32acc95575'),'Archivo 4.doc',UNHEX('0e38760b52dc465895dc5119edc05dd3'));
CALL insert_study_file (UNHEX('6ea6ad058a0f4cb1b0d4ef32e4a86072'),'Archivo 5.jpg',UNHEX('0e38760b52dc465895dc5119edc05dd3'));
CALL insert_study_file (UNHEX('9472248ced784bf2814b84f42ca200e3'),'Archivo 6.doc',UNHEX('0e38760b52dc465895dc5119edc05dd3'));
CALL insert_study_file (UNHEX('082458b1caad47d6bc9a5b3659868fcc'),'Archivo 7.pdf',UNHEX('0e38760b52dc465895dc5119edc05dd3'));
CALL insert_study_file (UNHEX('466d104a134a433496520baa05a1d0d8'),'Archivo 8.txt',UNHEX('0e38760b52dc465895dc5119edc05dd3'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('82cb859c8c3e41d8b91141546cb371cf'),'Observación correspondiente al estudio 82cb859c8c3e41d8b91141546cb371cf.',UNHEX('9c5b8a7436c34db4bf9147385ceb82a4'),'BT');
# Se craran 7 archivos para el estudio 82cb859c8c3e41d8b91141546cb371cf
CALL insert_study_file (UNHEX('8304fa34e6f342a3b058915bfe6dd1b8'),'Archivo 0.txt',UNHEX('82cb859c8c3e41d8b91141546cb371cf'));
CALL insert_study_file (UNHEX('61c62afcc80440239cdb3bb8230a590e'),'Archivo 1.txt',UNHEX('82cb859c8c3e41d8b91141546cb371cf'));
CALL insert_study_file (UNHEX('374bb0f42a9f4551bdd9fd2a7d232742'),'Archivo 2.doc',UNHEX('82cb859c8c3e41d8b91141546cb371cf'));
CALL insert_study_file (UNHEX('4cba6102d400460f9c793773a61192d9'),'Archivo 3.doc',UNHEX('82cb859c8c3e41d8b91141546cb371cf'));
CALL insert_study_file (UNHEX('58bcf844d4634b70a8484f6fb28d2b1d'),'Archivo 4.doc',UNHEX('82cb859c8c3e41d8b91141546cb371cf'));
CALL insert_study_file (UNHEX('36d10af58a5f440a989417f1959dd7ec'),'Archivo 5.pdf',UNHEX('82cb859c8c3e41d8b91141546cb371cf'));
CALL insert_study_file (UNHEX('29a189729e60477d80c9b1d202dcd4dc'),'Archivo 6.pdf',UNHEX('82cb859c8c3e41d8b91141546cb371cf'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('106497278b3c4345a4bc10a104b5a114'),'Observación correspondiente al estudio 106497278b3c4345a4bc10a104b5a114.',UNHEX('9c5b8a7436c34db4bf9147385ceb82a4'),'BT');
# Se craran 7 archivos para el estudio 106497278b3c4345a4bc10a104b5a114
CALL insert_study_file (UNHEX('d14163d0b74e46b1930369e7cbc618f0'),'Archivo 0.doc',UNHEX('106497278b3c4345a4bc10a104b5a114'));
CALL insert_study_file (UNHEX('4616967bb01945a88ad0f5d05373cc56'),'Archivo 1.txt',UNHEX('106497278b3c4345a4bc10a104b5a114'));
CALL insert_study_file (UNHEX('7d2b62d8e8334240ab657f155b7ab513'),'Archivo 2.doc',UNHEX('106497278b3c4345a4bc10a104b5a114'));
CALL insert_study_file (UNHEX('2af282b24a834ee79c3aac99c557a96c'),'Archivo 3.doc',UNHEX('106497278b3c4345a4bc10a104b5a114'));
CALL insert_study_file (UNHEX('ba3ec6813b184307bc3712ea27ced701'),'Archivo 4.pdf',UNHEX('106497278b3c4345a4bc10a104b5a114'));
CALL insert_study_file (UNHEX('f0132e413472488c95ed9f23f453afce'),'Archivo 5.doc',UNHEX('106497278b3c4345a4bc10a104b5a114'));
CALL insert_study_file (UNHEX('f146a0c8828f470cb00c9e7fc291e97c'),'Archivo 6.jpg',UNHEX('106497278b3c4345a4bc10a104b5a114'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('e69ace868bb14023939ccee39e3fb6c4'),'Observación correspondiente al estudio e69ace868bb14023939ccee39e3fb6c4.',UNHEX('9c5b8a7436c34db4bf9147385ceb82a4'),'BT');
# Se craran 0 archivos para el estudio e69ace868bb14023939ccee39e3fb6c4
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('94af2a85ad8645cdb394e62cd7f5a95b'),'Observación correspondiente al estudio 94af2a85ad8645cdb394e62cd7f5a95b.',UNHEX('9c5b8a7436c34db4bf9147385ceb82a4'),'UA');
# Se craran 6 archivos para el estudio 94af2a85ad8645cdb394e62cd7f5a95b
CALL insert_study_file (UNHEX('a45b7a7b6afc4db3a67a034508811b9d'),'Archivo 0.pdf',UNHEX('94af2a85ad8645cdb394e62cd7f5a95b'));
CALL insert_study_file (UNHEX('013b287c412b4d92bc9500523e40e83a'),'Archivo 1.txt',UNHEX('94af2a85ad8645cdb394e62cd7f5a95b'));
CALL insert_study_file (UNHEX('c021827d878b43079fb81434388361ef'),'Archivo 2.doc',UNHEX('94af2a85ad8645cdb394e62cd7f5a95b'));
CALL insert_study_file (UNHEX('8ef2c08846684fa691c7021b03f5100c'),'Archivo 3.jpg',UNHEX('94af2a85ad8645cdb394e62cd7f5a95b'));
CALL insert_study_file (UNHEX('54f48347063a4b6d935ab0b8dfa2526e'),'Archivo 4.jpg',UNHEX('94af2a85ad8645cdb394e62cd7f5a95b'));
CALL insert_study_file (UNHEX('fd8fff917fe146c2a125a73dd81c1c1e'),'Archivo 5.pdf',UNHEX('94af2a85ad8645cdb394e62cd7f5a95b'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('172212c90ad54533b1bd5d288ab03e81'),'Observación correspondiente al estudio 172212c90ad54533b1bd5d288ab03e81.',UNHEX('9c5b8a7436c34db4bf9147385ceb82a4'),'ET');
# Se craran 9 archivos para el estudio 172212c90ad54533b1bd5d288ab03e81
CALL insert_study_file (UNHEX('a52f5fe8c0f44e84844fd1ce867a229a'),'Archivo 0.pdf',UNHEX('172212c90ad54533b1bd5d288ab03e81'));
CALL insert_study_file (UNHEX('15214903eef94fdf8d4050838ed02de4'),'Archivo 1.doc',UNHEX('172212c90ad54533b1bd5d288ab03e81'));
CALL insert_study_file (UNHEX('2d3aff9c55ca4b0bacf92aba45b30af0'),'Archivo 2.pdf',UNHEX('172212c90ad54533b1bd5d288ab03e81'));
CALL insert_study_file (UNHEX('07354b7d228f4c52982be937be6b91d8'),'Archivo 3.pdf',UNHEX('172212c90ad54533b1bd5d288ab03e81'));
CALL insert_study_file (UNHEX('ab94d816b3d9475c941843600285f165'),'Archivo 4.txt',UNHEX('172212c90ad54533b1bd5d288ab03e81'));
CALL insert_study_file (UNHEX('e19e5ad7355949c898ff4891e56c7d19'),'Archivo 5.pdf',UNHEX('172212c90ad54533b1bd5d288ab03e81'));
CALL insert_study_file (UNHEX('2b5ec49c1e524d9093f088f9972f5baa'),'Archivo 6.pdf',UNHEX('172212c90ad54533b1bd5d288ab03e81'));
CALL insert_study_file (UNHEX('42ff5a6e3bcc4c19b5a2359aeb95ee8d'),'Archivo 7.jpg',UNHEX('172212c90ad54533b1bd5d288ab03e81'));
CALL insert_study_file (UNHEX('9c09e30e3910424c8b8043abec89086f'),'Archivo 8.pdf',UNHEX('172212c90ad54533b1bd5d288ab03e81'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('773a1989da3347d4b92adfa51c049a31'),'Observación correspondiente al estudio 773a1989da3347d4b92adfa51c049a31.',UNHEX('9c5b8a7436c34db4bf9147385ceb82a4'),'BT');
# Se craran 6 archivos para el estudio 773a1989da3347d4b92adfa51c049a31
CALL insert_study_file (UNHEX('3819382bd65249e1a4a5ae919581a75f'),'Archivo 0.txt',UNHEX('773a1989da3347d4b92adfa51c049a31'));
CALL insert_study_file (UNHEX('93b0b62c00144f9ea9321b550263731b'),'Archivo 1.txt',UNHEX('773a1989da3347d4b92adfa51c049a31'));
CALL insert_study_file (UNHEX('88567fb5326f47df86f4f01819668348'),'Archivo 2.doc',UNHEX('773a1989da3347d4b92adfa51c049a31'));
CALL insert_study_file (UNHEX('ad8c9401fa69422caa2ea4247377155e'),'Archivo 3.jpg',UNHEX('773a1989da3347d4b92adfa51c049a31'));
CALL insert_study_file (UNHEX('a787b8bec9e04a4688d736ad9e44b7c5'),'Archivo 4.jpg',UNHEX('773a1989da3347d4b92adfa51c049a31'));
CALL insert_study_file (UNHEX('e1ed36a121714412b6443d086b483724'),'Archivo 5.doc',UNHEX('773a1989da3347d4b92adfa51c049a31'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('a4a7058ba3f243b9a78188cbee787628'),'Observación correspondiente al estudio a4a7058ba3f243b9a78188cbee787628.',UNHEX('9c5b8a7436c34db4bf9147385ceb82a4'),'UA');
# Se craran 4 archivos para el estudio a4a7058ba3f243b9a78188cbee787628
CALL insert_study_file (UNHEX('0e6049133f6a45d8b9c61f3ed7bc6ce1'),'Archivo 0.pdf',UNHEX('a4a7058ba3f243b9a78188cbee787628'));
CALL insert_study_file (UNHEX('8af892b0480746fc905ba1a073bcab28'),'Archivo 1.jpg',UNHEX('a4a7058ba3f243b9a78188cbee787628'));
CALL insert_study_file (UNHEX('3bca407a0c624ba3a7f3cc9b7e3c37f5'),'Archivo 2.txt',UNHEX('a4a7058ba3f243b9a78188cbee787628'));
CALL insert_study_file (UNHEX('7a40eebcd6c9422d83a1f1c68fc88c54'),'Archivo 3.pdf',UNHEX('a4a7058ba3f243b9a78188cbee787628'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('da361b09971f41e497a65e31a455f31e'),'Observación correspondiente al estudio da361b09971f41e497a65e31a455f31e.',UNHEX('9c5b8a7436c34db4bf9147385ceb82a4'),'ET');
# Se craran 5 archivos para el estudio da361b09971f41e497a65e31a455f31e
CALL insert_study_file (UNHEX('4c7fd5a8c2e8424084118bbbce56680b'),'Archivo 0.jpg',UNHEX('da361b09971f41e497a65e31a455f31e'));
CALL insert_study_file (UNHEX('8e4cb2666ee54b42ab6c6facae74e6f8'),'Archivo 1.txt',UNHEX('da361b09971f41e497a65e31a455f31e'));
CALL insert_study_file (UNHEX('a6a845a1cd184d10b816452773101fea'),'Archivo 2.txt',UNHEX('da361b09971f41e497a65e31a455f31e'));
CALL insert_study_file (UNHEX('fdfb8f31ab6048919ad067d8f2ffa40d'),'Archivo 3.jpg',UNHEX('da361b09971f41e497a65e31a455f31e'));
CALL insert_study_file (UNHEX('ddb2bba9acde4e3384f1fef8a2c6105c'),'Archivo 4.doc',UNHEX('da361b09971f41e497a65e31a455f31e'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('2c5482d588954e07b54e49a1db049f2d'),'Observación correspondiente al estudio 2c5482d588954e07b54e49a1db049f2d.',UNHEX('9c5b8a7436c34db4bf9147385ceb82a4'),'BT');
# Se craran 1 archivos para el estudio 2c5482d588954e07b54e49a1db049f2d
CALL insert_study_file (UNHEX('dea7dc4711b1474b9314fcf58974a34c'),'Archivo 0.pdf',UNHEX('2c5482d588954e07b54e49a1db049f2d'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('45362cc842904a7bbb1d0f9e76162b68'),'Observación correspondiente al estudio 45362cc842904a7bbb1d0f9e76162b68.',UNHEX('9c5b8a7436c34db4bf9147385ceb82a4'),'ET');
# Se craran 9 archivos para el estudio 45362cc842904a7bbb1d0f9e76162b68
CALL insert_study_file (UNHEX('6b028e8513d4444d8e805b34bd7361bd'),'Archivo 0.doc',UNHEX('45362cc842904a7bbb1d0f9e76162b68'));
CALL insert_study_file (UNHEX('bd7f304ce6374441ae50fa77414cfdca'),'Archivo 1.jpg',UNHEX('45362cc842904a7bbb1d0f9e76162b68'));
CALL insert_study_file (UNHEX('930789c2542d44429c2090c52d702697'),'Archivo 2.doc',UNHEX('45362cc842904a7bbb1d0f9e76162b68'));
CALL insert_study_file (UNHEX('83f0702a9ea04b9a8ebdf3bc53eec307'),'Archivo 3.jpg',UNHEX('45362cc842904a7bbb1d0f9e76162b68'));
CALL insert_study_file (UNHEX('73dbaebdfae94361a30d7c5ba9f322c0'),'Archivo 4.doc',UNHEX('45362cc842904a7bbb1d0f9e76162b68'));
CALL insert_study_file (UNHEX('24f21b96631843afac317eda0844a17c'),'Archivo 5.doc',UNHEX('45362cc842904a7bbb1d0f9e76162b68'));
CALL insert_study_file (UNHEX('dedb5a00f72946ba872173be105d6f70'),'Archivo 6.doc',UNHEX('45362cc842904a7bbb1d0f9e76162b68'));
CALL insert_study_file (UNHEX('076489f405c04bf1af6e4a6f60d9e3eb'),'Archivo 7.jpg',UNHEX('45362cc842904a7bbb1d0f9e76162b68'));
CALL insert_study_file (UNHEX('6a128b7aac8a45f49e385325913caf89'),'Archivo 8.pdf',UNHEX('45362cc842904a7bbb1d0f9e76162b68'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('02bbb082beee4168a1fd82f99695b1bb'),'Observación correspondiente al estudio 02bbb082beee4168a1fd82f99695b1bb.',UNHEX('9c5b8a7436c34db4bf9147385ceb82a4'),'UA');
# Se craran 5 archivos para el estudio 02bbb082beee4168a1fd82f99695b1bb
CALL insert_study_file (UNHEX('1b83d37f270c4cdd9f82fcd58dc08e4b'),'Archivo 0.jpg',UNHEX('02bbb082beee4168a1fd82f99695b1bb'));
CALL insert_study_file (UNHEX('b504fa3344f142ce94e0dc8279b6592b'),'Archivo 1.jpg',UNHEX('02bbb082beee4168a1fd82f99695b1bb'));
CALL insert_study_file (UNHEX('2eb27d931e1b4562845e0956e39e39ac'),'Archivo 2.doc',UNHEX('02bbb082beee4168a1fd82f99695b1bb'));
CALL insert_study_file (UNHEX('c64200a3ed854af7aa3020e3d1f7e782'),'Archivo 3.doc',UNHEX('02bbb082beee4168a1fd82f99695b1bb'));
CALL insert_study_file (UNHEX('356b773ae5e0427a8987737c27f6d53c'),'Archivo 4.pdf',UNHEX('02bbb082beee4168a1fd82f99695b1bb'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 90ae4cebea9f42c3bd73a1aaf5aec1d3
CALL insert_patient ('1951-06-06','0','F', UNHEX('90ae4cebea9f42c3bd73a1aaf5aec1d3'),'Bovet, Kitty Raina','doctor');
# Se craran 16 estudios para el paciente 90ae4cebea9f42c3bd73a1aaf5aec1d3
CALL insert_study ('2014-08-04',UNHEX('1879045ffacc45c8ac913ea6057756e2'),'Observación correspondiente al estudio 1879045ffacc45c8ac913ea6057756e2.',UNHEX('90ae4cebea9f42c3bd73a1aaf5aec1d3'),'ET');
# Se craran 6 archivos para el estudio 1879045ffacc45c8ac913ea6057756e2
CALL insert_study_file (UNHEX('4b88b743b3c64842a8f9982dbc6d7f37'),'Archivo 0.jpg',UNHEX('1879045ffacc45c8ac913ea6057756e2'));
CALL insert_study_file (UNHEX('b15be42e3e3d42ccb92fe77f409adb20'),'Archivo 1.jpg',UNHEX('1879045ffacc45c8ac913ea6057756e2'));
CALL insert_study_file (UNHEX('ddbd440638dd4881b3c8c3b0fd647abf'),'Archivo 2.txt',UNHEX('1879045ffacc45c8ac913ea6057756e2'));
CALL insert_study_file (UNHEX('252f2fffaa5542eea3bf16b8ad7a9fe4'),'Archivo 3.doc',UNHEX('1879045ffacc45c8ac913ea6057756e2'));
CALL insert_study_file (UNHEX('4035869fd8194773b3ae4dd6d53228e2'),'Archivo 4.doc',UNHEX('1879045ffacc45c8ac913ea6057756e2'));
CALL insert_study_file (UNHEX('8e083e2bc7b04bc4b21255cb0f6de527'),'Archivo 5.pdf',UNHEX('1879045ffacc45c8ac913ea6057756e2'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('9836d83802db4a2c9adaba42aeb4f0a9'),'Observación correspondiente al estudio 9836d83802db4a2c9adaba42aeb4f0a9.',UNHEX('90ae4cebea9f42c3bd73a1aaf5aec1d3'),'BT');
# Se craran 8 archivos para el estudio 9836d83802db4a2c9adaba42aeb4f0a9
CALL insert_study_file (UNHEX('a378c1a192ed4efdbf46d58c06cd894d'),'Archivo 0.pdf',UNHEX('9836d83802db4a2c9adaba42aeb4f0a9'));
CALL insert_study_file (UNHEX('8b557c5786e0464c8670899315318f4e'),'Archivo 1.doc',UNHEX('9836d83802db4a2c9adaba42aeb4f0a9'));
CALL insert_study_file (UNHEX('6d1485c6869744ed9770b35d7e2d4a13'),'Archivo 2.jpg',UNHEX('9836d83802db4a2c9adaba42aeb4f0a9'));
CALL insert_study_file (UNHEX('a613a88f827441c8879a907261b1b2cd'),'Archivo 3.txt',UNHEX('9836d83802db4a2c9adaba42aeb4f0a9'));
CALL insert_study_file (UNHEX('ab4e13e25f944ba891e050e98784c986'),'Archivo 4.jpg',UNHEX('9836d83802db4a2c9adaba42aeb4f0a9'));
CALL insert_study_file (UNHEX('b7448f51b27442149e8fe10fce4ce613'),'Archivo 5.jpg',UNHEX('9836d83802db4a2c9adaba42aeb4f0a9'));
CALL insert_study_file (UNHEX('2a6c982fc49b442fabe6bd59649e13d3'),'Archivo 6.doc',UNHEX('9836d83802db4a2c9adaba42aeb4f0a9'));
CALL insert_study_file (UNHEX('c0de311f63c5491d9f197ad913429e90'),'Archivo 7.doc',UNHEX('9836d83802db4a2c9adaba42aeb4f0a9'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('2301406a7f174ca8916c398436f23406'),'Observación correspondiente al estudio 2301406a7f174ca8916c398436f23406.',UNHEX('90ae4cebea9f42c3bd73a1aaf5aec1d3'),'UA');
# Se craran 1 archivos para el estudio 2301406a7f174ca8916c398436f23406
CALL insert_study_file (UNHEX('960d73d85be74d03a13cbd9be90778de'),'Archivo 0.pdf',UNHEX('2301406a7f174ca8916c398436f23406'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('78c84d2cd45b491aa6263d6cf662a0d1'),'Observación correspondiente al estudio 78c84d2cd45b491aa6263d6cf662a0d1.',UNHEX('90ae4cebea9f42c3bd73a1aaf5aec1d3'),'UA');
# Se craran 8 archivos para el estudio 78c84d2cd45b491aa6263d6cf662a0d1
CALL insert_study_file (UNHEX('c12646d93591469291c467cb7ec1d6e0'),'Archivo 0.jpg',UNHEX('78c84d2cd45b491aa6263d6cf662a0d1'));
CALL insert_study_file (UNHEX('cd545362fb13418786aff46977bdf16e'),'Archivo 1.doc',UNHEX('78c84d2cd45b491aa6263d6cf662a0d1'));
CALL insert_study_file (UNHEX('02b6450b4c584b6080294c3fdb785098'),'Archivo 2.jpg',UNHEX('78c84d2cd45b491aa6263d6cf662a0d1'));
CALL insert_study_file (UNHEX('14e8ccdf0bec4d8cb22ff3a6a09ffe14'),'Archivo 3.pdf',UNHEX('78c84d2cd45b491aa6263d6cf662a0d1'));
CALL insert_study_file (UNHEX('7618d0facb5848f5af927c3a68ccedf8'),'Archivo 4.txt',UNHEX('78c84d2cd45b491aa6263d6cf662a0d1'));
CALL insert_study_file (UNHEX('5ba4ebeea5574cc8a5bec1eb4bd683fe'),'Archivo 5.pdf',UNHEX('78c84d2cd45b491aa6263d6cf662a0d1'));
CALL insert_study_file (UNHEX('5aac0601e8164e7a96865adbfa35cc03'),'Archivo 6.jpg',UNHEX('78c84d2cd45b491aa6263d6cf662a0d1'));
CALL insert_study_file (UNHEX('c3b7b1db65c74bb5a395f4fbcf5f5340'),'Archivo 7.pdf',UNHEX('78c84d2cd45b491aa6263d6cf662a0d1'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('a29110e2a0494ef5aa66335eceb3ab12'),'Observación correspondiente al estudio a29110e2a0494ef5aa66335eceb3ab12.',UNHEX('90ae4cebea9f42c3bd73a1aaf5aec1d3'),'ET');
# Se craran 3 archivos para el estudio a29110e2a0494ef5aa66335eceb3ab12
CALL insert_study_file (UNHEX('bdb3c166cc1f40b5a12c58fde54bc19c'),'Archivo 0.doc',UNHEX('a29110e2a0494ef5aa66335eceb3ab12'));
CALL insert_study_file (UNHEX('17f997b81e474ab0b589d208ce7458a5'),'Archivo 1.txt',UNHEX('a29110e2a0494ef5aa66335eceb3ab12'));
CALL insert_study_file (UNHEX('68f170c910044cf7b8a1da2ad30397ff'),'Archivo 2.jpg',UNHEX('a29110e2a0494ef5aa66335eceb3ab12'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('a6e48da431344044bfe6ada9789f900d'),'Observación correspondiente al estudio a6e48da431344044bfe6ada9789f900d.',UNHEX('90ae4cebea9f42c3bd73a1aaf5aec1d3'),'BT');
# Se craran 9 archivos para el estudio a6e48da431344044bfe6ada9789f900d
CALL insert_study_file (UNHEX('d31350b747d7402e8deec802fd4ddcda'),'Archivo 0.jpg',UNHEX('a6e48da431344044bfe6ada9789f900d'));
CALL insert_study_file (UNHEX('5c8d45de7efa4dd18449bff03c1e28ad'),'Archivo 1.pdf',UNHEX('a6e48da431344044bfe6ada9789f900d'));
CALL insert_study_file (UNHEX('f75e2077130b40c4bbf23ac10563a349'),'Archivo 2.jpg',UNHEX('a6e48da431344044bfe6ada9789f900d'));
CALL insert_study_file (UNHEX('f19d89e1d66941d1982da1157a843d5d'),'Archivo 3.jpg',UNHEX('a6e48da431344044bfe6ada9789f900d'));
CALL insert_study_file (UNHEX('67bf3995f3fc48f09c185fe560b16d03'),'Archivo 4.doc',UNHEX('a6e48da431344044bfe6ada9789f900d'));
CALL insert_study_file (UNHEX('e6ff27e4df5b469c8172ef6004acdd3b'),'Archivo 5.doc',UNHEX('a6e48da431344044bfe6ada9789f900d'));
CALL insert_study_file (UNHEX('c36daec303d44c388015c0ac5c580b9c'),'Archivo 6.txt',UNHEX('a6e48da431344044bfe6ada9789f900d'));
CALL insert_study_file (UNHEX('a8de82e7e9ef4a83a31eb01d5cca6775'),'Archivo 7.doc',UNHEX('a6e48da431344044bfe6ada9789f900d'));
CALL insert_study_file (UNHEX('5d6f98ec621041a690582395e8560ed8'),'Archivo 8.txt',UNHEX('a6e48da431344044bfe6ada9789f900d'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('b2c443b7b40d470489b652ebf482e996'),'Observación correspondiente al estudio b2c443b7b40d470489b652ebf482e996.',UNHEX('90ae4cebea9f42c3bd73a1aaf5aec1d3'),'UA');
# Se craran 3 archivos para el estudio b2c443b7b40d470489b652ebf482e996
CALL insert_study_file (UNHEX('b79c18d4e8564a929de134307b88299a'),'Archivo 0.jpg',UNHEX('b2c443b7b40d470489b652ebf482e996'));
CALL insert_study_file (UNHEX('b96a7a7acadf40bf9fd8fd5b6748be15'),'Archivo 1.txt',UNHEX('b2c443b7b40d470489b652ebf482e996'));
CALL insert_study_file (UNHEX('8906275626ca4940b4f7515d7a3d8a73'),'Archivo 2.pdf',UNHEX('b2c443b7b40d470489b652ebf482e996'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('e50f6f65e908411489d30e6d105a0b85'),'Observación correspondiente al estudio e50f6f65e908411489d30e6d105a0b85.',UNHEX('90ae4cebea9f42c3bd73a1aaf5aec1d3'),'BT');
# Se craran 2 archivos para el estudio e50f6f65e908411489d30e6d105a0b85
CALL insert_study_file (UNHEX('1406d8e4b8b84d6e807d8f322b5dccd5'),'Archivo 0.txt',UNHEX('e50f6f65e908411489d30e6d105a0b85'));
CALL insert_study_file (UNHEX('300887b255e1441f9f1f0bbb330369f3'),'Archivo 1.jpg',UNHEX('e50f6f65e908411489d30e6d105a0b85'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('bfc681014a4e47a69aa352a06c302681'),'Observación correspondiente al estudio bfc681014a4e47a69aa352a06c302681.',UNHEX('90ae4cebea9f42c3bd73a1aaf5aec1d3'),'BT');
# Se craran 5 archivos para el estudio bfc681014a4e47a69aa352a06c302681
CALL insert_study_file (UNHEX('daa1184938c54af78bce9249d9095a60'),'Archivo 0.jpg',UNHEX('bfc681014a4e47a69aa352a06c302681'));
CALL insert_study_file (UNHEX('0607855b00a04be7bd410e7687304d63'),'Archivo 1.jpg',UNHEX('bfc681014a4e47a69aa352a06c302681'));
CALL insert_study_file (UNHEX('f31e2b28dc7942cc8b7e5d3a57c96a2a'),'Archivo 2.pdf',UNHEX('bfc681014a4e47a69aa352a06c302681'));
CALL insert_study_file (UNHEX('4597c0e30fc443f7994241a17fd3ed08'),'Archivo 3.pdf',UNHEX('bfc681014a4e47a69aa352a06c302681'));
CALL insert_study_file (UNHEX('49c15546f4aa4949890b02c881f4db4c'),'Archivo 4.doc',UNHEX('bfc681014a4e47a69aa352a06c302681'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('2d8137b31c504fddb18cf3edb0cb3f6b'),'Observación correspondiente al estudio 2d8137b31c504fddb18cf3edb0cb3f6b.',UNHEX('90ae4cebea9f42c3bd73a1aaf5aec1d3'),'ET');
# Se craran 3 archivos para el estudio 2d8137b31c504fddb18cf3edb0cb3f6b
CALL insert_study_file (UNHEX('a2e852cfce114db2bbc035e3da4a1e49'),'Archivo 0.txt',UNHEX('2d8137b31c504fddb18cf3edb0cb3f6b'));
CALL insert_study_file (UNHEX('dc978e3ed3fe4773b4c3b2770bf2dbd9'),'Archivo 1.pdf',UNHEX('2d8137b31c504fddb18cf3edb0cb3f6b'));
CALL insert_study_file (UNHEX('b75c119137d643c68c0ce23d6797c01c'),'Archivo 2.jpg',UNHEX('2d8137b31c504fddb18cf3edb0cb3f6b'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('50b830f83fac49bc8bfd409494eadcc3'),'Observación correspondiente al estudio 50b830f83fac49bc8bfd409494eadcc3.',UNHEX('90ae4cebea9f42c3bd73a1aaf5aec1d3'),'UA');
# Se craran 7 archivos para el estudio 50b830f83fac49bc8bfd409494eadcc3
CALL insert_study_file (UNHEX('05334ad011534a2383b3619785a700fd'),'Archivo 0.pdf',UNHEX('50b830f83fac49bc8bfd409494eadcc3'));
CALL insert_study_file (UNHEX('f175e6e2850c42c58ad905a9d0ac6cd4'),'Archivo 1.jpg',UNHEX('50b830f83fac49bc8bfd409494eadcc3'));
CALL insert_study_file (UNHEX('f78ac1dd869544d9816d7663af783024'),'Archivo 2.jpg',UNHEX('50b830f83fac49bc8bfd409494eadcc3'));
CALL insert_study_file (UNHEX('ee1862df17e14bbaac819905d2c343aa'),'Archivo 3.pdf',UNHEX('50b830f83fac49bc8bfd409494eadcc3'));
CALL insert_study_file (UNHEX('ffb27790aede45d0a9eba3179dbb8407'),'Archivo 4.pdf',UNHEX('50b830f83fac49bc8bfd409494eadcc3'));
CALL insert_study_file (UNHEX('b66b0184b111401e8b879d71a89fd7cc'),'Archivo 5.jpg',UNHEX('50b830f83fac49bc8bfd409494eadcc3'));
CALL insert_study_file (UNHEX('68fbb7661c5b49568a0591c0690fd905'),'Archivo 6.txt',UNHEX('50b830f83fac49bc8bfd409494eadcc3'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('c7c2a54bd48346b59b7d6ddb6a48bb71'),'Observación correspondiente al estudio c7c2a54bd48346b59b7d6ddb6a48bb71.',UNHEX('90ae4cebea9f42c3bd73a1aaf5aec1d3'),'UA');
# Se craran 6 archivos para el estudio c7c2a54bd48346b59b7d6ddb6a48bb71
CALL insert_study_file (UNHEX('aacae996202f43d98f92f3b7cc2a4a6a'),'Archivo 0.pdf',UNHEX('c7c2a54bd48346b59b7d6ddb6a48bb71'));
CALL insert_study_file (UNHEX('9782ba9925494a1c9fc6fc40407ec79b'),'Archivo 1.pdf',UNHEX('c7c2a54bd48346b59b7d6ddb6a48bb71'));
CALL insert_study_file (UNHEX('6a2b9dd3aa9849b0a0d4f851e67e1ec4'),'Archivo 2.jpg',UNHEX('c7c2a54bd48346b59b7d6ddb6a48bb71'));
CALL insert_study_file (UNHEX('17d564ff717a4da1ad6ebd6e0cccc43c'),'Archivo 3.doc',UNHEX('c7c2a54bd48346b59b7d6ddb6a48bb71'));
CALL insert_study_file (UNHEX('6c1e061153df4c169bec907539dc36e7'),'Archivo 4.jpg',UNHEX('c7c2a54bd48346b59b7d6ddb6a48bb71'));
CALL insert_study_file (UNHEX('175df8a908a3432f88c56055b3c6bb60'),'Archivo 5.jpg',UNHEX('c7c2a54bd48346b59b7d6ddb6a48bb71'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('b9bdb27ce75540cf9a05e9969b2832c9'),'Observación correspondiente al estudio b9bdb27ce75540cf9a05e9969b2832c9.',UNHEX('90ae4cebea9f42c3bd73a1aaf5aec1d3'),'UA');
# Se craran 2 archivos para el estudio b9bdb27ce75540cf9a05e9969b2832c9
CALL insert_study_file (UNHEX('a19c3a596b1e45f785f3cc35e218e8b6'),'Archivo 0.jpg',UNHEX('b9bdb27ce75540cf9a05e9969b2832c9'));
CALL insert_study_file (UNHEX('92fd5f050df04a5abc7895f1ac7c4125'),'Archivo 1.pdf',UNHEX('b9bdb27ce75540cf9a05e9969b2832c9'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('6e3a4d3d956447e7b31983a35baf1207'),'Observación correspondiente al estudio 6e3a4d3d956447e7b31983a35baf1207.',UNHEX('90ae4cebea9f42c3bd73a1aaf5aec1d3'),'ET');
# Se craran 8 archivos para el estudio 6e3a4d3d956447e7b31983a35baf1207
CALL insert_study_file (UNHEX('98999ab7d79e4277b87e46235a0fe123'),'Archivo 0.doc',UNHEX('6e3a4d3d956447e7b31983a35baf1207'));
CALL insert_study_file (UNHEX('149ce743441a48eb840fac3f37c6ea5b'),'Archivo 1.doc',UNHEX('6e3a4d3d956447e7b31983a35baf1207'));
CALL insert_study_file (UNHEX('1bf7f86ab8a447e6b9a003554c63fb85'),'Archivo 2.txt',UNHEX('6e3a4d3d956447e7b31983a35baf1207'));
CALL insert_study_file (UNHEX('997f7df21f93437bafd8bbb3f46e1e67'),'Archivo 3.jpg',UNHEX('6e3a4d3d956447e7b31983a35baf1207'));
CALL insert_study_file (UNHEX('5ca446f06ebe44548ba0d18b2821b2ea'),'Archivo 4.doc',UNHEX('6e3a4d3d956447e7b31983a35baf1207'));
CALL insert_study_file (UNHEX('71168ae1b5304908bcf0e3e8ff283ccd'),'Archivo 5.txt',UNHEX('6e3a4d3d956447e7b31983a35baf1207'));
CALL insert_study_file (UNHEX('cc4f80245cb147b29fd715805234d955'),'Archivo 6.txt',UNHEX('6e3a4d3d956447e7b31983a35baf1207'));
CALL insert_study_file (UNHEX('ed056a43b4334736913d16aeb6ca684a'),'Archivo 7.txt',UNHEX('6e3a4d3d956447e7b31983a35baf1207'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('68ca1db2845448ba908cbc11d4f8b262'),'Observación correspondiente al estudio 68ca1db2845448ba908cbc11d4f8b262.',UNHEX('90ae4cebea9f42c3bd73a1aaf5aec1d3'),'BT');
# Se craran 4 archivos para el estudio 68ca1db2845448ba908cbc11d4f8b262
CALL insert_study_file (UNHEX('c8215a62a87542fd9b1db0711f022912'),'Archivo 0.pdf',UNHEX('68ca1db2845448ba908cbc11d4f8b262'));
CALL insert_study_file (UNHEX('416cdefc31064aaeb6990b4c2d0e2231'),'Archivo 1.pdf',UNHEX('68ca1db2845448ba908cbc11d4f8b262'));
CALL insert_study_file (UNHEX('6e3f5ae0c0b541fca8bc4f05a070a623'),'Archivo 2.jpg',UNHEX('68ca1db2845448ba908cbc11d4f8b262'));
CALL insert_study_file (UNHEX('1a4d342d5cb94944b253cf4ecd9e081e'),'Archivo 3.jpg',UNHEX('68ca1db2845448ba908cbc11d4f8b262'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('8d49bda1cdfa4bd9b6d5030e96add32a'),'Observación correspondiente al estudio 8d49bda1cdfa4bd9b6d5030e96add32a.',UNHEX('90ae4cebea9f42c3bd73a1aaf5aec1d3'),'UA');
# Se craran 6 archivos para el estudio 8d49bda1cdfa4bd9b6d5030e96add32a
CALL insert_study_file (UNHEX('71b0562b0c5241ce92103fefa3fd7434'),'Archivo 0.pdf',UNHEX('8d49bda1cdfa4bd9b6d5030e96add32a'));
CALL insert_study_file (UNHEX('299de02c8fa0475fa10475da45818e0a'),'Archivo 1.txt',UNHEX('8d49bda1cdfa4bd9b6d5030e96add32a'));
CALL insert_study_file (UNHEX('935383ac5e8f441d9df13c55d21e993b'),'Archivo 2.txt',UNHEX('8d49bda1cdfa4bd9b6d5030e96add32a'));
CALL insert_study_file (UNHEX('030881f6332a45d6b8f09396f5bb3865'),'Archivo 3.txt',UNHEX('8d49bda1cdfa4bd9b6d5030e96add32a'));
CALL insert_study_file (UNHEX('1742d1b97ee84015a1e25e7950ba349d'),'Archivo 4.pdf',UNHEX('8d49bda1cdfa4bd9b6d5030e96add32a'));
CALL insert_study_file (UNHEX('334a1b26905148a29a4d111c8260de90'),'Archivo 5.doc',UNHEX('8d49bda1cdfa4bd9b6d5030e96add32a'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 6e66a7e24fdd48dc971cf87ad33cad05
CALL insert_patient ('1951-12-25','2','F', UNHEX('6e66a7e24fdd48dc971cf87ad33cad05'),'Sauchuk, ida','doctor');
# Se craran 15 estudios para el paciente 6e66a7e24fdd48dc971cf87ad33cad05
CALL insert_study ('2014-08-01',UNHEX('58569b3fe1924df38be1cbd828ab9745'),'Observación correspondiente al estudio 58569b3fe1924df38be1cbd828ab9745.',UNHEX('6e66a7e24fdd48dc971cf87ad33cad05'),'BT');
# Se craran 3 archivos para el estudio 58569b3fe1924df38be1cbd828ab9745
CALL insert_study_file (UNHEX('e0b8ef970bf34dec95f5409b5919a4e5'),'Archivo 0.txt',UNHEX('58569b3fe1924df38be1cbd828ab9745'));
CALL insert_study_file (UNHEX('77d351e39ab14e779f013d0b783f53be'),'Archivo 1.txt',UNHEX('58569b3fe1924df38be1cbd828ab9745'));
CALL insert_study_file (UNHEX('9782e9c3afa240c5a3803a898e33bf6c'),'Archivo 2.jpg',UNHEX('58569b3fe1924df38be1cbd828ab9745'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('1e390bf52265463baf097017b58d18bf'),'Observación correspondiente al estudio 1e390bf52265463baf097017b58d18bf.',UNHEX('6e66a7e24fdd48dc971cf87ad33cad05'),'UA');
# Se craran 3 archivos para el estudio 1e390bf52265463baf097017b58d18bf
CALL insert_study_file (UNHEX('4c99068b05204e53bed0bc4023321113'),'Archivo 0.txt',UNHEX('1e390bf52265463baf097017b58d18bf'));
CALL insert_study_file (UNHEX('b7e07b9cdded4326b95a334e233a3d3e'),'Archivo 1.doc',UNHEX('1e390bf52265463baf097017b58d18bf'));
CALL insert_study_file (UNHEX('a665e776bd184a5ebf203d5f8fb7c8a4'),'Archivo 2.jpg',UNHEX('1e390bf52265463baf097017b58d18bf'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('bdbd0047d2ca4e698bbe84407f8d03b1'),'Observación correspondiente al estudio bdbd0047d2ca4e698bbe84407f8d03b1.',UNHEX('6e66a7e24fdd48dc971cf87ad33cad05'),'BT');
# Se craran 1 archivos para el estudio bdbd0047d2ca4e698bbe84407f8d03b1
CALL insert_study_file (UNHEX('bc0991400c804b74b47150fe1ca6d103'),'Archivo 0.pdf',UNHEX('bdbd0047d2ca4e698bbe84407f8d03b1'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('2376b140ad7c476592851d13a265711a'),'Observación correspondiente al estudio 2376b140ad7c476592851d13a265711a.',UNHEX('6e66a7e24fdd48dc971cf87ad33cad05'),'BT');
# Se craran 3 archivos para el estudio 2376b140ad7c476592851d13a265711a
CALL insert_study_file (UNHEX('036f6990072f4df0993f0fdc38f319df'),'Archivo 0.pdf',UNHEX('2376b140ad7c476592851d13a265711a'));
CALL insert_study_file (UNHEX('9641a81fde07451c8cc04692c5a3e8f7'),'Archivo 1.jpg',UNHEX('2376b140ad7c476592851d13a265711a'));
CALL insert_study_file (UNHEX('a440bd0db7594cccbd373cd56cfae532'),'Archivo 2.txt',UNHEX('2376b140ad7c476592851d13a265711a'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('d73ac7007c254ccfaf0672aae8d6cc8b'),'Observación correspondiente al estudio d73ac7007c254ccfaf0672aae8d6cc8b.',UNHEX('6e66a7e24fdd48dc971cf87ad33cad05'),'UA');
# Se craran 2 archivos para el estudio d73ac7007c254ccfaf0672aae8d6cc8b
CALL insert_study_file (UNHEX('c2e76a9c43f44980b918aa0ed62e8531'),'Archivo 0.pdf',UNHEX('d73ac7007c254ccfaf0672aae8d6cc8b'));
CALL insert_study_file (UNHEX('8fb0c412ed184cc98bf9c8cd0de6cd5a'),'Archivo 1.jpg',UNHEX('d73ac7007c254ccfaf0672aae8d6cc8b'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('f49d0c1bc5cb4e2cb2041e04e88212dc'),'Observación correspondiente al estudio f49d0c1bc5cb4e2cb2041e04e88212dc.',UNHEX('6e66a7e24fdd48dc971cf87ad33cad05'),'ET');
# Se craran 2 archivos para el estudio f49d0c1bc5cb4e2cb2041e04e88212dc
CALL insert_study_file (UNHEX('0bc2ffc18eef4c4d896ae53a3ea89f06'),'Archivo 0.jpg',UNHEX('f49d0c1bc5cb4e2cb2041e04e88212dc'));
CALL insert_study_file (UNHEX('df166e50563046419fd45936970dcfc5'),'Archivo 1.txt',UNHEX('f49d0c1bc5cb4e2cb2041e04e88212dc'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('e1294d3e150c4d08a1a1926be9e40904'),'Observación correspondiente al estudio e1294d3e150c4d08a1a1926be9e40904.',UNHEX('6e66a7e24fdd48dc971cf87ad33cad05'),'ET');
# Se craran 1 archivos para el estudio e1294d3e150c4d08a1a1926be9e40904
CALL insert_study_file (UNHEX('3717dca639ec4649b2665135c9e745c7'),'Archivo 0.pdf',UNHEX('e1294d3e150c4d08a1a1926be9e40904'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('0e2846df868d4d5599a2a2478c57831f'),'Observación correspondiente al estudio 0e2846df868d4d5599a2a2478c57831f.',UNHEX('6e66a7e24fdd48dc971cf87ad33cad05'),'BT');
# Se craran 2 archivos para el estudio 0e2846df868d4d5599a2a2478c57831f
CALL insert_study_file (UNHEX('63d3ffd599e6470394e822ec5f47dea7'),'Archivo 0.jpg',UNHEX('0e2846df868d4d5599a2a2478c57831f'));
CALL insert_study_file (UNHEX('45c659b5586243c1866757bacec65e28'),'Archivo 1.txt',UNHEX('0e2846df868d4d5599a2a2478c57831f'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('d5f557f870da419f8cb0db0090c15d12'),'Observación correspondiente al estudio d5f557f870da419f8cb0db0090c15d12.',UNHEX('6e66a7e24fdd48dc971cf87ad33cad05'),'BT');
# Se craran 3 archivos para el estudio d5f557f870da419f8cb0db0090c15d12
CALL insert_study_file (UNHEX('915987bd3bd14d94a802f2dc2bcae2db'),'Archivo 0.pdf',UNHEX('d5f557f870da419f8cb0db0090c15d12'));
CALL insert_study_file (UNHEX('eb072b6c80cd4f4582c231897d9fb318'),'Archivo 1.pdf',UNHEX('d5f557f870da419f8cb0db0090c15d12'));
CALL insert_study_file (UNHEX('377a2bfe81114ebbadf8c256f252cb1e'),'Archivo 2.txt',UNHEX('d5f557f870da419f8cb0db0090c15d12'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('13aefdbd6425457fb23f4b8f08552af0'),'Observación correspondiente al estudio 13aefdbd6425457fb23f4b8f08552af0.',UNHEX('6e66a7e24fdd48dc971cf87ad33cad05'),'BT');
# Se craran 4 archivos para el estudio 13aefdbd6425457fb23f4b8f08552af0
CALL insert_study_file (UNHEX('844baf0bcb8241a8b4a909389e117685'),'Archivo 0.jpg',UNHEX('13aefdbd6425457fb23f4b8f08552af0'));
CALL insert_study_file (UNHEX('6e071e8b57294b15bda81f2327a641eb'),'Archivo 1.doc',UNHEX('13aefdbd6425457fb23f4b8f08552af0'));
CALL insert_study_file (UNHEX('5731f69bbdea4d5594b76ffd571bb3ad'),'Archivo 2.doc',UNHEX('13aefdbd6425457fb23f4b8f08552af0'));
CALL insert_study_file (UNHEX('badd237badc5416ca06953d7a00d9e84'),'Archivo 3.doc',UNHEX('13aefdbd6425457fb23f4b8f08552af0'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('3138d2d928164879a05abffd634b540e'),'Observación correspondiente al estudio 3138d2d928164879a05abffd634b540e.',UNHEX('6e66a7e24fdd48dc971cf87ad33cad05'),'UA');
# Se craran 5 archivos para el estudio 3138d2d928164879a05abffd634b540e
CALL insert_study_file (UNHEX('61c201daef084e8a9e86a7621a71dc2a'),'Archivo 0.txt',UNHEX('3138d2d928164879a05abffd634b540e'));
CALL insert_study_file (UNHEX('5309840f57d64e4e927ec84aabbe1b7a'),'Archivo 1.jpg',UNHEX('3138d2d928164879a05abffd634b540e'));
CALL insert_study_file (UNHEX('3a25e55224654ecc903860b6d645bbf8'),'Archivo 2.doc',UNHEX('3138d2d928164879a05abffd634b540e'));
CALL insert_study_file (UNHEX('695d8722aee64019bf0f8c39afccc6a1'),'Archivo 3.txt',UNHEX('3138d2d928164879a05abffd634b540e'));
CALL insert_study_file (UNHEX('55d7e00872ca444aaa0d269be0c3f9ec'),'Archivo 4.jpg',UNHEX('3138d2d928164879a05abffd634b540e'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('fd7478afb4c942d292bf88d4d2a311bd'),'Observación correspondiente al estudio fd7478afb4c942d292bf88d4d2a311bd.',UNHEX('6e66a7e24fdd48dc971cf87ad33cad05'),'ET');
# Se craran 5 archivos para el estudio fd7478afb4c942d292bf88d4d2a311bd
CALL insert_study_file (UNHEX('b93aeba5cf1e40608ff85d963bde0b41'),'Archivo 0.pdf',UNHEX('fd7478afb4c942d292bf88d4d2a311bd'));
CALL insert_study_file (UNHEX('7edd0005a8124e16a5f2d35a4c2ccbd1'),'Archivo 1.pdf',UNHEX('fd7478afb4c942d292bf88d4d2a311bd'));
CALL insert_study_file (UNHEX('b7c46a0666314418a9db928ea2e5435c'),'Archivo 2.doc',UNHEX('fd7478afb4c942d292bf88d4d2a311bd'));
CALL insert_study_file (UNHEX('8ed970f139e04991b6fa96c0f8705ea6'),'Archivo 3.pdf',UNHEX('fd7478afb4c942d292bf88d4d2a311bd'));
CALL insert_study_file (UNHEX('06a25ab52a7a43c9a146f020af304a72'),'Archivo 4.doc',UNHEX('fd7478afb4c942d292bf88d4d2a311bd'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('94cc61fdda8a4e47ab4b2ee70fa84018'),'Observación correspondiente al estudio 94cc61fdda8a4e47ab4b2ee70fa84018.',UNHEX('6e66a7e24fdd48dc971cf87ad33cad05'),'ET');
# Se craran 1 archivos para el estudio 94cc61fdda8a4e47ab4b2ee70fa84018
CALL insert_study_file (UNHEX('1cfef1a590e6437c8f6e55610f4c0ea0'),'Archivo 0.txt',UNHEX('94cc61fdda8a4e47ab4b2ee70fa84018'));
# Fin creacion de archivos
CALL insert_study ('2014-07-29',UNHEX('cc894352c6d0447895752b140d832e5b'),'Observación correspondiente al estudio cc894352c6d0447895752b140d832e5b.',UNHEX('6e66a7e24fdd48dc971cf87ad33cad05'),'ET');
# Se craran 6 archivos para el estudio cc894352c6d0447895752b140d832e5b
CALL insert_study_file (UNHEX('019dd17745cc4f79a8d7261d89873363'),'Archivo 0.pdf',UNHEX('cc894352c6d0447895752b140d832e5b'));
CALL insert_study_file (UNHEX('cb8361f460df4451b903c029823b10c9'),'Archivo 1.doc',UNHEX('cc894352c6d0447895752b140d832e5b'));
CALL insert_study_file (UNHEX('67eaaf586356405a9a538632698c5170'),'Archivo 2.pdf',UNHEX('cc894352c6d0447895752b140d832e5b'));
CALL insert_study_file (UNHEX('479a11f11ad4410cb40fa68eb19b2d8e'),'Archivo 3.doc',UNHEX('cc894352c6d0447895752b140d832e5b'));
CALL insert_study_file (UNHEX('653fc9f0c9c94aa5acea83e7e2cb78ea'),'Archivo 4.doc',UNHEX('cc894352c6d0447895752b140d832e5b'));
CALL insert_study_file (UNHEX('253f32bfd8f6404bb20c16c22d8fabbe'),'Archivo 5.jpg',UNHEX('cc894352c6d0447895752b140d832e5b'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('de75df6615574593aa286e0eb4a004d9'),'Observación correspondiente al estudio de75df6615574593aa286e0eb4a004d9.',UNHEX('6e66a7e24fdd48dc971cf87ad33cad05'),'BT');
# Se craran 8 archivos para el estudio de75df6615574593aa286e0eb4a004d9
CALL insert_study_file (UNHEX('63c2a765e70d467ba3ed25b86d9564bc'),'Archivo 0.doc',UNHEX('de75df6615574593aa286e0eb4a004d9'));
CALL insert_study_file (UNHEX('0077542708324c15b55c2ae9e889fd78'),'Archivo 1.pdf',UNHEX('de75df6615574593aa286e0eb4a004d9'));
CALL insert_study_file (UNHEX('adb5473ebff0439f9ba2abfabe06d5d4'),'Archivo 2.txt',UNHEX('de75df6615574593aa286e0eb4a004d9'));
CALL insert_study_file (UNHEX('bc050d164a58434aba5ab284f8ad1494'),'Archivo 3.jpg',UNHEX('de75df6615574593aa286e0eb4a004d9'));
CALL insert_study_file (UNHEX('6b5bbc0ff33849b88455dce4a29f5cf5'),'Archivo 4.txt',UNHEX('de75df6615574593aa286e0eb4a004d9'));
CALL insert_study_file (UNHEX('ec71d1e2bbae4da5b2e198dacb52023b'),'Archivo 5.jpg',UNHEX('de75df6615574593aa286e0eb4a004d9'));
CALL insert_study_file (UNHEX('b59b0b7d05da4154abc2eb46eb0c1b09'),'Archivo 6.jpg',UNHEX('de75df6615574593aa286e0eb4a004d9'));
CALL insert_study_file (UNHEX('5d45bf74816d4ee49d1f2619a5c08826'),'Archivo 7.doc',UNHEX('de75df6615574593aa286e0eb4a004d9'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente c42ee937a8944322bd5de5df3c9443fd
CALL insert_patient ('1956-03-04','2','F', UNHEX('c42ee937a8944322bd5de5df3c9443fd'),'Ghorai, kaycee','doctor');
# Se craran 3 estudios para el paciente c42ee937a8944322bd5de5df3c9443fd
CALL insert_study ('2014-08-03',UNHEX('af19d26cc16e488eaf6c777a32a16d5f'),'Observación correspondiente al estudio af19d26cc16e488eaf6c777a32a16d5f.',UNHEX('c42ee937a8944322bd5de5df3c9443fd'),'UA');
# Se craran 3 archivos para el estudio af19d26cc16e488eaf6c777a32a16d5f
CALL insert_study_file (UNHEX('74658895e96f47ef955ac64b39301631'),'Archivo 0.jpg',UNHEX('af19d26cc16e488eaf6c777a32a16d5f'));
CALL insert_study_file (UNHEX('bd63ba727cd34f329ae7473027c74dd4'),'Archivo 1.jpg',UNHEX('af19d26cc16e488eaf6c777a32a16d5f'));
CALL insert_study_file (UNHEX('102d4ee5f8e0440fa9ca746601def082'),'Archivo 2.doc',UNHEX('af19d26cc16e488eaf6c777a32a16d5f'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('adee88dbc3684e27a96919034dc88f54'),'Observación correspondiente al estudio adee88dbc3684e27a96919034dc88f54.',UNHEX('c42ee937a8944322bd5de5df3c9443fd'),'BT');
# Se craran 1 archivos para el estudio adee88dbc3684e27a96919034dc88f54
CALL insert_study_file (UNHEX('dd1d2695961544d7bd75c28bff680d36'),'Archivo 0.txt',UNHEX('adee88dbc3684e27a96919034dc88f54'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('2e3b6d9b79414851a10d91146b9fde4c'),'Observación correspondiente al estudio 2e3b6d9b79414851a10d91146b9fde4c.',UNHEX('c42ee937a8944322bd5de5df3c9443fd'),'BT');
# Se craran 8 archivos para el estudio 2e3b6d9b79414851a10d91146b9fde4c
CALL insert_study_file (UNHEX('7f4a2c50bc47456d990b85a316f3558b'),'Archivo 0.pdf',UNHEX('2e3b6d9b79414851a10d91146b9fde4c'));
CALL insert_study_file (UNHEX('a365baa26be04ae69db148521bfe684a'),'Archivo 1.pdf',UNHEX('2e3b6d9b79414851a10d91146b9fde4c'));
CALL insert_study_file (UNHEX('6fdaa97002d3440ea0da3b1e2a2c2319'),'Archivo 2.doc',UNHEX('2e3b6d9b79414851a10d91146b9fde4c'));
CALL insert_study_file (UNHEX('2382e1d39c21427caadfd49da92af7fa'),'Archivo 3.txt',UNHEX('2e3b6d9b79414851a10d91146b9fde4c'));
CALL insert_study_file (UNHEX('0da2befa0aff4b6ebff961efef1b6f71'),'Archivo 4.txt',UNHEX('2e3b6d9b79414851a10d91146b9fde4c'));
CALL insert_study_file (UNHEX('0657a7b64579410e85a95008864172a8'),'Archivo 5.txt',UNHEX('2e3b6d9b79414851a10d91146b9fde4c'));
CALL insert_study_file (UNHEX('14ed0c3bebd34daa99db20e9a824e8a1'),'Archivo 6.jpg',UNHEX('2e3b6d9b79414851a10d91146b9fde4c'));
CALL insert_study_file (UNHEX('d2d4bd5ee143473a83790ef039b60564'),'Archivo 7.pdf',UNHEX('2e3b6d9b79414851a10d91146b9fde4c'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 19e948b13de04b829f13e182a442db45
CALL insert_patient ('1931-08-12','3','M', UNHEX('19e948b13de04b829f13e182a442db45'),'Palomba, reidar','doctor');
# Se craran 4 estudios para el paciente 19e948b13de04b829f13e182a442db45
CALL insert_study ('2014-08-03',UNHEX('3d0ed5ef494c4be09791faac81cab8be'),'Observación correspondiente al estudio 3d0ed5ef494c4be09791faac81cab8be.',UNHEX('19e948b13de04b829f13e182a442db45'),'UA');
# Se craran 1 archivos para el estudio 3d0ed5ef494c4be09791faac81cab8be
CALL insert_study_file (UNHEX('87f5069596b84334a48e2b3ae1568021'),'Archivo 0.jpg',UNHEX('3d0ed5ef494c4be09791faac81cab8be'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('0e9cb522414d44c186b0d775c4f9a891'),'Observación correspondiente al estudio 0e9cb522414d44c186b0d775c4f9a891.',UNHEX('19e948b13de04b829f13e182a442db45'),'ET');
# Se craran 1 archivos para el estudio 0e9cb522414d44c186b0d775c4f9a891
CALL insert_study_file (UNHEX('a565b889113d4547b80853e5fcbe740f'),'Archivo 0.pdf',UNHEX('0e9cb522414d44c186b0d775c4f9a891'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('f114aee873ba4b7d897e2bf3b4aac72f'),'Observación correspondiente al estudio f114aee873ba4b7d897e2bf3b4aac72f.',UNHEX('19e948b13de04b829f13e182a442db45'),'ET');
# Se craran 2 archivos para el estudio f114aee873ba4b7d897e2bf3b4aac72f
CALL insert_study_file (UNHEX('4da714d5f2cb463da38eac6e6f169779'),'Archivo 0.txt',UNHEX('f114aee873ba4b7d897e2bf3b4aac72f'));
CALL insert_study_file (UNHEX('8d35050d3c0c4a1db069c8b6e7ea1351'),'Archivo 1.jpg',UNHEX('f114aee873ba4b7d897e2bf3b4aac72f'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('492542acfe5f48e5a45f7e8fcd629e3b'),'Observación correspondiente al estudio 492542acfe5f48e5a45f7e8fcd629e3b.',UNHEX('19e948b13de04b829f13e182a442db45'),'ET');
# Se craran 2 archivos para el estudio 492542acfe5f48e5a45f7e8fcd629e3b
CALL insert_study_file (UNHEX('41add8dbe0f94b4e9a60d725756dc564'),'Archivo 0.doc',UNHEX('492542acfe5f48e5a45f7e8fcd629e3b'));
CALL insert_study_file (UNHEX('a6607936f108459f8dd862758d54e36a'),'Archivo 1.jpg',UNHEX('492542acfe5f48e5a45f7e8fcd629e3b'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente b024e7b4cd9047b9aa68cccb3d41e379
CALL insert_patient ('1982-10-12','1','F', UNHEX('b024e7b4cd9047b9aa68cccb3d41e379'),'Giarman, Ethyl Karry','doctor');
# Se craran 18 estudios para el paciente b024e7b4cd9047b9aa68cccb3d41e379
CALL insert_study ('2014-08-04',UNHEX('8033562ee76d49bab3ad00742b15d915'),'Observación correspondiente al estudio 8033562ee76d49bab3ad00742b15d915.',UNHEX('b024e7b4cd9047b9aa68cccb3d41e379'),'UA');
# Se craran 5 archivos para el estudio 8033562ee76d49bab3ad00742b15d915
CALL insert_study_file (UNHEX('68e63fb4efef4ca184e76e6c35200375'),'Archivo 0.txt',UNHEX('8033562ee76d49bab3ad00742b15d915'));
CALL insert_study_file (UNHEX('ce4419b20b9247fba31f142a5e88b8bb'),'Archivo 1.txt',UNHEX('8033562ee76d49bab3ad00742b15d915'));
CALL insert_study_file (UNHEX('737ac8fa405d444681195640a92f77b0'),'Archivo 2.jpg',UNHEX('8033562ee76d49bab3ad00742b15d915'));
CALL insert_study_file (UNHEX('3a2078f013844d6e9aa269fca479be68'),'Archivo 3.doc',UNHEX('8033562ee76d49bab3ad00742b15d915'));
CALL insert_study_file (UNHEX('9ad4aa83c10a492695d5528a7288dfcd'),'Archivo 4.jpg',UNHEX('8033562ee76d49bab3ad00742b15d915'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('8481bbf8f65b45bdb43a2e35665ad52e'),'Observación correspondiente al estudio 8481bbf8f65b45bdb43a2e35665ad52e.',UNHEX('b024e7b4cd9047b9aa68cccb3d41e379'),'ET');
# Se craran 0 archivos para el estudio 8481bbf8f65b45bdb43a2e35665ad52e
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('0086309df7204ce6b9bf0c2a678d5904'),'Observación correspondiente al estudio 0086309df7204ce6b9bf0c2a678d5904.',UNHEX('b024e7b4cd9047b9aa68cccb3d41e379'),'ET');
# Se craran 1 archivos para el estudio 0086309df7204ce6b9bf0c2a678d5904
CALL insert_study_file (UNHEX('8a489f355ea549a9a938e8a4b66d0f45'),'Archivo 0.doc',UNHEX('0086309df7204ce6b9bf0c2a678d5904'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('fc7e130ea3614ec4b56b76d9b4dff328'),'Observación correspondiente al estudio fc7e130ea3614ec4b56b76d9b4dff328.',UNHEX('b024e7b4cd9047b9aa68cccb3d41e379'),'ET');
# Se craran 8 archivos para el estudio fc7e130ea3614ec4b56b76d9b4dff328
CALL insert_study_file (UNHEX('f72a4636abe4450e8949480a2418c1c4'),'Archivo 0.doc',UNHEX('fc7e130ea3614ec4b56b76d9b4dff328'));
CALL insert_study_file (UNHEX('a6e2a53b1dd64e34b90f81177823b9f9'),'Archivo 1.txt',UNHEX('fc7e130ea3614ec4b56b76d9b4dff328'));
CALL insert_study_file (UNHEX('1e948069be334364addb585a0b3d41f6'),'Archivo 2.jpg',UNHEX('fc7e130ea3614ec4b56b76d9b4dff328'));
CALL insert_study_file (UNHEX('3e0f67663a1947deac9e230dd3b52763'),'Archivo 3.pdf',UNHEX('fc7e130ea3614ec4b56b76d9b4dff328'));
CALL insert_study_file (UNHEX('7be60e4408e14d17825a63b5b739d944'),'Archivo 4.jpg',UNHEX('fc7e130ea3614ec4b56b76d9b4dff328'));
CALL insert_study_file (UNHEX('9845a968a25a4f1e83f53d1e6376497a'),'Archivo 5.jpg',UNHEX('fc7e130ea3614ec4b56b76d9b4dff328'));
CALL insert_study_file (UNHEX('10337e7c45e7440d8b6fa6eb52d1df10'),'Archivo 6.pdf',UNHEX('fc7e130ea3614ec4b56b76d9b4dff328'));
CALL insert_study_file (UNHEX('d908cdc57f6b411582d4a9f725205f43'),'Archivo 7.txt',UNHEX('fc7e130ea3614ec4b56b76d9b4dff328'));
# Fin creacion de archivos
CALL insert_study ('2014-07-29',UNHEX('cca57da7e56c47b99e80c7a284e5c7f3'),'Observación correspondiente al estudio cca57da7e56c47b99e80c7a284e5c7f3.',UNHEX('b024e7b4cd9047b9aa68cccb3d41e379'),'ET');
# Se craran 0 archivos para el estudio cca57da7e56c47b99e80c7a284e5c7f3
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('8ae4cc9da0854978a295841e3ef3b536'),'Observación correspondiente al estudio 8ae4cc9da0854978a295841e3ef3b536.',UNHEX('b024e7b4cd9047b9aa68cccb3d41e379'),'ET');
# Se craran 3 archivos para el estudio 8ae4cc9da0854978a295841e3ef3b536
CALL insert_study_file (UNHEX('c22c89125e5044ed99067612b2d24c7b'),'Archivo 0.txt',UNHEX('8ae4cc9da0854978a295841e3ef3b536'));
CALL insert_study_file (UNHEX('f6a6d1cbdfd743a1a25a0785f42c4ac6'),'Archivo 1.doc',UNHEX('8ae4cc9da0854978a295841e3ef3b536'));
CALL insert_study_file (UNHEX('feb094e351984bf999b8036bc80cfc6c'),'Archivo 2.jpg',UNHEX('8ae4cc9da0854978a295841e3ef3b536'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('e60a3e86356e4c199c2be0394a5d1b46'),'Observación correspondiente al estudio e60a3e86356e4c199c2be0394a5d1b46.',UNHEX('b024e7b4cd9047b9aa68cccb3d41e379'),'UA');
# Se craran 4 archivos para el estudio e60a3e86356e4c199c2be0394a5d1b46
CALL insert_study_file (UNHEX('6cafbb6db41b4999ab7365a657e5209f'),'Archivo 0.jpg',UNHEX('e60a3e86356e4c199c2be0394a5d1b46'));
CALL insert_study_file (UNHEX('fe25aa5b1be04a0ab77fdf74d0202d0b'),'Archivo 1.txt',UNHEX('e60a3e86356e4c199c2be0394a5d1b46'));
CALL insert_study_file (UNHEX('e5212c3c68bd4f44b25a8108e078cf2d'),'Archivo 2.doc',UNHEX('e60a3e86356e4c199c2be0394a5d1b46'));
CALL insert_study_file (UNHEX('75e282fd32824229aa3a943822ad4bde'),'Archivo 3.txt',UNHEX('e60a3e86356e4c199c2be0394a5d1b46'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('739d88e510494d1391db77257582b588'),'Observación correspondiente al estudio 739d88e510494d1391db77257582b588.',UNHEX('b024e7b4cd9047b9aa68cccb3d41e379'),'BT');
# Se craran 1 archivos para el estudio 739d88e510494d1391db77257582b588
CALL insert_study_file (UNHEX('e4d387dea5ee4d049cc273b63817c9da'),'Archivo 0.pdf',UNHEX('739d88e510494d1391db77257582b588'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('85dbfaca5ca948c1af986566f1a6d53a'),'Observación correspondiente al estudio 85dbfaca5ca948c1af986566f1a6d53a.',UNHEX('b024e7b4cd9047b9aa68cccb3d41e379'),'BT');
# Se craran 4 archivos para el estudio 85dbfaca5ca948c1af986566f1a6d53a
CALL insert_study_file (UNHEX('10b3a5c1535b4782b3b558629c3c3dfd'),'Archivo 0.pdf',UNHEX('85dbfaca5ca948c1af986566f1a6d53a'));
CALL insert_study_file (UNHEX('fa4caecda15d43c8ad25bb75260ef93f'),'Archivo 1.jpg',UNHEX('85dbfaca5ca948c1af986566f1a6d53a'));
CALL insert_study_file (UNHEX('8cb064e26b1a48e481e0d32a47fb76e4'),'Archivo 2.doc',UNHEX('85dbfaca5ca948c1af986566f1a6d53a'));
CALL insert_study_file (UNHEX('0c57d951d4d6491e8ce0291bc2d72215'),'Archivo 3.pdf',UNHEX('85dbfaca5ca948c1af986566f1a6d53a'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('2cf09688869c44d29a86e30577de6394'),'Observación correspondiente al estudio 2cf09688869c44d29a86e30577de6394.',UNHEX('b024e7b4cd9047b9aa68cccb3d41e379'),'UA');
# Se craran 4 archivos para el estudio 2cf09688869c44d29a86e30577de6394
CALL insert_study_file (UNHEX('9518d913e8e94fce94372feef3f5bf11'),'Archivo 0.pdf',UNHEX('2cf09688869c44d29a86e30577de6394'));
CALL insert_study_file (UNHEX('2696c97e89e4477a9f2efe07b5c56649'),'Archivo 1.doc',UNHEX('2cf09688869c44d29a86e30577de6394'));
CALL insert_study_file (UNHEX('811e9e5da7154da5b64503e878c34e7e'),'Archivo 2.txt',UNHEX('2cf09688869c44d29a86e30577de6394'));
CALL insert_study_file (UNHEX('87f38116f81f4398a0169e752370c351'),'Archivo 3.txt',UNHEX('2cf09688869c44d29a86e30577de6394'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('1cad4cf5118448f5a3643085988f505b'),'Observación correspondiente al estudio 1cad4cf5118448f5a3643085988f505b.',UNHEX('b024e7b4cd9047b9aa68cccb3d41e379'),'BT');
# Se craran 8 archivos para el estudio 1cad4cf5118448f5a3643085988f505b
CALL insert_study_file (UNHEX('a7887cb02bf144e8bf63cc1a06e21bf9'),'Archivo 0.txt',UNHEX('1cad4cf5118448f5a3643085988f505b'));
CALL insert_study_file (UNHEX('964c25e65819470a9d2b70c3ac548f94'),'Archivo 1.jpg',UNHEX('1cad4cf5118448f5a3643085988f505b'));
CALL insert_study_file (UNHEX('d70659faac554c4ba47884c1c7757a19'),'Archivo 2.pdf',UNHEX('1cad4cf5118448f5a3643085988f505b'));
CALL insert_study_file (UNHEX('1ba5fc45a8114b9893347a893d14deba'),'Archivo 3.jpg',UNHEX('1cad4cf5118448f5a3643085988f505b'));
CALL insert_study_file (UNHEX('20beb91ce5824015b638f36f8265ccfe'),'Archivo 4.pdf',UNHEX('1cad4cf5118448f5a3643085988f505b'));
CALL insert_study_file (UNHEX('72fabd7ce20f4eff95e962b53d5d6e43'),'Archivo 5.jpg',UNHEX('1cad4cf5118448f5a3643085988f505b'));
CALL insert_study_file (UNHEX('b27950ab486844dbb071f33bc13bae69'),'Archivo 6.pdf',UNHEX('1cad4cf5118448f5a3643085988f505b'));
CALL insert_study_file (UNHEX('3edb1868c606419da7467ede8d147857'),'Archivo 7.doc',UNHEX('1cad4cf5118448f5a3643085988f505b'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('ac2a0d75d11640d8a5b469373814da41'),'Observación correspondiente al estudio ac2a0d75d11640d8a5b469373814da41.',UNHEX('b024e7b4cd9047b9aa68cccb3d41e379'),'BT');
# Se craran 6 archivos para el estudio ac2a0d75d11640d8a5b469373814da41
CALL insert_study_file (UNHEX('d07bd44b1157415180528aadb775fe3f'),'Archivo 0.pdf',UNHEX('ac2a0d75d11640d8a5b469373814da41'));
CALL insert_study_file (UNHEX('71acf4c8dd3440e6b0e74bf62d4e541f'),'Archivo 1.doc',UNHEX('ac2a0d75d11640d8a5b469373814da41'));
CALL insert_study_file (UNHEX('8cbed67ccf6a42f8817bf456f1239951'),'Archivo 2.jpg',UNHEX('ac2a0d75d11640d8a5b469373814da41'));
CALL insert_study_file (UNHEX('01f2ccb0caf74cbcaec343ef8a954b56'),'Archivo 3.doc',UNHEX('ac2a0d75d11640d8a5b469373814da41'));
CALL insert_study_file (UNHEX('0c71df286f484224a5de05321b9bd8c9'),'Archivo 4.jpg',UNHEX('ac2a0d75d11640d8a5b469373814da41'));
CALL insert_study_file (UNHEX('6b6a5001d7024b3b8876b1d40e4f954d'),'Archivo 5.pdf',UNHEX('ac2a0d75d11640d8a5b469373814da41'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('99141117a6e74685baf88594d6d914ca'),'Observación correspondiente al estudio 99141117a6e74685baf88594d6d914ca.',UNHEX('b024e7b4cd9047b9aa68cccb3d41e379'),'BT');
# Se craran 0 archivos para el estudio 99141117a6e74685baf88594d6d914ca
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('d3b7f51aa3134c92a53fe967aacf815f'),'Observación correspondiente al estudio d3b7f51aa3134c92a53fe967aacf815f.',UNHEX('b024e7b4cd9047b9aa68cccb3d41e379'),'UA');
# Se craran 9 archivos para el estudio d3b7f51aa3134c92a53fe967aacf815f
CALL insert_study_file (UNHEX('9cfbce81a92c45b58dff8c591bc40a34'),'Archivo 0.txt',UNHEX('d3b7f51aa3134c92a53fe967aacf815f'));
CALL insert_study_file (UNHEX('8c2e6bb82bfd4b97bbe78b8cb068d856'),'Archivo 1.pdf',UNHEX('d3b7f51aa3134c92a53fe967aacf815f'));
CALL insert_study_file (UNHEX('50d24cc8d9454035a1adb21933978913'),'Archivo 2.jpg',UNHEX('d3b7f51aa3134c92a53fe967aacf815f'));
CALL insert_study_file (UNHEX('0a7c9416817e460e814df06134a09333'),'Archivo 3.txt',UNHEX('d3b7f51aa3134c92a53fe967aacf815f'));
CALL insert_study_file (UNHEX('b3e6cce35827440fab818fedd6f42d44'),'Archivo 4.jpg',UNHEX('d3b7f51aa3134c92a53fe967aacf815f'));
CALL insert_study_file (UNHEX('946f96804e174b3da54acd6233a65d0a'),'Archivo 5.pdf',UNHEX('d3b7f51aa3134c92a53fe967aacf815f'));
CALL insert_study_file (UNHEX('199b9a4d17aa429ebf25fe57fcd66e0f'),'Archivo 6.jpg',UNHEX('d3b7f51aa3134c92a53fe967aacf815f'));
CALL insert_study_file (UNHEX('a3a3c5bcced7412d8a6278f9bc7911ef'),'Archivo 7.doc',UNHEX('d3b7f51aa3134c92a53fe967aacf815f'));
CALL insert_study_file (UNHEX('e628657c435f4732a8a284790aae8968'),'Archivo 8.txt',UNHEX('d3b7f51aa3134c92a53fe967aacf815f'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('5604496cb58f4282b85e012d48c36e3a'),'Observación correspondiente al estudio 5604496cb58f4282b85e012d48c36e3a.',UNHEX('b024e7b4cd9047b9aa68cccb3d41e379'),'BT');
# Se craran 4 archivos para el estudio 5604496cb58f4282b85e012d48c36e3a
CALL insert_study_file (UNHEX('7c2968f5d0c14ce7bc9263cc5386748d'),'Archivo 0.pdf',UNHEX('5604496cb58f4282b85e012d48c36e3a'));
CALL insert_study_file (UNHEX('7c8e98e291c043cf93d5492e7e732fad'),'Archivo 1.doc',UNHEX('5604496cb58f4282b85e012d48c36e3a'));
CALL insert_study_file (UNHEX('7f85266516e84ed7a309f58eb0253249'),'Archivo 2.txt',UNHEX('5604496cb58f4282b85e012d48c36e3a'));
CALL insert_study_file (UNHEX('851af41f8c134440a8af1c6be5759c32'),'Archivo 3.txt',UNHEX('5604496cb58f4282b85e012d48c36e3a'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('1ffbe69dae7341eb9691717ad33492d3'),'Observación correspondiente al estudio 1ffbe69dae7341eb9691717ad33492d3.',UNHEX('b024e7b4cd9047b9aa68cccb3d41e379'),'BT');
# Se craran 0 archivos para el estudio 1ffbe69dae7341eb9691717ad33492d3
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('2d4bf4f8a6264c968711954fa3a54b7b'),'Observación correspondiente al estudio 2d4bf4f8a6264c968711954fa3a54b7b.',UNHEX('b024e7b4cd9047b9aa68cccb3d41e379'),'BT');
# Se craran 1 archivos para el estudio 2d4bf4f8a6264c968711954fa3a54b7b
CALL insert_study_file (UNHEX('dd5a19ac3a91440d92bb500df920ccc7'),'Archivo 0.txt',UNHEX('2d4bf4f8a6264c968711954fa3a54b7b'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('65fe6745df644309b286105c717bc8dc'),'Observación correspondiente al estudio 65fe6745df644309b286105c717bc8dc.',UNHEX('b024e7b4cd9047b9aa68cccb3d41e379'),'UA');
# Se craran 3 archivos para el estudio 65fe6745df644309b286105c717bc8dc
CALL insert_study_file (UNHEX('3055786f4bdf4776a4ed81a563625c2d'),'Archivo 0.doc',UNHEX('65fe6745df644309b286105c717bc8dc'));
CALL insert_study_file (UNHEX('1b6b923325804ea38a9bd735226842d9'),'Archivo 1.txt',UNHEX('65fe6745df644309b286105c717bc8dc'));
CALL insert_study_file (UNHEX('d1944a7c6f7e4aed8a4a2a0b6b2732ce'),'Archivo 2.doc',UNHEX('65fe6745df644309b286105c717bc8dc'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 7b3a2490b19b44968dea162d9d780626
CALL insert_patient ('1933-11-21','1','M', UNHEX('7b3a2490b19b44968dea162d9d780626'),'Shave, che holmes','doctor');
# Se craran 10 estudios para el paciente 7b3a2490b19b44968dea162d9d780626
CALL insert_study ('2014-07-31',UNHEX('23bf599c2cf94f069effcca39bafa43a'),'Observación correspondiente al estudio 23bf599c2cf94f069effcca39bafa43a.',UNHEX('7b3a2490b19b44968dea162d9d780626'),'UA');
# Se craran 4 archivos para el estudio 23bf599c2cf94f069effcca39bafa43a
CALL insert_study_file (UNHEX('fd56bbe7376945939faf10f05d70bb6a'),'Archivo 0.pdf',UNHEX('23bf599c2cf94f069effcca39bafa43a'));
CALL insert_study_file (UNHEX('b80a0070f27f400b89da97885724a8bb'),'Archivo 1.jpg',UNHEX('23bf599c2cf94f069effcca39bafa43a'));
CALL insert_study_file (UNHEX('1c4dc385cc25402193ffb11843828a4e'),'Archivo 2.jpg',UNHEX('23bf599c2cf94f069effcca39bafa43a'));
CALL insert_study_file (UNHEX('0db918c8347a425580206ad920858db9'),'Archivo 3.doc',UNHEX('23bf599c2cf94f069effcca39bafa43a'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('689f000b937c4cd69599131db8c1871c'),'Observación correspondiente al estudio 689f000b937c4cd69599131db8c1871c.',UNHEX('7b3a2490b19b44968dea162d9d780626'),'UA');
# Se craran 5 archivos para el estudio 689f000b937c4cd69599131db8c1871c
CALL insert_study_file (UNHEX('763c35c4b36646cca66bff0dcefd1594'),'Archivo 0.txt',UNHEX('689f000b937c4cd69599131db8c1871c'));
CALL insert_study_file (UNHEX('36afd8c48db64642b3c75a819ec1afe1'),'Archivo 1.pdf',UNHEX('689f000b937c4cd69599131db8c1871c'));
CALL insert_study_file (UNHEX('de37e3da4e6b44b687d369d7450dc8bc'),'Archivo 2.doc',UNHEX('689f000b937c4cd69599131db8c1871c'));
CALL insert_study_file (UNHEX('0fe68a1f9fd84f08837aa8985c4e3215'),'Archivo 3.doc',UNHEX('689f000b937c4cd69599131db8c1871c'));
CALL insert_study_file (UNHEX('71384bd9e790424db561379101110096'),'Archivo 4.doc',UNHEX('689f000b937c4cd69599131db8c1871c'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('84747c381bb34aa1bd73656d1ce04750'),'Observación correspondiente al estudio 84747c381bb34aa1bd73656d1ce04750.',UNHEX('7b3a2490b19b44968dea162d9d780626'),'ET');
# Se craran 5 archivos para el estudio 84747c381bb34aa1bd73656d1ce04750
CALL insert_study_file (UNHEX('c2e4d81204ca46fc99e400476b78b8ea'),'Archivo 0.pdf',UNHEX('84747c381bb34aa1bd73656d1ce04750'));
CALL insert_study_file (UNHEX('8a75b5fa7ef747e8b50826f7648cce20'),'Archivo 1.doc',UNHEX('84747c381bb34aa1bd73656d1ce04750'));
CALL insert_study_file (UNHEX('830f87b019c64533a3a1265734b01c1d'),'Archivo 2.txt',UNHEX('84747c381bb34aa1bd73656d1ce04750'));
CALL insert_study_file (UNHEX('ef905223793e4303821487ca6e7dc9cf'),'Archivo 3.pdf',UNHEX('84747c381bb34aa1bd73656d1ce04750'));
CALL insert_study_file (UNHEX('a2fe793fb18943c0890568b2da6de350'),'Archivo 4.txt',UNHEX('84747c381bb34aa1bd73656d1ce04750'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('4f16a71602634918b379a5766ed54d67'),'Observación correspondiente al estudio 4f16a71602634918b379a5766ed54d67.',UNHEX('7b3a2490b19b44968dea162d9d780626'),'UA');
# Se craran 0 archivos para el estudio 4f16a71602634918b379a5766ed54d67
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('65fc7a51b2d949f39f9518e0c9cb6a71'),'Observación correspondiente al estudio 65fc7a51b2d949f39f9518e0c9cb6a71.',UNHEX('7b3a2490b19b44968dea162d9d780626'),'ET');
# Se craran 4 archivos para el estudio 65fc7a51b2d949f39f9518e0c9cb6a71
CALL insert_study_file (UNHEX('bc3d553d7b4d4493a60d28998ea028f8'),'Archivo 0.jpg',UNHEX('65fc7a51b2d949f39f9518e0c9cb6a71'));
CALL insert_study_file (UNHEX('ad81eeb1dad14356912de2676347ae6a'),'Archivo 1.pdf',UNHEX('65fc7a51b2d949f39f9518e0c9cb6a71'));
CALL insert_study_file (UNHEX('ef2efb370c6440aa85a9786eab72cc37'),'Archivo 2.pdf',UNHEX('65fc7a51b2d949f39f9518e0c9cb6a71'));
CALL insert_study_file (UNHEX('00f71798a1294b71b72ff0e6ce125360'),'Archivo 3.txt',UNHEX('65fc7a51b2d949f39f9518e0c9cb6a71'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('2e163a72f54a44dba519df52c4a85cba'),'Observación correspondiente al estudio 2e163a72f54a44dba519df52c4a85cba.',UNHEX('7b3a2490b19b44968dea162d9d780626'),'BT');
# Se craran 0 archivos para el estudio 2e163a72f54a44dba519df52c4a85cba
# Fin creacion de archivos
CALL insert_study ('2014-07-29',UNHEX('2a62bda1e7af450e88b7876cb27d74f0'),'Observación correspondiente al estudio 2a62bda1e7af450e88b7876cb27d74f0.',UNHEX('7b3a2490b19b44968dea162d9d780626'),'BT');
# Se craran 8 archivos para el estudio 2a62bda1e7af450e88b7876cb27d74f0
CALL insert_study_file (UNHEX('c2c59d107c2a43478653faee45215f3d'),'Archivo 0.txt',UNHEX('2a62bda1e7af450e88b7876cb27d74f0'));
CALL insert_study_file (UNHEX('b0dbf5e749b84c8b921b9852929db1f4'),'Archivo 1.txt',UNHEX('2a62bda1e7af450e88b7876cb27d74f0'));
CALL insert_study_file (UNHEX('568eb9a100ca4d4eaffd21615e3a3bc9'),'Archivo 2.jpg',UNHEX('2a62bda1e7af450e88b7876cb27d74f0'));
CALL insert_study_file (UNHEX('87e257e8bb9d400fb0af8406b2b23c7e'),'Archivo 3.txt',UNHEX('2a62bda1e7af450e88b7876cb27d74f0'));
CALL insert_study_file (UNHEX('ff55db5f8a724faca44d81514b53ea06'),'Archivo 4.jpg',UNHEX('2a62bda1e7af450e88b7876cb27d74f0'));
CALL insert_study_file (UNHEX('78cc02a5c9734227b58fb2c6a5244ade'),'Archivo 5.jpg',UNHEX('2a62bda1e7af450e88b7876cb27d74f0'));
CALL insert_study_file (UNHEX('e3ec2d4362134b03b7bdc1b738246c00'),'Archivo 6.jpg',UNHEX('2a62bda1e7af450e88b7876cb27d74f0'));
CALL insert_study_file (UNHEX('517fece97ac748639e35e11f3a588108'),'Archivo 7.txt',UNHEX('2a62bda1e7af450e88b7876cb27d74f0'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('189da2af4af24b56977ca3b262533139'),'Observación correspondiente al estudio 189da2af4af24b56977ca3b262533139.',UNHEX('7b3a2490b19b44968dea162d9d780626'),'ET');
# Se craran 4 archivos para el estudio 189da2af4af24b56977ca3b262533139
CALL insert_study_file (UNHEX('a02401bde1314b90842a3a72ce766ae5'),'Archivo 0.txt',UNHEX('189da2af4af24b56977ca3b262533139'));
CALL insert_study_file (UNHEX('cf19c1499bed4dd09473d0b6ef56c549'),'Archivo 1.doc',UNHEX('189da2af4af24b56977ca3b262533139'));
CALL insert_study_file (UNHEX('c1a1c4541fc14191a44a3fd65b23883e'),'Archivo 2.pdf',UNHEX('189da2af4af24b56977ca3b262533139'));
CALL insert_study_file (UNHEX('e0962d73b7e44c77adb045c2568e4308'),'Archivo 3.jpg',UNHEX('189da2af4af24b56977ca3b262533139'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('c70fb5a3fea24a18bbff88bd2521e91b'),'Observación correspondiente al estudio c70fb5a3fea24a18bbff88bd2521e91b.',UNHEX('7b3a2490b19b44968dea162d9d780626'),'UA');
# Se craran 5 archivos para el estudio c70fb5a3fea24a18bbff88bd2521e91b
CALL insert_study_file (UNHEX('38f49fea4aee4849b2d0cef18dd5c6d9'),'Archivo 0.jpg',UNHEX('c70fb5a3fea24a18bbff88bd2521e91b'));
CALL insert_study_file (UNHEX('4577d3188d67492f82e5a98c810dbf0a'),'Archivo 1.pdf',UNHEX('c70fb5a3fea24a18bbff88bd2521e91b'));
CALL insert_study_file (UNHEX('2f006d92f5914c188131903dd0d1c48a'),'Archivo 2.jpg',UNHEX('c70fb5a3fea24a18bbff88bd2521e91b'));
CALL insert_study_file (UNHEX('ee9ca59cb7fa48dc87ce4a576538c119'),'Archivo 3.pdf',UNHEX('c70fb5a3fea24a18bbff88bd2521e91b'));
CALL insert_study_file (UNHEX('527a905e645f483d81c0161faa0028eb'),'Archivo 4.txt',UNHEX('c70fb5a3fea24a18bbff88bd2521e91b'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('688f4cc0b5204f6fb49cbd621655813e'),'Observación correspondiente al estudio 688f4cc0b5204f6fb49cbd621655813e.',UNHEX('7b3a2490b19b44968dea162d9d780626'),'UA');
# Se craran 7 archivos para el estudio 688f4cc0b5204f6fb49cbd621655813e
CALL insert_study_file (UNHEX('c0401eec74bb4d8682f76c5a72e889a2'),'Archivo 0.doc',UNHEX('688f4cc0b5204f6fb49cbd621655813e'));
CALL insert_study_file (UNHEX('aad2de799dfb4a76a33fb6f4e11e5c2f'),'Archivo 1.doc',UNHEX('688f4cc0b5204f6fb49cbd621655813e'));
CALL insert_study_file (UNHEX('b22456aa8740447ebd2b2f5befef9356'),'Archivo 2.jpg',UNHEX('688f4cc0b5204f6fb49cbd621655813e'));
CALL insert_study_file (UNHEX('35aacb59cca54591a41cb6673e9dc0d7'),'Archivo 3.doc',UNHEX('688f4cc0b5204f6fb49cbd621655813e'));
CALL insert_study_file (UNHEX('f761739912594673a3470ac7f483e70a'),'Archivo 4.doc',UNHEX('688f4cc0b5204f6fb49cbd621655813e'));
CALL insert_study_file (UNHEX('02a2a4533ec6492db2ca836b4c701e0f'),'Archivo 5.doc',UNHEX('688f4cc0b5204f6fb49cbd621655813e'));
CALL insert_study_file (UNHEX('a10500d0dfde4c8ea2f099bce2c08ff2'),'Archivo 6.doc',UNHEX('688f4cc0b5204f6fb49cbd621655813e'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente a897619788844a3b9b4b087931857eb4
CALL insert_patient ('1938-10-19','0','M', UNHEX('a897619788844a3b9b4b087931857eb4'),'Bracey, aldric isak','doctor');
# Se craran 13 estudios para el paciente a897619788844a3b9b4b087931857eb4
CALL insert_study ('2014-07-31',UNHEX('7588ea4c36b047b7af653fa30bb4c855'),'Observación correspondiente al estudio 7588ea4c36b047b7af653fa30bb4c855.',UNHEX('a897619788844a3b9b4b087931857eb4'),'UA');
# Se craran 7 archivos para el estudio 7588ea4c36b047b7af653fa30bb4c855
CALL insert_study_file (UNHEX('79242d929c2541cb84947f1ec79e50eb'),'Archivo 0.jpg',UNHEX('7588ea4c36b047b7af653fa30bb4c855'));
CALL insert_study_file (UNHEX('48a747ca05174bd188cf3d26b0bdc78d'),'Archivo 1.jpg',UNHEX('7588ea4c36b047b7af653fa30bb4c855'));
CALL insert_study_file (UNHEX('6041fcab784b482dab448c8158ba6bce'),'Archivo 2.txt',UNHEX('7588ea4c36b047b7af653fa30bb4c855'));
CALL insert_study_file (UNHEX('390a32bc469d4fb4aa5be3534d4c63fe'),'Archivo 3.pdf',UNHEX('7588ea4c36b047b7af653fa30bb4c855'));
CALL insert_study_file (UNHEX('0f8e30f5aa8c4a529cb49597f2dbd730'),'Archivo 4.pdf',UNHEX('7588ea4c36b047b7af653fa30bb4c855'));
CALL insert_study_file (UNHEX('f056fe04f79c453c876d89e1a0153b94'),'Archivo 5.txt',UNHEX('7588ea4c36b047b7af653fa30bb4c855'));
CALL insert_study_file (UNHEX('8994f98adce94e26842d43729b297a0b'),'Archivo 6.doc',UNHEX('7588ea4c36b047b7af653fa30bb4c855'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('ab1ab3d8b00f4618b9daf8cf2e78477f'),'Observación correspondiente al estudio ab1ab3d8b00f4618b9daf8cf2e78477f.',UNHEX('a897619788844a3b9b4b087931857eb4'),'UA');
# Se craran 2 archivos para el estudio ab1ab3d8b00f4618b9daf8cf2e78477f
CALL insert_study_file (UNHEX('e95268db730044f7be3dc48e1f7ad41d'),'Archivo 0.doc',UNHEX('ab1ab3d8b00f4618b9daf8cf2e78477f'));
CALL insert_study_file (UNHEX('9b64cc694fd2462084485f8b1ef8c56d'),'Archivo 1.txt',UNHEX('ab1ab3d8b00f4618b9daf8cf2e78477f'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('ad3ebca2fe334e4cb526f4c6ffcd56d5'),'Observación correspondiente al estudio ad3ebca2fe334e4cb526f4c6ffcd56d5.',UNHEX('a897619788844a3b9b4b087931857eb4'),'BT');
# Se craran 1 archivos para el estudio ad3ebca2fe334e4cb526f4c6ffcd56d5
CALL insert_study_file (UNHEX('b361bfc4b5dc4d46a50111f2ba73df98'),'Archivo 0.txt',UNHEX('ad3ebca2fe334e4cb526f4c6ffcd56d5'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('5c52ea3e5d6d4f5e92d15e8d0e0db23b'),'Observación correspondiente al estudio 5c52ea3e5d6d4f5e92d15e8d0e0db23b.',UNHEX('a897619788844a3b9b4b087931857eb4'),'BT');
# Se craran 2 archivos para el estudio 5c52ea3e5d6d4f5e92d15e8d0e0db23b
CALL insert_study_file (UNHEX('339f405ba86b4e54965de0d11caa6be0'),'Archivo 0.doc',UNHEX('5c52ea3e5d6d4f5e92d15e8d0e0db23b'));
CALL insert_study_file (UNHEX('b939b41f6e5148258cf05049353a09fa'),'Archivo 1.txt',UNHEX('5c52ea3e5d6d4f5e92d15e8d0e0db23b'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('83799a28639a44bfb04310fc1731f4ac'),'Observación correspondiente al estudio 83799a28639a44bfb04310fc1731f4ac.',UNHEX('a897619788844a3b9b4b087931857eb4'),'BT');
# Se craran 5 archivos para el estudio 83799a28639a44bfb04310fc1731f4ac
CALL insert_study_file (UNHEX('60a6410851e24607b7663ed025f2a091'),'Archivo 0.jpg',UNHEX('83799a28639a44bfb04310fc1731f4ac'));
CALL insert_study_file (UNHEX('b4b8b8874b8a45f3b7154822329b6554'),'Archivo 1.txt',UNHEX('83799a28639a44bfb04310fc1731f4ac'));
CALL insert_study_file (UNHEX('b4871607953846d8a9a86e8745be195e'),'Archivo 2.jpg',UNHEX('83799a28639a44bfb04310fc1731f4ac'));
CALL insert_study_file (UNHEX('83983f55b1164e91bd34728958f2dc23'),'Archivo 3.jpg',UNHEX('83799a28639a44bfb04310fc1731f4ac'));
CALL insert_study_file (UNHEX('a4de7ad535c942d69fd08dacb517bde0'),'Archivo 4.doc',UNHEX('83799a28639a44bfb04310fc1731f4ac'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('a31d0b8811274d9aa2f09b07917af5fa'),'Observación correspondiente al estudio a31d0b8811274d9aa2f09b07917af5fa.',UNHEX('a897619788844a3b9b4b087931857eb4'),'UA');
# Se craran 0 archivos para el estudio a31d0b8811274d9aa2f09b07917af5fa
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('bae49c7cf5b94290acc8cf1c09af2eaf'),'Observación correspondiente al estudio bae49c7cf5b94290acc8cf1c09af2eaf.',UNHEX('a897619788844a3b9b4b087931857eb4'),'BT');
# Se craran 5 archivos para el estudio bae49c7cf5b94290acc8cf1c09af2eaf
CALL insert_study_file (UNHEX('4fef7fc4c8f64d4988ea720558301d98'),'Archivo 0.txt',UNHEX('bae49c7cf5b94290acc8cf1c09af2eaf'));
CALL insert_study_file (UNHEX('dae4fa3587234b4e872d90d243bfc804'),'Archivo 1.txt',UNHEX('bae49c7cf5b94290acc8cf1c09af2eaf'));
CALL insert_study_file (UNHEX('d05ca75d954a468a9cf7f9e3498216d9'),'Archivo 2.txt',UNHEX('bae49c7cf5b94290acc8cf1c09af2eaf'));
CALL insert_study_file (UNHEX('03ac30ac5f8b471fb3e40cbb669f56ae'),'Archivo 3.doc',UNHEX('bae49c7cf5b94290acc8cf1c09af2eaf'));
CALL insert_study_file (UNHEX('3adb3389574a4f2cb346593c9b852a98'),'Archivo 4.doc',UNHEX('bae49c7cf5b94290acc8cf1c09af2eaf'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('e3456a9269354ae7b7a06504076c9992'),'Observación correspondiente al estudio e3456a9269354ae7b7a06504076c9992.',UNHEX('a897619788844a3b9b4b087931857eb4'),'BT');
# Se craran 3 archivos para el estudio e3456a9269354ae7b7a06504076c9992
CALL insert_study_file (UNHEX('eda9fa1c41234f0d99c786533c49f4db'),'Archivo 0.jpg',UNHEX('e3456a9269354ae7b7a06504076c9992'));
CALL insert_study_file (UNHEX('effe951a287643bdb3e1df8a75847695'),'Archivo 1.jpg',UNHEX('e3456a9269354ae7b7a06504076c9992'));
CALL insert_study_file (UNHEX('242b375b252a489e888588a270bcc8c4'),'Archivo 2.pdf',UNHEX('e3456a9269354ae7b7a06504076c9992'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('38ba443a1fac4a69b0e7e7b27e2cd26e'),'Observación correspondiente al estudio 38ba443a1fac4a69b0e7e7b27e2cd26e.',UNHEX('a897619788844a3b9b4b087931857eb4'),'UA');
# Se craran 0 archivos para el estudio 38ba443a1fac4a69b0e7e7b27e2cd26e
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('544aefb4d7d64de99ba6903515dfffe7'),'Observación correspondiente al estudio 544aefb4d7d64de99ba6903515dfffe7.',UNHEX('a897619788844a3b9b4b087931857eb4'),'BT');
# Se craran 8 archivos para el estudio 544aefb4d7d64de99ba6903515dfffe7
CALL insert_study_file (UNHEX('8145d1b8f5564f9eba66c0ee67d868ec'),'Archivo 0.jpg',UNHEX('544aefb4d7d64de99ba6903515dfffe7'));
CALL insert_study_file (UNHEX('ebaba12f921c4464aa71c90a5bd1c172'),'Archivo 1.jpg',UNHEX('544aefb4d7d64de99ba6903515dfffe7'));
CALL insert_study_file (UNHEX('a42095a5397b495cbb7cb0ca5355c1af'),'Archivo 2.pdf',UNHEX('544aefb4d7d64de99ba6903515dfffe7'));
CALL insert_study_file (UNHEX('210a515eaffa408999400e77997e1d1a'),'Archivo 3.doc',UNHEX('544aefb4d7d64de99ba6903515dfffe7'));
CALL insert_study_file (UNHEX('3c01bf97d3284009b6f7df67ac720e9f'),'Archivo 4.pdf',UNHEX('544aefb4d7d64de99ba6903515dfffe7'));
CALL insert_study_file (UNHEX('b3a38f2bb792450b9c5c3c9c82899b9c'),'Archivo 5.doc',UNHEX('544aefb4d7d64de99ba6903515dfffe7'));
CALL insert_study_file (UNHEX('66dccf3cdc4f4364802880d19d3ae535'),'Archivo 6.pdf',UNHEX('544aefb4d7d64de99ba6903515dfffe7'));
CALL insert_study_file (UNHEX('e396909c7dac4745b841727ffd637f76'),'Archivo 7.jpg',UNHEX('544aefb4d7d64de99ba6903515dfffe7'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('b83c7f7e0e5646c7a040749659580b3f'),'Observación correspondiente al estudio b83c7f7e0e5646c7a040749659580b3f.',UNHEX('a897619788844a3b9b4b087931857eb4'),'UA');
# Se craran 8 archivos para el estudio b83c7f7e0e5646c7a040749659580b3f
CALL insert_study_file (UNHEX('a815d1b450dd4c1d8133aaa74d514c9e'),'Archivo 0.pdf',UNHEX('b83c7f7e0e5646c7a040749659580b3f'));
CALL insert_study_file (UNHEX('6369073ea16e40da9a5b8506975251be'),'Archivo 1.jpg',UNHEX('b83c7f7e0e5646c7a040749659580b3f'));
CALL insert_study_file (UNHEX('0366c9a024ff4a0fb1dcf982cce9fb7a'),'Archivo 2.pdf',UNHEX('b83c7f7e0e5646c7a040749659580b3f'));
CALL insert_study_file (UNHEX('57379d525f374229b6d240158b56c573'),'Archivo 3.txt',UNHEX('b83c7f7e0e5646c7a040749659580b3f'));
CALL insert_study_file (UNHEX('96710977602647ba8d3ee4bb66728bd5'),'Archivo 4.jpg',UNHEX('b83c7f7e0e5646c7a040749659580b3f'));
CALL insert_study_file (UNHEX('0ed74c23e61c4dd19c899fa2900cf0f1'),'Archivo 5.pdf',UNHEX('b83c7f7e0e5646c7a040749659580b3f'));
CALL insert_study_file (UNHEX('c16e80c879c14c909bba3225e1b03d28'),'Archivo 6.doc',UNHEX('b83c7f7e0e5646c7a040749659580b3f'));
CALL insert_study_file (UNHEX('264ad026c8484046ba38eabb53357ff5'),'Archivo 7.doc',UNHEX('b83c7f7e0e5646c7a040749659580b3f'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('6e1f635a4f2d4ea49b0473de0cbd164d'),'Observación correspondiente al estudio 6e1f635a4f2d4ea49b0473de0cbd164d.',UNHEX('a897619788844a3b9b4b087931857eb4'),'ET');
# Se craran 5 archivos para el estudio 6e1f635a4f2d4ea49b0473de0cbd164d
CALL insert_study_file (UNHEX('1087b63b2b2b452c8e1a8bb44e7b543c'),'Archivo 0.jpg',UNHEX('6e1f635a4f2d4ea49b0473de0cbd164d'));
CALL insert_study_file (UNHEX('a3ab27e4b84d40da88efd70e4e73a62f'),'Archivo 1.jpg',UNHEX('6e1f635a4f2d4ea49b0473de0cbd164d'));
CALL insert_study_file (UNHEX('bc7d7037b6c747b3be71c99a00500b14'),'Archivo 2.pdf',UNHEX('6e1f635a4f2d4ea49b0473de0cbd164d'));
CALL insert_study_file (UNHEX('defd15cedf7546b38662c9a118c6c7ac'),'Archivo 3.doc',UNHEX('6e1f635a4f2d4ea49b0473de0cbd164d'));
CALL insert_study_file (UNHEX('07b53185aa95458998ba226292a06f5a'),'Archivo 4.jpg',UNHEX('6e1f635a4f2d4ea49b0473de0cbd164d'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('b90b4c7a61d643378f47b096a0b1787c'),'Observación correspondiente al estudio b90b4c7a61d643378f47b096a0b1787c.',UNHEX('a897619788844a3b9b4b087931857eb4'),'ET');
# Se craran 2 archivos para el estudio b90b4c7a61d643378f47b096a0b1787c
CALL insert_study_file (UNHEX('3ae5a1ad12554d0487568bbcb7ded733'),'Archivo 0.doc',UNHEX('b90b4c7a61d643378f47b096a0b1787c'));
CALL insert_study_file (UNHEX('29929ce50a4e4b5c84774b991472d997'),'Archivo 1.txt',UNHEX('b90b4c7a61d643378f47b096a0b1787c'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 6cdfa10f48764a738a729b8125b238e6
CALL insert_patient ('1950-08-06','2','F', UNHEX('6cdfa10f48764a738a729b8125b238e6'),'Webster, Shelli','doctor');
# Se craran 8 estudios para el paciente 6cdfa10f48764a738a729b8125b238e6
CALL insert_study ('2014-08-03',UNHEX('aac684a1a3d54b288605f9527622239b'),'Observación correspondiente al estudio aac684a1a3d54b288605f9527622239b.',UNHEX('6cdfa10f48764a738a729b8125b238e6'),'BT');
# Se craran 3 archivos para el estudio aac684a1a3d54b288605f9527622239b
CALL insert_study_file (UNHEX('5f1bb112303843af90fe05fe1b3bdb22'),'Archivo 0.pdf',UNHEX('aac684a1a3d54b288605f9527622239b'));
CALL insert_study_file (UNHEX('f57243c2aa884d4bb4f062ab7acfd6d7'),'Archivo 1.jpg',UNHEX('aac684a1a3d54b288605f9527622239b'));
CALL insert_study_file (UNHEX('c4a7febe882f4a1d8f42136a1e8d3d85'),'Archivo 2.txt',UNHEX('aac684a1a3d54b288605f9527622239b'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('0e3482fc14cc4b2fb07b00557c483606'),'Observación correspondiente al estudio 0e3482fc14cc4b2fb07b00557c483606.',UNHEX('6cdfa10f48764a738a729b8125b238e6'),'UA');
# Se craran 0 archivos para el estudio 0e3482fc14cc4b2fb07b00557c483606
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('29aec20a616743799fe30403880e5078'),'Observación correspondiente al estudio 29aec20a616743799fe30403880e5078.',UNHEX('6cdfa10f48764a738a729b8125b238e6'),'BT');
# Se craran 9 archivos para el estudio 29aec20a616743799fe30403880e5078
CALL insert_study_file (UNHEX('c6baec6b5402459a95f8cc26e4dda9cd'),'Archivo 0.doc',UNHEX('29aec20a616743799fe30403880e5078'));
CALL insert_study_file (UNHEX('9977eba6c7934b6c864e6c143c5d3593'),'Archivo 1.pdf',UNHEX('29aec20a616743799fe30403880e5078'));
CALL insert_study_file (UNHEX('15b60fdd04e1431897f36f06bbeefd46'),'Archivo 2.doc',UNHEX('29aec20a616743799fe30403880e5078'));
CALL insert_study_file (UNHEX('c51fb8579135445eb19c84fc6ca3ba11'),'Archivo 3.jpg',UNHEX('29aec20a616743799fe30403880e5078'));
CALL insert_study_file (UNHEX('94c337d62cf24d25ac6f39302e82d984'),'Archivo 4.txt',UNHEX('29aec20a616743799fe30403880e5078'));
CALL insert_study_file (UNHEX('3e70780761c7487cb2460d3b7cc98d75'),'Archivo 5.txt',UNHEX('29aec20a616743799fe30403880e5078'));
CALL insert_study_file (UNHEX('eb97a56f7cb043268d9b6c37a1f2555b'),'Archivo 6.pdf',UNHEX('29aec20a616743799fe30403880e5078'));
CALL insert_study_file (UNHEX('6f17d59a44e145a0bf3ab00a94a9c810'),'Archivo 7.jpg',UNHEX('29aec20a616743799fe30403880e5078'));
CALL insert_study_file (UNHEX('7945affb3fe54385b3782d39723e6a81'),'Archivo 8.txt',UNHEX('29aec20a616743799fe30403880e5078'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('a15aef60e5e9404aadfb47d11c1b9aef'),'Observación correspondiente al estudio a15aef60e5e9404aadfb47d11c1b9aef.',UNHEX('6cdfa10f48764a738a729b8125b238e6'),'UA');
# Se craran 1 archivos para el estudio a15aef60e5e9404aadfb47d11c1b9aef
CALL insert_study_file (UNHEX('1da38c96a80f41ec99182d84519a6456'),'Archivo 0.txt',UNHEX('a15aef60e5e9404aadfb47d11c1b9aef'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('0d7457e6c6e24822924e61dc3926a282'),'Observación correspondiente al estudio 0d7457e6c6e24822924e61dc3926a282.',UNHEX('6cdfa10f48764a738a729b8125b238e6'),'BT');
# Se craran 7 archivos para el estudio 0d7457e6c6e24822924e61dc3926a282
CALL insert_study_file (UNHEX('9b83d6b022844de998771c04d0019b4e'),'Archivo 0.pdf',UNHEX('0d7457e6c6e24822924e61dc3926a282'));
CALL insert_study_file (UNHEX('8d8a0a2170eb4c9caa81f2490243ddc4'),'Archivo 1.doc',UNHEX('0d7457e6c6e24822924e61dc3926a282'));
CALL insert_study_file (UNHEX('ef65dad003524a99b8bb0f11ba61ebe0'),'Archivo 2.pdf',UNHEX('0d7457e6c6e24822924e61dc3926a282'));
CALL insert_study_file (UNHEX('6afa9f86d4bf435eb311bb5f950c243d'),'Archivo 3.pdf',UNHEX('0d7457e6c6e24822924e61dc3926a282'));
CALL insert_study_file (UNHEX('aafe1c36a89741118f95897029054dfa'),'Archivo 4.pdf',UNHEX('0d7457e6c6e24822924e61dc3926a282'));
CALL insert_study_file (UNHEX('ff0633f3b7434d0dafad9153d60ef301'),'Archivo 5.jpg',UNHEX('0d7457e6c6e24822924e61dc3926a282'));
CALL insert_study_file (UNHEX('bf67f80164714e0f8c2a82c081a82f17'),'Archivo 6.doc',UNHEX('0d7457e6c6e24822924e61dc3926a282'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('76fef2e6a9934453a74a5f3f4615757a'),'Observación correspondiente al estudio 76fef2e6a9934453a74a5f3f4615757a.',UNHEX('6cdfa10f48764a738a729b8125b238e6'),'UA');
# Se craran 8 archivos para el estudio 76fef2e6a9934453a74a5f3f4615757a
CALL insert_study_file (UNHEX('76e666dd28ad4153b338d6f606f7b8c0'),'Archivo 0.doc',UNHEX('76fef2e6a9934453a74a5f3f4615757a'));
CALL insert_study_file (UNHEX('bd1d0997bcb34f3098df36359e9852f6'),'Archivo 1.doc',UNHEX('76fef2e6a9934453a74a5f3f4615757a'));
CALL insert_study_file (UNHEX('e15bcb8bbfc34827a787c3d446156bcc'),'Archivo 2.txt',UNHEX('76fef2e6a9934453a74a5f3f4615757a'));
CALL insert_study_file (UNHEX('ef5926102dab417190b24d33d206edd2'),'Archivo 3.doc',UNHEX('76fef2e6a9934453a74a5f3f4615757a'));
CALL insert_study_file (UNHEX('05ad277ffc7a4d0cae19a66b476997a9'),'Archivo 4.txt',UNHEX('76fef2e6a9934453a74a5f3f4615757a'));
CALL insert_study_file (UNHEX('551d4453cecd4c30a8e03ea4cd71228b'),'Archivo 5.jpg',UNHEX('76fef2e6a9934453a74a5f3f4615757a'));
CALL insert_study_file (UNHEX('867db4ff2f1a4956ab6a2abdb3501770'),'Archivo 6.txt',UNHEX('76fef2e6a9934453a74a5f3f4615757a'));
CALL insert_study_file (UNHEX('90e61e2919604c3a9aeab1c9ad235a7c'),'Archivo 7.txt',UNHEX('76fef2e6a9934453a74a5f3f4615757a'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('c0af50efab3b4b378089efdbf3b7b319'),'Observación correspondiente al estudio c0af50efab3b4b378089efdbf3b7b319.',UNHEX('6cdfa10f48764a738a729b8125b238e6'),'UA');
# Se craran 1 archivos para el estudio c0af50efab3b4b378089efdbf3b7b319
CALL insert_study_file (UNHEX('d280f5a9dbb344d19f7fb66b5cb7a3cc'),'Archivo 0.txt',UNHEX('c0af50efab3b4b378089efdbf3b7b319'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('9517cf278de9416bba845afa6d29b764'),'Observación correspondiente al estudio 9517cf278de9416bba845afa6d29b764.',UNHEX('6cdfa10f48764a738a729b8125b238e6'),'BT');
# Se craran 5 archivos para el estudio 9517cf278de9416bba845afa6d29b764
CALL insert_study_file (UNHEX('0c32b70dc1c04e50beb1d7ad69d9094d'),'Archivo 0.txt',UNHEX('9517cf278de9416bba845afa6d29b764'));
CALL insert_study_file (UNHEX('27b4863590634bb7ae9ea0618d007b2b'),'Archivo 1.jpg',UNHEX('9517cf278de9416bba845afa6d29b764'));
CALL insert_study_file (UNHEX('0a39ab810c674892b845b364b18beaa8'),'Archivo 2.jpg',UNHEX('9517cf278de9416bba845afa6d29b764'));
CALL insert_study_file (UNHEX('1951ec91dc9640139a835dcdb85ce8e9'),'Archivo 3.pdf',UNHEX('9517cf278de9416bba845afa6d29b764'));
CALL insert_study_file (UNHEX('bac9b9a0b8fa4d42870e07fd40cb53bf'),'Archivo 4.txt',UNHEX('9517cf278de9416bba845afa6d29b764'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



