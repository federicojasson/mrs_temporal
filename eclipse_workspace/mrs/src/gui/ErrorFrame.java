package gui;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JPanel;
import managers.ApplicationManager;
import managers.GuiManager;

public class ErrorFrame extends GuiFrame {

	protected JPanel getMainPanel() {
		// TODO
		// TODO: use ErrorManager.getCurrentException() to get the exception
		
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
		return "MRS - Error";
	}

	protected void onClose() {
		GuiManager.closeCurrentFrame();
	}
	
}
