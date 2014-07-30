package gui.workers;

import java.io.File;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;
import javax.swing.SwingWorker;
import managers.ErrorManager;
import managers.StudyManager;

public class AddStudyWorker extends SwingWorker<Void, Void> {
	
	private AddStudyCaller caller;
	private Date date;
	private String observations;
	private List<File> studyFiles;
	private byte[] studyTypeId; 
	
	public AddStudyWorker(AddStudyCaller caller, Date date, String observations, byte[] studyTypeId, List<File> studyFiles) {
		this.caller = caller;
		this.date = date;
		this.observations = observations;
		this.studyFiles = studyFiles;
		this.studyTypeId = studyTypeId;
	}
	
	protected Void doInBackground() {
		// This code is executed in a dedicated thread (not EDT)
		
		try {
			// Adds the study
			StudyManager.addStudy(date, observations, studyTypeId, studyFiles);
		} catch (IOException | NoSuchAlgorithmException | SQLException exception) {
			// An error occurred
			ErrorManager.notifyError(exception);
		}
		
		return null;
	}
	
	protected void done() {
		// This code is executed in the event dispatch thread (EDT)
		
		// Executes the caller's callback method
		caller.addStudyCallback();
	}
	
}
