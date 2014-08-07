package gui.workers;

import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.util.concurrent.ExecutionException;
import javax.swing.SwingWorker;
import managers.ErrorManager;
import managers.UserManager;

public class LogInUserDoctorWorker extends SwingWorker<Boolean, Void> {

	private LogInUserDoctorCaller caller;
	private String id;
	private byte[] password;

	public LogInUserDoctorWorker(LogInUserDoctorCaller caller, String id, byte[] password) {
		this.caller = caller;
		this.id = id;
		this.password = password;
	}

	protected Boolean doInBackground() {
		// This code is executed in a dedicated thread (not EDT)

		try {
			// Attempts to log in the user
			return UserManager.logInUserDoctor(id, password);
		} catch (NoSuchAlgorithmException exception) {
			// An error occurred
			ErrorManager.notifyError("El sistema no implementa un algoritmo necesario para la ejecución.", exception);
			return false;
		} catch (SQLException exception) {
			// An error occurred
			ErrorManager.notifyError("Se produjo un error en la base de datos.", exception);
			return false;
		}
	}

	protected void done() {
		// This code is executed in the event dispatch thread (EDT)

		try {
			// Executes the caller's callback method
			caller.logInUserDoctorCallback(get());
		} catch (ExecutionException | InterruptedException exception) {
			// There is nothing to be done
		}
	}

}
