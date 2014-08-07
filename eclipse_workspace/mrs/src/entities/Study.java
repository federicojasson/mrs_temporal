package entities;

import java.sql.Date;

public class Study {

	private String causes;
	private Date date;
	private String diagnosis;
	private byte[] id;
	private String indications;
	private String observations;
	private String studyTypeDescription;

	public Study(String causes, Date date, String diagnosis, byte[] id, String indications, String observations, String studyTypeDescription) {
		this.causes = causes;
		this.date = date;
		this.diagnosis = diagnosis;
		this.id = id;
		this.indications = indications;
		this.observations = observations;
		this.studyTypeDescription = studyTypeDescription;
	}

	public String getCauses() {
		return causes;
	}

	public Date getDate() {
		return date;
	}

	public String getDiagnosis() {
		return diagnosis;
	}

	public byte[] getId() {
		return id;
	}

	public String getIndications() {
		return indications;
	}

	public String getObservations() {
		return observations;
	}

	public String getStudyTypeDescription() {
		return studyTypeDescription;
	}

}
