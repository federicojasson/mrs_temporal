package modules;

import java.sql.SQLException;
import entities.AuthenticationData;

public class UserManager {
	
	public static boolean loginUserDoctor(String id, String plaintextPassword) throws SQLException {
		// Gets the user authentication data
		AuthenticationData authenticationData = DatabaseManager.getUserDoctorAuthenticationData(id);
		
		// Hashes the plaintext password using the salt as a prefix
		String password = null; // TODO: use some hashing library to do SHA-512(unhex(salt) + plaintextPassword)
		
		// Compares the hashes
		return authenticationData.getPassword().equals(password);
	}
	
}
