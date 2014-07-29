package gui;

import java.awt.Dimension;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.List;
import javax.swing.BoxLayout;
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
import utilities.Utility;
import managers.GuiManager;
import managers.PatientManager;
import managers.StudyManager;

//TODO: validate input
public class PatientFrame extends GuiFrame implements GetPatientCaller, GetStudySummariesCaller {

	private JButton buttonViewStudy;
	private JComboBox<BloodType> comboBoxBloodType;
	private JComboBox<String> comboBoxCriterion;
	private JComboBox<Gender> comboBoxGender;
	private JTextField fieldBirthDate;
	private JTextField fieldId;
	private JTextField fieldName;
	private JTextField fieldSearch;
	private StudyTable tableStudies;

	public void getPatientCallback(Patient patient) {
		comboBoxBloodType.setSelectedIndex(BloodType.getConstant(patient.getBloodType()).ordinal());
		comboBoxGender.setSelectedIndex(Gender.getConstant(patient.getGender()).ordinal());
		//fieldBirthDate.setText(); TODO: what format uses datepicker?
		fieldId.setText(Utility.bytesToHexadecimal(patient.getId()));
		fieldName.setText(patient.getName());
	}

	public void getStudySummariesCallback(List<StudySummary> studySummaries) {
		// Sets the study summaries as the table model data
		tableStudies.getModel().setStudySummaries(studySummaries);
		
		// Restores the state of the disabled components
		restoreComponentsState();
	}
	
	public void initialize() {
		// Initializes the GUI
		super.initialize();
		
		// Disables components
		disableComponents();
		
		// Gets the current patient ID
		byte[] patientId = PatientManager.getCurrentPatientId();
		
		// Gets the patient
		GetPatientWorker worker0 = new GetPatientWorker(this, patientId);
		worker0.execute();
		
		// Gets the study summaries
		GetStudySummariesWorker worker1 = new GetStudySummariesWorker(this, patientId);
		worker1.execute();
	}
	
	protected JPanel getMainPanel() {
		JLabel labelId = new JLabel("ID de paciente");
		
		fieldId = new JTextField();
		fieldId.setEditable(false);
		fieldId.setColumns(10);
		registerComponent("fieldId", fieldId);
		
		JLabel labelName = new JLabel("Nombre");
		
		fieldName = new JTextField();
		fieldName.setEditable(false);
		fieldName.setColumns(10);
		registerComponent("fieldName", fieldName);
		
		JLabel labelGender = new JLabel("Sexo");
		
		comboBoxGender = new JComboBox<Gender>(Gender.values());
		comboBoxGender.setEnabled(false);
		registerComponent("comboBoxGender", comboBoxGender);
		
		JLabel labelBirthDate = new JLabel("Fecha de nacimiento");

		fieldBirthDate = new JTextField(10);
		fieldBirthDate.setEditable(false);
		registerComponent("fieldBirthDate", fieldBirthDate);
		
		DatePicker datePicker = new DatePicker();
		datePicker.addPopupListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				// TODO
				/*fieldBirthDate.setText(datePicker.getFormattedDate());
				datePicker.popupHide();*/
			}
		});
		
		JButton buttonDatePicker = new JButton(datePicker.getImage());
		buttonDatePicker.setPreferredSize(new Dimension(30, 24)); // TODO: necessary?
		buttonDatePicker.setMargin(new Insets(0, 0, 0, 0)); // TODO: necessary?
		buttonDatePicker.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				// TODO
				/*datePicker.setDate(fieldBirthDate.getText());
				datePicker.popupShow(buttonDatePicker);*/
			}
		});
		
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
		comboBoxBloodType.setEnabled(false);
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
		
		fieldSearch = new JTextField();
		fieldSearch.setColumns(10);
		registerComponent("fieldSearch", fieldSearch);
		
		JLabel labelCriterion = new JLabel("Criterio de búsqueda");
		
		comboBoxCriterion = new JComboBox<String>();
		//comboBoxCriterion.setModel(this.filtros); TODO
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
		
		JScrollPane panelStudies = new JScrollPane(tableStudies);
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
		
		JButton buttonAddStudy = new JButton("Ingresar estudio");
		buttonAddStudy.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onAddStudy();
			}
		});
		registerComponent("buttonAddStudy", buttonAddStudy);
		
		buttonViewStudy = new JButton("Ver estudio");
		buttonViewStudy.setEnabled(false);
		buttonViewStudy.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onViewStudy();
			}
		});
		registerComponent("buttonViewStudy", buttonViewStudy);
		
		JPanel panelButtons = new JPanel();
		panelButtons.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.BUTTON_COLSPEC,
			FormFactory.GROWING_BUTTON_COLSPEC,
			FormFactory.BUTTON_COLSPEC,
			FormFactory.RELATED_GAP_COLSPEC,
			FormFactory.BUTTON_COLSPEC
		}, new RowSpec[] {
			FormFactory.PARAGRAPH_GAP_ROWSPEC,
			FormFactory.DEFAULT_ROWSPEC
		}));
		panelButtons.add(buttonGoBack, "1, 2");
		panelButtons.add(buttonAddStudy, "3, 2");
		panelButtons.add(buttonViewStudy, "5, 2");
		
		JPanel panelMain = new JPanel();
		panelMain.setBorder(new EmptyBorder(5, 5, 5, 5));
		panelMain.setLayout(new BoxLayout(panelMain, BoxLayout.Y_AXIS));
		panelMain.add(panelPatient);
		panelMain.add(panelSearchStudies);
		panelMain.add(panelButtons);
		
		return panelMain;
	}

	protected String getTitle() {
		return "MRS - Paciente (" + Utility.bytesToHexadecimal(PatientManager.getCurrentPatientId()) + ")";
	}
	
	private void onAddStudy() {
		// Nullifies the current study ID
		StudyManager.setCurrentStudyId(null);
		
		// Opens the study frame
		GuiManager.openFrame(GuiManager.STUDY_FRAME);
	}
	
	private void onGoBack() {
		// Closes the current frame
		GuiManager.closeCurrentFrame();
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
	
	private void onViewStudy() {
		// Gets the selected row index
		int selectedRowIndex = tableStudies.getSelectedRow();
		
		// Gets the study ID
		byte[] studyId = (byte[]) tableStudies.getModel().getValueAt(selectedRowIndex, StudyTable.ID);
		
		// Sets the study ID as the current one
		StudyManager.setCurrentStudyId(studyId);
		
		// Opens the study frame
		GuiManager.openFrame(GuiManager.STUDY_FRAME);
	}
	
}
