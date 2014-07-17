package entities;

import java.util.ArrayList;
import java.util.List;

import entitiesManagers.UsersManager;

public class Study {
	
	private int id;
	private String type;
	private String date;
	
	private int patient_id;
	
	public Study(int id, String type, String date, int patient_id) {
		this.id = id;
		this.type = type;
		this.patient_id = patient_id;
		this.date = date;
	}
	
	public Study(String type, String date, int patient_id) {
		this.id = -1;
		this.type = type;
		this.patient_id = patient_id;
		this.date = date;
	}

	public String getObservations() {
		return UsersManager.getInstance().getStudyManager().getObservations(this.id);
	}

	public void setObservations(String observations) {
		UsersManager.getInstance().getStudyManager().setObservations(this.id, observations);
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
		return UsersManager.getInstance().getStudyManager().getFiles(this.id);
	}

	public int getPatient_id() {
		return patient_id;
	}
	
	public void addFile(String file){
		UsersManager.getInstance().getStudyManager().addFile(this.id, file);
	}
	
	public void removeFile(String file){
		UsersManager.getInstance().getStudyManager().removeFile(this.id, file);
	}

}
