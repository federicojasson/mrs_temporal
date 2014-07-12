package exceptions;

public class UserPasswordException extends Exception {

	public UserPasswordException() {
		super();
	}

	public UserPasswordException(String message, Throwable cause,
			boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public UserPasswordException(String message, Throwable cause) {
		super(message, cause);
	}

	public UserPasswordException(String message) {
		super(message);
	}

	public UserPasswordException(Throwable cause) {
		super(cause);
	}

}
