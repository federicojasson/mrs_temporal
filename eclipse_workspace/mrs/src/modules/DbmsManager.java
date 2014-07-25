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

public class DbmsManager {

	private static final String DBMS_DATABASE_NAME = "mrs_db";
	private static final String DBMS_PASSWORD = "mrs_password";
	private static final int DBMS_PORT_NUMBER = 3306;
	private static final String DBMS_SERVER_NAME = "localhost";
	private static final String DBMS_USER = "mrs_doctor";

	private static Connection dbmsConnection;
	private static Map<String, CallableStatement> storedProcedures;
	
	static {
		storedProcedures = new HashMap<String, CallableStatement>();
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

		// Initializes the stored procedures' statements
		storedProcedures.put("delete_study_file", dbmsConnection.prepareCall("{CALL delete_study_file(?, ?)}"));
		storedProcedures.put("insert_patient", dbmsConnection.prepareCall("{CALL insert_patient(?, ?, ?, ?, ?, ?)}"));
		storedProcedures.put("insert_study", dbmsConnection.prepareCall("{CALL insert_study(?, ?, ?, ?, ?)}"));
		storedProcedures.put("insert_study_file", dbmsConnection.prepareCall("{CALL insert_study_file(?, ?, ?)}"));
		storedProcedures.put("update_study", dbmsConnection.prepareCall("{CALL update_study(?, ?)}"));
	}

	public static void deleteStudyFile(String filename, byte[] studyId) throws SQLException {
		CallableStatement storedProcedure = storedProcedures.get("delete_study_file");
		
		try {
			// Sets the input parameters
			storedProcedure.setString(1, filename);
			storedProcedure.setBytes(2, studyId);

			// Executes the stored procedure
			storedProcedure.execute();
		} finally {
			// Releases the statement resources
			storedProcedure.clearParameters();
		}
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

	public static List<StudySummary> getStudySummaries(byte[] patientId) throws SQLException {
		List<StudySummary> studySummaries = new LinkedList<StudySummary>();
		
		// Initializes the prepared statement
		PreparedStatement preparedStatement = dbmsConnection.prepareStatement(
			"SELECT studies.date, studies.id, study_types.description, study_types.id " +
			"FROM studies INNER JOIN study_types ON (studies.study_type_id = study_types.id) " +
			"WHERE studies.patient_id = ?"
		);

		try {
			// Sets the input parameters
			preparedStatement.setBytes(1, patientId);
			
			// Executes the prepared statement
			ResultSet resultSet = preparedStatement.executeQuery();
	
			// Fetches the query results
			while (resultSet.next()) {
				Date date = resultSet.getDate("studies.date");
				byte[] id = resultSet.getBytes("studies.id");
				String studyTypeDescription = resultSet.getString("study_types.description");
				byte[] studyTypeId = resultSet.getBytes("study_type.id");
				StudyType studyType = new StudyType(studyTypeDescription, studyTypeId);
	
				// Adds the study summary to the list
				studySummaries.add(new StudySummary(date, id, studyType));
			}
		} finally {
			// Releases the statement resources
			preparedStatement.close();
		}

		return studySummaries;
	}

	public static List<StudyType> getStudyTypes() throws SQLException {
		List<StudyType> studyTypes = new LinkedList<StudyType>();
		
		// Initializes the prepared statement
		PreparedStatement preparedStatement = dbmsConnection.prepareStatement(
			"SELECT description, id " +
			"FROM study_types"
		);

		try {
			// Executes the prepared statement
			ResultSet resultSet = preparedStatement.executeQuery();
	
			// Fetches the query results
			while (resultSet.next()) {
				String description = resultSet.getString("description");
				byte[] id = resultSet.getBytes("id");
	
				// Adds the study type to the list
				studyTypes.add(new StudyType(description, id));
			}
		} finally {
			// Releases the statement resources
			preparedStatement.close();
		}

		return studyTypes;
	}

	public static AuthenticationData getUserDoctorAuthenticationData(String id) throws SQLException {
		AuthenticationData authenticationData = null;

		// Initializes the prepared statement
		PreparedStatement preparedStatement = dbmsConnection.prepareStatement(
			"SELECT password_hash, salt " +
			"FROM users_doctors_authentication_data " +
			"WHERE id LIKE BINARY ? " +
			"LIMIT 1"
		);
		
		try {
			// Sets the input parameters
			preparedStatement.setString(1, id);
	
			// Executes the prepared statement
			ResultSet resultSet = preparedStatement.executeQuery();
	
			// Fetches the query results
			if (resultSet.next()) {
				byte[] passwordHash = resultSet.getBytes("password_hash");
				byte[] salt = resultSet.getBytes("salt");
	
				// Initializes the user authentication data object
				authenticationData = new AuthenticationData(passwordHash, salt);
			}
		} finally {
			// Releases the statement resources
			preparedStatement.close();
		}
		
		return authenticationData;
	}

	public static void insertPatient(Date birthDate, byte bloodType, byte[] id, byte gender, String name, String userId) throws SQLException {
		CallableStatement storedProcedure = storedProcedures.get("insert_patient");
		
		try {
			// Sets the input parameters
			storedProcedure.setDate(1, birthDate);
			storedProcedure.setByte(2, bloodType);
			storedProcedure.setBytes(3, id);
			storedProcedure.setByte(4, gender);
			storedProcedure.setString(5, name);
			storedProcedure.setString(6, userId);
			
			// Executes the stored procedure
			storedProcedure.execute();
		} finally {
			// Releases the statement resources
			storedProcedure.clearParameters();
		}
	}

	public static void insertStudy(Date date, byte[] id, String observations, byte[] patientId, byte[] studyTypeId) throws SQLException {
		CallableStatement storedProcedure = storedProcedures.get("insert_study");
		
		try {
			// Sets the input parameters
			storedProcedure.setDate(1, date);
			storedProcedure.setBytes(2, id);
			storedProcedure.setString(3, observations);
			storedProcedure.setBytes(4, patientId);
			storedProcedure.setBytes(5, studyTypeId);
			
			// Executes the stored procedure
			storedProcedure.execute();
		} finally {
			// Releases the statement resources
			storedProcedure.clearParameters();
		}
	}

	public static void insertStudyFile(byte[] checksum, String filename, byte[] studyId) throws SQLException {
		CallableStatement storedProcedure = storedProcedures.get("insert_study_file");
		
		try {
			// Sets the input parameters
			storedProcedure.setBytes(1, checksum);
			storedProcedure.setString(2, filename);
			storedProcedure.setBytes(3, studyId);
			
			// Executes the stored procedure
			storedProcedure.execute();
		} finally {
			// Releases the statement resources
			storedProcedure.clearParameters();
		}
	}
	
	public static boolean patientExists(byte[] id) throws SQLException {
		boolean patientExists;
		
		// Initializes the prepared statement
		PreparedStatement preparedStatement = dbmsConnection.prepareStatement(
			"SELECT COUNT(*) AS count " +
			"FROM patients " +
			"WHERE id = ? " +
			"LIMIT 1"
		);
		
		try {
			// Sets the input parameters
			preparedStatement.setBytes(1, id);
	
			// Executes the prepared statement
			ResultSet resultSet = preparedStatement.executeQuery();
	
			// Fetches the query results
			resultSet.next();
			patientExists = resultSet.getInt("count") == 1;
		} finally {
			// Releases the statement resources
			preparedStatement.close();
		}
		
		return patientExists;
	}

	public static void startTransaction() throws SQLException {
		dbmsConnection.setAutoCommit(false);
	}
	
	public static boolean studyExists(byte[] id) throws SQLException {
		boolean studyExists;
		
		// Initializes the prepared statement
		PreparedStatement preparedStatement = dbmsConnection.prepareStatement(
			"SELECT COUNT(*) AS count " +
			"FROM studies " +
			"WHERE id = ? " +
			"LIMIT 1"
		);
		
		try {
			// Sets the input parameters
			preparedStatement.setBytes(1, id);
	
			// Executes the prepared statement
			ResultSet resultSet = preparedStatement.executeQuery();
	
			// Fetches the query results
			resultSet.next();
			studyExists = resultSet.getInt("count") == 1;
		} finally {
			// Releases the statement resources
			preparedStatement.close();
		}
		
		return studyExists;
	}

	public static void updateStudy(byte[] id, String observations) throws SQLException {
		CallableStatement storedProcedure = storedProcedures.get("update_study");
		
		try {
			// Sets the input parameters
			storedProcedure.setBytes(1, id);
			storedProcedure.setString(2, observations);
			
			// Executes the stored procedure
			storedProcedure.execute();
		} finally {
			// Releases the statement resources
			storedProcedure.clearParameters();
		}
	}

}