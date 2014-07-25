package gui;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
import utilities.Utility;
import workers.LogInUserDoctorWorker;
import managers.GuiManager;

public class LogInFrame extends GuiFrame {
	
	private JButton exitButton;
	private JTextField idField;
	private JButton logInUserDoctorButton;
	private JPasswordField passwordField;

	protected JPanel getMainPanel() {
		// TODO
		
		idField = new JTextField();
		passwordField = new JPasswordField();
		
		exitButton = new JButton("Salir");
		
		exitButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				onExit();
			}
		});
		
		logInUserDoctorButton = new JButton("Ingresar");
		
		logInUserDoctorButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				onLogInUserDoctor();
			}
		});
		
		JPanel mainPanel = new JPanel();
		mainPanel.add(idField);
		mainPanel.add(passwordField);
		mainPanel.add(exitButton);
		mainPanel.add(logInUserDoctorButton);
		
		return mainPanel;
	}

	protected String getTitle() {
		return "MRS - Ingresar";
	}
	
	private void onExit() {
		GuiManager.closeCurrentFrame();
	}
	
	private void onLogInUserDoctor() {
		// TODO: gui actions (like disabling buttons and textfields)
		
		// Gets user ID and password
		String id = idField.getText();
		byte[] password = Utility.charsToBytes(passwordField.getPassword());
		
		// Performs the task in a worker thread
		LogInUserDoctorWorker worker = new LogInUserDoctorWorker(id, password);
		worker.execute();
		
		// TODO: get response
	}
	
}
