package gui.workers;

import java.io.File;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.util.List;
import javax.swing.SwingWorker;
import managers.ErrorManager;
import managers.StudyManager;

public class ModifyStudyWorker extends SwingWorker<Void, Void> {
	
	private ModifyStudyCaller caller;
	private String observations;
	private List<File> studyFilesToAdd;
	private List<File> studyFilesToRemove;
	
	public ModifyStudyWorker(ModifyStudyCaller caller, String observations, List<File> studyFilesToAdd, List<File> studyFilesToRemove) {
		this.caller = caller;
		this.observations = observations;
		this.studyFilesToAdd = studyFilesToAdd;
		this.studyFilesToRemove = studyFilesToRemove;
	}
	
	protected Void doInBackground() {
		// This code is executed in a dedicated thread (not EDT)
		
		try {
			// Modifies the study
			StudyManager.modifyStudy(observations, studyFilesToAdd, studyFilesToRemove);
		} catch (IOException | NoSuchAlgorithmException | SQLException exception) {
			// An error occurred
			ErrorManager.notifyError(exception);
		}
		
		return null;
	}
	
	protected void done() {
		// This code is executed in the event dispatch thread (EDT)
		
		// Executes the caller's callback method
		caller.modifyStudyCallback();
	}
	
}
