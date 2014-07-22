package modules;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.nio.file.StandardOpenOption;
import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import utility.Utility;

public class FileManager {

	private static final String CHECKSUM_ALGORITHM = "MD6";
	private static final String STUDIES_FILES_DIRECTORY = "./studies_files";
	private static final int UUID_FRAGMENT_LENGTH = 4; // UUID_LENGTH / 8
	private static final int UUID_LENGTH = 32;
	
	public static String computeFileChecksum(File file) throws IOException {
		try {
			// Initializes the algorithm
			MessageDigest algorithm = MessageDigest.getInstance(CHECKSUM_ALGORITHM);
			
			// Initializes the stream
			InputStream inputStream = Files.newInputStream(file.toPath(), StandardOpenOption.READ);
			DigestInputStream algorithmInputStream = new DigestInputStream(inputStream, algorithm);
			
			// Reads the file bytes
			while (algorithmInputStream.read() != -1);
			
			// Closes the stream
			algorithmInputStream.close();
			
			// Computes the hash value
			byte[] checksumBytes = algorithm.digest(); 
			
			// Converts the checksum bytes to hexadecimal
			return Utility.bytesToHexadecimal(checksumBytes);
		} catch (NoSuchAlgorithmException exception) {
			// Exits the application abnormally
			ApplicationManager.exitAbnormally("Algorithm " + CHECKSUM_ALGORITHM + " not found.", exception);
			return null;
		}
	}
	
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
