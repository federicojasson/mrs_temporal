package entitiesManagers;

import java.util.List;
import entities.Patient;
import exceptions.NoConnectedException;

public interface PatientManager {
	
	public void savePatient(Patient patient) throws NoConnectedException;

	public List<Patient> searchPatient(String searchCriteria, String field) throws NoConnectedException;

}
