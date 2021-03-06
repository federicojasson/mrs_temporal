package gui.workers;

import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import javax.swing.SwingWorker;
import managers.ErrorManager;
import managers.PatientManager;
import entities.PatientSummary;

public class GetPatientSummariesWorker extends SwingWorker<List<PatientSummary>, Void> {

	private GetPatientSummariesCaller caller;

	public GetPatientSummariesWorker(GetPatientSummariesCaller caller) {
		this.caller = caller;
	}

	protected List<PatientSummary> doInBackground() {
		// This code is executed in a dedicated thread (not EDT)

		try {
			// Gets the patient summaries
			return PatientManager.getPatientSummaries();
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
			caller.onGetPatientSummariesSuccess(get());
		} catch (ExecutionException | InterruptedException exception) {
			// There is nothing to be done
		}
	}

}
