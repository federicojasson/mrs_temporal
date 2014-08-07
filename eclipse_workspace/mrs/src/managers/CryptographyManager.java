package managers;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardOpenOption;
import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import utilities.Utility;

public class CryptographyManager {

	private static final String ALGORITHM_FILE_CHECKSUM = "MD5";
	private static final String ALGORITHM_PASSWORD_HASH = "SHA-512";
	private static final int UUID_BYTES = 16;

	public static byte[] computeFileChecksum(File file) throws IOException, NoSuchAlgorithmException {
		MessageDigest algorithm;

		// Initializes the algorithm
		algorithm = MessageDigest.getInstance(ALGORITHM_FILE_CHECKSUM);

		// Initializes the buffer
		InputStream inputStream = Files.newInputStream(file.toPath(), StandardOpenOption.READ);
		DigestInputStream algorithmInputStream = new DigestInputStream(inputStream, algorithm);

		try {
			// Reads the file bytes
			while (algorithmInputStream.read() != - 1)
				;
		} finally {
			try {
				// Closes the buffer
				algorithmInputStream.close();
			} catch (IOException exception) {
				// There is nothing to be done
			}
		}

		// Computes the file checksum
		return algorithm.digest();
	}

	public static byte[] computePasswordHash(byte[] password, byte[] salt) throws NoSuchAlgorithmException {
		MessageDigest algorithm;

		// Initializes the algorithm
		algorithm = MessageDigest.getInstance(ALGORITHM_PASSWORD_HASH);

		// Prepends the salt to the password
		byte[] bytes = Utility.concatenateBytes(salt, password);

		// Computes the password hash
		return algorithm.digest(bytes);
	}

	public static byte[] generateRandomUuid() {
		// Initializes a cryptographically strong random number generator
		SecureRandom secureRandom = new SecureRandom();

		// Computes a random UUID
		byte[] uuid = new byte[UUID_BYTES];
		secureRandom.nextBytes(uuid);

		return uuid;
	}

}
