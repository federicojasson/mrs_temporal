package gui;

import gui.components.GuiFrame;
import gui.workers.LogInUserDoctorCaller;
import gui.workers.LogInUserDoctorWorker;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;
import com.jgoodies.forms.factories.FormFactory;
import com.jgoodies.forms.layout.ColumnSpec;
import com.jgoodies.forms.layout.FormLayout;
import com.jgoodies.forms.layout.RowSpec;
import utilities.Utility;
import managers.GuiManager;

// TODO: validate input
public class LogInFrame extends GuiFrame implements LogInUserDoctorCaller {
	
	private JButton buttonExit;
	private JButton buttonLogInUserDoctor;
	private JTextField fieldId;
	private JPasswordField fieldPassword;

	public void logInUserDoctorCallback(Boolean userDoctorLoggedIn) {
		if (userDoctorLoggedIn)
			// Opens the user frame
			GuiManager.openFrame(GuiManager.USER_FRAME);
		else {
			JOptionPane.showMessageDialog(getFrame(), "Los datos ingresados (nombre de usuario y contraseña) son incorrectos.\nPor favor, inténtelo nuevamente.", "Acceso denegado", JOptionPane.WARNING_MESSAGE);
			// TODO: show dialog to inform the user
			
			// Re-enables GUI interactions
			enableGuiInteractions();
		}
	}

	protected JPanel getMainPanel() {
		JLabel labelLogo = new JLabel("");
		labelLogo.setHorizontalAlignment(SwingConstants.CENTER);
		labelLogo.setIcon(new ImageIcon(LogInFrame.class.getResource("/images/logo.png")));
		
		JLabel labelId = new JLabel("Nombre de usuario:");
		fieldId = new JTextField(10);
		
		JLabel labelPassword = new JLabel("Contraseña:");
		fieldPassword = new JPasswordField(10);
		
		JPanel fieldPanel = new JPanel();
		fieldPanel.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.MIN_COLSPEC,
			FormFactory.LABEL_COMPONENT_GAP_COLSPEC,
			ColumnSpec.decode("max(80dlu;min)")
		}, new RowSpec[] {
			FormFactory.DEFAULT_ROWSPEC,
			FormFactory.RELATED_GAP_ROWSPEC,
			FormFactory.DEFAULT_ROWSPEC
		}));
		fieldPanel.add(labelId, "1, 1");
		fieldPanel.add(fieldId, "3, 1");
		fieldPanel.add(labelPassword, "1, 3");
		fieldPanel.add(fieldPassword, "3, 3");
		
		buttonExit = new JButton("Salir");
		buttonExit.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onExit();
			}
		});
		
		buttonLogInUserDoctor = new JButton("Ingresar");
		buttonLogInUserDoctor.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onLogInUserDoctor();
			}
		});
		
		JPanel panelButtons = new JPanel();
		panelButtons.add(buttonExit);
		panelButtons.add(buttonLogInUserDoctor);
		
		JPanel panelMain = new JPanel();
		panelMain.setBorder(new EmptyBorder(5, 5, 5, 5));
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
		panelMain.add(fieldPanel, "2, 4, center, center");
		panelMain.add(panelButtons, "2, 6, fill, fill");
		
		return panelMain;
	}

	protected String getTitle() {
		return "MRS - Ingresar";
	}
	
	private void disableGuiInteractions() {
		buttonExit.setEnabled(false);
		buttonLogInUserDoctor.setEnabled(false);
		fieldId.setEnabled(false);
		fieldPassword.setEnabled(false);
	}
	
	private void enableGuiInteractions() {
		buttonExit.setEnabled(true);
		buttonLogInUserDoctor.setEnabled(true);
		fieldId.setEnabled(true);
		fieldPassword.setEnabled(true);
	}
	
	private void onExit() {
		// Closes the current frame
		GuiManager.closeCurrentFrame();
	}
	
	private void onLogInUserDoctor() {
		// Disables GUI interactions
		disableGuiInteractions();
		
		// Gets user ID and password
		String id = fieldId.getText();
		byte[] password = Utility.charsToBytes(fieldPassword.getPassword()); // TODO: this maybe should be made in the worker
		
		// Attempts to log in the user
		LogInUserDoctorWorker worker = new LogInUserDoctorWorker(this, id, password);
		worker.execute();
	}
	
}
