package gui.workers;

import java.sql.Date;
import java.sql.SQLException;
import javax.swing.SwingWorker;
import managers.ErrorManager;
import managers.PatientManager;

public class AddPatientWorker extends SwingWorker<Void, Void> {

	private Date birthDate;
	private byte[] bloodType;
	private AddPatientCaller caller;
	private byte[] gender;
	private String name;
	private String observations;

	public AddPatientWorker(AddPatientCaller caller, Date birthDate, byte[] bloodType, byte[] gender, String name, String observations) {
		this.birthDate = birthDate;
		this.bloodType = bloodType;
		this.caller = caller;
		this.gender = gender;
		this.name = name;
		this.observations = observations;
	}

	protected Void doInBackground() {
		// This code is executed in a dedicated thread (not EDT)

		try {
			// Adds the patient
			PatientManager.addPatient(birthDate, bloodType, gender, name, observations);
		} catch (SQLException exception) {
			// An error occurred
			ErrorManager.notifyError("Se produjo un error en la base de datos.", exception);
		}

		return null;
	}

	protected void done() {
		// This code is executed in the event dispatch thread (EDT)

		// Executes the caller's callback method
		caller.addPatientCallback();
	}

}
