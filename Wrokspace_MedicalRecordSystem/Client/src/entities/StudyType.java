package entities;

public class StudyType {

	private String description;
	private String id;

	public StudyType(String description, String id) {
		this.description = description;
		this.id = id;
	}

	public String getId() {
		return id;
	}

	public String toString() {
		return description;
	}

}
