package managers;

import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import entities.AuthenticationData;

public class UserManager {
	
	private static String currentUserId;
	
	public static String getCurrentUserId() {
		return currentUserId;
	}
	
	public static boolean logInUserDoctor(String id, byte[] password) throws NoSuchAlgorithmException, SQLException {
		// Gets the user authentication data
		AuthenticationData authenticationData = DbmsManager.getUserDoctorAuthenticationData(id);
		
		if (authenticationData == null)
			// User not found
			return false;
		
		// Authenticates the user
		boolean userAuthenticated = SecurityManager.authenticateUser(authenticationData, password);
		
		if (userAuthenticated)
			// The user has been authenticated
			currentUserId = id;
		
		return userAuthenticated;
	}
	
}
