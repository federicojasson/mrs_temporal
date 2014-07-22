package utility;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;
import modules.ApplicationManager;

public class Utility {
	
	private static final char[] HEXADECIMAL_VALUES = "0123456789ABCDEF".toCharArray();
	
	public static String bytesToHexadecimal(byte[] bytes) {
		int byteCount = bytes.length;
		char[] chars = new char[2 * byteCount];
		
		for (int i = 0; i < byteCount; i++) {
		    int byteValue = bytes[i] & 0xFF;
		    chars[2 * i] = HEXADECIMAL_VALUES[byteValue >>> 4]; // Most significant bits
		    chars[2 * i + 1] = HEXADECIMAL_VALUES[byteValue & 0x0F]; // Least significant bits
		}
		
		return new String(chars);
	}
	
	public static String computeSha512(byte[] dataBytes) {
		try {
			// Initializes the algorithm
			MessageDigest algorithm = MessageDigest.getInstance("SHA-512");
			
			// Computes the hash value
			byte[] hashBytes = algorithm.digest(dataBytes);
			
			// Converts the hash bytes to hexadecimal
			return Utility.bytesToHexadecimal(hashBytes);
		} catch (NoSuchAlgorithmException exception) {
			// Exits the application abnormally
			ApplicationManager.exitAbnormally("Algorithm SHA-512 not found.", exception);
			return null;
		}
	}
	
	public static String generateUuid() {
		// Computes a random UUID
		UUID uuid = UUID.randomUUID();
		
		// Converts the UUID to hexadecimal and returns it
		long higherBits = uuid.getMostSignificantBits();
		long lowerBits = uuid.getLeastSignificantBits();
		return Long.toHexString(higherBits) + Long.toHexString(lowerBits);
	}

}
