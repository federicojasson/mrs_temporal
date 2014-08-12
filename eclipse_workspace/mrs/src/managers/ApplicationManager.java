package managers;

import java.awt.EventQueue;
import java.sql.SQLException;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

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
		try {
			// Registers a shutdown hook
			Runtime.getRuntime().addShutdownHook(new Thread() {

				public void run() {
					onShutdown();
				}
			});

			try {
				// Sets the GUI LookAndFeel
				UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
			} catch (ClassNotFoundException | IllegalAccessException | InstantiationException | UnsupportedLookAndFeelException exception) {
				// There is nothing to be done
			}

			// Connects with the DBMS
			DbmsManager.connect();

			// Executes this code in the event dispatch thread (EDT)
			EventQueue.invokeLater(new Runnable() {

				public void run() {
					// Opens the log in frame
					GuiManager.openFrame(GuiManager.FRAME_LOG_IN);
				}

			});
		} catch (SQLException exception) {
			// An error occurred
			ErrorManager.notifyError("Se produjo un error en la base de datos.", exception);
		}
	}

	private static void onShutdown() {
		// Disconnects from the DBMS
		DbmsManager.disconnect();
	}

}
