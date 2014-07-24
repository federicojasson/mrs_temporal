package exceptions;

public class ConnectionException extends Exception {

	public ConnectionException() {
		super();
	}

	public ConnectionException(String arg0) {
		super(arg0);
	}

	public ConnectionException(String arg0, Throwable arg1) {
		super(arg0, arg1);
	}

	public ConnectionException(String arg0, Throwable arg1, boolean arg2, boolean arg3) {
		super(arg0, arg1, arg2, arg3);
	}

	public ConnectionException(Throwable arg0) {
		super(arg0);
	}

}
