package entities;

public class AuthenticationData {

	private byte[] passwordHash;
	private byte[] salt;

	public AuthenticationData(byte[] passwordHash, byte[] salt) {
		this.passwordHash = passwordHash;
		this.salt = salt;
	}

	public byte[] getPasswordHash() {
		return passwordHash;
	}

	public byte[] getSalt() {
		return salt;
	}

}
