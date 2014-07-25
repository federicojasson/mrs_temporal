package gui;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JPanel;
import managers.GuiManager;

public class StudyFrame extends GuiFrame {

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
		mainPanel.add(closeButton);
		
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
