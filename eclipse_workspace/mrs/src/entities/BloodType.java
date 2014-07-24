package entities;

public enum BloodType {

	O_NEGATIVE("O-", (byte) '0'),
	O_POSITIVE("O+", (byte) '1'),
	A_NEGATIVE("A-", (byte) '2'),
	A_POSITIVE("A+", (byte) '3'),
	B_NEGATIVE("B-", (byte) '4'),
	B_POSITIVE("B+", (byte) '5'),
	AB_NEGATIVE("AB-", (byte) '6'),
	AB_POSITIVE("AB+", (byte) '7');

	private String label;
	private byte value;

	private BloodType(String label, byte value) {
		this.label = label;
		this.value = value;
	}
	
	public byte getValue() {
		return value;
	}

	public String toString() {
		return label;
	}

}
