package modules;

import java.sql.SQLException;
import utility.Utility;

public class ApplicationManager {

	private static final int EXIT_FAILURE = 1;
	private static final int EXIT_SUCCESS = 0;
	
	// TODO
	/*public static void exitAbnormally(String message) {
		// Prints error messages
		printAbnormalTerminationMessage(message);
		
		// Exits the application abnormally
		System.exit(EXIT_FAILURE);
	}
	
	public static void exitAbnormally(String message, Exception exception) {
		// Prints error messages
		printAbnormalTerminationMessage(message);
		printExceptionDetails(exception);
		
		// Exits the application abnormally
		System.exit(EXIT_FAILURE);
	}*/
	
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
			GuiManager.openLogInFrame();
		} catch (SQLException exception) {
			// An error occurred
			notifyError(exception);
		}
	}
	
	public static void notifyError(Exception exception) {
		// Prints error details
		System.err.println("An error ocurred");
		System.err.println();
		System.err.println("Details");
		System.err.println("--------------------------------");
		exception.printStackTrace();
		
		// Opens an error frame
		GuiManager.openErrorFrame(exception);
	}
	
	private static void onShutdown() {
		// Disconnects from the DBMS
		DbmsManager.disconnect();
	}
	
	// TODO
	/*private static void printAbnormalTerminationMessage(String message) {
		System.err.println("Abnormal termination");
		System.err.println("--------------------------------");
		System.err.println(message);
		System.err.println();
	}
	
	private static void printExceptionDetails(Exception exception) {
		System.err.println("Exception details");
		System.err.println("--------------------------------");
		exception.printStackTrace();
		System.err.println();
	}*/
	
}