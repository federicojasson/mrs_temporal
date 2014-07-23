package modules;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.sql.SQLException;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;

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
		
		// TODO: remove this
		/*try {
			String checksum = FileManager.computeFileChecksum(new File("C:/Users/Fede/Desktop/archivo.txt"));
			System.out.println(checksum);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		/*try {
			FileManager.copyStudyFile("550e8400e29b41d4a716446655440001", new File("C:/Users/Fede/Desktop/archivo.txt"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		/*
		DatabaseManager databaseManager = new DatabaseManager();

		try {
			databaseManager.connect();

			databaseManager.startTransaction();

			UUID checksum;

			checksum = Utility.generateUUID();
			databaseManager.insertStudyFile(Utility.UUIDToString(checksum), "archivo_prueba4.txt", "9C3F374D8ED2443282C21AFD974C4A96");

			checksum = Utility.generateUUID();
			databaseManager.insertStudyFile(Utility.UUIDToString(checksum), "archivo_prueba5.txt", "9C3F374D8ED2443282C21AFD974C4A96");

			databaseManager.deleteStudyFile("archivo_prueba4.txt", "9C3F374D8ED2443282C21AFD974C4A96");

			databaseManager.commitTransaction();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
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
