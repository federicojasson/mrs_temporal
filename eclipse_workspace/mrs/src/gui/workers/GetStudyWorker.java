package gui.workers;

import java.sql.SQLException;
import java.util.concurrent.ExecutionException;
import javax.swing.SwingWorker;
import entities.Study;
import managers.ErrorManager;
import managers.StudyManager;

public class GetStudyWorker extends SwingWorker<Study, Void> {
	
	private GetStudyCaller caller;
	
	public GetStudyWorker(GetStudyCaller caller) {
		this.caller = caller;
	}
	
	protected Study doInBackground() {
		// This code is executed in a dedicated thread (not EDT)
		
		try {
			// Gets the study
			return StudyManager.getStudy();
		} catch (SQLException exception) {
			// An error occurred
			ErrorManager.notifyError(exception);
			return null;
		}
	}
	
	protected void done() {
		// This code is executed in the event dispatch thread (EDT)
		
		try {
			// Executes the caller's callback method
			caller.getStudyCallback(get());
		} catch (ExecutionException | InterruptedException exception) {
			// An error occurred
			ErrorManager.notifyError(exception);
		}
	}
	
}
