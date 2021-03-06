package gui.workers;

import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import javax.swing.SwingWorker;
import managers.ErrorManager;
import managers.StudyManager;
import entities.StudyHistory;

public class GetStudyHistoriesWorker extends SwingWorker<List<StudyHistory>, Void> {

	private GetStudyHistoriesCaller caller;

	public GetStudyHistoriesWorker(GetStudyHistoriesCaller caller) {
		this.caller = caller;
	}

	protected List<StudyHistory> doInBackground() {
		// This code is executed in a dedicated thread (not EDT)

		try {
			// Gets the study histories
			return StudyManager.getStudyHistories();
		} catch (SQLException exception) {
			// An error occurred
			ErrorManager.notifyError("Se produjo un error en la base de datos.", exception);
			return new LinkedList<StudyHistory>();
		}
	}

	protected void done() {
		// This code is executed in the event dispatch thread (EDT)

		try {
			// Executes the caller's callback method
			caller.onGetStudyHistoriesSuccess(get());
		} catch (ExecutionException | InterruptedException exception) {
			// There is nothing to be done
		}
	}

}
