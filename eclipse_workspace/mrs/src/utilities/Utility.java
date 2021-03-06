package utilities;

import java.nio.charset.Charset;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Arrays;

public class Utility {

	private static final char[] HEXADECIMAL_VALUES = "0123456789ABCDEF".toCharArray();

	private static SimpleDateFormat dateFormatter;
	private static SimpleDateFormat timestampFormatter;

	static {
		dateFormatter = new SimpleDateFormat("dd/MM/yyyy");
		timestampFormatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
	}

	public static boolean areEqual(byte[] b1, byte[] b2) {
		return Arrays.equals(b1, b2);
	}

	public static String bytesToHexadecimal(byte[] bytes) {
		char[] chars = new char[2 * bytes.length];

		for (int i = 0; i < bytes.length; ++i) {
			int value = bytes[i] & 0xFF;
			chars[2 * i] = HEXADECIMAL_VALUES[value >>> 4]; // Most significant bits
			chars[2 * i + 1] = HEXADECIMAL_VALUES[value & 0x0F]; // Least significant bits
		}

		return new String(chars);
	}

	public static byte[] charsToBytes(char[] chars) {
		return new String(chars).getBytes(Charset.forName("UTF-8"));
	}

	public static byte[] concatenateBytes(byte[] b1, byte[] b2) {
		byte[] b3 = new byte[b1.length + b2.length];

		System.arraycopy(b1, 0, b3, 0, b1.length);
		System.arraycopy(b2, 0, b3, b1.length, b2.length);

		return b3;
	}

	public static String formatDate(Date date) {
		return dateFormatter.format(date);
	}

	public static String formatTimestamp(Timestamp timestamp) {
		return timestampFormatter.format(timestamp);
	}

}
