package managers;

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
		// TODO: debug (to get hash out of password and salt)
		/*byte[] password = Utility.charsToBytes(new String("password").toCharArray());
		byte[] salt = Utility.hexStringToByteArray("1F49AC8FC75B199918AB740DCD829606512E443609A6EF34DA6205E7C2B06BF21D069520C5ED7832487075C57B091288A50D0581161014009F8B00558F039269");
		//System.out.println(Utility.bytesToHexadecimal(salt));
		byte[] passwordHash = null;
		try {
			passwordHash = CryptographyManager.computePasswordHash(password, salt);
		} catch (NoSuchAlgorithmException exception) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(Utility.bytesToHexadecimal(passwordHash));*/
		
		try {
			// Registers a shutdown hook
			Runtime.getRuntime().addShutdownHook(new Thread() {
	      public void run() {
	      	onShutdown();
	      }
	    });
			
			// Sets the GUI LookAndFeel
			UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
			
			// Connects with the DBMS
			DbmsManager.connect();
			
			// Opens the log in frame
			GuiManager.openFrame(GuiManager.LOG_IN_FRAME);
		} catch (ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException | UnsupportedLookAndFeelException exception) {
			// An error occurred
			ErrorManager.notifyError(exception);
		}
	}
	
	private static void onShutdown() {
		// Disconnects from the DBMS
		DbmsManager.disconnect();
	}
	
}
