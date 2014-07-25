package workers;

import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import javax.swing.SwingWorker;
import managers.ErrorManager;
import managers.UserManager;

public class LogInUserDoctorWorker extends SwingWorker<Boolean, Void> {
	
	private String id;
	private byte[] password;
	
	public LogInUserDoctorWorker(String id, byte[] password) {
		this.id = id;
		this.password = password;
	}
	
	protected Boolean doInBackground() {
		try {
			// Attempts to log in the user
			return UserManager.logInUserDoctor(id, password);
		} catch (NoSuchAlgorithmException | SQLException exception) {
			// An error occurred
			ErrorManager.notifyError(exception);
			return false;
		}
	}
	
	protected void done() {
		// TODO
	}
	
}