package entities;

import java.sql.Date;

public class Study {
	
	private Date date;
	private byte[] id;
	private String observations;
	private String studyTypeDescription;
	
	public Study(Date date, byte[] id, String observations, String studyTypeDescription) {
		this.date = date;
		this.id = id;
		this.observations = observations;
		this.studyTypeDescription = studyTypeDescription;
	}
	
	public Date getDate() {
		return date;
	}
	
	public byte[] getId() {
		return id;
	}
	
	public String getObservations() {
		return observations;
	}
	
	public String getStudyTypeDescription() {
		return studyTypeDescription;
	}
	
}
