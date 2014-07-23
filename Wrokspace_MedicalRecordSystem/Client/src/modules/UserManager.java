package modules;

import java.sql.SQLException;
import entities.AuthenticationData;

public class UserManager {
	
	public static boolean loginUserDoctor(String id, byte[] password) throws SQLException {
		// Gets the user authentication data
		AuthenticationData authenticationData = DatabaseManager.getUserDoctorAuthenticationData(id);
		
		if (authenticationData == null)
			// User not found
			return false;
		
		// Authenticates the user
		return SecurityManager.authenticateUser(authenticationData, password);
	}
	
}
