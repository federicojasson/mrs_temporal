package entities;

import java.sql.Timestamp;

public class StudyHistory {

	private Timestamp datetime;
	private String modification;

	public StudyHistory(Timestamp datetime, String modification) {
		this.datetime = datetime;
		this.modification = modification;
	}

	public Timestamp getDatetime() {
		return datetime;
	}

	public String getModification() {
		return modification;
	}

}
