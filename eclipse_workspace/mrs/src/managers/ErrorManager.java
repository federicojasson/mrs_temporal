package managers;

import java.io.PrintWriter;
import java.io.StringWriter;

public class ErrorManager {

	private static String errorDetails;
	private static String errorMessage;

	public static String getErrorDetails() {
		return errorDetails;
	}

	public static String getErrorMessage() {
		return errorMessage;
	}

	public static void notifyError(String errorMessage, Exception exception) {
		// Saves the error message
		ErrorManager.errorMessage = errorMessage;

		// Computes the error details
		errorDetails = computeErrorDetails(exception);

		// Prints the error
		printError();

		// Opens an error frame
		GuiManager.openFrame(GuiManager.ERROR_FRAME);
	}

	private static String computeErrorDetails(Exception exception) {
		// Initializes the buffer
		StringWriter stringWriter = new StringWriter();
		PrintWriter printWriter = new PrintWriter(stringWriter);

		// Prints the error details into the buffer
		exception.printStackTrace(printWriter);
		String errorDetails = stringWriter.toString();

		// Closes the buffer
		printWriter.close();

		return errorDetails;
	}

	private static void printError() {
		System.err.println(errorMessage);
		System.err.println("La aplicación no puede continuar.");
		System.err.println();
		System.err.println("Detalles");
		System.err.println("--------------------------------");
		System.err.println(errorDetails);
	}

}
