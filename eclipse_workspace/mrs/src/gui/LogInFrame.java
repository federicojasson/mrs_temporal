package gui;

import gui.components.GuiFrame;
import gui.workers.LogInUserDoctorCaller;
import gui.workers.LogInUserDoctorWorker;
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
		
		JLabel labelId = new JLabel("Nombre de usuario:");
		
		fieldId = new JTextField();
		registerComponent("fieldId", fieldId);
		
		JLabel labelPassword = new JLabel("Contraseña:");
		
		fieldPassword = new JPasswordField();
		registerComponent("fieldPassword", fieldPassword);
		
		JPanel panelFields = new JPanel();
		panelFields.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.MIN_COLSPEC,
			FormFactory.LABEL_COMPONENT_GAP_COLSPEC,
			ColumnSpec.decode("max(80dlu;min)")
		}, new RowSpec[] {
			FormFactory.DEFAULT_ROWSPEC,
			FormFactory.RELATED_GAP_ROWSPEC,
			FormFactory.DEFAULT_ROWSPEC
		}));
		panelFields.add(labelId, "1, 1");
		panelFields.add(fieldId, "3, 1");
		panelFields.add(labelPassword, "1, 3");
		panelFields.add(fieldPassword, "3, 3");
		
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
		panelButtons.add(buttonExit);
		panelButtons.add(buttonLogInUserDoctor);
		
		JPanel panelMain = new JPanel();
		panelMain.setBorder(BorderFactory.createEmptyBorder(5, 5, 5, 5));
		panelMain.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.GROWING_BUTTON_COLSPEC,
			ColumnSpec.decode("min:grow"),
			FormFactory.GROWING_BUTTON_COLSPEC
		}, new RowSpec[] {
			RowSpec.decode("default:grow"),
			FormFactory.DEFAULT_ROWSPEC,
			RowSpec.decode("9dlu:grow"),
			FormFactory.DEFAULT_ROWSPEC,
			FormFactory.PARAGRAPH_GAP_ROWSPEC,
			FormFactory.DEFAULT_ROWSPEC,
			RowSpec.decode("default:grow")
		}));
		panelMain.add(labelLogo, "2, 2, center, center");
		panelMain.add(panelFields, "2, 4, center, center");
		panelMain.add(panelButtons, "2, 6, fill, fill");
		
		return panelMain;
	}

	protected String getTitle() {
		return "MRS - Ingresar";
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
					GuiManager.showWarningDialog("Acceso denegado", "Los datos ingresados (nombre de usuario y contraseña) son incorrectos." + System.lineSeparator() + "Por favor, inténtelo nuevamente.");
					
					// Unlocks the frame
					unlock();
				}
			}
		};
		LogInUserDoctorWorker worker = new LogInUserDoctorWorker(caller, id, password);
		worker.execute();
	}
	
}
