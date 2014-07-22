package modules;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import entities.StudySummary;
import entities.StudyType;
import entities.AuthenticationData;

// TODO: use finally to close things when SQLException is thrown
public class DatabaseManager {

	private static final String DBMS_DATABASE_NAME = "mrs_db";
	private static final String DBMS_PASSWORD = "mrs_password"; // TODO: change?
	private static final int DBMS_PORT_NUMBER = 3306;
	private static final String DBMS_SERVER_NAME = "localhost";
	private static final String DBMS_USER = "mrs_doctor";

	private static Connection connection; // TODO: add exception when it is not initialized?
	private static Map<String, CallableStatement> storedProcedures;
	
	static {
		storedProcedures = new HashMap<String, CallableStatement>();
	}

	public static void commitTransaction() throws SQLException {
		connection.commit();
		connection.setAutoCommit(true);
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
		connection = dataSource.getConnection();

		// Initializes the stored procedures' statements
		storedProcedures.clear();
		storedProcedures.put("delete_study_file", connection.prepareCall("{CALL delete_study_file(?, ?)}"));
		storedProcedures.put("insert_patient", connection.prepareCall("{CALL insert_patient(?, ?, ?, ?, ?, ?)}"));
		storedProcedures.put("insert_study", connection.prepareCall("{CALL insert_study(?, ?, ?, ?, ?)}"));
		storedProcedures.put("insert_study_file", connection.prepareCall("{CALL insert_study_file(?, ?, ?)}"));
		storedProcedures.put("update_study", connection.prepareCall("{CALL update_study(?, ?)}"));
	}

	public static void deleteStudyFile(String filename, String studyId) throws SQLException {
		CallableStatement storedProcedure = storedProcedures.get("delete_study_file");
		
		// Sets the input parameters
		storedProcedure.setString(1, filename);
		storedProcedure.setString(2, studyId);

		// Executes the stored procedure
		storedProcedure.execute();

		// Releases the statement resources
		storedProcedure.clearParameters();
	}

	public static List<StudySummary> getStudySummaries(String patientId) {
		// TODO
		return null;
	}

	public static List<StudyType> getStudyTypes() throws SQLException {
		List<StudyType> studyTypes = new LinkedList<StudyType>();

		// Initializes the prepared statement
		PreparedStatement preparedStatement = connection.prepareStatement(
			"SELECT description, id " +
			"FROM study_types"
		);

		// Executes the prepared statement
		ResultSet resultSet = preparedStatement.executeQuery();

		while (resultSet.next()) {
			String description = resultSet.getString("description");
			String id = resultSet.getString("id");

			// Adds the study type to the list
			studyTypes.add(new StudyType(description, id));
		}

		// Releases the statement resources
		preparedStatement.close();

		return studyTypes;
	}
	
	public static AuthenticationData getUserDoctorAuthenticationData(String id) throws SQLException {
		AuthenticationData authenticationData = null;

		// Initializes the prepared statement
		PreparedStatement preparedStatement = connection.prepareStatement(
			"SELECT HEX(password) AS password, HEX(salt) AS salt " +
			"FROM users_doctors_authentication_data " +
			"WHERE id LIKE BINARY ? " +
			"LIMIT 1"
		);
		
		// Sets the input parameters
		preparedStatement.setString(1, id);

		// Executes the prepared statement
		ResultSet resultSet = preparedStatement.executeQuery();

		if (resultSet.next()) {
			String password = resultSet.getString("password");
			String salt = resultSet.getString("salt");

			// Initializes the user authentication data object
			authenticationData = new AuthenticationData(password, salt);
		}

		// Releases the statement resources
		preparedStatement.close();

		return authenticationData;
	}

	public static void insertPatient(Date birthDate, String bloodType, String id, String gender, String name, String userId) throws SQLException {
		CallableStatement storedProcedure = storedProcedures.get("insert_patient");
		
		// Sets the input parameters
		storedProcedure.setDate(1, birthDate);
		storedProcedure.setString(2, bloodType);
		storedProcedure.setString(3, id);
		storedProcedure.setString(4, gender);
		storedProcedure.setString(5, name);
		storedProcedure.setString(6, userId);
		
		// Executes the stored procedure
		storedProcedure.execute();
		
		// Releases the statement resources
		storedProcedure.clearParameters();
	}

	public static void insertStudy(Date date, String id, String observations, String patientId, String studyTypeId) throws SQLException {
		CallableStatement storedProcedure = storedProcedures.get("insert_study");
		
		// Sets the input parameters
		storedProcedure.setDate(1, date);
		storedProcedure.setString(2, id);
		storedProcedure.setString(3, observations);
		storedProcedure.setString(4, patientId);
		storedProcedure.setString(5, studyTypeId);
		
		// Executes the stored procedure
		storedProcedure.execute();
		
		// Releases the statement resources
		storedProcedure.clearParameters();
	}

	public static void insertStudyFile(String checksum, String filename, String studyId) throws SQLException {
		CallableStatement storedProcedure = storedProcedures.get("insert_study_file");
		
		// Sets the input parameters
		storedProcedure.setString(1, checksum);
		storedProcedure.setString(2, filename);
		storedProcedure.setString(3, studyId);
		
		// Executes the stored procedure
		storedProcedure.execute();
		
		// Releases the statement resources
		storedProcedure.clearParameters();
	}

	public static void startTransaction() throws SQLException {
		connection.setAutoCommit(false);
	}

	public static void updateStudy(String id, String observations) throws SQLException {
		CallableStatement storedProcedure = storedProcedures.get("update_study");
		
		// Sets the input parameters
		storedProcedure.setString(1, id);
		storedProcedure.setString(2, observations);
		
		// Executes the stored procedure
		storedProcedure.execute();
		
		// Releases the statement resources
		storedProcedure.clearParameters();
	}

}
