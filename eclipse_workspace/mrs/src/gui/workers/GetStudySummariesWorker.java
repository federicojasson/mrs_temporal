package gui.workers;

import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import javax.swing.SwingWorker;
import managers.ErrorManager;
import managers.StudyManager;
import entities.StudySummary;

public class GetStudySummariesWorker extends SwingWorker<List<StudySummary>, Void> {

	private GetStudySummariesCaller caller;

	public GetStudySummariesWorker(GetStudySummariesCaller caller) {
		this.caller = caller;
	}

	protected List<StudySummary> doInBackground() {
		// This code is executed in a dedicated thread (not EDT)

		try {
			// Gets the study summaries
			return StudyManager.getStudySummaries();
		} catch (SQLException exception) {
			// An error occurred
			ErrorManager.notifyError("Se produjo un error en la base de datos.", exception);
			return new LinkedList<StudySummary>();
		}
	}

	protected void done() {
		// This code is executed in the event dispatch thread (EDT)

		try {
			// Executes the caller's callback method
			caller.getStudySummariesCallback(get());
		} catch (ExecutionException | InterruptedException exception) {
			// There is nothing to be done
		}
	}

}
