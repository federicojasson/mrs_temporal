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
	
	public static void addStudyFile(String filename, byte[] studyId, File studyFileToAdd) throws IOException {
		// Gets the study file
		File studyFile = getStudyFile(filename, studyId);
		
		// Creates the necessary directories
		studyFile.mkdirs();
		
		// Copies the study file
		Files.copy(studyFileToAdd.toPath(), studyFile.toPath(), StandardCopyOption.REPLACE_EXISTING);
	}
	
	public static String getFilenameExtensionWithDot(String filename) {
		// Searches the index of the last occurrence of a dot
		int dotIndex = filename.lastIndexOf('.');
		
		if (dotIndex < 0)
			// The filename doesn't have an extension
			return "";
		else
			// The filename has an extension
			return filename.substring(dotIndex);
	}
	
	public static String getFilenameWithoutExtension(String filename) {
		// Searches the index of the last occurrence of a dot
		int dotIndex = filename.lastIndexOf('.');
		
		if (dotIndex < 0)
			// The filename doesn't have an extension
			return filename;
		else
			// The filename has an extension
			return filename.substring(0, dotIndex);
	}

	public static File getStudyFile(String filename, byte[] studyId) {
		// Converts the study ID to hexadecimal
		String hexadecimalStudyId = Utility.bytesToHexadecimal(studyId);

		// Computes the study directory path
		String path = STUDIES_FILES_DIRECTORY + File.separator;
		for (int i = 0; i < UUID_LENGTH; i += UUID_FRAGMENT_LENGTH)
			path += hexadecimalStudyId.substring(i, i + UUID_FRAGMENT_LENGTH) + File.separator;
		
		// Appends the filename
		path += filename;
		
		// Returns the study file
		return new File(path);
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
	
	public static void removeStudyFile(String filename, byte[] studyId) {
		// Gets the study file
		File studyFile = getStudyFile(filename, studyId);
		
		// Deletes the study file
		studyFile.delete();
	}
	
}
