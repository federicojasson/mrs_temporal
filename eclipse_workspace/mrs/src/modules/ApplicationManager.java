package modules;

public class ApplicationManager {

	private static final int EXIT_FAILURE = 1;
	private static final int EXIT_SUCCESS = 0;
	
	public static void exitAbnormally(String message) {
		printAbnormalTerminationMessage(message);
		System.exit(EXIT_FAILURE);
	}
	
	public static void exitAbnormally(String message, Exception exception) {
		printAbnormalTerminationMessage(message);
		printExceptionDetails(exception);
		System.exit(EXIT_FAILURE);
	}
	
	public static void main(String[] args) {
		System.out.println("Tester");
		
		// TODO: remove tests
		
		/*try {
			byte[] checksum = CryptographyManager.computeFileChecksum(new File("C:/Users/Fede/Desktop/archivo.txt"));
			System.out.println(Utility.bytesToHexadecimal(checksum));
		} catch (IOException e) {
			e.printStackTrace();
		}*/
		
		/*try {
			FileManager.copyStudyFile("550e8400e29b41d4a716446655440001".getBytes(), new File("C:/Users/Fede/Desktop/archivo.txt"));
			//FileManager.copyStudyFile("550e8400e29b41d4a716446655440001".getBytes(), new File("D:/Documents/Desarrollo/En desarrollo/GitHub/mrs_temporal/Wrokspace_MedicalRecordSystem/Client/studies_files/3535/3065/3834/3030/6532/3962/3431/6434/archivo.txt"));
		} catch (IOException e) {
			e.printStackTrace();
		}*/
		
		// Exits the application normally
		System.exit(EXIT_SUCCESS);
	}
	
	private static void printAbnormalTerminationMessage(String message) {
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
	}
	
}
