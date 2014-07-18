package entitiesManagers;

import java.util.List;
import database.DatabaseConnector;
import exceptions.ConnectionException;
import exceptions.NoConnectedException;
import exceptions.UserPasswordException;

public class UsersManager {

	public static UsersManager getInstance() {
		if (instance == null)
			instance = new UsersManager();

		return instance;
	}
	
	private static UsersManager instance;

	private DatabaseConnector connection = null;

	public PatientManager getPatientManager() {
		return connection;
	}

	public StudyManager getStudyManager() {
		return connection;
	}

	public List<String> getStudyTypes() throws NoConnectedException {
		if (connection != null)
			return connection.getStudyTypes();
		else
			throw new NoConnectedException("You are not connected to database.");
	}

	public boolean isConnected() {
		return connection != null;
	}

	public void login(String username, String password) throws UserPasswordException, ConnectionException {
		connection = new DatabaseConnector(username, password);
	}
}
