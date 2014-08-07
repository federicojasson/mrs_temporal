package entities;

public enum BloodType {

	O_NEGATIVE("O-", "0".getBytes()),
	O_POSITIVE("O+", "1".getBytes()),
	A_NEGATIVE("A-", "2".getBytes()),
	A_POSITIVE("A+", "3".getBytes()),
	B_NEGATIVE("B-", "4".getBytes()),
	B_POSITIVE("B+", "5".getBytes()),
	AB_NEGATIVE("AB-", "6".getBytes()),
	AB_POSITIVE("AB+", "7".getBytes());

	public static BloodType getConstant(byte[] value) {
		String valueString = new String(value);

		switch (valueString) {
			case "0" :
				return O_NEGATIVE;
			case "1" :
				return O_POSITIVE;
			case "2" :
				return A_NEGATIVE;
			case "3" :
				return A_POSITIVE;
			case "4" :
				return B_NEGATIVE;
			case "5" :
				return B_POSITIVE;
			case "6" :
				return AB_NEGATIVE;
			case "7" :
				return AB_POSITIVE;
			default :
				return null;
		}
	}

	private String label;
	private byte[] value;

	private BloodType(String label, byte[] value) {
		this.label = label;
		this.value = value;
	}

	public byte[] getValue() {
		return value;
	}

	public String toString() {
		return label;
	}

}
