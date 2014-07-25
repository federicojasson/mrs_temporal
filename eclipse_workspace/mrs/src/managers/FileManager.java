package managers;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import utilities.Utility;

public class FileManager {

	private static final String STUDIES_FILES_DIRECTORY = "./studies_files";
	private static final int UUID_FRAGMENT_LENGTH = 4; // UUID_LENGTH / 8
	private static final int UUID_LENGTH = 32;
	
	public static void addStudyFile(byte[] studyId, File studyFile) throws IOException {
		// Converts the study ID to hexadecimal
		String hexadecimalStudyId = Utility.bytesToHexadecimal(studyId);
		
		// Computes the study directory pathname
		String pathname = STUDIES_FILES_DIRECTORY + File.separator;
		for (int i = 0; i < UUID_LENGTH; i += UUID_FRAGMENT_LENGTH)
			pathname += hexadecimalStudyId.substring(i, i + UUID_FRAGMENT_LENGTH) + File.separator;
		
		pathname += studyFile.getName();
		
		// Initializes a file for the pathname
		File applicationStudyFile = new File(pathname);
		
		// Creates the necessary directories
		applicationStudyFile.mkdirs();
		
		// Copies the study file
		Files.copy(studyFile.toPath(), applicationStudyFile.toPath(), StandardCopyOption.REPLACE_EXISTING);
	}
	
	public static void removeStudyFile(byte[] studyId, File studyFile) {
		// Converts the study ID to hexadecimal
		String hexadecimalStudyId = Utility.bytesToHexadecimal(studyId);
		
		// Computes the study directory pathname
		String pathname = STUDIES_FILES_DIRECTORY + File.separator;
		for (int i = 0; i < UUID_LENGTH; i += UUID_FRAGMENT_LENGTH)
			pathname += hexadecimalStudyId.substring(i, i + UUID_FRAGMENT_LENGTH) + File.separator;
		
		pathname += studyFile.getName();
		
		// Defining the pathname in this manner is a security control, to avoid
		// accidentally deleting files outside the application directory
		
		// Initializes a file for the pathname
		File applicationStudyFile = new File(pathname);
		
		// Deletes the study file
		applicationStudyFile.delete();
	}
	
}
