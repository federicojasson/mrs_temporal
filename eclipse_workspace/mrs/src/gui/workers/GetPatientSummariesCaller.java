package gui.workers;

import java.util.List;
import entities.PatientSummary;

public interface GetPatientSummariesCaller {

	public void onGetPatientSummariesSuccess(List<PatientSummary> patientSummaries);

}
