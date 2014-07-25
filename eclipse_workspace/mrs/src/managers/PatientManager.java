package managers;

import java.sql.Date;
import java.sql.SQLException;

public class PatientManager {
	
	private static byte[] currentPatientId;
	
	public static void addPatient(Date birthDate, byte bloodType, byte gender, String name) throws SQLException {
		// Generates a patient ID
		byte[] id = CryptographyManager.generateRandomUuid();
		
		// Checks if a patient with the same ID already exists
		while (DbmsManager.patientExists(id))
			// Generates another patient ID
			id = CryptographyManager.generateRandomUuid();
		
		// Gets the current user ID
		String userId = UserManager.getCurrentUserId();
		
		// Starts a transaction
		DbmsManager.startTransaction();
		
		// Inserts the patient into the database
		DbmsManager.insertPatient(birthDate, bloodType, id, gender, name, userId);
		
		// Commits the transaction
		DbmsManager.commitTransaction();
	}
	
	public static byte[] getCurrentPatientId() {
		return currentPatientId;
	}
	
	public static void setCurrentPatientId(byte[] patientId) {
		currentPatientId = patientId;
	}
	
}
