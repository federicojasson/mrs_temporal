package gui.workers;

import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import javax.swing.SwingWorker;
import managers.ErrorManager;
import managers.PatientManager;
import entities.PatientSummary;

public class SearchPatientSummariesWorker extends SwingWorker<List<PatientSummary>, Void> {

	private SearchPatientSummariesCaller caller;
	private String search;

	public SearchPatientSummariesWorker(SearchPatientSummariesCaller caller, String search) {
		this.caller = caller;
		this.search = search;
	}

	protected List<PatientSummary> doInBackground() {
		// This code is executed in a dedicated thread (not EDT)

		try {
			// Searches the patient summaries
			return PatientManager.searchPatientSummaries(search);
		} catch (SQLException exception) {
			// An error occurred
			ErrorManager.notifyError("Se produjo un error en la base de datos.", exception);
			return new LinkedList<PatientSummary>();
		}
	}

	protected void done() {
		// This code is executed in the event dispatch thread (EDT)

		try {
			// Executes the caller's callback method
			caller.onSearchPatientSummariesSuccess(get());
		} catch (ExecutionException | InterruptedException exception) {
			// There is nothing to be done
		}
	}

}
