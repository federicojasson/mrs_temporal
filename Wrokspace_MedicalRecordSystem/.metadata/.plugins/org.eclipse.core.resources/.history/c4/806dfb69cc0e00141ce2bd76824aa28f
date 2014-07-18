package entities;

import java.util.List;
import entitiesManagers.StudyManager;
import entitiesManagers.UsersManager;
import exceptions.NoConnectedException;

public class Patient {
	
	private int id;
	private String name;
	private String dateOfBirth;
	private char gender;
	private String bloodType;
	
	public Patient() {
		this.id = - 1;
		this.name = "";
		this.dateOfBirth = "";
		this.gender = 'm';
		this.bloodType = "0-";
	}
	
	public Patient(int id, String name, String dateOfBirth, char gender, String bloodType) {
		this.id = id;
		this.name = name;
		this.dateOfBirth = dateOfBirth;
		this.gender = gender;
		this.bloodType = bloodType;
	}
	
	public Patient(String name, String dateOfBirth, char gender, String bloodType) {
		this.id = - 1;
		this.name = name;
		this.dateOfBirth = dateOfBirth;
		this.gender = gender;
		this.bloodType = bloodType;
	}

	public Study addStudy(String observations, String type, String date) throws NoConnectedException {
		Study toAdd = new Study(type, date, this.id);
		toAdd.setObservations(observations);
		
		StudyManager manager = UsersManager.getInstance().getStudyManager();
		
		manager.saveStudy(toAdd);
		
		return toAdd;
	}
	
	public void addStudy(Study toAdd) throws NoConnectedException {
		StudyManager manager = UsersManager.getInstance().getStudyManager();
		
		manager.saveStudy(toAdd);
	}

	public String getBloodType() {
		return bloodType;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public char getGender() {
		return gender;
	}

	public int getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	
	public List<Study> getStudies_patient() throws NoConnectedException {
		StudyManager manager = UsersManager.getInstance().getStudyManager();
		
		return manager.getPatientStudies(this);
	}
	
	public List<Study> searchStudy(String criteria, String field) throws NoConnectedException {
		StudyManager manager = UsersManager.getInstance().getStudyManager();
		
		return manager.searchPatientStudies(this, criteria, field);
	}
}
