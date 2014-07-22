package modules;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;
import utility.Utility;

public class StudyManager {
	
	public static void addStudy(Date date, String observations, String patientId, String studyTypeId, List<File> studyFiles) throws IOException, SQLException {
		// Generates a study ID
		String id = Utility.generateUuid();
		
		// Copies the files to the system directory tree
		for (File studyFile : studyFiles)
			FileManager.copyStudyFile(id, studyFile);
		
		// Starts a transaction
		DatabaseManager.startTransaction();
		
		DatabaseManager.insertStudy(date, id, observations, patientId, studyTypeId);
		
		for (File studyFile : studyFiles) {
			String checksum = FileManager.computeFileChecksum(studyFile);
			String filename = studyFile.getName();
			DatabaseManager.insertStudyFile(checksum, filename, id);
		}
		
		// Commits the transaction
		DatabaseManager.commitTransaction();
	}
	
}
