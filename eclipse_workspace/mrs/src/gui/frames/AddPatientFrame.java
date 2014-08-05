package gui.frames;

import entities.BloodType;
import entities.Gender;
import gui.components.DatePicker;
import gui.workers.AddPatientCaller;
import gui.workers.AddPatientWorker;
import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Image;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Date;
import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import utilities.Utility;
import com.jgoodies.forms.factories.FormFactory;
import com.jgoodies.forms.layout.ColumnSpec;
import com.jgoodies.forms.layout.FormLayout;
import com.jgoodies.forms.layout.RowSpec;
import managers.GuiManager;

// TODO: validate input
public class AddPatientFrame extends GuiFrame {

	private JButton buttonDatePicker;
	private JComboBox<BloodType> comboBoxBloodType;
	private JComboBox<Gender> comboBoxGender;
	private DatePicker datePicker;
	private JTextField fieldBirthDate;
	private JTextField fieldName;
	private JTextArea fieldObservations;
	
	protected JPanel getMainPanel() {
		JLabel labelName = new JLabel("Nombre:");
		
		fieldName = new JTextField();
		registerComponent("fieldName", fieldName);
		
		JLabel labelGender = new JLabel("Sexo:");
		
		comboBoxGender = new JComboBox<Gender>(Gender.values());
		registerComponent("comboBoxGender", comboBoxGender);
		
		JLabel labelBirthDate = new JLabel("Fecha de nacimiento:");
		
		datePicker = new DatePicker();
		datePicker.addPopupListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onPickDate();
			}
		});
		
		fieldBirthDate = new JTextField();
		fieldBirthDate.setEditable(false);
		fieldBirthDate.setText(datePicker.getFormattedDate());
		registerComponent("fieldBirthDate", fieldBirthDate);
		
		Image imageButtonDatePicker = new ImageIcon(getClass().getResource("/images/datepicker.gif")).getImage().getScaledInstance(25, 30 , Image.SCALE_SMOOTH);
		
		ImageIcon iconButtonDatePicker = new ImageIcon(imageButtonDatePicker);
		
		buttonDatePicker = new JButton(iconButtonDatePicker);
		buttonDatePicker.setMargin(new Insets(0, 0, 0, 0));
		buttonDatePicker.setPreferredSize(new Dimension(30, 24));
		buttonDatePicker.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onButtonDatePickerAction();
			}
		});
		registerComponent("buttonDatePicker", buttonDatePicker);
		
		JPanel panelBirthDate = new JPanel();
		panelBirthDate.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.GROWING_BUTTON_COLSPEC,
			FormFactory.PREF_COLSPEC
		}, new RowSpec[] {
			FormFactory.BUTTON_ROWSPEC
		}));
		panelBirthDate.add(fieldBirthDate, "1, 1, fill, default");
		panelBirthDate.add(buttonDatePicker, "2, 1, default, default");
		
		JLabel labelBloodType = new JLabel("Grupo sanguíneo:");
		
		comboBoxBloodType = new JComboBox<BloodType>(BloodType.values());
		registerComponent("comboBoxBloodType", comboBoxBloodType);
		
		JPanel panelFields = new JPanel();
		panelFields.setBorder(BorderFactory.createCompoundBorder(BorderFactory.createTitledBorder("Información básica"), BorderFactory.createEmptyBorder(5, 10, 10, 10)));
		panelFields.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.MIN_COLSPEC,
			FormFactory.LABEL_COMPONENT_GAP_COLSPEC,
			ColumnSpec.decode("fill:max(224px;default):grow")
		}, new RowSpec[] {
			FormFactory.MIN_ROWSPEC,
			FormFactory.NARROW_LINE_GAP_ROWSPEC,
			FormFactory.MIN_ROWSPEC,
			FormFactory.NARROW_LINE_GAP_ROWSPEC,
			FormFactory.MIN_ROWSPEC,
			FormFactory.NARROW_LINE_GAP_ROWSPEC,
			FormFactory.MIN_ROWSPEC
		}));
		panelFields.add(labelName, "1, 1, right, default");
		panelFields.add(fieldName, "3, 1, fill, default");
		panelFields.add(labelGender, "1, 3, right, default");
		panelFields.add(comboBoxGender, "3, 3, fill, default");
		panelFields.add(labelBirthDate, "1, 5, right, default");
		panelFields.add(panelBirthDate, "3, 5, fill, default");
		panelFields.add(labelBloodType, "1, 7, right, default");
		panelFields.add(comboBoxBloodType, "3, 7, fill, default");
		
		fieldObservations = new JTextArea();
		fieldObservations.setLineWrap(true);
		fieldObservations.setWrapStyleWord(true);
		registerComponent("fieldObservations", fieldObservations);
		
		JScrollPane panelObservationsContainer = new JScrollPane(fieldObservations, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		
		JPanel panelObservations = new JPanel();
		panelObservations.setBorder(BorderFactory.createCompoundBorder(BorderFactory.createTitledBorder("Observaciones"), BorderFactory.createEmptyBorder(5, 10, 10, 10)));
		panelObservations.setLayout(new FormLayout(new ColumnSpec[] {
			ColumnSpec.decode("fill:max(256px;default):grow")
		}, new RowSpec[] {
			RowSpec.decode("fill:max(128px;default):grow")
		}));
		panelObservations.add(panelObservationsContainer, "1, 1");
		
		JPanel panelContent = new JPanel();
		panelContent.setLayout(new BorderLayout(10, 0));
		panelContent.add(panelFields, BorderLayout.WEST);
		panelContent.add(panelObservations, BorderLayout.CENTER);
		
		JButton buttonCancel = new JButton("Cancelar");
		buttonCancel.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onCancel();
			}
		});
		registerComponent("buttonCancel", buttonCancel);
		
		JButton buttonAddPatient = new JButton("Ingresar paciente");
		buttonAddPatient.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onAddPatient();
			}
		});
		registerComponent("buttonAddPatient", buttonAddPatient);
		setDefaultButton(buttonAddPatient);
		
		JPanel panelButtons = new JPanel();
		panelButtons.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.BUTTON_COLSPEC,
			FormFactory.GROWING_BUTTON_COLSPEC,
			FormFactory.BUTTON_COLSPEC
		}, new RowSpec[] {
			FormFactory.MIN_ROWSPEC
		}));
		panelButtons.add(buttonCancel, "1, 1");
		panelButtons.add(buttonAddPatient, "3, 1");
		
		JPanel panelMain = new JPanel();
		panelMain.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
		panelMain.setLayout(new BorderLayout(0, 10));
		panelMain.add(panelContent, BorderLayout.CENTER);
		panelMain.add(panelButtons, BorderLayout.SOUTH);
		
		return panelMain;
	}

	protected String getTitle() {
		return "MRS - Ingresar paciente";
	}
	
	protected boolean isResizable() {
		return true;
	}
	
	private void onAddPatient() {
		// Locks the frame
		lock();
		
		// Gets the patient's information
		Date birthDate = datePicker.getDate();
		byte[] bloodType = comboBoxBloodType.getItemAt(comboBoxBloodType.getSelectedIndex()).getValue();
		byte[] gender = comboBoxGender.getItemAt(comboBoxGender.getSelectedIndex()).getValue();
		String name = fieldName.getText();
		String observations = fieldObservations.getText();
		
		// Adds the patient
		AddPatientCaller caller = new AddPatientCaller() {
			public void addPatientCallback() {
				// Closes the current frame
				GuiManager.closeCurrentFrame();
			}
		};
		AddPatientWorker worker = new AddPatientWorker(caller, birthDate, bloodType, gender, name, observations);
		worker.execute();
	}
	
	private void onButtonDatePickerAction() {
		if (datePicker.isShowing())
			// Hides the date picker popup
			datePicker.hidePopup();
		else
			// Shows the date picker popup
			datePicker.showPopup(buttonDatePicker);
	}
	
	private void onCancel() {
		// Closes the current frame
		GuiManager.closeCurrentFrame();
	}
	
	private void onPickDate() {
		// Shows the picked date in the birth date field
		fieldBirthDate.setText(Utility.formatDate(datePicker.getDate()));
		
		// Hides the date picker popup
		datePicker.hidePopup();
	}
	
}
