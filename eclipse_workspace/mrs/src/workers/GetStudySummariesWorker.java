package workers;

import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import javax.swing.SwingWorker;
import entities.StudySummary;
import managers.ErrorManager;
import managers.StudyManager;

public class GetStudySummariesWorker extends SwingWorker<List<StudySummary>, Void> {
	
	private GetStudySummariesCaller caller;
	private byte[] patientId;
	
	public GetStudySummariesWorker(GetStudySummariesCaller caller, byte[] patientId) {
		this.caller = caller;
		this.patientId = patientId;
	}
	
	protected List<StudySummary> doInBackground() {
		// This code is executed in a dedicated thread (not EDT)
		
		try {
			// Gets the study summaries
			return StudyManager.getStudySummaries(patientId);
		} catch (SQLException exception) {
			// An error occurred
			ErrorManager.notifyError(exception);
			return new LinkedList<StudySummary>();
		}
	}
	
	protected void done() {
		// This code is executed in the event dispatch thread (EDT)
		
		try {
			// Executes the caller's callback method
			caller.getStudySummariesCallback(get());
		} catch (ExecutionException | InterruptedException exception) {
			// An error occurred
			ErrorManager.notifyError(exception);
		}
	}
	
}
