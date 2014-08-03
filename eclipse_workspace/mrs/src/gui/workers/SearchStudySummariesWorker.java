package gui.workers;

import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import javax.swing.SwingWorker;
import entities.StudySummary;
import managers.ErrorManager;

public class SearchStudySummariesWorker extends SwingWorker<List<StudySummary>, Void> {
	
	private SearchStudySummariesCaller caller;
	
	public SearchStudySummariesWorker(SearchStudySummariesCaller caller) {
		this.caller = caller;
	}
	
	protected List<StudySummary> doInBackground() {
		// This code is executed in a dedicated thread (not EDT)
		
		return new LinkedList<StudySummary>(); // TODO
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
			caller.searchStudySummariesCallback(get());
		} catch (ExecutionException | InterruptedException exception) {
			// An error occurred
			ErrorManager.notifyError(exception);
		}
	}
	
}