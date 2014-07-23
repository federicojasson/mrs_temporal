package entities;

import java.sql.Date;

public class StudySummary {

	private Date date;
	private byte[] id;
	private StudyType studyType;

	public StudySummary(Date date, byte[] id, StudyType studyType) {
		this.date = date;
		this.id = id;
		this.studyType = studyType;
	}
	
	public Date getDate() {
		return date;
	}
	
	public byte[] getId() {
		return id;
	}
	
	public StudyType getStudyType() {
		return studyType;
	}

}
