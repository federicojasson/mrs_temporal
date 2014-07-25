package gui;

import javax.swing.JPanel;
import modules.GuiManager;

public class ErrorFrame extends GuiFrame {
	
	private Exception exception;
	
	public ErrorFrame(Exception exception) {
		this.exception = exception;
	}

	protected JPanel getMainPanel() {
		// TODO
		return new JPanel();
	}

	protected String getTitle() {
		// TODO
		return "";
	}

	protected void onClose() {
		GuiManager.onErrorFrameClosed();
	}
	
}
