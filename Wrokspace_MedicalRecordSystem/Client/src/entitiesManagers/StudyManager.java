package entitiesManagers;

import java.util.List;
import entities.Patient;
import entities.Study;
import exceptions.NoConnectedException;

public interface StudyManager {
	
	public void addFile(int study_id, String file);

	public List<String> getFiles(int study_id);

	public String getObservations(int study_id);
	
	public List<Study> getPatientStudies(Patient patient) throws NoConnectedException;

	public void removeFile(int id, String file);

	public void saveStudy(Study study) throws NoConnectedException;

	public List<Study> searchPatientStudies(Patient patient, String searchCriteria, String field) throws NoConnectedException;

	public void setObservations(int study_id, String observations);
}
