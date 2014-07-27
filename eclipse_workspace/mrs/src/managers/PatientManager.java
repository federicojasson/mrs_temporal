package managers;

import java.sql.CallableStatement;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import entities.PatientSummary;

public class PatientManager {
	
	private static byte[] currentPatientId;
	
	public static void addPatient(Date birthDate, byte bloodType, byte gender, String name) throws SQLException {
		// Generates a patient ID
		byte[] id = CryptographyManager.generateRandomUuid();
		
		// Checks if a patient with the same ID already exists
		while (patientExists(id))
			// Generates another patient ID
			id = CryptographyManager.generateRandomUuid();
		
		// Gets the current user ID
		String userId = UserManager.getCurrentUserId();
		
		// Starts a transaction
		DbmsManager.startTransaction();
		
		// Inserts the patient into the database
		insertPatient(birthDate, bloodType, gender, id, name, userId);
		
		// Commits the transaction
		DbmsManager.commitTransaction();
	}
	
	public static byte[] getCurrentPatientId() {
		return currentPatientId;
	}
	
	public static List<PatientSummary> getPatientSummaries(String userId) throws SQLException {
		List<PatientSummary> patientSummaries = new LinkedList<PatientSummary>();
		
		// Gets the prepared statement
		PreparedStatement preparedStatement = DbmsManager.getPreparedStatement(DbmsManager.GET_PATIENT_SUMMARIES);

		try {
			// Sets the input parameters
			preparedStatement.setString(1, userId);
			
			// Executes the prepared statement
			ResultSet resultSet = preparedStatement.executeQuery();
			
			// Fetches the query results
			while (resultSet.next()) {
				byte gender = resultSet.getBytes("gender")[0];
				byte[] id = resultSet.getBytes("id");
				String name = resultSet.getString("name");
	
				// Adds the patient summary to the list
				patientSummaries.add(new PatientSummary(gender, id, name));
			}
		} finally {
			// Releases the statement resources
			preparedStatement.clearParameters();
		}

		return patientSummaries;
	}
	
	public static void setCurrentPatientId(byte[] patientId) {
		currentPatientId = patientId;
	}

	private static void insertPatient(Date birthDate, byte bloodType, byte gender, byte[] id, String name, String userId) throws SQLException {
		// Gets the stored procedure
		CallableStatement storedProcedure = DbmsManager.getStoredProcedure(DbmsManager.INSERT_PATIENT);
		
		try {
			// Sets the input parameters
			storedProcedure.setDate(1, birthDate);
			storedProcedure.setByte(2, bloodType);
			storedProcedure.setByte(3, gender);
			storedProcedure.setBytes(4, id);
			storedProcedure.setString(5, name);
			storedProcedure.setString(6, userId);
			
			// Executes the stored procedure
			storedProcedure.execute();
		} finally {
			// Releases the statement resources
			storedProcedure.clearParameters();
		}
	}
	
	private static boolean patientExists(byte[] id) throws SQLException {
		boolean patientExists;
		
		// Gets the prepared statement
		PreparedStatement preparedStatement = DbmsManager.getPreparedStatement(DbmsManager.PATIENT_EXISTS);
		
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
			preparedStatement.clearParameters();
		}
		
		return patientExists;
	}
	
}
