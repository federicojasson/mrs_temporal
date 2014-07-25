package gui;

import javax.swing.JPanel;
import utilities.Utility;
import managers.PatientManager;

public class PatientFrame extends GuiFrame {
	
	private String hexadecimalPatientId;
	
	public void initialize() {
		hexadecimalPatientId = Utility.bytesToHexadecimal(PatientManager.getCurrentPatientId());
		super.initialize();
	}
	
	protected JPanel getMainPanel() {
		// TODO
		JPanel mainPanel = new JPanel();
		
		return mainPanel;
	}

	protected String getTitle() {
		return "MRS - Paciente (" + hexadecimalPatientId + ")";
	}
	
}
