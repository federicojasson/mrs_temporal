package database;

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

public class DatabaseManager {
	
	private static final String DBMS_DATABASE = "mrs_db";
	private static final String DBMS_DOMAIN = "localhost";
	private static final String DBMS_PASSWORD = "mrs_password"; // TODO: change
	private static final int DBMS_PORT = 3306;
	private static final String DBMS_USER = "mrs_doctor";

	private Connection connection;
	private Map<String, CallableStatement> storedProcedures;

	public void commitTransaction() throws SQLException {
		connection.commit();
		connection.setAutoCommit(true);
	}

	public void connect() throws SQLException {
		MysqlDataSource dataSource = new MysqlDataSource();
		dataSource.setNoAccessToProcedureBodies(true);
		dataSource.setServerName(DBMS_DOMAIN);
		dataSource.setPortNumber(DBMS_PORT);
		dataSource.setDatabaseName(DBMS_DATABASE);
		dataSource.setUser(DBMS_USER);
		dataSource.setPassword(DBMS_PASSWORD);

		// Connects to the DBMS
		connection = dataSource.getConnection();

		// Initializes the stored procedures' statements
		storedProcedures = new HashMap<String, CallableStatement>();
		storedProcedures.put("delete_study_file", connection.prepareCall("{CALL delete_study_file(?, ?)}"));
		storedProcedures.put("insert_patient", connection.prepareCall("{CALL insert_patient(?, ?, ?, ?, ?, ?)}"));
		storedProcedures.put("insert_study", connection.prepareCall("{CALL insert_study(?, ?, ?, ?, ?)}"));
		storedProcedures.put("insert_study_file", connection.prepareCall("{CALL insert_study_file(?, ?, ?)}"));
		storedProcedures.put("update_study", connection.prepareCall("{CALL update_study(?, ?)}"));
	}

	public void deleteStudyFile(String filename, String studyId) throws SQLException {
		CallableStatement storedProcedure = storedProcedures.get("delete_study_file");
		
		// Sets the input parameters
		storedProcedure.setString(1, filename);
		storedProcedure.setString(2, studyId);

		// Executes the stored procedure
		storedProcedure.execute();

		// Releases the statement resources
		storedProcedure.close(); // TODO: probably wrong
	}

	public List<StudySummary> getStudySummaries(String patientId) {
		// TODO
		return null;
	}

	public List<StudyType> getStudyTypes() throws SQLException {
		List<StudyType> studyTypes = new LinkedList<StudyType>();

		// Initializes the prepared statement
		PreparedStatement preparedStatement = connection.prepareStatement("SELECT description, id " + "FROM study_types");

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

	public void insertPatient(Date birthDate, String bloodType, String id, String gender, String name, String user) throws SQLException {
		CallableStatement storedProcedure = storedProcedures.get("insert_patient");
		
		// Sets the input parameters
		storedProcedure.setDate(1, birthDate);
		storedProcedure.setString(2, bloodType);
		storedProcedure.setString(3, id);
		storedProcedure.setString(4, gender);
		storedProcedure.setString(5, name);
		storedProcedure.setString(6, user);
		
		// Executes the stored procedure
		storedProcedure.execute();
		
		// Releases the statement resources
		storedProcedure.clearParameters();
	}

	public void insertStudy(Date date, String id, String observations, String patientId, String type) throws SQLException {
		CallableStatement storedProcedure = storedProcedures.get("insert_study");
		
		// Sets the input parameters
		storedProcedure.setDate(1, date);
		storedProcedure.setString(2, id);
		storedProcedure.setString(3, observations);
		storedProcedure.setString(4, patientId);
		storedProcedure.setString(5, type);
		
		// Executes the stored procedure
		storedProcedure.execute();
		
		// Releases the statement resources
		storedProcedure.clearParameters();
	}

	public void insertStudyFile(String checksum, String filename, String studyId) throws SQLException {
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

	public void startTransaction() throws SQLException {
		connection.setAutoCommit(false);
	}

	public void updateStudy(String id, String observations) throws SQLException {
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
