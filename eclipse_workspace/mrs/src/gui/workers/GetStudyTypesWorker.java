package gui.workers;

import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import javax.swing.SwingWorker;
import entities.StudyType;
import managers.ErrorManager;
import managers.StudyManager;

public class GetStudyTypesWorker extends SwingWorker<List<StudyType>, Void> {
	
	private GetStudyTypesCaller caller;
	
	public GetStudyTypesWorker(GetStudyTypesCaller caller) {
		this.caller = caller;
	}
	
	protected List<StudyType> doInBackground() {
		// This code is executed in a dedicated thread (not EDT)
		
		try {
			// Gets the study types
			return StudyManager.getStudyTypes();
		} catch (SQLException exception) {
			// An error occurred
			ErrorManager.notifyError(exception);
			return new LinkedList<StudyType>();
		}
	}
	
	protected void done() {
		// This code is executed in the event dispatch thread (EDT)
		
		try {
			// Executes the caller's callback method
			caller.getStudyTypesCallback(get());
		} catch (ExecutionException | InterruptedException exception) {
			// An error occurred
			ErrorManager.notifyError(exception);
		}
	}
	
}
