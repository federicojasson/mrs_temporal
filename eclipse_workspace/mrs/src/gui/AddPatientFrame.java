package gui;

import entities.BloodType;
import entities.Gender;
import gui.components.DatePicker;
import gui.components.GuiFrame;
import gui.workers.AddPatientCaller;
import gui.workers.AddPatientWorker;
import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Image;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Date;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;
import utilities.Utility;
import com.jgoodies.forms.factories.FormFactory;
import com.jgoodies.forms.layout.ColumnSpec;
import com.jgoodies.forms.layout.FormLayout;
import com.jgoodies.forms.layout.RowSpec;
import managers.GuiManager;

// TODO: validate input
public class AddPatientFrame extends GuiFrame implements AddPatientCaller {

	private JButton buttonDatePicker;
	private JComboBox<BloodType> comboBoxBloodType;
	private JComboBox<Gender> comboBoxGender;
	private DatePicker datePicker;
	private JTextField fieldBirthDate;
	private JTextField fieldName;

	public void addPatientCallback() {
		// Closes the current frame
		GuiManager.closeCurrentFrame();
	}
	
	protected JPanel getMainPanel() {
		JLabel labelName = new JLabel("Nombre");
		
		fieldName = new JTextField();
		registerComponent("fieldName", fieldName);
		
		JLabel labelGender = new JLabel("Sexo");
		
		comboBoxGender = new JComboBox<Gender>(Gender.values());
		registerComponent("comboBoxGender", comboBoxGender);
		
		JLabel labelBirthDate = new JLabel("Fecha de nacimiento");
		
		fieldBirthDate = new JTextField();
		fieldBirthDate.setEditable(false);
		registerComponent("fieldBirthDate", fieldBirthDate);
		
		datePicker = new DatePicker();
		datePicker.addPopupListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onPickDate();
			}
		});
		
		Image imageButtonDatePicker = new ImageIcon(getClass().getResource("/images/datepicker.gif")).getImage().getScaledInstance(25, 30 , Image.SCALE_SMOOTH);
		
		ImageIcon iconButtonDatePicker = new ImageIcon(imageButtonDatePicker);
		
		buttonDatePicker = new JButton(iconButtonDatePicker);
		buttonDatePicker.setMargin(new Insets(0, 0, 0, 0));
		buttonDatePicker.setPreferredSize(new Dimension(30, 24));
		buttonDatePicker.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onDatePickerButtonAction();
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
		
		JLabel labelBloodType = new JLabel("Grupo sanguíneo");
		
		comboBoxBloodType = new JComboBox<BloodType>(BloodType.values());
		registerComponent("comboBoxBloodType", comboBoxBloodType);
		
		JPanel panelContent = new JPanel();
		panelContent.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.MIN_COLSPEC,
			FormFactory.LABEL_COMPONENT_GAP_COLSPEC,
			FormFactory.GROWING_BUTTON_COLSPEC
		}, new RowSpec[] {
			FormFactory.NARROW_LINE_GAP_ROWSPEC,
			FormFactory.DEFAULT_ROWSPEC,
			FormFactory.NARROW_LINE_GAP_ROWSPEC,
			FormFactory.DEFAULT_ROWSPEC,
			FormFactory.NARROW_LINE_GAP_ROWSPEC,
			FormFactory.DEFAULT_ROWSPEC,
			FormFactory.NARROW_LINE_GAP_ROWSPEC,
			FormFactory.DEFAULT_ROWSPEC
		}));
		panelContent.add(labelName, "1, 2, right, default");
		panelContent.add(fieldName, "3, 2, fill, default");
		panelContent.add(labelGender, "1, 4, right, default");
		panelContent.add(comboBoxGender, "3, 4, fill, default");
		panelContent.add(labelBirthDate, "1, 6, right, default");
		panelContent.add(panelBirthDate, "3, 6, fill, default");
		panelContent.add(labelBloodType, "1, 8, right, default");
		panelContent.add(comboBoxBloodType, "3, 8, fill, default");
		
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
		panelMain.setBorder(new EmptyBorder(5, 5, 5, 5));
		panelMain.setLayout(new BorderLayout(0, 5));
		panelMain.add(panelContent, BorderLayout.CENTER);
		panelMain.add(panelButtons, BorderLayout.SOUTH);
		
		return panelMain;
	}

	protected String getTitle() {
		return "MRS - Ingresar paciente";
	}
	
	private void onAddPatient() {
		// Locks the frame
		lock();
		
		// Gets the patient's information
		Date birthDate = datePicker.getDate();
		byte[] bloodType = comboBoxBloodType.getItemAt(comboBoxBloodType.getSelectedIndex()).getValue();
		byte[] gender = comboBoxGender.getItemAt(comboBoxGender.getSelectedIndex()).getValue();
		String name = fieldName.getText();
		
		// Adds the patient
		AddPatientWorker worker = new AddPatientWorker(this, birthDate, bloodType, gender, name);
		worker.execute();
	}
	
	private void onCancel() {
		// Closes the current frame
		GuiManager.closeCurrentFrame();
	}
	
	private void onDatePickerButtonAction() {
		if (datePicker.isShowing())
			// Hides the date picker popup
			datePicker.hidePopup();
		else
			// Shows the date picker popup
			datePicker.showPopup(buttonDatePicker);
	}
	
	private void onPickDate() {
		// Shows the picked date in the birth date field
		fieldBirthDate.setText(Utility.formatDate(datePicker.getDate()));
		
		// Hides the date picker popup
		datePicker.hidePopup();
	}
	
}
