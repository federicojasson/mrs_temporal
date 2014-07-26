package utilities;

import java.nio.charset.Charset;

public class Utility {
	
	private static final char[] HEXADECIMAL_VALUES = "0123456789ABCDEF".toCharArray();
	
	// TODO: debug (remove it before release)
	public static byte[] hexStringToByteArray(String s) {
    int len = s.length();
    byte[] data = new byte[len / 2];
    for (int i = 0; i < len; i += 2) {
        data[i / 2] = (byte) ((Character.digit(s.charAt(i), 16) << 4)
                             + Character.digit(s.charAt(i+1), 16));
    }
    return data;
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

}
