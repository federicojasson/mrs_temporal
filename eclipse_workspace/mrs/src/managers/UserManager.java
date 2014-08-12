package managers;

import java.security.NoSuchAlgorithmException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import entities.AuthenticationData;
import exceptions.NoUserAuthenticationDataException;

public class UserManager {

	private static String currentUserId;

	public static String getCurrentUserId() {
		return currentUserId;
	}

	public static boolean logInUserDoctor(String id, byte[] password) throws NoSuchAlgorithmException, SQLException {
		try {
			// Gets the user authentication data
			AuthenticationData authenticationData = getUserAuthenticationDataDoctor(id);

			// Authenticates the user
			boolean userAuthenticated = SecurityManager.authenticateUser(authenticationData, password);

			if (userAuthenticated)
				// The user has been authenticated
				currentUserId = id;

			return userAuthenticated;
		} catch (NoUserAuthenticationDataException exception) {
			// Authentication data not found
			return false;
		}
	}

	private static AuthenticationData getUserAuthenticationDataDoctor(String id) throws NoUserAuthenticationDataException, SQLException {
		AuthenticationData authenticationData = null;

		// Gets the prepared statement
		PreparedStatement preparedStatement = DbmsManager.getPreparedStatement(DbmsManager.GET_USER_AUTHENTICATION_DATA_DOCTOR);

		try {
			// Sets the input parameters
			preparedStatement.setString(1, id);

			// Executes the prepared statement
			ResultSet resultSet = preparedStatement.executeQuery();

			// Fetches the query results

			if (! resultSet.next())
				// Authentication data not found
				throw new NoUserAuthenticationDataException();

			byte[] passwordHash = resultSet.getBytes("password_hash");
			byte[] salt = resultSet.getBytes("salt");

			// Initializes the user authentication data object
			authenticationData = new AuthenticationData(passwordHash, salt);
		} finally {
			try {
				// Releases the statement resources
				preparedStatement.clearParameters();
			} catch (SQLException exception) {
				// There is nothing to be done
			}
		}

		return authenticationData;
	}

}
