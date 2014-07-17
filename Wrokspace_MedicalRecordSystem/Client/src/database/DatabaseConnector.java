package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import entities.Patient;
import entities.Study;
import entitiesManagers.PatientManager;
import entitiesManagers.StudyManager;
import exceptions.ConnectionException;
import exceptions.NoConnectedException;
import exceptions.UserPasswordException;

public class DatabaseConnector implements PatientManager, StudyManager{
	
	private String server_ip = "localhost";
	private int server_port = -1;
	private String database_name = "mrs_db";
	
	private boolean debug = true;
	private void log(String message){
		if(debug)
			System.out.println(message);
	}
	
	private Connection connection = null;
	
	public DatabaseConnector() throws UserPasswordException, ConnectionException{
		this("root", "");
	}

	public DatabaseConnector(String username, String password) throws UserPasswordException, ConnectionException{
		try
		{
			log("Registro de driver");
			Class.forName("com.mysql.jdbc.Driver");

			String url = "jdbc:mysql:"+server_ip;
			if(server_port != -1){
				url += ":"+server_port;
			}
			url += "/"+database_name;
			
			log("Intento de conexión a la db: "+url);
			connection = DriverManager.getConnection (url,username, password);
			log("Conectado con la DB");
		} catch (SQLException e) {
			e.printStackTrace();
			throw new ConnectionException(e.getMessage());
		} catch (Exception e){
			e.printStackTrace();
			throw new ConnectionException(e.getMessage());
		}
	}
	
	/*
	 * (non-Javadoc)
	 * @see entitiesManagers.StudyManager#getPatientStudies(entities.Patient)
	 * 
	 * Para crear una statement a la db:
	 * Statement st = connection.createStatement();
	 * 
	 * Para ejecutar un update (cualquier cosa que modifique la db):
	 * st.executeUpdate(<<SQL DE UN UPDATE O ALGO QUE NO DEVUELVA NADA>>);
	 * 
	 * Para ejecutar un query (cosas que traigan resultados):
	 * ResultSet rs = st.executeQuery(<<SQL QUERY>>); 
	 * while (rs.next()){
	 * 	//ALGO QUE HAGAS A CADA LÍNEA DEL RESULTADO
	 * 	//POR EJEMPLO
	 * 	System.out.println("nombre="+rs.getObject("nombre")); //Hay getInt() y varios más
	 * 	//DONDE nombre ES EL NOMBRE DEL CAMPO
	 * }
	 * rs.close();
	 * 
	 * Siempre al final hay que cerrar el statement:
	 * st.close();
	 */

	public List<Study> getPatientStudies(Patient patient)
			throws NoConnectedException {
		// TODO Auto-generated method stub
		
		List<Study> toReturn = new ArrayList<Study>();
		
		for(int i = 0; i < 100; i++){
			Study current = new Study("Test", "12/30/2013", patient.getId());
			current.setObservations("Estudio de prueba "+i);
			
			Random r = new Random();
			int cant = r.nextInt() % 21;
			for(int j = 0; j < cant; j++){
				current.addFile("Archivo "+j);
			}
			
			toReturn.add(current);
		}
		
		return toReturn;
	}

	public List<Study> searchPatientStudies(Patient patient,
			String searchCriteria, String field) throws NoConnectedException {
		// TODO Auto-generated method stub
		
		List<Study> toReturn = new ArrayList<Study>();
		
		for(int i = 0; i < 100; i++){
			Study current = new Study("Test", "12/30/2013", patient.getId());
			current.setObservations("Estudio de prueba "+i);
			
			Random r = new Random();
			int cant = r.nextInt() % 21;
			for(int j = 0; j < cant; j++){
				current.addFile("Archivo "+j);
			}
			
			toReturn.add(current);
		}
		
		return toReturn;
	}

	public void saveStudy(Study study) throws NoConnectedException {
		// TODO Auto-generated method stub
		
	}

	public List<Patient> searchPatient(String searchCriteria, String field)
			throws NoConnectedException {
		// TODO Auto-generated method stub
		
		List<Patient> toReturn = new ArrayList<Patient>();
		
		for(int i = 0; i < 100; i++){
			Patient test = new Patient(1000, "Paciente de Prueba "+i, "02/03/1956", 'm', "0+");
			toReturn.add(test);
		}
		
		return toReturn;
	}

	public void savePatient(Patient patient) throws NoConnectedException {
		// TODO Auto-generated method stub
		
	}

	public List<String> getStudyTypes() throws NoConnectedException {
		// TODO Auto-generated method stub
		List<String> lista = new ArrayList<String>();
		
		for(int i = 0; i < 4; i++){
			lista.add("Tipo de estudio "+i);
		}
		
		return lista;
	}
	
	
	//////////////////////////////////AGREGUE ESTOS MÉTODOSSSS!!!!!!!!!!!!!!!!!!
	
	public String getObservations(int study_id){
		//TODO
		return "holaaolsosakjdklsajdlj ";
	}
	
	public void setObservations(int study_id, String observations){
		//TODO
	}
	
	public List<String> getFiles(int study_id){
		//TODO
		return new ArrayList<String>();
	}
	
	public void addFile(int study_id, String file){
		//TODO
	}

	@Override
	public void removeFile(int id, String file) {
		// TODO Auto-generated method stub
		
	}
}
