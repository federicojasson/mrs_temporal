package managers;

import java.sql.SQLException;

public class ApplicationManager {

	private static final int EXIT_FAILURE = 1;
	private static final int EXIT_SUCCESS = 0;
	
	public static void exitAbnormally() {
		// Exits the application abnormally
		System.exit(EXIT_FAILURE);
	}
	
	public static void exitNormally() {
		// Exits the application normally
		System.exit(EXIT_SUCCESS);
	}
	
	public static void main(String[] args) {
		// Registers a shutdown hook
		Runtime.getRuntime().addShutdownHook(new Thread() {
      public void run() {
      	onShutdown();
      }
    });
		
		try {
			// Connects with the DBMS
			DbmsManager.connect();
			
			// Opens the log in frame
			GuiManager.openNewFrame(GuiManager.LOG_IN_FRAME);
		} catch (SQLException exception) {
			// An error occurred
			ErrorManager.notifyError(exception);
		}
	}
	
	private static void onShutdown() {
		// Disconnects from the DBMS
		DbmsManager.disconnect();
	}
	
}
