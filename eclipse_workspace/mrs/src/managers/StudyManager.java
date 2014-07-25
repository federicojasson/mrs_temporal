package managers;

import java.io.File;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

public class StudyManager {
	
	private static byte[] currentStudyId;
	
	public static void addStudy(Date date, String observations, byte[] studyTypeId, List<File> studyFiles) throws IOException, NoSuchAlgorithmException, SQLException {
		// Generates a study ID
		byte[] id = CryptographyManager.generateRandomUuid();
		
		// Checks if a study with the same ID already exists
		while (DbmsManager.studyExists(id))
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
		DbmsManager.insertStudy(date, id, observations, patientId, studyTypeId);
		
		// Inserts the study files into the database
		for (File studyFile : studyFiles) {
			byte[] checksum = CryptographyManager.computeFileChecksum(studyFile);
			String filename = studyFile.getName();
			DbmsManager.insertStudyFile(checksum, filename, id);
		}
		
		// Commits the transaction
		DbmsManager.commitTransaction();
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
		DbmsManager.updateStudy(currentStudyId, observations);
		
		// Deletes the study files from the database
		for (File studyFile : studyFilesToRemove) {
			String filename = studyFile.getName();
			DbmsManager.deleteStudyFile(filename, currentStudyId);
		}
		
		// Inserts the study files into the database
		for (File studyFile : studyFilesToAdd) {
			byte[] checksum = CryptographyManager.computeFileChecksum(studyFile);
			String filename = studyFile.getName();
			DbmsManager.insertStudyFile(checksum, filename, currentStudyId);
		}
		
		// Commits the transaction
		DbmsManager.commitTransaction();
	}
	
}
