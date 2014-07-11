package entities;

import java.util.ArrayList;
import java.util.List;

public class Study {
	
	private int id;
	private String observations;
	private String type;
	private String date;
	private List<String> files;
	
	private int patient_id;
	
	public Study(int id, String observations, String type, String date, List<String> files, int patient_id) {
		this.id = id;
		this.observations = observations;
		this.type = type;
		this.patient_id = patient_id;
		this.files = files;
		this.date = date;
	}
	
	public Study(String observations, String type, String date, int patient_id) {
		this.id = -1;
		this.observations = observations;
		this.type = type;
		this.patient_id = patient_id;
		this.files = new ArrayList<String>();
		this.date = date;
	}
	
	public String getDate() {
		return date;
	}

	public void addFile(String file){
		this.files.add(file);
	}

	public List<String> getFiles() {
		return files;
	}

	public void setFiles(List<String> files) {
		this.files = files;
	}

	public String getObservations() {
		return observations;
	}

	public void setObservations(String observations) {
		this.observations = observations;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getPatient_id() {
		return patient_id;
	}

	public void setPatient_id(int patient_id) {
		this.patient_id = patient_id;
	}

	public int getId() {
		return id;
	}
}
