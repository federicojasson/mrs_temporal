package gui.frames;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Image;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.sql.Date;
import java.util.List;
import javax.swing.BorderFactory;
import javax.swing.DefaultComboBoxModel;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.ListSelectionModel;
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
import gui.components.StudyTable;
import gui.workers.GetPatientCaller;
import gui.workers.GetPatientWorker;
import gui.workers.GetStudySummariesCaller;
import gui.workers.GetStudySummariesWorker;
import gui.workers.ModifyPatientCaller;
import gui.workers.ModifyPatientWorker;
import gui.workers.RemoveStudyCaller;
import gui.workers.RemoveStudyWorker;
import gui.workers.SearchStudySummariesCaller;
import gui.workers.SearchStudySummariesWorker;
import utilities.Utility;
import managers.GuiManager;
import managers.PatientManager;
import managers.StudyManager;

//TODO: validate input
public class PatientFrame extends GuiFrame {

	private JButton buttonDatePicker;
	private JButton buttonModifyPatient;
	private JButton buttonRemoveStudy;
	private JButton buttonSetModifyMode;
	private JButton buttonViewStudy;
	private JComboBox<BloodType> comboBoxBloodType;
	private JComboBox<Gender> comboBoxGender;
	private DatePicker datePicker;
	private JTextField fieldBirthDate;
	private JTextField fieldId;
	private JTextField fieldName;
	private JTextArea fieldObservations;
	private StudyTable tableStudies;
	
	public void initialize() {
		// Initializes the GUI
		super.initialize();
		
		// Locks the frame
		lock();
		
		// Gets the patient
		GetPatientCaller caller = new GetPatientCaller() {
			public void getPatientCallback(Patient patient) {
				// Sets the patient's information
				comboBoxBloodType.setSelectedIndex(BloodType.getConstant(patient.getBloodType()).ordinal());
				comboBoxGender.setSelectedIndex(Gender.getConstant(patient.getGender()).ordinal());
				datePicker.setDate(patient.getBirthDate());
				fieldBirthDate.setText(Utility.formatDate(patient.getBirthDate()));
				fieldId.setText(Utility.bytesToHexadecimal(patient.getId()));
				fieldName.setText(patient.getName());
				fieldObservations.setText(patient.getObservations());
				
				// Gets the study summaries
				GetStudySummariesCaller caller = new GetStudySummariesCaller() {
					public void getStudySummariesCallback(List<StudySummary> studySummaries) {
						// Sets the study summaries as the table's data
						tableStudies.setStudySummaries(studySummaries);
						
						// Unlocks the frame
						unlock();
						
						// Calls the selection callback method
						onSelectStudy();
						
						// Sets the view mode
						setViewMode();
					}
				};
				GetStudySummariesWorker worker = new GetStudySummariesWorker(caller);
				worker.execute();
			}
		};
		GetPatientWorker worker = new GetPatientWorker(caller);
		worker.execute();
	}
	
	protected JPanel getMainPanel() {
		JLabel labelId = new JLabel("ID de paciente:");
		
		fieldId = new JTextField();
		fieldId.setEditable(false);
		registerComponent("fieldId", fieldId);
		
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
			FormFactory.MIN_ROWSPEC,
			FormFactory.NARROW_LINE_GAP_ROWSPEC,
			FormFactory.MIN_ROWSPEC
		}));
		panelFields.add(labelId, "1, 1, right, default");
		panelFields.add(fieldId, "3, 1, fill, default");
		panelFields.add(labelName, "1, 3, right, default");
		panelFields.add(fieldName, "3, 3, fill, default");
		panelFields.add(labelGender, "1, 5, right, default");
		panelFields.add(comboBoxGender, "3, 5, fill, default");
		panelFields.add(labelBirthDate, "1, 7, right, default");
		panelFields.add(panelBirthDate, "3, 7, fill, default");
		panelFields.add(labelBloodType, "1, 9, right, default");
		panelFields.add(comboBoxBloodType, "3, 9, fill, default");
		
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
			RowSpec.decode("fill:max(160px;default):grow")
		}));
		panelObservations.add(panelObservationsContainer, "1, 1");
		
		JPanel panelPatient = new JPanel();
		panelPatient.setLayout(new BorderLayout(10, 0));
		panelPatient.add(panelFields, BorderLayout.WEST);
		panelPatient.add(panelObservations, BorderLayout.CENTER);
		
		JTextField fieldSearch = new JTextField();
		registerComponent("fieldSearch", fieldSearch);
		
		JButton buttonSearch = new JButton("Buscar");
		buttonSearch.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				onSearch();
			}
		});
		registerComponent("buttonSearch", buttonSearch);
		
		JLabel labelCriterion = new JLabel("Criterio de búsqueda:");
		
		JComboBox<String> comboBoxCriterion = new JComboBox<String>();
		comboBoxCriterion.setModel(new DefaultComboBoxModel<String>(new String[] {
			"Cualquier campo",
			"Tipo de estudio",
			"Observaciones"
		}));
		registerComponent("comboBoxCriterion", comboBoxCriterion);
		
		JPanel panelSearch = new JPanel();
		panelSearch.setBorder(BorderFactory.createCompoundBorder(BorderFactory.createTitledBorder("Búsqueda de estudios"), BorderFactory.createEmptyBorder(5, 10, 10, 10)));
		panelSearch.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.GROWING_BUTTON_COLSPEC,
			FormFactory.RELATED_GAP_COLSPEC,
			FormFactory.BUTTON_COLSPEC,
			FormFactory.UNRELATED_GAP_COLSPEC,
			FormFactory.MIN_COLSPEC,
			FormFactory.LABEL_COMPONENT_GAP_COLSPEC,
			FormFactory.GROWING_BUTTON_COLSPEC
		}, new RowSpec[] {
			FormFactory.MIN_ROWSPEC
		}));
		panelSearch.add(fieldSearch, "1, 1, fill, default");
		panelSearch.add(buttonSearch, "3, 1, fill, default");
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
		panelStudies.setPreferredSize(new Dimension(700, 200));
		
		JPanel panelSearchStudies = new JPanel();
		panelSearchStudies.setLayout(new BorderLayout(0, 10));
		panelSearchStudies.add(panelSearch, BorderLayout.NORTH);
		panelSearchStudies.add(panelStudies, BorderLayout.CENTER);
		
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
		
		JButton buttonAddStudy = new JButton("Nuevo estudio...");
		buttonAddStudy.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onAddStudy();
			}
		});
		registerComponent("buttonAddStudy", buttonAddStudy);
		
		buttonRemoveStudy = new JButton("Eliminar estudio...");
		buttonRemoveStudy.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				onRemoveStudy();
			}
		});
		registerComponent("buttonRemoveStudy", buttonRemoveStudy);
		
		buttonViewStudy = new JButton("Ver estudio...");
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
			FormFactory.BUTTON_COLSPEC,
			FormFactory.RELATED_GAP_COLSPEC,
			FormFactory.BUTTON_COLSPEC
		}, new RowSpec[] {
			FormFactory.MIN_ROWSPEC
		}));
		panelButtons.add(buttonGoBack, "1, 1");
		panelButtons.add(buttonSetModifyMode, "3, 1");
		panelButtons.add(buttonModifyPatient, "5, 1");
		panelButtons.add(buttonAddStudy, "7, 1");
		panelButtons.add(buttonRemoveStudy, "9, 1");
		panelButtons.add(buttonViewStudy, "11, 1");
		
		JPanel panelMain = new JPanel();
		panelMain.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
		panelMain.setLayout(new BorderLayout(0, 10));
		panelMain.add(panelPatient, BorderLayout.NORTH);
		panelMain.add(panelSearchStudies, BorderLayout.CENTER);
		panelMain.add(panelButtons, BorderLayout.SOUTH);
		
		return panelMain;
	}

	protected String getTitle() {
		return "MRS - Paciente (" + Utility.bytesToHexadecimal(PatientManager.getCurrentPatientId()) + ")";
	}
	
	protected boolean isResizable() {
		return true;
	}
	
	private void onAddStudy() {
		// Opens the add study frame
		GuiManager.openFrame(GuiManager.ADD_STUDY_FRAME);
	}
	
	private void onButtonDatePickerAction() {
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
		String observations = fieldObservations.getText();
		
		// Modifies the patient
		ModifyPatientCaller caller = new ModifyPatientCaller() {
			public void modifyPatientCallback() {
				// Unlocks the frame
				unlock();
				
				// Sets the view mode
				setViewMode();
			}
		};
		ModifyPatientWorker worker = new ModifyPatientWorker(caller, birthDate, bloodType, gender, name, observations);
		worker.execute();
	}
	
	private void onPickDate() {
		// Shows the picked date in the birth date field
		fieldBirthDate.setText(Utility.formatDate(datePicker.getDate()));
		
		// Hides the date picker popup
		datePicker.hidePopup();
	}
	
	private void onRemoveStudy() {
		// Gets the selected row index (if any)
		final int selectedRowIndex = tableStudies.getSelectedRow();
		
		if (selectedRowIndex < 0)
			// No row has been selected
			return;
		
		// Locks the frame
		lock();
		
		// Gets the study ID
		byte[] studyId = (byte[]) tableStudies.getValueAt(selectedRowIndex, StudyTable.ID);
		
		// Confirms the action
		if (! GuiManager.showConfirmationDialog(this, "¿Eliminar estudio?", "Está a punto de eliminar un estudio." + System.lineSeparator() + "Esta acción no puede revertirse." + System.lineSeparator() + "¿Está seguro que desea continuar?"))
			// The action was canceled
			return;
		
		// Removes the study
		RemoveStudyCaller caller = new RemoveStudyCaller() {
			public void removeStudyCallback() {
				// Removes the study's row
				tableStudies.removeStudySummary(selectedRowIndex);
				
				// Unlocks the frame
				unlock();
				
				// Calls the selection callback method
				onSelectStudy();
			}
		};
		RemoveStudyWorker worker = new RemoveStudyWorker(caller, studyId);
		worker.execute();
	}
	
	private void onSearch() {
		// Locks the frame
		lock();
		
		// Searches the study summaries
		SearchStudySummariesCaller caller = new SearchStudySummariesCaller() {
			public void searchStudySummariesCallback(List<StudySummary> studySummaries) {
				// Sets the study summaries as the table data
				tableStudies.setStudySummaries(studySummaries);
				
				// Unlocks the frame
				unlock();
				
				// Calls the selection callback method
				onSelectStudy();
			}
		};
		SearchStudySummariesWorker worker = new SearchStudySummariesWorker(caller);
		worker.execute();
	}
	
	private void onSelectStudy() {
		// Gets the selected row index (if any)
		int selectedRowIndex = tableStudies.getSelectedRow();
		
		if (selectedRowIndex < 0) {
			// No row has been selected
			buttonRemoveStudy.setEnabled(false);
			buttonViewStudy.setEnabled(false);
		} else {
			// A row has been selected
			buttonRemoveStudy.setEnabled(true);
			buttonViewStudy.setEnabled(true);
		}
	}
	
	private void onSetModifyMode() {
		// Sets the modify mode
		setModifyMode();
	}
	
	private void onViewStudy() {
		// Gets the selected row index (if any)
		int selectedRowIndex = tableStudies.getSelectedRow();

		if (selectedRowIndex < 0)
			// No row has been selected
			return;
		
		// Gets the study ID
		byte[] studyId = (byte[]) tableStudies.getValueAt(selectedRowIndex, StudyTable.ID);
		
		// Sets the study ID as the current one
		StudyManager.setCurrentStudyId(studyId);
		
		// Opens the study frame
		GuiManager.openFrame(GuiManager.STUDY_FRAME);
	}
	
	private void setModifyMode() {
		// Enables components
		buttonDatePicker.setEnabled(true);
		comboBoxBloodType.setEnabled(true);
		comboBoxGender.setEnabled(true);
		fieldName.setEditable(true);
		fieldObservations.setEditable(true);
		
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
		fieldObservations.setEditable(false);
		
		// Disables the modify patient button
		buttonModifyPatient.setEnabled(false);
		
		// Enables the set modify mode button
		buttonSetModifyMode.setEnabled(true);
	}
	
}
