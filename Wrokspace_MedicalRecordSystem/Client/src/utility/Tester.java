package utility;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.UUID;
import modules.DatabaseManager;
import modules.FileManager;

public class Tester {

	public static void main(String[] args) {
		System.out.println("Tester");
		
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
	}

}
