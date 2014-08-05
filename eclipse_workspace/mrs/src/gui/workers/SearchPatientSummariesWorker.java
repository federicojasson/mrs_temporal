package gui.workers;

import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import javax.swing.SwingWorker;
import entities.PatientSummary;
import managers.ErrorManager;

public class SearchPatientSummariesWorker extends SwingWorker<List<PatientSummary>, Void> {
	
	private SearchPatientSummariesCaller caller;
	
	public SearchPatientSummariesWorker(SearchPatientSummariesCaller caller) {
		this.caller = caller;
	}
	
	protected List<PatientSummary> doInBackground() {
		// This code is executed in a dedicated thread (not EDT)
		
		List<PatientSummary> list = new LinkedList<PatientSummary>(); // TODO: SearchPatientSummariesWorker
		list.add(new PatientSummary("F".getBytes(), new byte[] { 56 }, "Prueba"));
		return list;
		/*try {
			// Gets the study summaries
			return StudyManager.getStudySummaries(patientId);
		} catch (SQLException exception) {
			// An error occurred
			ErrorManager.notifyError(exception);
			return new LinkedList<Patient>();
		}*/
	}
	
	protected void done() {
		// This code is executed in the event dispatch thread (EDT)
		
		try {
			// Executes the caller's callback method
			caller.searchPatientSummariesCallback(get());
		} catch (ExecutionException | InterruptedException exception) {
			// An error occurred
			ErrorManager.notifyError(exception);
		}
	}
	
}
