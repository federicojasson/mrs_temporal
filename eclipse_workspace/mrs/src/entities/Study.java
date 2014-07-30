package entities;

import java.sql.Date;

public class Study {
	
	private Date date;
	private byte[] id;
	private String observations;
	
	public Study(Date date, byte[] id, String observations) {
		this.date = date;
		this.id = id;
		this.observations = observations;
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
	
}
