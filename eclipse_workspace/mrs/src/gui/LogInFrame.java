package gui;

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
import workers.LogInUserDoctorCaller;
import workers.LogInUserDoctorWorker;
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
			GuiManager.openNewFrame(GuiManager.USER_FRAME);
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
			ColumnSpec.decode("max(80dlu;min)"),
		}, new RowSpec[] {
			FormFactory.DEFAULT_ROWSPEC,
			FormFactory.RELATED_GAP_ROWSPEC,
			FormFactory.DEFAULT_ROWSPEC,
		}));
		fieldPanel.add(labelId, "1, 1");
		fieldPanel.add(fieldId, "3, 1");
		fieldPanel.add(labelPassword, "1, 3");
		fieldPanel.add(fieldPassword, "3, 3");
		
		buttonExit = new JButton("Salir");
		buttonExit.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				onExit();
			}
		});
		
		buttonLogInUserDoctor = new JButton("Ingresar");
		buttonLogInUserDoctor.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				onLogInUserDoctor();
			}
		});
		
		JPanel buttonPanel = new JPanel();
		buttonPanel.add(buttonExit);
		buttonPanel.add(buttonLogInUserDoctor);
		
		JPanel mainPanel = new JPanel();
		mainPanel.setBorder(new EmptyBorder(5, 5, 5, 5));
		mainPanel.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.GROWING_BUTTON_COLSPEC,
			ColumnSpec.decode("min:grow"),
			FormFactory.GROWING_BUTTON_COLSPEC,
		}, new RowSpec[] {
			RowSpec.decode("default:grow"),
			FormFactory.DEFAULT_ROWSPEC,
			RowSpec.decode("9dlu:grow"),
			FormFactory.DEFAULT_ROWSPEC,
			FormFactory.PARAGRAPH_GAP_ROWSPEC,
			FormFactory.DEFAULT_ROWSPEC,
			RowSpec.decode("default:grow"),
		}));
		mainPanel.add(labelLogo, "2, 2, center, center");
		mainPanel.add(fieldPanel, "2, 4, center, center");
		mainPanel.add(buttonPanel, "2, 6, fill, fill");
		
		return mainPanel;
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
		GuiManager.closeCurrentFrame();
	}
	
	private void onLogInUserDoctor() {
		// Disables GUI interactions
		disableGuiInteractions();
		
		// Gets user ID and password
		String id = fieldId.getText();
		byte[] password = Utility.charsToBytes(fieldPassword.getPassword()); // TODO: this maybe should be made in the worker
		
		// Performs the task in a worker thread
		LogInUserDoctorWorker worker = new LogInUserDoctorWorker(this, id, password);
		worker.execute();
	}
	
}
