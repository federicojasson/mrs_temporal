package managers;

public class ErrorManager {
	
	private static Exception currentException;
	
	public static Exception getCurrentException() {
		return currentException;
	}
	
	public static void notifyError(Exception exception) {
		// Sets the exception as the current one
		currentException = exception;
		
		// Prints error details
		printErrorDetails();
		
		// Opens an error frame
		GuiManager.openNewFrame(GuiManager.ERROR_FRAME);
	}
	
	private static void printErrorDetails() {
		System.err.println("An error ocurred");
		System.err.println();
		System.err.println("Details");
		System.err.println("--------------------------------");
		currentException.printStackTrace();
	}
	
}