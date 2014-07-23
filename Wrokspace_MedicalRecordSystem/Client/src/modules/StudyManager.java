package modules;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

public class StudyManager {
	
	public static void addStudy(Date date, String observations, byte[] patientId, byte[] studyTypeId, List<File> studyFiles) throws IOException, SQLException {
		// Generates a study ID
		byte[] id = CryptographyManager.generateRandomUuid();
		
		// Copies the files to the system directory tree
		for (File studyFile : studyFiles)
			FileManager.copyStudyFile(id, studyFile);
		
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
	
}
