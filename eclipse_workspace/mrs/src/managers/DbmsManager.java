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
	public static final int GET_STUDY_SUMMARIES = 2;
	public static final int GET_STUDY_TYPES = 3;
	public static final int GET_USER_DOCTOR_AUTHENTICATION_DATA = 4;
	public static final int PATIENT_EXISTS = 5;
	public static final int STUDY_EXISTS = 6;
	
	public static final int DELETE_STUDY_FILE = 0;
	public static final int INSERT_PATIENT = 1;
	public static final int INSERT_STUDY = 2;
	public static final int INSERT_STUDY_FILE = 3;
	public static final int UPDATE_STUDY = 4;

	private static final String DBMS_DATABASE_NAME = "mrs_db";
	private static final String DBMS_PASSWORD = "mrs_password";
	private static final int DBMS_PORT_NUMBER = 3306;
	private static final String DBMS_SERVER_NAME = "localhost";
	private static final String DBMS_USER = "mrs_doctor";

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
		dataSource.setDatabaseName(DBMS_DATABASE_NAME);
		dataSource.setPassword(DBMS_PASSWORD);
		dataSource.setPortNumber(DBMS_PORT_NUMBER);
		dataSource.setServerName(DBMS_SERVER_NAME);
		dataSource.setUser(DBMS_USER);
		dataSource.setNoAccessToProcedureBodies(true);

		// Connects to the DBMS
		dbmsConnection = dataSource.getConnection();
		
		// Initializes the prepared statements
		preparedStatements.put(GET_PATIENT, dbmsConnection.prepareStatement(
			// TODO
			/*"SELECT gender, id, name " +
			"FROM patients " +
			"WHERE user_id LIKE BINARY ?"*/
		));
		
		preparedStatements.put(GET_PATIENT_SUMMARIES, dbmsConnection.prepareStatement(
			"SELECT gender, id, name " +
			"FROM patients " +
			"WHERE user_id LIKE BINARY ?"
		));
		
		preparedStatements.put(GET_STUDY_SUMMARIES, dbmsConnection.prepareStatement(
			"SELECT studies.date, studies.id, study_types.description " +
			"FROM studies INNER JOIN study_types ON (studies.study_type_id = study_types.id) " +
			"WHERE studies.patient_id = ?"
		));
		
		preparedStatements.put(GET_STUDY_TYPES, dbmsConnection.prepareStatement(
			"SELECT description, id " +
			"FROM study_types"
		));
		
		preparedStatements.put(GET_USER_DOCTOR_AUTHENTICATION_DATA, dbmsConnection.prepareStatement(
			"SELECT password_hash, salt " +
			"FROM users_doctors_authentication_data " +
			"WHERE id LIKE BINARY ? " +
			"LIMIT 1"
		));
		
		preparedStatements.put(PATIENT_EXISTS, dbmsConnection.prepareStatement(
			"SELECT COUNT(*) AS count " +
			"FROM patients " +
			"WHERE id = ? " +
			"LIMIT 1"
		));
		
		preparedStatements.put(STUDY_EXISTS, dbmsConnection.prepareStatement(
			"SELECT COUNT(*) AS count " +
			"FROM studies " +
			"WHERE id = ? " +
			"LIMIT 1"
		));
		
		// Initializes the stored procedures' call statements
		storedProcedures.put(DELETE_STUDY_FILE, dbmsConnection.prepareCall("{CALL delete_study_file(?, ?)}"));
		storedProcedures.put(INSERT_PATIENT, dbmsConnection.prepareCall("{CALL insert_patient(?, ?, ?, ?, ?, ?)}"));
		storedProcedures.put(INSERT_STUDY, dbmsConnection.prepareCall("{CALL insert_study(?, ?, ?, ?, ?)}"));
		storedProcedures.put(INSERT_STUDY_FILE, dbmsConnection.prepareCall("{CALL insert_study_file(?, ?, ?)}"));
		storedProcedures.put(UPDATE_STUDY, dbmsConnection.prepareCall("{CALL update_study(?, ?)}"));
	}
	
	public static void disconnect() {
		try {
			// Clears the stored procedures' statements
			storedProcedures.clear();
			
			// Closes the DBMS connection
			dbmsConnection.close();
		} catch (SQLException exception) {
			// There is nothing to be done
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
