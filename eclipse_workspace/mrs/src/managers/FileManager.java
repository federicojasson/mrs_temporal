package managers;

import java.awt.Desktop;
import java.awt.Desktop.Action;
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
		if (studyFile.exists()) {
			// The study file exists
			
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
	}
	
	public static void openFileDirectory(File file) throws IOException {
		if (file.exists())
			// The file exists
			if (Desktop.isDesktopSupported()) {
				// Desktop is supported
				
				// Gets the desktop object
				Desktop desktop = Desktop.getDesktop();
				
				if (desktop.isSupported(Action.OPEN)) {
					// Open action is supported
					
					// Gets the file's directory
					File directory = file.getParentFile();
					
					// Opens the directory
					desktop.open(directory);
				}
			}
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
		
		if (applicationStudyFile.exists())
			// The study file exists
			// Deletes the study file
			applicationStudyFile.delete();
	}
	
}
