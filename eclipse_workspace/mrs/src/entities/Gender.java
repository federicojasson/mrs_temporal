package entities;

public enum Gender {

	FEMALE("Femenino", (byte) 'F'),
	MALE("Masculino", (byte) 'M');
	
	public static Gender getConstant(byte value) {
		switch (value) {
			case 'F' : return FEMALE;
			case 'M' : return MALE;
			default : return null;
		}
	}

	private String label;
	private byte value;

	private Gender(String label, byte value) {
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
