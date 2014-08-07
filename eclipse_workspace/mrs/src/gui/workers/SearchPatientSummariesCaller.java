package gui.workers;

import java.util.List;
import entities.PatientSummary;

public interface SearchPatientSummariesCaller {

	public void searchPatientSummariesCallback(List<PatientSummary> patientSummaries);

}
