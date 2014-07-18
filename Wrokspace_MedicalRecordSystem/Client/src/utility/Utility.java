package utility;

import java.util.UUID;

public class Utility {

	// TODO
	/*
	 * public static String dateToString(Date date) { Calendar calendar =
	 * Calendar.getInstance(); calendar.setTime(date); int year =
	 * calendar.get(Calendar.YEAR); int month = calendar.get(Calendar.MONTH) + 1;
	 * int day = calendar.get(Calendar.DAY_OF_MONTH); String yearString = new
	 * DecimalFormat("0000").format(year); String monthString = new
	 * DecimalFormat("00").format(month); String dayString = new
	 * DecimalFormat("00").format(day); return yearString + "-" + monthString +
	 * "-" + dayString; }
	 */

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
