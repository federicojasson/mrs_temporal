package managers;

import java.io.File;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.sql.CallableStatement;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import entities.StudySummary;
import entities.StudyType;

public class StudyManager {
	
	private static byte[] currentStudyId;
	
	public static void addStudy(Date date, String observations, byte[] studyTypeId, List<File> studyFiles) throws IOException, NoSuchAlgorithmException, SQLException {
		// Generates a study ID
		byte[] id = CryptographyManager.generateRandomUuid();
		
		// Checks if a study with the same ID already exists
		while (studyExists(id))
			// Generates another study ID
			id = CryptographyManager.generateRandomUuid();
		
		// Gets the current patient ID
		byte[] patientId = PatientManager.getCurrentPatientId();
		
		// Adds the files to the application directory tree
		for (File studyFile : studyFiles)
			FileManager.addStudyFile(id, studyFile);
		
		// Starts a transaction
		DbmsManager.startTransaction();
		
		// Inserts the study into the database
		insertStudy(date, id, observations, patientId, studyTypeId);
		
		// Inserts the study files into the database
		for (File studyFile : studyFiles) {
			byte[] checksum = CryptographyManager.computeFileChecksum(studyFile);
			String filename = studyFile.getName();
			insertStudyFile(checksum, filename, id);
		}
		
		// Commits the transaction
		DbmsManager.commitTransaction();
	}

	public static List<StudySummary> getStudySummaries(byte[] patientId) throws SQLException {
		List<StudySummary> studySummaries = new LinkedList<StudySummary>();
		
		// Gets the prepared statement
		PreparedStatement preparedStatement = DbmsManager.getPreparedStatement(DbmsManager.GET_STUDY_SUMMARIES);

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
	
				// Adds the study summary to the list
				studySummaries.add(new StudySummary(date, id, studyTypeDescription));
			}
		} finally {
			// Releases the statement resources
			preparedStatement.clearParameters();
		}

		return studySummaries;
	}
	
	public static void setCurrentStudyId(byte[] studyId) {
		currentStudyId = studyId;
	}
	
	public static void updateStudy(String observations, List<File> studyFilesToAdd, List<File> studyFilesToRemove) throws IOException, NoSuchAlgorithmException, SQLException {
		// Removes the files from the application directory tree
		for (File studyFile : studyFilesToRemove)
			FileManager.removeStudyFile(currentStudyId, studyFile);
		
		// Adds the files to the application directory tree
		for (File studyFile : studyFilesToAdd)
			FileManager.addStudyFile(currentStudyId, studyFile);
		
		// Starts a transaction
		DbmsManager.startTransaction();
		
		// Updates the study in the database
		updateStudy(currentStudyId, observations);
		
		// Deletes the study files from the database
		for (File studyFile : studyFilesToRemove) {
			String filename = studyFile.getName();
			deleteStudyFile(filename, currentStudyId);
		}
		
		// Inserts the study files into the database
		for (File studyFile : studyFilesToAdd) {
			byte[] checksum = CryptographyManager.computeFileChecksum(studyFile);
			String filename = studyFile.getName();
			insertStudyFile(checksum, filename, currentStudyId);
		}
		
		// Commits the transaction
		DbmsManager.commitTransaction();
	}

	private static void deleteStudyFile(String filename, byte[] studyId) throws SQLException {
		// Gets the stored procedure
		CallableStatement storedProcedure = DbmsManager.getStoredProcedure(DbmsManager.DELETE_STUDY_FILE);
		
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

	private static List<StudyType> getStudyTypes() throws SQLException {
		List<StudyType> studyTypes = new LinkedList<StudyType>();
		
		// Gets the prepared statement
		PreparedStatement preparedStatement = DbmsManager.getPreparedStatement(DbmsManager.GET_STUDY_TYPES);

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
			preparedStatement.clearParameters();
		}

		return studyTypes;
	}

	private static void insertStudy(Date date, byte[] id, String observations, byte[] patientId, byte[] studyTypeId) throws SQLException {
		// Gets the stored procedure
		CallableStatement storedProcedure = DbmsManager.getStoredProcedure(DbmsManager.INSERT_STUDY);
		
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

	private static void insertStudyFile(byte[] checksum, String filename, byte[] studyId) throws SQLException {
		// Gets the stored procedure
		CallableStatement storedProcedure = DbmsManager.getStoredProcedure(DbmsManager.INSERT_STUDY_FILE);
		
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
	
	private static boolean studyExists(byte[] id) throws SQLException {
		boolean studyExists;
		
		// Gets the prepared statement
		PreparedStatement preparedStatement = DbmsManager.getPreparedStatement(DbmsManager.STUDY_EXISTS);
		
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
			preparedStatement.clearParameters();
		}
		
		return studyExists;
	}

	private static void updateStudy(byte[] id, String observations) throws SQLException {
		// Gets the stored procedure
		CallableStatement storedProcedure = DbmsManager.getStoredProcedure(DbmsManager.UPDATE_STUDY);
		
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
