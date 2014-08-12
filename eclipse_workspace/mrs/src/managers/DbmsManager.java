package managers;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;

public class DbmsManager {

	public static final int GET_PATIENT = 0;
	public static final int GET_PATIENT_SUMMARIES = 1;
	public static final int GET_STUDY = 2;
	public static final int GET_STUDY_FILES = 3;
	public static final int GET_STUDY_HISTORIES = 4;
	public static final int GET_STUDY_SUMMARIES = 5;
	public static final int GET_STUDY_TYPES = 6;
	public static final int GET_USER_AUTHENTICATION_DATA_DOCTOR = 7;
	public static final int PATIENT_EXISTS = 8;
	public static final int SEARCH_PATIENT_SUMMARIES = 9;
	public static final int SEARCH_STUDY_SUMMARIES = 10;
	public static final int STUDY_EXISTS = 11;
	public static final int STUDY_FILE_EXISTS = 12;

	public static final int DELETE_PATIENT = 0;
	public static final int DELETE_STUDY = 1;
	public static final int DELETE_STUDY_FILE = 2;
	public static final int INSERT_PATIENT = 3;
	public static final int INSERT_STUDY = 4;
	public static final int INSERT_STUDY_FILE = 5;
	public static final int UPDATE_PATIENT = 6;
	public static final int UPDATE_STUDY = 7;

	private static final String DBMS_CHARACTER_ENCODING = "UTF-8";
	private static final String DBMS_DATABASE_NAME = "mrs_db";
	private static final boolean DBMS_NO_ACCESS_TO_PROCEDURE_BODIES = true;
	private static final String DBMS_PASSWORD = "mrs_password";
	private static final int DBMS_PORT_NUMBER = 3306;
	private static final String DBMS_SERVER_NAME = "localhost";
	private static final String DBMS_USER = "mrs_doctor";
	private static final boolean DBMS_USE_UNICODE = true;

	private static Connection dbmsConnection;
	private static Map<Integer, PreparedStatement> preparedStatements;
	private static Map<Integer, CallableStatement> storedProcedures;

	static {
		preparedStatements = new HashMap<Integer, PreparedStatement>();
		storedProcedures = new HashMap<Integer, CallableStatement>();
	}

	public static void commitTransaction() throws SQLException {
		dbmsConnection.commit();
		dbmsConnection.setAutoCommit(true);
	}

	public static void connect() throws SQLException {
		// Configures the DBMS connection
		MysqlDataSource dataSource = new MysqlDataSource();
		dataSource.setCharacterEncoding(DBMS_CHARACTER_ENCODING);
		dataSource.setDatabaseName(DBMS_DATABASE_NAME);
		dataSource.setNoAccessToProcedureBodies(DBMS_NO_ACCESS_TO_PROCEDURE_BODIES);
		dataSource.setPassword(DBMS_PASSWORD);
		dataSource.setPortNumber(DBMS_PORT_NUMBER);
		dataSource.setServerName(DBMS_SERVER_NAME);
		dataSource.setUser(DBMS_USER);
		dataSource.setUseUnicode(DBMS_USE_UNICODE);

		// Connects to the DBMS
		dbmsConnection = dataSource.getConnection();

		// Initializes the prepared statements
		preparedStatements.put(GET_PATIENT, dbmsConnection.prepareStatement(
			"SELECT birth_date, blood_type, gender, name, observations " +
				"FROM patients " +
				"WHERE id = ? " +
				"LIMIT 1"
			));

		preparedStatements.put(GET_PATIENT_SUMMARIES, dbmsConnection.prepareStatement(
			"SELECT gender, id, name " +
				"FROM patients " +
				"WHERE user_id LIKE BINARY ? " +
				"ORDER BY name ASC, id ASC"
			));

		preparedStatements.put(GET_STUDY, dbmsConnection.prepareStatement(
			"SELECT studies.causes, studies.date, studies.diagnosis, studies.indications, studies.observations, study_types.description " +
				"FROM studies INNER JOIN study_types ON (studies.study_type_id = study_types.id) " +
				"WHERE studies.id = ? " +
				"LIMIT 1"
			));

		preparedStatements.put(GET_STUDY_FILES, dbmsConnection.prepareStatement(
			"SELECT filename " +
				"FROM studies_files " +
				"WHERE study_id = ? " +
				"ORDER BY filename ASC"
			));

		preparedStatements.put(GET_STUDY_HISTORIES, dbmsConnection.prepareStatement(
			"SELECT datetime, modification " +
				"FROM studies_histories " +
				"WHERE study_id = ? " +
				"ORDER BY datetime DESC, id DESC"
			));

		preparedStatements.put(GET_STUDY_SUMMARIES, dbmsConnection.prepareStatement(
			"SELECT studies.date, studies.id, study_types.description " +
				"FROM studies INNER JOIN study_types ON (studies.study_type_id = study_types.id) " +
				"WHERE studies.patient_id = ? " +
				"ORDER BY studies.date DESC, study_types.description ASC"
			));

		preparedStatements.put(GET_STUDY_TYPES, dbmsConnection.prepareStatement(
			"SELECT description, id " +
				"FROM study_types " +
				"ORDER BY description ASC, id ASC"
			));

		preparedStatements.put(GET_USER_AUTHENTICATION_DATA_DOCTOR, dbmsConnection.prepareStatement(
			"SELECT password_hash, salt " +
				"FROM users_authentication_data_doctors " +
				"WHERE id LIKE BINARY ? " +
				"LIMIT 1"
			));

		preparedStatements.put(PATIENT_EXISTS, dbmsConnection.prepareStatement(
			"SELECT COUNT(*) AS count " +
				"FROM patients " +
				"WHERE id = ? " +
				"LIMIT 1"
			));

		preparedStatements.put(SEARCH_PATIENT_SUMMARIES, dbmsConnection.prepareStatement(
			"SELECT gender, id, name " +
				"FROM patients " +
				"WHERE " +
				"	user_id LIKE BINARY ? " +
				" AND " +
				"	MATCH(name, observations) AGAINST(? IN NATURAL LANGUAGE MODE WITH QUERY EXPANSION) " +
				"ORDER BY name ASC, id ASC"
			));

		preparedStatements.put(SEARCH_STUDY_SUMMARIES, dbmsConnection.prepareStatement(
			"SELECT studies.date, studies.id, study_types.description " +
				"FROM studies INNER JOIN study_types ON (studies.study_type_id = study_types.id) " +
				"WHERE " +
				"	studies.patient_id = ? " +
				"	AND " +
				"	MATCH(studies.causes, studies.diagnosis, studies.indications, studies.observations) AGAINST(? IN NATURAL LANGUAGE MODE WITH QUERY EXPANSION)" +
				"ORDER BY studies.date DESC, study_types.description ASC"
			));

		preparedStatements.put(STUDY_EXISTS, dbmsConnection.prepareStatement(
			"SELECT COUNT(*) AS count " +
				"FROM studies " +
				"WHERE id = ? " +
				"LIMIT 1"
			));

		preparedStatements.put(STUDY_FILE_EXISTS, dbmsConnection.prepareStatement(
			"SELECT COUNT(*) AS count " +
				"FROM studies_files " +
				"WHERE filename LIKE BINARY ? AND study_id = ? " +
				"LIMIT 1"
			));

		// Initializes the stored procedures' call statements
		storedProcedures.put(DELETE_PATIENT, dbmsConnection.prepareCall("{CALL delete_patient(?)}"));
		storedProcedures.put(DELETE_STUDY, dbmsConnection.prepareCall("{CALL delete_study(?)}"));
		storedProcedures.put(DELETE_STUDY_FILE, dbmsConnection.prepareCall("{CALL delete_study_file(?, ?)}"));
		storedProcedures.put(INSERT_PATIENT, dbmsConnection.prepareCall("{CALL insert_patient(?, ?, ?, ?, ?, ?, ?)}"));
		storedProcedures.put(INSERT_STUDY, dbmsConnection.prepareCall("{CALL insert_study(?, ?, ?, ?, ?, ?, ?, ?)}"));
		storedProcedures.put(INSERT_STUDY_FILE, dbmsConnection.prepareCall("{CALL insert_study_file(?, ?, ?)}"));
		storedProcedures.put(UPDATE_PATIENT, dbmsConnection.prepareCall("{CALL update_patient(?, ?, ?, ?, ?, ?)}"));
		storedProcedures.put(UPDATE_STUDY, dbmsConnection.prepareCall("{CALL update_study(?, ?, ?, ?, ?)}"));
	}

	public static void disconnect() {
		try {
			// Clears the prepared statements
			preparedStatements.clear();

			// Clears the stored procedures' statements
			storedProcedures.clear();
		} finally {
			try {
				if (dbmsConnection != null)
					// Closes the DBMS connection
					dbmsConnection.close();
			} catch (SQLException exception) {
				// There is nothing to be done
			}
		}
	}

	public static PreparedStatement getPreparedStatement(int preparedStatementId) {
		return preparedStatements.get(preparedStatementId);
	}

	public static CallableStatement getStoredProcedure(int storedProcedureId) {
		return storedProcedures.get(storedProcedureId);
	}

	public static void startTransaction() throws SQLException {
		dbmsConnection.setAutoCommit(false);
	}

}
