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
	
public static void addStudyFile(byte[] studyId, File studyFileToAdd) throws IOException {
		// Computes the study file path
		String path = computeStudyFilePath(studyId, studyFileToAdd.getName());
		
		// Initializes a file for the path
		File studyFile = new File(path);
		
		// Creates the necessary directories
		studyFile.mkdirs();
		
		// Copies the study file
		Files.copy(studyFileToAdd.toPath(), studyFile.toPath(), StandardCopyOption.REPLACE_EXISTING);
	}

	public static File getStudyFile(byte[] studyId, String filename) {
		// Computes the study file path
		String path = computeStudyFilePath(studyId, filename);
		
		// Initializes a file for the path
		File studyFile = new File(path);
		
		return studyFile;
	}
	
	public static void openFileDirectory(File file) throws IOException {
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
	
	public static void removeStudyFile(byte[] studyId, File studyFileToRemove) {
		// Computes the study file path
		String path = computeStudyFilePath(studyId, studyFileToRemove.getName());
		
		// Defining the path in this manner is a security control, to avoid
		// accidentally deleting files outside the application directory
		
		// Initializes a file for the path
		File studyFile = new File(path);
		
		// Deletes the study file
		studyFile.delete();
	}
	
	private static String computeStudyFilePath(byte[] studyId, String filename) {
		// Converts the study ID to hexadecimal
		String hexadecimalStudyId = Utility.bytesToHexadecimal(studyId);

		// Computes the study directory path
		String path = STUDIES_FILES_DIRECTORY + File.separator;
		for (int i = 0; i < UUID_LENGTH; i += UUID_FRAGMENT_LENGTH)
			path += hexadecimalStudyId.substring(i, i + UUID_FRAGMENT_LENGTH) + File.separator;
		
		// Appends the filename
		path += filename;
		
		return path;
	}
	
}
