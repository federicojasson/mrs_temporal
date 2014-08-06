package gui.workers;

import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import javax.swing.SwingWorker;
import entities.StudySummary;
import managers.ErrorManager;
import managers.StudyManager;

public class SearchStudySummariesWorker extends SwingWorker<List<StudySummary>, Void> {
	
	private SearchStudySummariesCaller caller;
	private String search;
	
	public SearchStudySummariesWorker(SearchStudySummariesCaller caller, String search) {
		this.caller = caller;
		this.search = search;
	}
	
	protected List<StudySummary> doInBackground() {
		// This code is executed in a dedicated thread (not EDT)
		
		try {
			if (search.trim().isEmpty()) // TODO: should this be done here?
				// Gets the study summaries
				return StudyManager.getStudySummaries();
			else
				// Searches the study summaries
				return StudyManager.searchStudySummaries(search);
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
			caller.searchStudySummariesCallback(get());
		} catch (ExecutionException | InterruptedException exception) {
			// An error occurred
			ErrorManager.notifyError(exception);
		}
	}
	
}
