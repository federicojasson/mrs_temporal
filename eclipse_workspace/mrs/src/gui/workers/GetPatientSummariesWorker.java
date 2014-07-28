package gui.workers;

import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import javax.swing.SwingWorker;
import entities.PatientSummary;
import managers.ErrorManager;
import managers.PatientManager;

public class GetPatientSummariesWorker extends SwingWorker<List<PatientSummary>, Void> {
	
	private GetPatientSummariesCaller caller;
	private String userId;
	
	public GetPatientSummariesWorker(GetPatientSummariesCaller caller, String userId) {
		this.caller = caller;
		this.userId = userId;
	}
	
	protected List<PatientSummary> doInBackground() {
		// This code is executed in a dedicated thread (not EDT)
		
		try {
			// Gets the patient summaries
			return PatientManager.getPatientSummaries(userId);
		} catch (SQLException exception) {
			// An error occurred
			ErrorManager.notifyError(exception);
			return new LinkedList<PatientSummary>();
		}
	}
	
	protected void done() {
		// This code is executed in the event dispatch thread (EDT)
		
		try {
			// Executes the caller's callback method
			caller.getPatientSummariesCallback(get());
		} catch (ExecutionException | InterruptedException exception) {
			// An error occurred
			ErrorManager.notifyError(exception);
		}
	}
	
}
