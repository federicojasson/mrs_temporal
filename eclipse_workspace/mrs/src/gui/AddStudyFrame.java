package gui;

import gui.components.GuiFrame;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JPanel;
import managers.GuiManager;

public class AddStudyFrame extends GuiFrame {
	
	protected JPanel getMainPanel() {
		JButton buttonCancel = new JButton("Cancelar");
		buttonCancel.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onCancel();
			}
		});
		
		JButton buttonAddStudy = new JButton("Ingresar estudio");
		buttonAddStudy.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onAddStudy();
			}
		});
		
		// TODO
		JPanel panelMain = new JPanel();
		
		return panelMain;
	}

	protected String getTitle() {
		return "MRS - Ingresar paciente";
	}
	
	private void onAddStudy() {
		// TODO
	}
	
	private void onCancel() {
		// Closes the current frame
		GuiManager.closeCurrentFrame();
	}
	
}
