package entities;

public class PatientSummary {
	
	private byte[] gender;
	private byte[] id;
	private String name;
	
	public PatientSummary(byte[] gender, byte[] id, String name) {
		this.gender = gender;
		this.id = id;
		this.name = name;
	}
	
	public byte[] getGender() {
		return gender;
	}
	
	public byte[] getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	
}
