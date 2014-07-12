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

	public String getObservations() {
		return observations;
	}

	public void setObservations(String observations) {
		this.observations = observations;
	}

	public int getId() {
		return id;
	}

	public String getType() {
		return type;
	}

	public String getDate() {
		return date;
	}

	public List<String> getFiles() {
		return files;
	}

	public int getPatient_id() {
		return patient_id;
	}
	
	public void addFile(String file){
		this.files.add(file);
	}
	
	public void removeFile(String file){
		this.files.remove(file);
	}

}
