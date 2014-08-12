package gui.workers;

import java.sql.SQLException;
import java.util.concurrent.ExecutionException;
import javax.swing.SwingWorker;
import managers.ErrorManager;
import managers.StudyManager;
import entities.Study;
import exceptions.NoStudyException;

public class GetStudyWorker extends SwingWorker<Study, Void> {

	private GetStudyCaller caller;

	public GetStudyWorker(GetStudyCaller caller) {
		this.caller = caller;
	}

	protected Study doInBackground() throws NoStudyException {
		// This code is executed in a dedicated thread (not EDT)

		try {
			// Gets the study
			return StudyManager.getStudy();
		} catch (SQLException exception) {
			// An error occurred
			ErrorManager.notifyError("Se produjo un error en la base de datos.", exception);
			return null;
		}
	}

	protected void done() {
		// This code is executed in the event dispatch thread (EDT)

		try {
			// Executes the caller's callback method
			caller.onGetStudySuccess(get());
		} catch (ExecutionException exception) {
			if (exception.getCause() instanceof NoStudyException)
				// Study not found
				caller.onGetStudyFailure();
		} catch (InterruptedException exception) {
			// There is nothing to be done
		}
	}

}
