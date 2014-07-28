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
	
	public static BloodType getConstant(byte value) {
		switch (value) {
			case '0' : return O_NEGATIVE;
			case '1' : return O_POSITIVE;
			case '2' : return A_NEGATIVE;
			case '3' : return A_POSITIVE;
			case '4' : return B_NEGATIVE;
			case '5' : return B_POSITIVE;
			case '6' : return AB_NEGATIVE;
			case '7' : return AB_POSITIVE;
			default : return null;
		}
	}

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
