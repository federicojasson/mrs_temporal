package gui.frames;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.List;
import java.util.TimerTask;
import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextField;
import javax.swing.ListSelectionModel;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import com.jgoodies.forms.factories.FormFactory;
import com.jgoodies.forms.layout.ColumnSpec;
import com.jgoodies.forms.layout.FormLayout;
import com.jgoodies.forms.layout.RowSpec;
import entities.PatientSummary;
import gui.components.PatientTable;
import gui.workers.GetPatientSummariesCaller;
import gui.workers.GetPatientSummariesWorker;
import gui.workers.RemovePatientCaller;
import gui.workers.RemovePatientWorker;
import gui.workers.SearchPatientSummariesCaller;
import gui.workers.SearchPatientSummariesWorker;
import managers.GuiManager;
import managers.PatientManager;
import managers.TimerManager;
import managers.UserManager;

public class UserFrame extends GuiFrame {

	private JButton buttonRemovePatient;
	private JButton buttonViewPatient;
	private JTextField fieldSearch;
	private PatientTable tablePatients;
	
	public void initialize() {
		// Initializes the GUI
		super.initialize();
		
		// Locks the frame
		lock();
		
		// Gets the patient summaries
		GetPatientSummariesCaller caller = new GetPatientSummariesCaller() {
			public void getPatientSummariesCallback(List<PatientSummary> patientSummaries) {
				// Sets the patient summaries as the table data
				tablePatients.setPatientSummaries(patientSummaries);
				
				// Unlocks the frame
				unlock();
				
				// Calls the selection callback method
				onSelectPatient();
			}
		};
		GetPatientSummariesWorker worker = new GetPatientSummariesWorker(caller);
		worker.execute();
	}
	
	protected JPanel getMainPanel() {
		fieldSearch = new JTextField();
		fieldSearch.getDocument().addDocumentListener(new DocumentListener() {
			
			public void changedUpdate(DocumentEvent event) {
				// Plain text components do not fire these events
			}
			
			public void insertUpdate(DocumentEvent event) {
				onSearch();
			}
			
			public void removeUpdate(DocumentEvent event) {
				onSearch();
			}
			
		});
		registerComponent("fieldSearch", fieldSearch);
		
		JLabel labelSearch = new JLabel("Dejar este campo vacío para mostrar todos los pacientes.");
		
		JPanel panelSearch = new JPanel();
		panelSearch.setBorder(BorderFactory.createCompoundBorder(BorderFactory.createTitledBorder("Búsqueda de pacientes"), BorderFactory.createEmptyBorder(5, 10, 10, 10)));
		panelSearch.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.GROWING_BUTTON_COLSPEC,
			FormFactory.RELATED_GAP_COLSPEC,
			FormFactory.MIN_COLSPEC
		}, new RowSpec[] {
			FormFactory.MIN_ROWSPEC
		}));
		panelSearch.add(fieldSearch, "1, 1, fill, default");
		panelSearch.add(labelSearch, "3, 1, right, default");
		
		tablePatients = new PatientTable();
		tablePatients.addMouseListener(new MouseAdapter() {
			public void mouseClicked(MouseEvent event) {
				if (event.getClickCount() == 2)
					onViewPatient();
			}
		});
		tablePatients.getSelectionModel().setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
		tablePatients.getSelectionModel().addListSelectionListener(new ListSelectionListener() {
			public void valueChanged(ListSelectionEvent event) {
				if (! event.getValueIsAdjusting())
					onSelectPatient();
			}
		});
		registerComponent("tablePatients", tablePatients);
		
		JScrollPane panelPatients = new JScrollPane(tablePatients, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		panelPatients.setPreferredSize(new Dimension(700, 370));
		
		JButton buttonExit = new JButton("Salir");
		buttonExit.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onExit();
			}
		});
		registerComponent("buttonExit", buttonExit);
		
		JButton buttonAddPatient = new JButton("Nuevo paciente...");
		buttonAddPatient.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onAddPatient();
			}
		});
		registerComponent("buttonAddPatient", buttonAddPatient);
		
		buttonRemovePatient = new JButton("Eliminar paciente...");
		buttonRemovePatient.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onRemovePatient();
			}
		});
		registerComponent("buttonRemovePatient", buttonRemovePatient);
		
		buttonViewPatient = new JButton("Ver paciente...");
		buttonViewPatient.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onViewPatient();
			}
		});
		registerComponent("buttonViewPatient", buttonViewPatient);
		setDefaultButton(buttonViewPatient);
		
		JPanel panelButtons = new JPanel();
		panelButtons.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.BUTTON_COLSPEC,
			FormFactory.GROWING_BUTTON_COLSPEC,
			FormFactory.BUTTON_COLSPEC,
			FormFactory.RELATED_GAP_COLSPEC,
			FormFactory.BUTTON_COLSPEC,
			FormFactory.RELATED_GAP_COLSPEC,
			FormFactory.BUTTON_COLSPEC
		}, new RowSpec[] {
			FormFactory.MIN_ROWSPEC
		}));
		panelButtons.add(buttonExit, "1, 1");
		panelButtons.add(buttonAddPatient, "3, 1");
		panelButtons.add(buttonRemovePatient, "5, 1");
		panelButtons.add(buttonViewPatient, "7, 1");
		
		JPanel panelMain = new JPanel();
		panelMain.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
		panelMain.setLayout(new BorderLayout(0, 10));
		panelMain.add(panelSearch, BorderLayout.NORTH);
		panelMain.add(panelPatients, BorderLayout.CENTER);
		panelMain.add(panelButtons, BorderLayout.SOUTH);
		
		return panelMain;
	}

	protected String getTitle() {
		return "MRS - Usuario: " + UserManager.getCurrentUserId();
	}
	
	protected boolean isResizable() {
		return true;
	}
	
	private void onAddPatient() {
		// Opens the add patient frame
		GuiManager.openFrame(GuiManager.ADD_PATIENT_FRAME);
	}
	
	private void onExit() {
		// Closes the current frame
		GuiManager.closeCurrentFrame();
	}
	
	private void onRemovePatient() {
		// Gets the selected row index (if any)
		final int selectedRowIndex = tablePatients.getSelectedRow();
		
		if (selectedRowIndex < 0)
			// No row has been selected
			return;
		
		// Gets the patient ID
		byte[] patientId = (byte[]) tablePatients.getValueAt(selectedRowIndex, PatientTable.ID);
		
		// Confirms the action
		if (! GuiManager.showConfirmationDialog(this, "¿Eliminar paciente?", "Está a punto de eliminar un paciente y todos sus estudios asociados." + System.lineSeparator() + "Esta acción no puede revertirse." + System.lineSeparator() + "¿Está seguro que desea continuar?"))
			// The action was canceled
			return;
		
		// Locks the frame
		lock();
		
		// Removes the patient
		RemovePatientCaller caller = new RemovePatientCaller() {
			public void removePatientCallback() {
				// Removes the patient's row
				tablePatients.removePatientSummary(selectedRowIndex);
				
				// Unlocks the frame
				unlock();
				
				// Calls the selection callback method
				onSelectPatient();
			}
		};
		RemovePatientWorker worker = new RemovePatientWorker(caller, patientId);
		worker.execute();
	}
	
	private void onSearch() {
		TimerTask task = new TimerTask() {
			public void run() {
				// Gets the search
				String search = fieldSearch.getText().trim();
				
				// Locks the frame
				lock();
				
				// Searches the patient summaries
				SearchPatientSummariesCaller caller = new SearchPatientSummariesCaller() {
					public void searchPatientSummariesCallback(List<PatientSummary> patientSummaries) {
						// Sets the patient summaries as the table data
						tablePatients.setPatientSummaries(patientSummaries);
						
						// Unlocks the frame
						unlock();
						
						// Calls the selection callback method
						onSelectPatient();
						
						// Focus the search field
						fieldSearch.requestFocus();
					}
				};
				SearchPatientSummariesWorker worker = new SearchPatientSummariesWorker(caller, search);
				worker.execute();
			}
		};
		TimerManager.scheduleTask(task, 800);
	}
	
	private void onSelectPatient() {
		// Gets the selected row index (if any)
		int selectedRowIndex = tablePatients.getSelectedRow();
		
		if (selectedRowIndex < 0) {
			// No row has been selected
			buttonRemovePatient.setEnabled(false);
			buttonViewPatient.setEnabled(false);
		} else {
			// A row has been selected
			buttonRemovePatient.setEnabled(true);
			buttonViewPatient.setEnabled(true);
		}
	}
	
	private void onViewPatient() {
		// Gets the selected row index (if any)
		int selectedRowIndex = tablePatients.getSelectedRow();
		
		if (selectedRowIndex < 0)
			// No row has been selected
			return;
		
		// Gets the patient ID
		byte[] patientId = (byte[]) tablePatients.getValueAt(selectedRowIndex, PatientTable.ID);
		
		// Sets the patient ID as the current one
		PatientManager.setCurrentPatientId(patientId);
		
		// Opens the patient frame
		GuiManager.openFrame(GuiManager.PATIENT_FRAME);
	}
	
}
