package gui.workers;

import java.sql.SQLException;
import javax.swing.SwingWorker;
import managers.ErrorManager;
import managers.PatientManager;

public class RemovePatientWorker extends SwingWorker<Void, Void> {

	private RemovePatientCaller caller;
	private byte[] id;

	public RemovePatientWorker(RemovePatientCaller caller, byte[] id) {
		this.caller = caller;
		this.id = id;
	}

	protected Void doInBackground() {
		// This code is executed in a dedicated thread (not EDT)

		try {
			// Removes the patient
			PatientManager.removePatient(id);
		} catch (SQLException exception) {
			// An error occurred
			ErrorManager.notifyError("Se produjo un error en la base de datos.", exception);
		}

		return null;
	}

	protected void done() {
		// This code is executed in the event dispatch thread (EDT)

		// Executes the caller's callback method
		caller.removePatientCallback();
	}

}
