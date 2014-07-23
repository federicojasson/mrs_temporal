package modules;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardOpenOption;
import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import utility.Utility;

public class CryptographyManager {
	
	private static final String ALGORITHM_FILE_CHECKSUM = "MD5";
	private static final String ALGORITHM_PASSWORD_HASH = "SHA-512";
	
	public static byte[] computeFileChecksum(File file) throws IOException {
		MessageDigest algorithm;
		
		try {
			// Initializes the algorithm
			algorithm = MessageDigest.getInstance(ALGORITHM_FILE_CHECKSUM);
		} catch (NoSuchAlgorithmException exception) {
			// Exits the application abnormally
			ApplicationManager.exitAbnormally("Algorithm " + ALGORITHM_FILE_CHECKSUM + " not found.", exception);
			return null;
		}
		
		// Initializes the stream
		InputStream inputStream = Files.newInputStream(file.toPath(), StandardOpenOption.READ);
		DigestInputStream algorithmInputStream = new DigestInputStream(inputStream, algorithm);
		
		try {
			// Reads the file bytes
			while (algorithmInputStream.read() != -1);
		} finally {
			// Closes the stream
			algorithmInputStream.close();
		}
		
		// Computes the file checksum
		return algorithm.digest();
	}
	
	public static byte[] computePasswordHash(byte[] password, byte[] salt) {
		MessageDigest algorithm;
		
		try {
			// Initializes the algorithm
			algorithm = MessageDigest.getInstance(ALGORITHM_PASSWORD_HASH);
		} catch (NoSuchAlgorithmException exception) {
			// Exits the application abnormally
			ApplicationManager.exitAbnormally("Algorithm " + ALGORITHM_PASSWORD_HASH + " not found.", exception);
			return null;
		}
		
		// Prepends the salt to the password
		byte[] bytes = Utility.concatenateBytes(salt, password);
		
		// Computes the password hash
		return algorithm.digest(bytes);
	}
	
	public static byte[] generateRandomUuid() {
		// TODO
		return null;
	}
	
}
