package gui;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JPanel;
import managers.GuiManager;

public class AddPatientFrame extends GuiFrame {
	
	protected JPanel getMainPanel() {
		JButton buttonCancel = new JButton("Cancelar");
		buttonCancel.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				onCancel();
			}
		});
		
		JButton buttonAddPatient = new JButton("Ingresar paciente");
		buttonAddPatient.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				onAddPatient();
			}
		});
		
		// TODO
		JPanel mainPanel = new JPanel();
		
		return mainPanel;
	}

	protected String getTitle() {
		return "MRS - Ingresar paciente";
	}
	
	private void onAddPatient() {
		// TODO
	}
	
	private void onCancel() {
		// Closes the current frame
		GuiManager.closeCurrentFrame();
	}
	
}
