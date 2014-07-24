package modules;

import java.util.Arrays;
import entities.AuthenticationData;

public class SecurityManager {
	
	public static boolean authenticateUser(AuthenticationData authenticationData, byte[] password) {
		// Computes the password hash using the salt as its prefix
		byte[] passwordHash = CryptographyManager.computePasswordHash(password, authenticationData.getSalt());
		
		// Compares the password hashes
		return Arrays.equals(authenticationData.getPasswordHash(), passwordHash);
	}
	
}
