USE mrs_db

# Se creara el paciente 95c0dabe246c4494bc6e719e97c5cc56
CALL insert_patient ('1931-10-17','7','F', UNHEX('95c0dabe246c4494bc6e719e97c5cc56'),'Cerioli, adelaide','doctor');
# Se craran 5 estudios para el paciente 95c0dabe246c4494bc6e719e97c5cc56
CALL insert_study ('2014-08-04',UNHEX('18cd76214cf941d29e75dee0f857edcd'),'Observación correspondiente al estudio 18cd76214cf941d29e75dee0f857edcd.',UNHEX('95c0dabe246c4494bc6e719e97c5cc56'),'ET');
# Se craran 1 archivos para el estudio 18cd76214cf941d29e75dee0f857edcd
CALL insert_study_file (UNHEX('41ccda51cf334770b87c3943444c3649'),'Archivo 0.doc',UNHEX('18cd76214cf941d29e75dee0f857edcd'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('e8b2e82fb3f54479ba3207e02b67666c'),'Observación correspondiente al estudio e8b2e82fb3f54479ba3207e02b67666c.',UNHEX('95c0dabe246c4494bc6e719e97c5cc56'),'UA');
# Se craran 0 archivos para el estudio e8b2e82fb3f54479ba3207e02b67666c
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('b7f4aa9409534b31a1d8e68b30ddb5e8'),'Observación correspondiente al estudio b7f4aa9409534b31a1d8e68b30ddb5e8.',UNHEX('95c0dabe246c4494bc6e719e97c5cc56'),'BT');
# Se craran 2 archivos para el estudio b7f4aa9409534b31a1d8e68b30ddb5e8
CALL insert_study_file (UNHEX('3bbd50ea57a24866874e655479f6bd1b'),'Archivo 0.pdf',UNHEX('b7f4aa9409534b31a1d8e68b30ddb5e8'));
CALL insert_study_file (UNHEX('b640034afa974d528dd5a6fd431d8832'),'Archivo 1.txt',UNHEX('b7f4aa9409534b31a1d8e68b30ddb5e8'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('2b817bd8946f4658b3e48f2225ce0ded'),'Observación correspondiente al estudio 2b817bd8946f4658b3e48f2225ce0ded.',UNHEX('95c0dabe246c4494bc6e719e97c5cc56'),'UA');
# Se craran 2 archivos para el estudio 2b817bd8946f4658b3e48f2225ce0ded
CALL insert_study_file (UNHEX('0c26ece44d244dfe96a87998d3b162ed'),'Archivo 0.txt',UNHEX('2b817bd8946f4658b3e48f2225ce0ded'));
CALL insert_study_file (UNHEX('8673dced747e44fc96f07682dcf06213'),'Archivo 1.txt',UNHEX('2b817bd8946f4658b3e48f2225ce0ded'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('a60f1b0da3764df2bb6f0bad8fb0b486'),'Observación correspondiente al estudio a60f1b0da3764df2bb6f0bad8fb0b486.',UNHEX('95c0dabe246c4494bc6e719e97c5cc56'),'ET');
# Se craran 2 archivos para el estudio a60f1b0da3764df2bb6f0bad8fb0b486
CALL insert_study_file (UNHEX('7415bf456e9343be9e55ebdce761a5ed'),'Archivo 0.pdf',UNHEX('a60f1b0da3764df2bb6f0bad8fb0b486'));
CALL insert_study_file (UNHEX('19d9708f100f4d8b8691ce431b42d65a'),'Archivo 1.doc',UNHEX('a60f1b0da3764df2bb6f0bad8fb0b486'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 055d4f585ed44441bcb4a48cf05405dd
CALL insert_patient ('1966-10-23','0','F', UNHEX('055d4f585ed44441bcb4a48cf05405dd'),'Pollack, desiree willy','doctor');
# Se craran 4 estudios para el paciente 055d4f585ed44441bcb4a48cf05405dd
CALL insert_study ('2014-08-01',UNHEX('0d959c7550a24c70a6410032819c3f6b'),'Observación correspondiente al estudio 0d959c7550a24c70a6410032819c3f6b.',UNHEX('055d4f585ed44441bcb4a48cf05405dd'),'ET');
# Se craran 1 archivos para el estudio 0d959c7550a24c70a6410032819c3f6b
CALL insert_study_file (UNHEX('9a266531e6824273a368a3ee9416458b'),'Archivo 0.txt',UNHEX('0d959c7550a24c70a6410032819c3f6b'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('7563f95c962b4a25a556ed65a3a1b2a3'),'Observación correspondiente al estudio 7563f95c962b4a25a556ed65a3a1b2a3.',UNHEX('055d4f585ed44441bcb4a48cf05405dd'),'BT');
# Se craran 2 archivos para el estudio 7563f95c962b4a25a556ed65a3a1b2a3
CALL insert_study_file (UNHEX('8ccd101ce9a341d0a73fcdd546ae8b88'),'Archivo 0.doc',UNHEX('7563f95c962b4a25a556ed65a3a1b2a3'));
CALL insert_study_file (UNHEX('61bd50bdce914c63abea742a2cfcd443'),'Archivo 1.txt',UNHEX('7563f95c962b4a25a556ed65a3a1b2a3'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('a14fc85997b84b87aa71fde55ccae8c1'),'Observación correspondiente al estudio a14fc85997b84b87aa71fde55ccae8c1.',UNHEX('055d4f585ed44441bcb4a48cf05405dd'),'ET');
# Se craran 2 archivos para el estudio a14fc85997b84b87aa71fde55ccae8c1
CALL insert_study_file (UNHEX('4498ecac9d78434791467fd76c9ff0db'),'Archivo 0.jpg',UNHEX('a14fc85997b84b87aa71fde55ccae8c1'));
CALL insert_study_file (UNHEX('eceea715c5ab42e6b52fcd64dd2152b5'),'Archivo 1.txt',UNHEX('a14fc85997b84b87aa71fde55ccae8c1'));
# Fin creacion de archivos
CALL insert_study ('2014-08-05',UNHEX('71fa97c9d5cf463b9fa70692835b729e'),'Observación correspondiente al estudio 71fa97c9d5cf463b9fa70692835b729e.',UNHEX('055d4f585ed44441bcb4a48cf05405dd'),'ET');
# Se craran 2 archivos para el estudio 71fa97c9d5cf463b9fa70692835b729e
CALL insert_study_file (UNHEX('e0f41b2cebd34f19bf119d9aa8f57d37'),'Archivo 0.jpg',UNHEX('71fa97c9d5cf463b9fa70692835b729e'));
CALL insert_study_file (UNHEX('d8b77100d87642ceba042a2c7f59bb5a'),'Archivo 1.txt',UNHEX('71fa97c9d5cf463b9fa70692835b729e'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 9e5a83b0729b4a3eacef1add52dc54ee
CALL insert_patient ('1941-01-12','3','F', UNHEX('9e5a83b0729b4a3eacef1add52dc54ee'),'Zasadzinski, Alyson','doctor');
# Se craran 3 estudios para el paciente 9e5a83b0729b4a3eacef1add52dc54ee
CALL insert_study ('2014-07-31',UNHEX('2ef1603b56d7479ebc4d2a056bac73f6'),'Observación correspondiente al estudio 2ef1603b56d7479ebc4d2a056bac73f6.',UNHEX('9e5a83b0729b4a3eacef1add52dc54ee'),'BT');
# Se craran 0 archivos para el estudio 2ef1603b56d7479ebc4d2a056bac73f6
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('e285afe286cf4c77a6004de6e8996719'),'Observación correspondiente al estudio e285afe286cf4c77a6004de6e8996719.',UNHEX('9e5a83b0729b4a3eacef1add52dc54ee'),'BT');
# Se craran 1 archivos para el estudio e285afe286cf4c77a6004de6e8996719
CALL insert_study_file (UNHEX('25558b6d9d2448d093918f243e41f2ff'),'Archivo 0.jpg',UNHEX('e285afe286cf4c77a6004de6e8996719'));
# Fin creacion de archivos
CALL insert_study ('2014-08-04',UNHEX('acffb6393b954cd1884dfc894f50cc49'),'Observación correspondiente al estudio acffb6393b954cd1884dfc894f50cc49.',UNHEX('9e5a83b0729b4a3eacef1add52dc54ee'),'UA');
# Se craran 0 archivos para el estudio acffb6393b954cd1884dfc894f50cc49
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente c3f124cc1c074f73bc255d6951b56d5a
CALL insert_patient ('1981-11-18','4','F', UNHEX('c3f124cc1c074f73bc255d6951b56d5a'),'Flack, gale  jsandye','doctor');
# Se craran 2 estudios para el paciente c3f124cc1c074f73bc255d6951b56d5a
CALL insert_study ('2014-08-02',UNHEX('6bbaa62129814ce7b79c0568d2106045'),'Observación correspondiente al estudio 6bbaa62129814ce7b79c0568d2106045.',UNHEX('c3f124cc1c074f73bc255d6951b56d5a'),'UA');
# Se craran 0 archivos para el estudio 6bbaa62129814ce7b79c0568d2106045
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('ff81d86adfa1473e81b0846afd5a5c97'),'Observación correspondiente al estudio ff81d86adfa1473e81b0846afd5a5c97.',UNHEX('c3f124cc1c074f73bc255d6951b56d5a'),'BT');
# Se craran 1 archivos para el estudio ff81d86adfa1473e81b0846afd5a5c97
CALL insert_study_file (UNHEX('e1cefae2c5b34f2e9393c2e60dfe9b54'),'Archivo 0.jpg',UNHEX('ff81d86adfa1473e81b0846afd5a5c97'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente a743f22cd011482790c65f27ce51de8c
CALL insert_patient ('1942-11-17','7','M', UNHEX('a743f22cd011482790c65f27ce51de8c'),'Carlyle, yuri manny','doctor');
# Se craran 2 estudios para el paciente a743f22cd011482790c65f27ce51de8c
CALL insert_study ('2014-08-02',UNHEX('61cb7396f4c8493ead233a2aca591c91'),'Observación correspondiente al estudio 61cb7396f4c8493ead233a2aca591c91.',UNHEX('a743f22cd011482790c65f27ce51de8c'),'BT');
# Se craran 0 archivos para el estudio 61cb7396f4c8493ead233a2aca591c91
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('52759dd5971e4119a375feeefd12cc2d'),'Observación correspondiente al estudio 52759dd5971e4119a375feeefd12cc2d.',UNHEX('a743f22cd011482790c65f27ce51de8c'),'UA');
# Se craran 2 archivos para el estudio 52759dd5971e4119a375feeefd12cc2d
CALL insert_study_file (UNHEX('d25a7dc676674807812e9e16d6c6f6a4'),'Archivo 0.pdf',UNHEX('52759dd5971e4119a375feeefd12cc2d'));
CALL insert_study_file (UNHEX('a7559124571f4ce2b4f4ca6e560c3212'),'Archivo 1.txt',UNHEX('52759dd5971e4119a375feeefd12cc2d'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 426d2c18c29548799d7801a245241c07
CALL insert_patient ('1955-08-14','3','F', UNHEX('426d2c18c29548799d7801a245241c07'),'Barbieri, Dido georgianne','doctor');
# Se craran 2 estudios para el paciente 426d2c18c29548799d7801a245241c07
CALL insert_study ('2014-08-04',UNHEX('75bb6e9a014e4f96babca4df404a2691'),'Observación correspondiente al estudio 75bb6e9a014e4f96babca4df404a2691.',UNHEX('426d2c18c29548799d7801a245241c07'),'BT');
# Se craran 1 archivos para el estudio 75bb6e9a014e4f96babca4df404a2691
CALL insert_study_file (UNHEX('829b86fa3f2f453da4741da354f64b0c'),'Archivo 0.pdf',UNHEX('75bb6e9a014e4f96babca4df404a2691'));
# Fin creacion de archivos
CALL insert_study ('2014-08-01',UNHEX('812c9005b68c402ab51a2fe2cbbfcd01'),'Observación correspondiente al estudio 812c9005b68c402ab51a2fe2cbbfcd01.',UNHEX('426d2c18c29548799d7801a245241c07'),'UA');
# Se craran 0 archivos para el estudio 812c9005b68c402ab51a2fe2cbbfcd01
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente 7b0de9e4e44e4593a57bcc7c4bfc1401
CALL insert_patient ('1948-01-03','3','F', UNHEX('7b0de9e4e44e4593a57bcc7c4bfc1401'),'Schachter, gussy','doctor');
# Se craran 3 estudios para el paciente 7b0de9e4e44e4593a57bcc7c4bfc1401
CALL insert_study ('2014-08-01',UNHEX('6142756a644a4e0ba4f2b460005bbefc'),'Observación correspondiente al estudio 6142756a644a4e0ba4f2b460005bbefc.',UNHEX('7b0de9e4e44e4593a57bcc7c4bfc1401'),'BT');
# Se craran 0 archivos para el estudio 6142756a644a4e0ba4f2b460005bbefc
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('c2dda222218d4ccf8e7a342c7b68c258'),'Observación correspondiente al estudio c2dda222218d4ccf8e7a342c7b68c258.',UNHEX('7b0de9e4e44e4593a57bcc7c4bfc1401'),'UA');
# Se craran 1 archivos para el estudio c2dda222218d4ccf8e7a342c7b68c258
CALL insert_study_file (UNHEX('fb2b3b7512f74c58801404777260e033'),'Archivo 0.doc',UNHEX('c2dda222218d4ccf8e7a342c7b68c258'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('fe60a5a783174a36810133daf7afc346'),'Observación correspondiente al estudio fe60a5a783174a36810133daf7afc346.',UNHEX('7b0de9e4e44e4593a57bcc7c4bfc1401'),'BT');
# Se craran 0 archivos para el estudio fe60a5a783174a36810133daf7afc346
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente e6bc124d44634d16bc12aa7210af9f62
CALL insert_patient ('1952-02-27','1','M', UNHEX('e6bc124d44634d16bc12aa7210af9f62'),'Ehlers, Stephanus doug','doctor');
# Se craran 1 estudios para el paciente e6bc124d44634d16bc12aa7210af9f62
CALL insert_study ('2014-07-31',UNHEX('cbc329c6ffa4486da1f301425cacd862'),'Observación correspondiente al estudio cbc329c6ffa4486da1f301425cacd862.',UNHEX('e6bc124d44634d16bc12aa7210af9f62'),'ET');
# Se craran 0 archivos para el estudio cbc329c6ffa4486da1f301425cacd862
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente a55df5ea46894fa98019fbc06c0e42d1
CALL insert_patient ('1966-07-01','1','M', UNHEX('a55df5ea46894fa98019fbc06c0e42d1'),'Guerrieri, owen','doctor');
# Se craran 5 estudios para el paciente a55df5ea46894fa98019fbc06c0e42d1
CALL insert_study ('2014-07-31',UNHEX('ff4245095b7a4d7c987f3444a1a396b1'),'Observación correspondiente al estudio ff4245095b7a4d7c987f3444a1a396b1.',UNHEX('a55df5ea46894fa98019fbc06c0e42d1'),'UA');
# Se craran 0 archivos para el estudio ff4245095b7a4d7c987f3444a1a396b1
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('ceae8535b0234b5998684bee98c7d825'),'Observación correspondiente al estudio ceae8535b0234b5998684bee98c7d825.',UNHEX('a55df5ea46894fa98019fbc06c0e42d1'),'ET');
# Se craran 2 archivos para el estudio ceae8535b0234b5998684bee98c7d825
CALL insert_study_file (UNHEX('74c924799e0d48469c3c555d3356b11a'),'Archivo 0.pdf',UNHEX('ceae8535b0234b5998684bee98c7d825'));
CALL insert_study_file (UNHEX('beada94a58454d409b7216eaa2635124'),'Archivo 1.jpg',UNHEX('ceae8535b0234b5998684bee98c7d825'));
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('08a7e81df9b54c8780dcc42203e1fc76'),'Observación correspondiente al estudio 08a7e81df9b54c8780dcc42203e1fc76.',UNHEX('a55df5ea46894fa98019fbc06c0e42d1'),'ET');
# Se craran 0 archivos para el estudio 08a7e81df9b54c8780dcc42203e1fc76
# Fin creacion de archivos
CALL insert_study ('2014-07-31',UNHEX('9d28e28248db4a5ea4796acc3356ebf7'),'Observación correspondiente al estudio 9d28e28248db4a5ea4796acc3356ebf7.',UNHEX('a55df5ea46894fa98019fbc06c0e42d1'),'UA');
# Se craran 1 archivos para el estudio 9d28e28248db4a5ea4796acc3356ebf7
CALL insert_study_file (UNHEX('a6d32a5aaeda4bcd9565c27fa6208a67'),'Archivo 0.jpg',UNHEX('9d28e28248db4a5ea4796acc3356ebf7'));
# Fin creacion de archivos
CALL insert_study ('2014-07-30',UNHEX('fce5971e6db945ccaae8bfc3a397659f'),'Observación correspondiente al estudio fce5971e6db945ccaae8bfc3a397659f.',UNHEX('a55df5ea46894fa98019fbc06c0e42d1'),'ET');
# Se craran 0 archivos para el estudio fce5971e6db945ccaae8bfc3a397659f
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



# Se creara el paciente a218f775422344f1a896a3fe2afb2161
CALL insert_patient ('1978-07-10','6','F', UNHEX('a218f775422344f1a896a3fe2afb2161'),'Denault, Nannette','doctor');
# Se craran 3 estudios para el paciente a218f775422344f1a896a3fe2afb2161
CALL insert_study ('2014-08-03',UNHEX('44ccd1b704bc4eb8a05cef2985dc06c5'),'Observación correspondiente al estudio 44ccd1b704bc4eb8a05cef2985dc06c5.',UNHEX('a218f775422344f1a896a3fe2afb2161'),'BT');
# Se craran 1 archivos para el estudio 44ccd1b704bc4eb8a05cef2985dc06c5
CALL insert_study_file (UNHEX('6be710ee238c41ba9196edb664165595'),'Archivo 0.jpg',UNHEX('44ccd1b704bc4eb8a05cef2985dc06c5'));
# Fin creacion de archivos
CALL insert_study ('2014-08-03',UNHEX('894517098f4e47cdaed4c7cf3130a3a7'),'Observación correspondiente al estudio 894517098f4e47cdaed4c7cf3130a3a7.',UNHEX('a218f775422344f1a896a3fe2afb2161'),'BT');
# Se craran 2 archivos para el estudio 894517098f4e47cdaed4c7cf3130a3a7
CALL insert_study_file (UNHEX('2ee002f230c745b7a8a39737317ccde9'),'Archivo 0.jpg',UNHEX('894517098f4e47cdaed4c7cf3130a3a7'));
CALL insert_study_file (UNHEX('1a8f79ada6944474acd6b57567181364'),'Archivo 1.doc',UNHEX('894517098f4e47cdaed4c7cf3130a3a7'));
# Fin creacion de archivos
CALL insert_study ('2014-08-02',UNHEX('8e3410f50a8e4597896bf60e6c6717c4'),'Observación correspondiente al estudio 8e3410f50a8e4597896bf60e6c6717c4.',UNHEX('a218f775422344f1a896a3fe2afb2161'),'UA');
# Se craran 2 archivos para el estudio 8e3410f50a8e4597896bf60e6c6717c4
CALL insert_study_file (UNHEX('9fed811bd73841349de73fa582e23ef1'),'Archivo 0.pdf',UNHEX('8e3410f50a8e4597896bf60e6c6717c4'));
CALL insert_study_file (UNHEX('2df9ec67bd8243df83d5ffb0640f491f'),'Archivo 1.pdf',UNHEX('8e3410f50a8e4597896bf60e6c6717c4'));
# Fin creacion de archivos
# Fin creacion de estudios
# Fin creacon de paciente



