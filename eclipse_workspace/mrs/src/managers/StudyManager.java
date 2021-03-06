package managers;

import java.io.File;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.sql.CallableStatement;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.LinkedList;
import java.util.List;
import entities.Study;
import entities.StudyHistory;
import entities.StudySummary;
import entities.StudyType;
import exceptions.NoStudyException;
import exceptions.NoStudyTypesException;

public class StudyManager {

	private static byte[] currentStudyId;

	public static void addStudy(String causes, Date date, String diagnosis, String indications, String observations, byte[] studyTypeId, List<File> studyFilesToAdd) throws NoSuchAlgorithmException, SQLException {
		// Starts a transaction
		DbmsManager.startTransaction();

		// Generates a study ID
		byte[] id = CryptographyManager.generateRandomUuid();

		// Checks if a study with the same ID already exists
		while (studyExists(id))
			// Generates another study ID
			id = CryptographyManager.generateRandomUuid();

		// Inserts the study into the database
		insertStudy(causes, date, diagnosis, id, indications, observations, PatientManager.getCurrentPatientId(), studyTypeId);

		// Adds the study files
		addStudyFiles(id, studyFilesToAdd);

		// Commits the transaction
		DbmsManager.commitTransaction();
	}

	public static byte[] getCurrentStudyId() {
		return currentStudyId;
	}

	public static Study getStudy() throws NoStudyException, SQLException {
		Study study = null;

		// Gets the prepared statement
		PreparedStatement preparedStatement = DbmsManager.getPreparedStatement(DbmsManager.GET_STUDY);

		try {
			// Sets the input parameters
			preparedStatement.setBytes(1, currentStudyId);

			// Executes the prepared statement
			ResultSet resultSet = preparedStatement.executeQuery();

			// Fetches the query results

			if (! resultSet.next())
				// Study not found
				throw new NoStudyException();

			String causes = resultSet.getString("studies.causes");
			Date date = resultSet.getDate("studies.date");
			String diagnosis = resultSet.getString("studies.diagnosis");
			String indications = resultSet.getString("studies.indications");
			String observations = resultSet.getString("studies.observations");
			String studyTypeDescription = resultSet.getString("study_types.description");

			// Initializes the study object
			study = new Study(causes, date, diagnosis, currentStudyId, indications, observations, studyTypeDescription);
		} finally {
			try {
				// Releases the statement resources
				preparedStatement.clearParameters();
			} catch (SQLException exception) {
				// There is nothing to be done
			}
		}

		return study;
	}

	public static List<File> getStudyFiles() throws SQLException {
		return getStudyFiles(currentStudyId);
	}

	public static List<File> getStudyFiles(byte[] id) throws SQLException {
		List<File> studyFiles = new LinkedList<File>();

		// Gets the prepared statement
		PreparedStatement preparedStatement = DbmsManager.getPreparedStatement(DbmsManager.GET_STUDY_FILES);

		try {
			// Sets the input parameters
			preparedStatement.setBytes(1, id);

			// Executes the prepared statement
			ResultSet resultSet = preparedStatement.executeQuery();

			// Fetches the query results
			while (resultSet.next()) {
				String filename = resultSet.getString("filename");
				File studyFile = FileManager.getStudyFile(filename, id);

				// Adds the study file to the list
				studyFiles.add(studyFile);
			}
		} finally {
			try {
				// Releases the statement resources
				preparedStatement.clearParameters();
			} catch (SQLException exception) {
				// There is nothing to be done
			}
		}

		return studyFiles;
	}

	public static List<StudyHistory> getStudyHistories() throws SQLException {
		List<StudyHistory> studyHistories = new LinkedList<StudyHistory>();

		// Gets the prepared statement
		PreparedStatement preparedStatement = DbmsManager.getPreparedStatement(DbmsManager.GET_STUDY_HISTORIES);

		try {
			// Sets the input parameters
			preparedStatement.setBytes(1, currentStudyId);

			// Executes the prepared statement
			ResultSet resultSet = preparedStatement.executeQuery();

			// Fetches the query results
			while (resultSet.next()) {
				Timestamp datetime = resultSet.getTimestamp("datetime");
				String modification = resultSet.getString("modification");

				// Adds the study history to the list
				studyHistories.add(new StudyHistory(datetime, modification));
			}
		} finally {
			try {
				// Releases the statement resources
				preparedStatement.clearParameters();
			} catch (SQLException exception) {
				// There is nothing to be done
			}
		}

		return studyHistories;
	}

	public static List<StudySummary> getStudySummaries() throws SQLException {
		return getStudySummaries(PatientManager.getCurrentPatientId());
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
			try {
				// Releases the statement resources
				preparedStatement.clearParameters();
			} catch (SQLException exception) {
				// There is nothing to be done
			}
		}

		return studySummaries;
	}

	public static List<StudyType> getStudyTypes() throws NoStudyTypesException, SQLException {
		List<StudyType> studyTypes = new LinkedList<StudyType>();

		// Gets the prepared statement
		PreparedStatement preparedStatement = DbmsManager.getPreparedStatement(DbmsManager.GET_STUDY_TYPES);

		try {
			// Executes the prepared statement
			ResultSet resultSet = preparedStatement.executeQuery();

			// Fetches the query results

			if (! resultSet.next())
				// There are no study types
				throw new NoStudyTypesException();

			do {
				String description = resultSet.getString("description");
				byte[] id = resultSet.getBytes("id");

				// Adds the study type to the list
				studyTypes.add(new StudyType(description, id));
			} while (resultSet.next());
		} finally {
			try {
				// Releases the statement resources
				preparedStatement.clearParameters();
			} catch (SQLException exception) {
				// There is nothing to be done
			}
		}

		return studyTypes;
	}

	public static void modifyStudy(String causes, String diagnosis, String indications, String observations, List<File> studyFilesToAdd, List<File> studyFilesToRemove) throws NoSuchAlgorithmException, SQLException {
		// Starts a transaction
		DbmsManager.startTransaction();

		// Removes the study files
		removeStudyFiles(currentStudyId, studyFilesToRemove);

		// Adds the study files
		addStudyFiles(currentStudyId, studyFilesToAdd);

		// Updates the study in the database
		updateStudy(causes, diagnosis, currentStudyId, indications, observations);

		// Commits the transaction
		DbmsManager.commitTransaction();
	}

	public static void removeStudy(byte[] id) throws SQLException {
		// Starts a transaction
		DbmsManager.startTransaction();

		// Gets the study files
		List<File> studyFiles = getStudyFiles(id);

		// Deletes the study from the database
		deleteStudy(id);

		// Removes the study files from the application directory tree
		for (File studyFile : studyFiles) {
			String filename = studyFile.getName();

			// Removes the study file from the application directory tree
			FileManager.removeStudyFile(filename, id);
		}

		// Commits the transaction
		DbmsManager.commitTransaction();
	}

	public static List<StudySummary> searchStudySummaries(String search) throws SQLException {
		List<StudySummary> studySummaries = new LinkedList<StudySummary>();

		// Gets the prepared statement
		PreparedStatement preparedStatement = DbmsManager.getPreparedStatement(DbmsManager.SEARCH_STUDY_SUMMARIES);

		try {
			// Sets the input parameters
			preparedStatement.setBytes(1, PatientManager.getCurrentPatientId());
			preparedStatement.setString(2, search);

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
			try {
				// Releases the statement resources
				preparedStatement.clearParameters();
			} catch (SQLException exception) {
				// There is nothing to be done
			}
		}

		return studySummaries;
	}

	public static void setCurrentStudyId(byte[] studyId) {
		currentStudyId = studyId;
	}

	private static void addStudyFiles(byte[] id, List<File> studyFilesToAdd) throws NoSuchAlgorithmException, SQLException {
		for (File studyFileToAdd : studyFilesToAdd)
			try {
				byte[] checksum = CryptographyManager.computeFileChecksum(studyFileToAdd);
				String filename = studyFileToAdd.getName();

				// If a study file with the same filename already exists, appends an index
				String filenameWithoutExtension = FileManager.getFilenameWithoutExtension(filename);
				String filenameExtensionWithDot = FileManager.getFilenameExtensionWithDot(filename);
				String newFilename = filename;
				int index = 0;
				while (studyFileExists(newFilename, id)) {
					newFilename = filenameWithoutExtension + " (" + index + ")" + filenameExtensionWithDot;
					index++;
				}

				// Adds the study file to the application directory tree
				FileManager.addStudyFile(newFilename, id, studyFileToAdd);

				// Inserts the study file into the database
				insertStudyFile(checksum, newFilename, id);
			} catch (IOException exception) {
				// There is nothing to be done
			}
	}

	private static void deleteStudy(byte[] id) throws SQLException {
		// Gets the stored procedure
		CallableStatement storedProcedure = DbmsManager.getStoredProcedure(DbmsManager.DELETE_STUDY);

		try {
			// Sets the input parameters
			storedProcedure.setBytes(1, id);

			// Executes the stored procedure
			storedProcedure.execute();
		} finally {
			try {
				// Releases the statement resources
				storedProcedure.clearParameters();
			} catch (SQLException exception) {
				// There is nothing to be done
			}
		}
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
			try {
				// Releases the statement resources
				storedProcedure.clearParameters();
			} catch (SQLException exception) {
				// There is nothing to be done
			}
		}
	}

	private static void insertStudy(String causes, Date date, String diagnosis, byte[] id, String indications, String observations, byte[] patientId, byte[] studyTypeId) throws SQLException {
		// Gets the stored procedure
		CallableStatement storedProcedure = DbmsManager.getStoredProcedure(DbmsManager.INSERT_STUDY);

		try {
			// Sets the input parameters
			storedProcedure.setString(1, causes);
			storedProcedure.setDate(2, date);
			storedProcedure.setString(3, diagnosis);
			storedProcedure.setBytes(4, id);
			storedProcedure.setString(5, indications);
			storedProcedure.setString(6, observations);
			storedProcedure.setBytes(7, patientId);
			storedProcedure.setBytes(8, studyTypeId);

			// Executes the stored procedure
			storedProcedure.execute();
		} finally {
			try {
				// Releases the statement resources
				storedProcedure.clearParameters();
			} catch (SQLException exception) {
				// There is nothing to be done
			}
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
			try {
				// Releases the statement resources
				storedProcedure.clearParameters();
			} catch (SQLException exception) {
				// There is nothing to be done
			}
		}
	}

	private static void removeStudyFiles(byte[] id, List<File> studyFilesToRemove) throws SQLException {
		for (File studyFileToRemove : studyFilesToRemove) {
			String filename = studyFileToRemove.getName();

			// Removes the study file from the application directory tree
			FileManager.removeStudyFile(filename, id);

			// Deletes the study file from the database
			deleteStudyFile(filename, id);
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
			try {
				// Releases the statement resources
				preparedStatement.clearParameters();
			} catch (SQLException exception) {
				// There is nothing to be done
			}
		}

		return studyExists;
	}

	private static boolean studyFileExists(String filename, byte[] studyId) throws SQLException {
		boolean studyFileExists;

		// Gets the prepared statement
		PreparedStatement preparedStatement = DbmsManager.getPreparedStatement(DbmsManager.STUDY_FILE_EXISTS);

		try {
			// Sets the input parameters
			preparedStatement.setString(1, filename);
			preparedStatement.setBytes(2, studyId);

			// Executes the prepared statement
			ResultSet resultSet = preparedStatement.executeQuery();

			// Fetches the query results
			resultSet.next();
			studyFileExists = resultSet.getInt("count") == 1;
		} finally {
			try {
				// Releases the statement resources
				preparedStatement.clearParameters();
			} catch (SQLException exception) {
				// There is nothing to be done
			}
		}

		return studyFileExists;
	}

	private static void updateStudy(String causes, String diagnosis, byte[] id, String indications, String observations) throws SQLException {
		// Gets the stored procedure
		CallableStatement storedProcedure = DbmsManager.getStoredProcedure(DbmsManager.UPDATE_STUDY);

		try {
			// Sets the input parameters
			storedProcedure.setString(1, causes);
			storedProcedure.setString(2, diagnosis);
			storedProcedure.setBytes(3, id);
			storedProcedure.setString(4, indications);
			storedProcedure.setString(5, observations);

			// Executes the stored procedure
			storedProcedure.execute();
		} finally {
			try {
				// Releases the statement resources
				storedProcedure.clearParameters();
			} catch (SQLException exception) {
				// There is nothing to be done
			}
		}
	}

}
