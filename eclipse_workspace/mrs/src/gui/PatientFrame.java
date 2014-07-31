package gui;

import java.awt.Dimension;
import java.awt.Image;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.sql.Date;
import java.util.List;
import javax.swing.BoxLayout;
import javax.swing.DefaultComboBoxModel;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextField;
import javax.swing.ListSelectionModel;
import javax.swing.border.EmptyBorder;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import com.jgoodies.forms.factories.FormFactory;
import com.jgoodies.forms.layout.ColumnSpec;
import com.jgoodies.forms.layout.FormLayout;
import com.jgoodies.forms.layout.RowSpec;
import entities.BloodType;
import entities.Gender;
import entities.Patient;
import entities.StudySummary;
import gui.components.DatePicker;
import gui.components.GuiFrame;
import gui.components.StudyTable;
import gui.workers.GetPatientCaller;
import gui.workers.GetPatientWorker;
import gui.workers.GetStudySummariesCaller;
import gui.workers.GetStudySummariesWorker;
import gui.workers.ModifyPatientCaller;
import gui.workers.ModifyPatientWorker;
import utilities.Utility;
import managers.GuiManager;
import managers.PatientManager;
import managers.StudyManager;

//TODO: validate input
//TODO: search
public class PatientFrame extends GuiFrame implements GetPatientCaller, GetStudySummariesCaller, ModifyPatientCaller {

	private JButton buttonDatePicker;
	private JButton buttonModifyPatient;
	private JButton buttonSetModifyMode;
	private JButton buttonViewStudy;
	private JComboBox<BloodType> comboBoxBloodType;
	private JComboBox<Gender> comboBoxGender;
	private DatePicker datePicker;
	private JTextField fieldBirthDate;
	private JTextField fieldId;
	private JTextField fieldName;
	private StudyTable tableStudies;

	public void getPatientCallback(Patient patient) {
		// Sets the patient's information
		comboBoxBloodType.setSelectedIndex(BloodType.getConstant(patient.getBloodType()).ordinal());
		comboBoxGender.setSelectedIndex(Gender.getConstant(patient.getGender()).ordinal());
		datePicker.setDate(patient.getBirthDate());
		fieldBirthDate.setText(Utility.formatDate(patient.getBirthDate()));
		fieldId.setText(Utility.bytesToHexadecimal(patient.getId()));
		fieldName.setText(patient.getName());
	}

	public void getStudySummariesCallback(List<StudySummary> studySummaries) {
		// Sets the study summaries as the table's data
		tableStudies.setStudySummaries(studySummaries);
		
		// Unlocks the frame
		unlock();
	}
	
	public void initialize() {
		// Initializes the GUI
		super.initialize();
		
		// Locks the frame
		lock();
		
		// Gets the current patient ID
		byte[] patientId = PatientManager.getCurrentPatientId();
		
		// Gets the patient
		GetPatientWorker worker0 = new GetPatientWorker(this, patientId);
		worker0.execute();
		
		// Gets the study summaries
		GetStudySummariesWorker worker1 = new GetStudySummariesWorker(this, patientId);
		worker1.execute();
	}
	
	public void modifyPatientCallback() {
		// Unlocks the frame
		unlock();
		
		// Sets the view mode
		setViewMode();
	}
	
	protected JPanel getMainPanel() {
		JLabel labelId = new JLabel("ID de paciente");
		
		fieldId = new JTextField();
		fieldId.setEditable(false);
		registerComponent("fieldId", fieldId);
		
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
		
		JPanel panelPatient = new JPanel();
		panelPatient.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.MIN_COLSPEC,
			FormFactory.LABEL_COMPONENT_GAP_COLSPEC,
			FormFactory.GROWING_BUTTON_COLSPEC
		}, new RowSpec[] {
			FormFactory.DEFAULT_ROWSPEC,
			FormFactory.NARROW_LINE_GAP_ROWSPEC,
			FormFactory.DEFAULT_ROWSPEC,
			FormFactory.NARROW_LINE_GAP_ROWSPEC,
			FormFactory.DEFAULT_ROWSPEC,
			FormFactory.NARROW_LINE_GAP_ROWSPEC,
			FormFactory.DEFAULT_ROWSPEC,
			FormFactory.NARROW_LINE_GAP_ROWSPEC,
			FormFactory.DEFAULT_ROWSPEC,
			FormFactory.PARAGRAPH_GAP_ROWSPEC
		}));
		panelPatient.add(labelId, "1, 1, right, default");
		panelPatient.add(fieldId, "3, 1, fill, default");
		panelPatient.add(labelName, "1, 3, right, default");
		panelPatient.add(fieldName, "3, 3, fill, default");
		panelPatient.add(labelGender, "1, 5, right, default");
		panelPatient.add(comboBoxGender, "3, 5, fill, default");
		panelPatient.add(labelBirthDate, "1, 7, right, default");
		panelPatient.add(panelBirthDate, "3, 7, fill, default");
		panelPatient.add(labelBloodType, "1, 9, right, default");
		panelPatient.add(comboBoxBloodType, "3, 9, fill, default");
		
		JLabel labelSearch = new JLabel("Búsqueda");
		
		JTextField fieldSearch = new JTextField();
		registerComponent("fieldSearch", fieldSearch);
		
		JLabel labelCriterion = new JLabel("Criterio de búsqueda");
		
		JComboBox<String> comboBoxCriterion = new JComboBox<String>();
		comboBoxCriterion.setModel(new DefaultComboBoxModel<String>(new String[] {
			"Cualquier campo",
			"Tipo de estudio",
			"Observaciones"
		}));
		registerComponent("comboBoxCriterion", comboBoxCriterion);
		
		JPanel panelSearch = new JPanel();
		panelSearch.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.MIN_COLSPEC,
			FormFactory.LABEL_COMPONENT_GAP_COLSPEC,
			FormFactory.GROWING_BUTTON_COLSPEC,
			FormFactory.UNRELATED_GAP_COLSPEC,
			FormFactory.MIN_COLSPEC,
			FormFactory.LABEL_COMPONENT_GAP_COLSPEC,
			FormFactory.GROWING_BUTTON_COLSPEC
		}, new RowSpec[] {
			FormFactory.DEFAULT_ROWSPEC,
			FormFactory.NARROW_LINE_GAP_ROWSPEC
		}));
		panelSearch.add(labelSearch, "1, 1, right, default");
		panelSearch.add(fieldSearch, "3, 1, fill, default");
		panelSearch.add(labelCriterion, "5, 1, right, default");
		panelSearch.add(comboBoxCriterion, "7, 1, fill, default");
		
		tableStudies = new StudyTable();
		tableStudies.addMouseListener(new MouseAdapter() {
			public void mouseClicked(MouseEvent event) {
				if (event.getClickCount() == 2)
					onViewStudy();
			}
		});
		tableStudies.getSelectionModel().setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
		tableStudies.getSelectionModel().addListSelectionListener(new ListSelectionListener() {
			public void valueChanged(ListSelectionEvent event) {
				if (! event.getValueIsAdjusting())
					onSelectStudy();
			}
		});
		registerComponent("tableStudies", tableStudies);
		
		JScrollPane panelStudies = new JScrollPane(tableStudies, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		panelStudies.setPreferredSize(new Dimension(800, 200));
		
		JPanel panelSearchStudies = new JPanel();
		panelSearchStudies.setLayout(new BoxLayout(panelSearchStudies, BoxLayout.Y_AXIS));
		panelSearchStudies.add(panelSearch);
		panelSearchStudies.add(panelStudies);
		
		JButton buttonGoBack = new JButton("Volver");
		buttonGoBack.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onGoBack();
			}
		});
		registerComponent("buttonGoBack", buttonGoBack);
		
		buttonSetModifyMode = new JButton("Modificar información");
		buttonSetModifyMode.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onSetModifyMode();
			}
		});
		registerComponent("buttonSetModifyMode", buttonSetModifyMode);
		
		buttonModifyPatient = new JButton("Aplicar cambios");
		buttonModifyPatient.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onModifyPatient();
			}
		});
		registerComponent("buttonModifyPatient", buttonModifyPatient);
		
		JButton buttonAddStudy = new JButton("Ingresar estudio");
		buttonAddStudy.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onAddStudy();
			}
		});
		registerComponent("buttonAddStudy", buttonAddStudy);
		
		buttonViewStudy = new JButton("Ver estudio");
		buttonViewStudy.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onViewStudy();
			}
		});
		registerComponent("buttonViewStudy", buttonViewStudy);
		setDefaultButton(buttonViewStudy);
		
		JPanel panelButtons = new JPanel();
		panelButtons.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.BUTTON_COLSPEC,
			FormFactory.GROWING_BUTTON_COLSPEC,
			FormFactory.BUTTON_COLSPEC,
			FormFactory.RELATED_GAP_COLSPEC,
			FormFactory.BUTTON_COLSPEC,
			FormFactory.RELATED_GAP_COLSPEC,
			FormFactory.BUTTON_COLSPEC,
			FormFactory.RELATED_GAP_COLSPEC,
			FormFactory.BUTTON_COLSPEC
		}, new RowSpec[] {
			FormFactory.PARAGRAPH_GAP_ROWSPEC,
			FormFactory.DEFAULT_ROWSPEC
		}));
		panelButtons.add(buttonGoBack, "1, 2");
		panelButtons.add(buttonSetModifyMode, "3, 2");
		panelButtons.add(buttonModifyPatient, "5, 2");
		panelButtons.add(buttonAddStudy, "7, 2");
		panelButtons.add(buttonViewStudy, "9, 2");
		
		JPanel panelMain = new JPanel();
		panelMain.setBorder(new EmptyBorder(5, 5, 5, 5));
		panelMain.setLayout(new BoxLayout(panelMain, BoxLayout.Y_AXIS));
		panelMain.add(panelPatient);
		panelMain.add(panelSearchStudies);
		panelMain.add(panelButtons);
		
		onSelectStudy();
		setViewMode();
		
		return panelMain;
	}

	protected String getTitle() {
		return "MRS - Paciente (" + Utility.bytesToHexadecimal(PatientManager.getCurrentPatientId()) + ")";
	}
	
	private void onAddStudy() {
		// Opens the add study frame
		GuiManager.openFrame(GuiManager.ADD_STUDY_FRAME);
	}
	
	private void onDatePickerButtonAction() {
		if (datePicker.isShowing())
			// Hides the date picker popup
			datePicker.hidePopup();
		else
			// Shows the date picker popup
			datePicker.showPopup(buttonDatePicker);
	}
	
	private void onGoBack() {
		// Closes the current frame
		GuiManager.closeCurrentFrame();
	}
	
	private void onModifyPatient() {
		// Locks the frame
		lock();
		
		// Gets the patient's information
		Date birthDate = datePicker.getDate();
		byte[] bloodType = comboBoxBloodType.getItemAt(comboBoxBloodType.getSelectedIndex()).getValue();
		byte[] gender = comboBoxGender.getItemAt(comboBoxGender.getSelectedIndex()).getValue();
		String name = fieldName.getText();
		
		// Modifies the patient
		ModifyPatientWorker worker = new ModifyPatientWorker(this, birthDate, bloodType, gender, name);
		worker.execute();
	}
	
	private void onPickDate() {
		// Shows the picked date in the birth date field
		fieldBirthDate.setText(Utility.formatDate(datePicker.getDate()));
		
		// Hides the date picker popup
		datePicker.hidePopup();
	}
	
	private void onSelectStudy() {
		// Gets the selected row index (if any)
		int selectedRowIndex = tableStudies.getSelectedRow();
		
		if (selectedRowIndex < 0)
			// No row has been selected
			buttonViewStudy.setEnabled(false);
		else
			// A row has been selected
			buttonViewStudy.setEnabled(true);
	}
	
	private void onSetModifyMode() {
		// Sets the modify mode
		setModifyMode();
	}
	
	private void onViewStudy() {
		// Gets the selected row index (if any)
		int selectedRowIndex = tableStudies.getSelectedRow();
		
		if (selectedRowIndex >= 0) {
			// Gets the study ID
			byte[] studyId = (byte[]) tableStudies.getValueAt(selectedRowIndex, StudyTable.ID);
			
			// Sets the study ID as the current one
			StudyManager.setCurrentStudyId(studyId);
			
			// Opens the study frame
			GuiManager.openFrame(GuiManager.STUDY_FRAME);
		}
	}
	
	private void setModifyMode() {
		// Enables components
		buttonDatePicker.setEnabled(true);
		comboBoxBloodType.setEnabled(true);
		comboBoxGender.setEnabled(true);
		fieldName.setEditable(true);
		
		// Enables the modify patient button
		buttonModifyPatient.setEnabled(true);
		
		// Disables the set modify mode button
		buttonSetModifyMode.setEnabled(false);
	}
	
	private void setViewMode() {
		// Disables components
		buttonDatePicker.setEnabled(false);
		comboBoxBloodType.setEnabled(false);
		comboBoxGender.setEnabled(false);
		fieldName.setEditable(false);
		
		// Disables the modify patient button
		buttonModifyPatient.setEnabled(false);
		
		// Enables the set modify mode button
		buttonSetModifyMode.setEnabled(true);
	}
	
}
