package gui.workers;

import java.io.File;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import javax.swing.SwingWorker;
import entities.StudySummary;
import managers.ErrorManager;
import managers.StudyManager;

public class GetStudyFilesWorker extends SwingWorker<List<File>, Void> {
	
	private GetStudyFilesCaller caller;
	private byte[] studyId;
	
	public GetStudyFilesWorker(GetStudyFilesCaller caller, byte[] studyId) {
		this.caller = caller;
		this.studyId = studyId;
	}
	
	protected List<File> doInBackground() {
		// This code is executed in a dedicated thread (not EDT)
		
		// Gets the study files
		return StudyManager.getStudyFiles(studyId);
	}
	
	protected void done() {
		// This code is executed in the event dispatch thread (EDT)
		
		try {
			// Executes the caller's callback method
			caller.getStudyFilesCallback(get());
		} catch (ExecutionException | InterruptedException exception) {
			// An error occurred
			ErrorManager.notifyError(exception);
		}
	}
	
}
