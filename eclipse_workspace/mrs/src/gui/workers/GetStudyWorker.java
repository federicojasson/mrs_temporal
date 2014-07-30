package gui.workers;

import java.sql.SQLException;
import java.util.concurrent.ExecutionException;
import javax.swing.SwingWorker;
import entities.Patient;
import entities.Study;
import managers.ErrorManager;
import managers.PatientManager;
import managers.StudyManager;

public class GetStudyWorker extends SwingWorker<Study, Void> {
	
	private GetStudyCaller caller;
	private byte[] studyId;
	
	public GetStudyWorker(GetStudyCaller caller, byte[] studyId) {
		this.caller = caller;
		this.studyId = studyId;
	}
	
	protected Study doInBackground() {
		// This code is executed in a dedicated thread (not EDT)
		
		try {
			// Gets the study
			return StudyManager.getStudy(studyId);
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
