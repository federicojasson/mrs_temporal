package gui.workers;

import java.sql.SQLException;
import javax.swing.SwingWorker;
import managers.ErrorManager;
import managers.StudyManager;

public class RemoveStudyWorker extends SwingWorker<Void, Void> {
	
	private RemoveStudyCaller caller;
	private byte[] id;
	
	public RemoveStudyWorker(RemoveStudyCaller caller, byte[] id) {
		this.caller = caller;
		this.id = id;
	}
	
	protected Void doInBackground() {
		// This code is executed in a dedicated thread (not EDT)
		
		try {
			// Removes the study
			StudyManager.removeStudy(id);
		} catch (SQLException exception) {
			// An error occurred
			ErrorManager.notifyError(exception);
		}
		
		return null;
	}
	
	protected void done() {
		// This code is executed in the event dispatch thread (EDT)
		
		// Executes the caller's callback method
		caller.removeStudyCallback();
	}
	
}
