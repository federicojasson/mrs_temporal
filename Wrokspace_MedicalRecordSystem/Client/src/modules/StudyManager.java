package modules;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

public class StudyManager {
	
	private static byte[] currentStudyId;
	
	public static void addStudy(Date date, String observations, byte[] studyTypeId, List<File> studyFiles) throws IOException, SQLException {
		// Generates a study ID
		byte[] id = CryptographyManager.generateRandomUuid();
		
		// Gets the current patient ID
		byte[] patientId = PatientManager.getCurrentPatientId();
		
		// Adds the files to the application directory tree
		for (File studyFile : studyFiles)
			FileManager.addStudyFile(id, studyFile);
		
		// Starts a transaction
		DatabaseManager.startTransaction();
		
		// Inserts the study into the database
		DatabaseManager.insertStudy(date, id, observations, patientId, studyTypeId);
		
		// Inserts the study files into the database
		for (File studyFile : studyFiles) {
			byte[] checksum = CryptographyManager.computeFileChecksum(studyFile);
			String filename = studyFile.getName();
			DatabaseManager.insertStudyFile(checksum, filename, id);
		}
		
		// Commits the transaction
		DatabaseManager.commitTransaction();
	}
	
	public static void setCurrentStudyId(byte[] studyId) {
		currentStudyId = studyId;
	}
	
	public static void updateStudy(String observations, List<File> studyFilesToAdd, List<File> studyFilesToRemove) throws IOException, SQLException {
		// Removes the files from the application directory tree
		for (File studyFile : studyFilesToRemove)
			FileManager.removeStudyFile(currentStudyId, studyFile);
		
		// Adds the files to the application directory tree
		for (File studyFile : studyFilesToAdd)
			FileManager.addStudyFile(currentStudyId, studyFile);
		
		// Starts a transaction
		DatabaseManager.startTransaction();
		
		// Updates the study in the database
		DatabaseManager.updateStudy(currentStudyId, observations);
		
		// Deletes the study files from the database
		for (File studyFile : studyFilesToRemove) {
			String filename = studyFile.getName();
			DatabaseManager.deleteStudyFile(filename, currentStudyId);
		}
		
		// Inserts the study files into the database
		for (File studyFile : studyFilesToAdd) {
			byte[] checksum = CryptographyManager.computeFileChecksum(studyFile);
			String filename = studyFile.getName();
			DatabaseManager.insertStudyFile(checksum, filename, currentStudyId);
		}
		
		// Commits the transaction
		DatabaseManager.commitTransaction();
	}
	
}
