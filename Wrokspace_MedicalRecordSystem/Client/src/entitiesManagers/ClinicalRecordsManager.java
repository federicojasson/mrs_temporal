package entitiesManagers;

import java.util.List;

import entities.Patient;
import exceptions.NoConnectedException;

public class ClinicalRecordsManager {
	
	public List<Patient> searchPatient(String searchCriteria, String field) throws NoConnectedException{
		PatientManager manager = UsersManager.getInstance().getPatientManager();
		
		if(manager != null){
			return manager.searchPatient(searchCriteria, field);
		}else{
			throw new NoConnectedException("You are not connected to database.");
		}
	}
	
	public void savePatient(Patient patient) throws NoConnectedException{
		PatientManager manager = UsersManager.getInstance().getPatientManager();
		
		if(manager != null){
			manager.savePatient(patient);
		}else{
			throw new NoConnectedException("You are not connected to database.");
		}
	}
}
