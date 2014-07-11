package entities;

import java.util.ArrayList;
import java.util.List;

public class Patient {
	
	private int id;
	private String name;
	private String dateOfBirth;
	private char gender;
	private String bloodType;
	
	private List<Study> studies_patient;
	
	public Patient(int id, String name, String dateOfBirth, char gender, String bloodType) {
		super();
		this.id = id;
		this.name = name;
		this.dateOfBirth = dateOfBirth;
		this.gender = gender;
		this.studies_patient = new ArrayList<Study>();
		this.bloodType = bloodType;
	}
	
	public Patient(int id, String name, String dateOfBirth, char gender, String bloodType,
			List<Study> studies_patient) {
		super();
		this.id = id;
		this.name = name;
		this.dateOfBirth = dateOfBirth;
		this.gender = gender;
		this.studies_patient = studies_patient;
		this.bloodType = bloodType;
	}

	public List<Study> getStudies_patient() {
		return studies_patient;
	}

	public void setStudies_patient(List<Study> studies_patient) {
		this.studies_patient = studies_patient;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public char getGender() {
		return gender;
	}
	
	public String getBloodType() {
		return bloodType;
	}
	
	public Study addStudy(String observations, String type, String date){
		Study toAdd = new Study(observations, type, date, this.id);
		this.studies_patient.add(toAdd);
		return toAdd;
	}
	
	public void addStudy(Study toAdd){
		this.studies_patient.add(toAdd);
	}
}
