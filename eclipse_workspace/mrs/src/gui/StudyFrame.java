package gui;

import javax.swing.JPanel;
import modules.GuiManager;

public class StudyFrame extends GuiFrame {

	protected JPanel getMainPanel() {
		// TODO
		return new JPanel();
	}

	protected String getTitle() {
		// TODO
		return "";
	}

	protected void onClose() {
		GuiManager.onStudyFrameClosed();
	}
	
}
