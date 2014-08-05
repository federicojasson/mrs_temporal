package gui.workers;

import java.sql.SQLException;
import java.util.concurrent.ExecutionException;
import javax.swing.SwingWorker;
import entities.Patient;
import managers.ErrorManager;
import managers.PatientManager;

public class GetPatientWorker extends SwingWorker<Patient, Void> {
	
	private GetPatientCaller caller;
	
	public GetPatientWorker(GetPatientCaller caller) {
		this.caller = caller;
	}
	
	protected Patient doInBackground() {
		// This code is executed in a dedicated thread (not EDT)
		
		try {
			// Gets the patient
			return PatientManager.getPatient();
		} catch (SQLException exception) {
			// An error occurred
			ErrorManager.notifyError(exception);
			return null;
		}
	}
	
	protected void done() {
		// This code is executed in the event dispatch thread (EDT)
		
		try {
			// Executes the caller's callback method
			caller.getPatientCallback(get());
		} catch (ExecutionException | InterruptedException exception) {
			// An error occurred
			ErrorManager.notifyError(exception);
		}
	}
	
}
