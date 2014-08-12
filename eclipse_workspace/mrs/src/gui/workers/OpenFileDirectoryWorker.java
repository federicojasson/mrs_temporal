package gui.workers;

import java.io.File;
import java.io.IOException;
import javax.swing.SwingWorker;
import managers.FileManager;

public class OpenFileDirectoryWorker extends SwingWorker<Void, Void> {

	private OpenFileDirectoryCaller caller;
	private File file;

	public OpenFileDirectoryWorker(OpenFileDirectoryCaller caller, File file) {
		this.caller = caller;
		this.file = file;
	}

	protected Void doInBackground() {
		// This code is executed in a dedicated thread (not EDT)

		try {
			// Opens the file's directory
			FileManager.openFileDirectory(file);
		} catch (IOException exception) {
			// There is nothing to be done
		}

		return null;
	}

	protected void done() {
		// This code is executed in the event dispatch thread (EDT)

		// Executes the caller's callback method
		caller.onOpenFileDirectorySuccess();
	}

}
