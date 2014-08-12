package gui.workers;

import java.io.File;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.util.List;
import javax.swing.SwingWorker;
import managers.ErrorManager;
import managers.StudyManager;

public class ModifyStudyWorker extends SwingWorker<Void, Void> {

	private ModifyStudyCaller caller;
	private String causes;
	private String diagnosis;
	private String indications;
	private String observations;
	private List<File> studyFilesToAdd;
	private List<File> studyFilesToRemove;

	public ModifyStudyWorker(ModifyStudyCaller caller, String causes, String diagnosis, String indications, String observations, List<File> studyFilesToAdd, List<File> studyFilesToRemove) {
		this.caller = caller;
		this.causes = causes;
		this.diagnosis = diagnosis;
		this.indications = indications;
		this.observations = observations;
		this.studyFilesToAdd = studyFilesToAdd;
		this.studyFilesToRemove = studyFilesToRemove;
	}

	protected Void doInBackground() {
		// This code is executed in a dedicated thread (not EDT)

		try {
			// Modifies the study
			StudyManager.modifyStudy(causes, diagnosis, indications, observations, studyFilesToAdd, studyFilesToRemove);
		} catch (NoSuchAlgorithmException exception) {
			// An error occurred
			ErrorManager.notifyError("El sistema no implementa un algoritmo necesario para la ejecución.", exception);
		} catch (SQLException exception) {
			// An error occurred
			ErrorManager.notifyError("Se produjo un error en la base de datos.", exception);
		}

		return null;
	}

	protected void done() {
		// This code is executed in the event dispatch thread (EDT)

		// Executes the caller's callback method
		caller.onModifyStudySuccess();
	}

}
