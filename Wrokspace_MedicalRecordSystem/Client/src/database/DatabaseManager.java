package database;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import entities.BloodType;
import entities.Gender;
import entities.StudySummary;
import entities.StudyType;

public class DatabaseManager {
	
	private static final String DOMAIN = "localhost";
	private static final int PORT = 3306;
	private static final String DATABASE = "mrs_db";
	private static final String USER = "mrs_doctor";
	private static final String PASSWORD = "mrs_password"; // TODO: change
	
	private Connection connection;
	private Map<String, CallableStatement> storedProcedures;
	
	public void commitTransaction() throws SQLException {
		connection.commit();
		connection.setAutoCommit(true);
	}
	
	public void connect() throws SQLException {
		MysqlDataSource dataSource = new MysqlDataSource();
		dataSource.setNoAccessToProcedureBodies(true);
		dataSource.setServerName(DOMAIN);
		dataSource.setPortNumber(PORT);
		dataSource.setDatabaseName(DATABASE);
		dataSource.setUser(USER);
		dataSource.setPassword(PASSWORD);
		
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
		
		PreparedStatement preparedStatement = connection.prepareStatement(
			"SELECT description, id " +
			"FROM study_types"
		);
		
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
	
	public void insertPatient(Date birthDate, BloodType bloodType, String id, Gender gender, String name, String user) {
		// TODO
	}
	
	public void insertStudy() {
		// TODO
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
	
	public void updateStudy() {
		// TODO
	}
	
}