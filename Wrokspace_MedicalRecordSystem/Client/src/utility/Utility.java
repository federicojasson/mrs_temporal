package utility;

import java.util.UUID;

public class Utility {
	
	public static UUID generateUUID() {
		// TODO: maybe use a dedicated library (true randomness is important)
		return UUID.randomUUID();
	}
	
	public static String UUIDToString(UUID uuid) {
		long mostSignificantBits = uuid.getMostSignificantBits();
		long leastSignificantBits = uuid.getLeastSignificantBits();
		
		return Long.toHexString(mostSignificantBits) + Long.toHexString(leastSignificantBits);
	}
	
}