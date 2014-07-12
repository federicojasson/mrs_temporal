package entitiesManagers;

import java.util.List;

import database.DatabaseConnector;
import exceptions.ConnectionException;
import exceptions.NoConnectedException;
import exceptions.UserPasswordException;

public class UsersManager {
	
	private static UsersManager instance = null;
	
	private DatabaseConnector connection = null;
	
	public void login(String username, String password) throws UserPasswordException, ConnectionException{
		connection = new DatabaseConnector(username, password);
	}
	
	public ClinicalRecordsManager getClinicalRecordsManager(){
		return new ClinicalRecordsManager();
	}
	
	public PatientManager getPatientManager(){
		return this.connection;
	}
	
	public StudyManager getStudyManager(){
		return this.connection;
	}
	
	public List<String> getStudyTypes() throws NoConnectedException{
		if(this.connection != null)
			return this.connection.getStudyTypes();
		else{
			throw new NoConnectedException("You are not connected to database.");
		}
	}
	
	public static UsersManager getInstance(){
		if(instance == null){
			instance = new UsersManager();
			
			//TODO hay que sacar esta l�nea
			try {
				instance.login("", "");
			} catch (UserPasswordException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ConnectionException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return instance;
	}
}