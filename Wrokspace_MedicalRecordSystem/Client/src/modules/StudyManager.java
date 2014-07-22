package modules;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

public class StudyManager {
	
	public static void addStudy(Date date, String observations, String patientId, String studyTypeId, List<File> studyFiles) throws IOException, SQLException {
		// Generates a study ID
		String id = null; // TODO: generate UUID
		
		// Copies the files to the system directory tree
		for (File studyFile : studyFiles)
			FileManager.copyStudyFile(id, studyFile);
		
		// Starts a transaction
		DatabaseManager.startTransaction();
		
		DatabaseManager.insertStudy(date, id, observations, patientId, studyTypeId);
		
		for (File studyFile : studyFiles)
			DatabaseManager.insertStudyFile(null, studyFile.getName(), id); // TODO: calculate MD5 of file
		
		// Commits the transaction
		DatabaseManager.commitTransaction();
	}
	
}
