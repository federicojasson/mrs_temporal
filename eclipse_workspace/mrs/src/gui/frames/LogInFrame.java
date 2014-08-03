package gui.frames;

import gui.workers.LogInUserDoctorCaller;
import gui.workers.LogInUserDoctorWorker;
import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import com.jgoodies.forms.factories.FormFactory;
import com.jgoodies.forms.layout.ColumnSpec;
import com.jgoodies.forms.layout.FormLayout;
import com.jgoodies.forms.layout.RowSpec;
import utilities.Utility;
import managers.GuiManager;

// TODO: validate input
public class LogInFrame extends GuiFrame {
	
	private JTextField fieldId;
	private JPasswordField fieldPassword;

	protected JPanel getMainPanel() {
		ImageIcon iconLabelLogo = new ImageIcon(getClass().getResource("/images/logo.png"));
		
		JLabel labelLogo = new JLabel(iconLabelLogo);
		labelLogo.setHorizontalAlignment(SwingConstants.CENTER);
		
		JPanel panelLogo = new JPanel();
		panelLogo.setLayout(new FlowLayout(FlowLayout.CENTER, 0, 0));
		panelLogo.add(labelLogo);
		
		JLabel labelId = new JLabel("Nombre de usuario:");
		
		fieldId = new JTextField();
		registerComponent("fieldId", fieldId);
		
		JLabel labelPassword = new JLabel("Contrase�a:");
		
		fieldPassword = new JPasswordField();
		registerComponent("fieldPassword", fieldPassword);
		
		JPanel panelFields = new JPanel();
		panelFields.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.GROWING_BUTTON_COLSPEC,
			FormFactory.MIN_COLSPEC,
			FormFactory.LABEL_COMPONENT_GAP_COLSPEC,
			ColumnSpec.decode("max(80dlu;min)"),
			FormFactory.GROWING_BUTTON_COLSPEC
		}, new RowSpec[] {
			FormFactory.MIN_ROWSPEC,
			FormFactory.RELATED_GAP_ROWSPEC,
			FormFactory.MIN_ROWSPEC
		}));
		panelFields.add(labelId, "2, 1, right, default");
		panelFields.add(fieldId, "4, 1, fill, default");
		panelFields.add(labelPassword, "2, 3, right, default");
		panelFields.add(fieldPassword, "4, 3, fill, default");
		
		JButton buttonExit = new JButton("Salir");
		buttonExit.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onExit();
			}
		});
		registerComponent("buttonExit", buttonExit);
		
		JButton buttonLogInUserDoctor = new JButton("Ingresar");
		buttonLogInUserDoctor.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onLogInUserDoctor();
			}
		});
		registerComponent("buttonLogInUserDoctor", buttonLogInUserDoctor);
		setDefaultButton(buttonLogInUserDoctor);
		
		JPanel panelButtons = new JPanel();
		panelButtons.setLayout(new FlowLayout(FlowLayout.CENTER, 0, 0));
		panelButtons.add(buttonExit);
		panelButtons.add(buttonLogInUserDoctor);
		
		JPanel panelMain = new JPanel();
		panelMain.setBorder(BorderFactory.createEmptyBorder(10, 80, 10, 80));
		panelMain.setLayout(new BorderLayout(0, 10));
		panelMain.add(panelLogo, BorderLayout.NORTH);
		panelMain.add(panelFields, BorderLayout.CENTER);
		panelMain.add(panelButtons, BorderLayout.SOUTH);
		
		return panelMain;
	}

	protected String getTitle() {
		return "MRS - Ingresar";
	}
	
	protected boolean isResizable() {
		return false;
	}
	
	private void onExit() {
		// Closes the current frame
		GuiManager.closeCurrentFrame();
	}
	
	private void onLogInUserDoctor() {
		// Locks the frame
		lock();
		
		// Gets user ID and password
		String id = fieldId.getText();
		byte[] password = Utility.charsToBytes(fieldPassword.getPassword());
		
		// Attempts to log in the user
		LogInUserDoctorCaller caller = new LogInUserDoctorCaller() {
			public void logInUserDoctorCallback(Boolean userDoctorLoggedIn) {
				if (userDoctorLoggedIn)
					// Opens the user frame
					GuiManager.openFrame(GuiManager.USER_FRAME);
				else {
					// Shows a dialog to inform the user that the user was not logged in
					GuiManager.showWarningDialog(LogInFrame.this, "Acceso denegado", "Los datos ingresados (nombre de usuario y contrase�a) son incorrectos." + System.lineSeparator() + "Por favor, int�ntelo nuevamente.");
					
					// Unlocks the frame
					unlock();
				}
			}
		};
		LogInUserDoctorWorker worker = new LogInUserDoctorWorker(caller, id, password);
		worker.execute();
	}
	
}
