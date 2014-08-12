package gui.workers;

import java.util.List;
import entities.PatientSummary;

public interface SearchPatientSummariesCaller {

	public void onSearchPatientSummariesSuccess(List<PatientSummary> patientSummaries);

}
