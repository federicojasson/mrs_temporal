package entities;

public enum Gender {

	FEMALE("Femenino", "F".getBytes()),
	MALE("Masculino", "M".getBytes());
	
	public static Gender getConstant(byte[] value) {
		String valueString = new String(value);
		
		switch (valueString) {
			case "F" : return FEMALE;
			case "M" : return MALE;
			default : return null;
		}
	}

	private String label;
	private byte[] value;

	private Gender(String label, byte[] value) {
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
