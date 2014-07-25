package gui;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
import utility.Utility;
import workers.LogInUserDoctorWorker;
import modules.GuiManager;

public class LogInFrame extends GuiFrame {
	
	private JButton exitButton;
	private JTextField idField;
	private JButton logInUserDoctorButton;
	private JPasswordField passwordField;

	protected JPanel getMainPanel() {
		// TODO
		
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
		
		// TODO
		return new JPanel();
	}

	protected String getTitle() {
		// TODO
		return "";
	}

	protected void onClose() {
		GuiManager.onLogInFrameClosed();
	}
	
	private void onExit() {
		close();
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
