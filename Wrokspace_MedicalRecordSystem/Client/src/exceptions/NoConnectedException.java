package exceptions;

public class NoConnectedException extends Exception{

	public NoConnectedException() {
		super();
	}

	public NoConnectedException(String message, Throwable cause,
			boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public NoConnectedException(String message, Throwable cause) {
		super(message, cause);
	}

	public NoConnectedException(String message) {
		super(message);
	}

	public NoConnectedException(Throwable cause) {
		super(cause);
	}

}
