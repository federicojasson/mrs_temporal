package gui;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JPanel;
import managers.GuiManager;

public class UserFrame extends GuiFrame {

	protected JPanel getMainPanel() {
		// TODO
		JPanel mainPanel = new JPanel();
		
		// TODO: debug
		JButton closeButton = new JButton("cerrar");
		closeButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				GuiManager.closeCurrentFrame();
			}
		});
		JButton nextButton = new JButton("siguiente");
		nextButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				GuiManager.openNewFrame(GuiManager.PATIENT_FRAME);
			}
		});
		mainPanel.add(closeButton);
		mainPanel.add(nextButton);
		
		return mainPanel;
	}

	protected String getTitle() {
		// TODO
		return "";
	}

	protected void onClose() {
		GuiManager.closeCurrentFrame();
	}
	
}
