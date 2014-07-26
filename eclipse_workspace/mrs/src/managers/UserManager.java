package managers;

import java.security.NoSuchAlgorithmException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import entities.AuthenticationData;

public class UserManager {
	
	private static String currentUserId;
	
	public static String getCurrentUserId() {
		return currentUserId;
	}
	
	public static boolean logInUserDoctor(String id, byte[] password) throws NoSuchAlgorithmException, SQLException {
		// Gets the user authentication data
		AuthenticationData authenticationData = getUserDoctorAuthenticationData(id);
		
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

	private static AuthenticationData getUserDoctorAuthenticationData(String id) throws SQLException {
		AuthenticationData authenticationData = null;

		// Gets the prepared statement
		PreparedStatement preparedStatement = DbmsManager.getPreparedStatement(DbmsManager.GET_USER_DOCTOR_AUTHENTICATION_DATA);
		
		try {
			// Sets the input parameters
			preparedStatement.setString(1, id);
	
			// Executes the prepared statement
			ResultSet resultSet = preparedStatement.executeQuery();
	
			// Fetches the query results
			if (resultSet.next()) {
				byte[] passwordHash = resultSet.getBytes("password_hash");
				byte[] salt = resultSet.getBytes("salt");
	
				// Initializes the user authentication data object
				authenticationData = new AuthenticationData(passwordHash, salt);
			}
		} finally {
			// Releases the statement resources
			preparedStatement.close();
		}
		
		return authenticationData;
	}
	
}
