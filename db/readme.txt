
A continuación se muestra cómo realizar algunas consultas básicas:

----------------------------------------------------------------------------------------------
¿Cómo obtener los tipos de estudios (study_types)?

	SELECT description, id
	FROM study_types;

----------------------------------------------------------------------------------------------
¿Cómo obtener el password (su hash) y el salt correspondiente, para implementar el login?
	Asumiendo que el usuario tiene el rol de doctor:

	SELECT HEX(password) as password, HEX(salt) as salt
	FROM users_doctors_authentication
	WHERE id LIKE BINARY <id>;

	Reemplazar <id> con el ID real del usuario.
	El hash del password y el salt se retornan en formato hexadecimal.

¿Cómo verificar si el usuario es autenticado?
	Computar el SHA-512 del salt concatenado al password provisto y comparar el resultado con
	el hash almacenado en la base de datos:

	El usuario es autenticado si SHA-512(salt + provided_password) = password

----------------------------------------------------------------------------------------------
¿Cómo obtener los estudios de un paciente?
	Asumiendo que se desea obtener los campos date, id, observations, patient y type, y,
	además, ordenar los resultados en función de la fecha en la que se realizó el estudio:

	SELECT datetime, id, observations, patient, type
	FROM studies
	WHERE patient = UNHEX(<patient>)
	ORDER BY date DESC;

	Reemplazar <patient> por el ID del paciente en formato hexadecimal.
