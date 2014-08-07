package entities;

public class StudyType {

	private String description;
	private byte[] id;

	public StudyType(String description, byte[] id) {
		this.description = description;
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public byte[] getId() {
		return id;
	}

	public String toString() {
		return description;
	}

}
