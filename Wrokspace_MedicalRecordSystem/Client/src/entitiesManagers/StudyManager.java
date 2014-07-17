package entitiesManagers;

import java.util.ArrayList;
import java.util.List;

import entities.Study;
import entities.Patient;
import exceptions.NoConnectedException;

public interface StudyManager {
	
	public List<Study> getPatientStudies(Patient patient) throws NoConnectedException; 
	public List<Study> searchPatientStudies(Patient patient, String searchCriteria, String field) throws NoConnectedException;
	public void saveStudy(Study study) throws NoConnectedException;
	
	public String getObservations(int study_id);
	public void setObservations(int study_id, String observations);
	public List<String> getFiles(int study_id);
	public void addFile(int study_id, String file);
	public void removeFile(int id, String file);
}
