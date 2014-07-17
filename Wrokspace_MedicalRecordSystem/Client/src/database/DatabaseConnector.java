package database;

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
	
	private String server_ip;
	private int server_port;

	public DatabaseConnector(String username, String password) throws UserPasswordException, ConnectionException{
		
	}

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
