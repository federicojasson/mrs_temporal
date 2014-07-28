package gui;

import gui.components.GuiFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import managers.ErrorManager;

public class ErrorFrame extends GuiFrame {
	
	private String errorDetails;
	
	public void initialize() {
		errorDetails = ErrorManager.getErrorDetails();
		super.initialize();
	}
	
	protected JPanel getMainPanel() {
		
		JTextArea errorDetailsField = new JTextArea();
		errorDetailsField.setText(errorDetails);
		errorDetailsField.setEditable(false);
		
		JScrollPane errorDetailsFieldContainer = new JScrollPane();
		errorDetailsFieldContainer.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		errorDetailsFieldContainer.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED);
		errorDetailsFieldContainer.setViewportView(errorDetailsField);
		
		// TODO
		JPanel panelMain = new JPanel();
		panelMain.add(errorDetailsFieldContainer);
		
		return panelMain;
	}

	protected String getTitle() {
		return "MRS - Error";
	}
	
}
