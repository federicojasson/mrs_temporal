package entities;

import java.sql.Date;

public class StudySummary {

	private Date date;
	private String observations;
	private StudyType type;

	public StudySummary(Date date, String observations, StudyType type) {
		this.date = date;
		this.observations = observations;
		this.type = type;
	}

}
