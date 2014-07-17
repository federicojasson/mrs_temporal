package entitiesManagers;

import java.util.List;

import entities.Study;
import entities.Patient;
import exceptions.NoConnectedException;

public interface StudyManager {
	
	public List<Study> getPatientStudies(Patient patient) throws NoConnectedException; 
	public List<Study> searchPatientStudies(Patient patient, String searchCriteria, String field) throws NoConnectedException;
	public void saveStudy(Study study) throws NoConnectedException;

}
