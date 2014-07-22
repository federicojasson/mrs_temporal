package modules;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;

public class FileManager {

	private static final String STUDIES_FILES_DIRECTORY = "./studies_files";
	private static final int UUID_FRAGMENT_LENGTH = 4; // UUID_LENGTH / 8
	private static final int UUID_LENGTH = 32;
	
	public static void copyStudyFile(String studyId, File studyFile) throws IOException {
		// Computes the study directory pathname
		String pathname = STUDIES_FILES_DIRECTORY + File.separator;
		for (int i = 0; i < UUID_LENGTH; i += UUID_FRAGMENT_LENGTH)
			pathname += studyId.substring(i, i + UUID_FRAGMENT_LENGTH) + File.separator;
		
		pathname += studyFile.getName();
		
		// Initializes a file for the pathname
		File studyFileCopy = new File(pathname);
		
		// Creates the necessary directories
		studyFileCopy.mkdirs();
		
		// Copies the study file
		Files.copy(studyFile.toPath(), studyFileCopy.toPath(), StandardCopyOption.REPLACE_EXISTING);
	}
	
}
