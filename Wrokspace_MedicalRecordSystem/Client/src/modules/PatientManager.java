package modules;

import java.sql.Date;
import java.sql.SQLException;

public class PatientManager {
	
	private static byte[] currentPatientId;
	
	public static void addPatient(Date birthDate, byte bloodType, byte gender, String name) throws SQLException {
		// Generates a patient ID
		byte[] id = CryptographyManager.generateRandomUuid();
		
		// Gets the current user ID
		String userId = UserManager.getCurrentUserId();
		
		// Starts a transaction
		DatabaseManager.startTransaction();
		
		// Inserts the patient into the database
		DatabaseManager.insertPatient(birthDate, bloodType, id, gender, name, userId);
		
		// Commits the transaction
		DatabaseManager.commitTransaction();
	}
	
	public static byte[] getCurrentPatientId() {
		return currentPatientId;
	}
	
	public static void setCurrentPatientId(byte[] patientId) {
		currentPatientId = patientId;
	}
	
}
