package managers;

import java.io.PrintWriter;
import java.io.StringWriter;

public class ErrorManager {
	
	private static Exception currentException;
	
	public static String getErrorDetails() {
		// Initializes the buffer
		StringWriter stringWriter = new StringWriter();
		PrintWriter printWriter = new PrintWriter(stringWriter);
		
		// Prints the error details into the buffer
		currentException.printStackTrace(printWriter);
		String errorDetails = stringWriter.toString();
		
		// Closes the buffer
		printWriter.close();
		
		return errorDetails;
	}
	
	public static void notifyError(Exception exception) {
		// Sets the exception as the current one
		currentException = exception;
		
		// Prints the error details
		printErrorDetails();
		
		// Opens an error frame
		GuiManager.openNewFrame(GuiManager.ERROR_FRAME);
	}
	
	private static void printErrorDetails() {
		System.err.println("An error ocurred");
		System.err.println();
		System.err.println("Details");
		System.err.println("--------------------------------");
		System.err.println(getErrorDetails());
	}
	
}
