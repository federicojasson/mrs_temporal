package managers;

import java.io.File;
import java.sql.CallableStatement;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import entities.Patient;
import entities.PatientSummary;
import entities.StudySummary;
import exceptions.NoPatientException;

public class PatientManager {

	private static byte[] currentPatientId;

	public static void addPatient(Date birthDate, byte[] bloodType, byte[] gender, String name, String observations) throws SQLException {
		// Starts a transaction
		DbmsManager.startTransaction();

		// Generates a patient ID
		byte[] id = CryptographyManager.generateRandomUuid();

		// Checks if a patient with the same ID already exists
		while (patientExists(id))
			// Generates another patient ID
			id = CryptographyManager.generateRandomUuid();

		// Inserts the patient into the database
		insertPatient(birthDate, bloodType, gender, id, name, observations, UserManager.getCurrentUserId());

		// Commits the transaction
		DbmsManager.commitTransaction();
	}

	public static byte[] getCurrentPatientId() {
		return currentPatientId;
	}

	public static Patient getPatient() throws NoPatientException, SQLException {
		Patient patient = null;

		// Gets the prepared statement
		PreparedStatement preparedStatement = DbmsManager.getPreparedStatement(DbmsManager.GET_PATIENT);

		try {
			// Sets the input parameters
			preparedStatement.setBytes(1, currentPatientId);

			// Executes the prepared statement
			ResultSet resultSet = preparedStatement.executeQuery();

			// Fetches the query results

			if (! resultSet.next())
				// Patient not found
				throw new NoPatientException();

			Date birthDate = resultSet.getDate("birth_date");
			byte[] bloodType = resultSet.getBytes("blood_type");
			byte[] gender = resultSet.getBytes("gender");
			String name = resultSet.getString("name");
			String observations = resultSet.getString("observations");

			// Initializes the patient object
			patient = new Patient(birthDate, bloodType, gender, currentPatientId, name, observations);
		} finally {
			try {
				// Releases the statement resources
				preparedStatement.clearParameters();
			} catch (SQLException exception) {
				// There is nothing to be done
			}
		}

		return patient;
	}

	public static List<PatientSummary> getPatientSummaries() throws SQLException {
		List<PatientSummary> patientSummaries = new LinkedList<PatientSummary>();

		// Gets the prepared statement
		PreparedStatement preparedStatement = DbmsManager.getPreparedStatement(DbmsManager.GET_PATIENT_SUMMARIES);

		try {
			// Sets the input parameters
			preparedStatement.setString(1, UserManager.getCurrentUserId());

			// Executes the prepared statement
			ResultSet resultSet = preparedStatement.executeQuery();

			// Fetches the query results
			while (resultSet.next()) {
				byte[] gender = resultSet.getBytes("gender");
				byte[] id = resultSet.getBytes("id");
				String name = resultSet.getString("name");

				// Adds the patient summary to the list
				patientSummaries.add(new PatientSummary(gender, id, name));
			}
		} finally {
			try {
				// Releases the statement resources
				preparedStatement.clearParameters();
			} catch (SQLException exception) {
				// There is nothing to be done
			}
		}

		return patientSummaries;
	}

	public static void modifyPatient(Date birthDate, byte[] bloodType, byte[] gender, String name, String observations) throws SQLException {
		// Starts a transaction
		DbmsManager.startTransaction();

		// Updates the patient in the database
		updatePatient(birthDate, bloodType, gender, currentPatientId, name, observations);

		// Commits the transaction
		DbmsManager.commitTransaction();
	}

	public static void removePatient(byte[] id) throws SQLException {
		// Starts a transaction
		DbmsManager.startTransaction();

		// Gets the study summaries
		List<StudySummary> studySummaries = StudyManager.getStudySummaries(id);

		// Gets the patient study files
		Map<byte[], List<File>> patientStudyFiles = new HashMap<byte[], List<File>>();
		for (StudySummary studySummary : studySummaries) {
			byte[] studyId = studySummary.getId();

			// Gets the study files
			List<File> studyFiles = StudyManager.getStudyFiles(studyId);

			// Adds the study files to the map
			patientStudyFiles.put(studyId, studyFiles);
		}

		// Deletes the patient from the database
		deletePatient(id);

		// Removes the patient study files from the application directory tree
		for (Entry<byte[], List<File>> entry : patientStudyFiles.entrySet()) {
			byte[] studyId = entry.getKey();
			List<File> studyFiles = entry.getValue();

			for (File studyFile : studyFiles) {
				String filename = studyFile.getName();

				// Removes the patient study file from the application directory tree
				FileManager.removeStudyFile(filename, studyId);
			}
		}

		// Commits the transaction
		DbmsManager.commitTransaction();
	}

	public static List<PatientSummary> searchPatientSummaries(String search) throws SQLException {
		List<PatientSummary> patientSummaries = new LinkedList<PatientSummary>();

		// Gets the prepared statement
		PreparedStatement preparedStatement = DbmsManager.getPreparedStatement(DbmsManager.SEARCH_PATIENT_SUMMARIES);

		try {
			// Sets the input parameters
			preparedStatement.setString(1, UserManager.getCurrentUserId());
			preparedStatement.setString(2, search);

			// Executes the prepared statement
			ResultSet resultSet = preparedStatement.executeQuery();

			// Fetches the query results
			while (resultSet.next()) {
				byte[] gender = resultSet.getBytes("gender");
				byte[] id = resultSet.getBytes("id");
				String name = resultSet.getString("name");

				// Adds the patient summary to the list
				patientSummaries.add(new PatientSummary(gender, id, name));
			}
		} finally {
			try {
				// Releases the statement resources
				preparedStatement.clearParameters();
			} catch (SQLException exception) {
				// There is nothing to be done
			}
		}

		return patientSummaries;
	}

	public static void setCurrentPatientId(byte[] patientId) {
		currentPatientId = patientId;
	}

	private static void deletePatient(byte[] id) throws SQLException {
		// Gets the stored procedure
		CallableStatement storedProcedure = DbmsManager.getStoredProcedure(DbmsManager.DELETE_PATIENT);

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

	private static void insertPatient(Date birthDate, byte[] bloodType, byte[] gender, byte[] id, String name, String observations, String userId) throws SQLException {
		// Gets the stored procedure
		CallableStatement storedProcedure = DbmsManager.getStoredProcedure(DbmsManager.INSERT_PATIENT);

		try {
			// Sets the input parameters
			storedProcedure.setDate(1, birthDate);
			storedProcedure.setBytes(2, bloodType);
			storedProcedure.setBytes(3, gender);
			storedProcedure.setBytes(4, id);
			storedProcedure.setString(5, name);
			storedProcedure.setString(6, observations);
			storedProcedure.setString(7, userId);

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
			try {
				// Releases the statement resources
				preparedStatement.clearParameters();
			} catch (SQLException exception) {
				// There is nothing to be done
			}
		}

		return patientExists;
	}

	private static void updatePatient(Date birthDate, byte[] bloodType, byte[] gender, byte[] id, String name, String observations) throws SQLException {
		// Gets the stored procedure
		CallableStatement storedProcedure = DbmsManager.getStoredProcedure(DbmsManager.UPDATE_PATIENT);

		try {
			// Sets the input parameters
			storedProcedure.setDate(1, birthDate);
			storedProcedure.setBytes(2, bloodType);
			storedProcedure.setBytes(3, gender);
			storedProcedure.setBytes(4, id);
			storedProcedure.setString(5, name);
			storedProcedure.setString(6, observations);

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
