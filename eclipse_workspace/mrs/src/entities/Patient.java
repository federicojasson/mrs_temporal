package entities;

import java.sql.Date;

public class Patient {
	
	private Date birthDate;
	private byte[] bloodType;
	private byte[] gender;
	private byte[] id;
	private String name;
	
	public Patient(Date birthDate, byte[] bloodType, byte[] gender, byte[] id, String name) {
		this.birthDate = birthDate;
		this.bloodType = bloodType;
		this.gender = gender;
		this.id = id;
		this.name = name;
	}
	
	public Date getBirthDate() {
		return birthDate;
	}
	
	public byte[] getBloodType() {
		return bloodType;
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
