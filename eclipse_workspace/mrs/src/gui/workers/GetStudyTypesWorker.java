package gui.workers;

import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import javax.swing.SwingWorker;
import managers.ErrorManager;
import managers.StudyManager;
import entities.StudyType;
import exceptions.NoStudyTypesException;

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
		} catch (NoStudyTypesException exception) {
			// An error occurred
			ErrorManager.notifyError("La base de datos no ha sido inicializada correctamente.", exception);
			return new LinkedList<StudyType>();
		} catch (SQLException exception) {
			// An error occurred
			ErrorManager.notifyError("Se produjo un error en la base de datos.", exception);
			return new LinkedList<StudyType>();
		}
	}

	protected void done() {
		// This code is executed in the event dispatch thread (EDT)

		try {
			// Executes the caller's callback method
			caller.getStudyTypesCallback(get());
		} catch (ExecutionException | InterruptedException exception) {
			// There is nothing to be done
		}
	}

}
