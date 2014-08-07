package entities;

import java.sql.Date;

public class StudySummary {

	private Date date;
	private byte[] id;
	private String studyTypeDescription;

	public StudySummary(Date date, byte[] id, String studyTypeDescription) {
		this.date = date;
		this.id = id;
		this.studyTypeDescription = studyTypeDescription;
	}

	public Date getDate() {
		return date;
	}

	public byte[] getId() {
		return id;
	}

	public String getStudyTypeDescription() {
		return studyTypeDescription;
	}

}
