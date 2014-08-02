package gui;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.List;
import javax.swing.BorderFactory;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextField;
import javax.swing.ListSelectionModel;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import com.jgoodies.forms.factories.FormFactory;
import com.jgoodies.forms.layout.ColumnSpec;
import com.jgoodies.forms.layout.FormLayout;
import com.jgoodies.forms.layout.RowSpec;
import entities.PatientSummary;
import gui.components.GuiFrame;
import gui.components.PatientTable;
import gui.workers.GetPatientSummariesCaller;
import gui.workers.GetPatientSummariesWorker;
import managers.GuiManager;
import managers.PatientManager;
import managers.UserManager;

//TODO: validate input
//TODO: search
public class UserFrame extends GuiFrame {

	private JButton buttonViewPatient;
	private PatientTable tablePatients;
	
	public void initialize() {
		// Initializes the GUI
		super.initialize();
		
		// Disables the view patient button
		onSelectPatient();
		
		// Locks the frame
		lock();
		
		// Gets the patient summaries
		GetPatientSummariesCaller caller = new GetPatientSummariesCaller() {
			public void getPatientSummariesCallback(List<PatientSummary> patientSummaries) {
				// Sets the patient summaries as the table data
				tablePatients.setPatientSummaries(patientSummaries);
				
				// Unlocks the frame
				unlock();
			}
		};
		GetPatientSummariesWorker worker = new GetPatientSummariesWorker(caller, UserManager.getCurrentUserId());
		worker.execute();
	}
	
	protected JPanel getMainPanel() {
		JLabel labelSearch = new JLabel("Búsqueda");
		
		JTextField fieldSearch = new JTextField();
		registerComponent("fieldSearch", fieldSearch);
		
		JLabel labelCriterion = new JLabel("Criterio de búsqueda");
		
		JComboBox<String> comboBoxCriterion = new JComboBox<String>();
		comboBoxCriterion.setModel(new DefaultComboBoxModel<String>(new String[] {
			"Nombre",
			"Fecha de nacimiento",
			"Sexo",
			"Grupo sanguíneo"
		}));
		registerComponent("comboBoxCriterion", comboBoxCriterion);
		
		JPanel panelSearch = new JPanel();
		panelSearch.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.MIN_COLSPEC,
			FormFactory.LABEL_COMPONENT_GAP_COLSPEC,
			FormFactory.GROWING_BUTTON_COLSPEC,
			FormFactory.RELATED_GAP_COLSPEC,
			FormFactory.MIN_COLSPEC,
			FormFactory.LABEL_COMPONENT_GAP_COLSPEC,
			ColumnSpec.decode("min:grow")
		}, new RowSpec[] {
			FormFactory.DEFAULT_ROWSPEC,
			FormFactory.PARAGRAPH_GAP_ROWSPEC
		}));
		panelSearch.add(labelSearch, "1, 1, right, default");
		panelSearch.add(fieldSearch, "3, 1, fill, default");
		panelSearch.add(labelCriterion, "5, 1, right, default");
		panelSearch.add(comboBoxCriterion, "7, 1, fill, default");
		
		tablePatients = new PatientTable();
		tablePatients.addMouseListener(new MouseAdapter() {
			public void mouseClicked(MouseEvent event) {
				if (event.getClickCount() == 2)
					onViewPatient();
			}
		});
		tablePatients.setRowHeight(24);
		tablePatients.getSelectionModel().setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
		tablePatients.getSelectionModel().addListSelectionListener(new ListSelectionListener() {
			public void valueChanged(ListSelectionEvent event) {
				if (! event.getValueIsAdjusting())
					onSelectPatient();
			}
		});
		registerComponent("tablePatients", tablePatients);
		
		JScrollPane panelPatients = new JScrollPane(tablePatients, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		panelPatients.setPreferredSize(new Dimension(800, 400));
		
		JButton buttonExit = new JButton("Salir");
		buttonExit.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onExit();
			}
		});
		registerComponent("buttonExit", buttonExit);
		
		JButton buttonAddPatient = new JButton("Ingresar paciente");
		buttonAddPatient.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onAddPatient();
			}
		});
		registerComponent("buttonAddPatient", buttonAddPatient);
		
		buttonViewPatient = new JButton("Ver paciente");
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
			FormFactory.BUTTON_COLSPEC
		}, new RowSpec[] {
			FormFactory.PARAGRAPH_GAP_ROWSPEC,
			FormFactory.DEFAULT_ROWSPEC
		}));
		panelButtons.add(buttonExit, "1, 2");
		panelButtons.add(buttonAddPatient, "3, 2");
		panelButtons.add(buttonViewPatient, "5, 2");
		
		JPanel panelMain = new JPanel();
		panelMain.setBorder(BorderFactory.createEmptyBorder(5, 5, 5, 5));
		panelMain.setLayout(new BorderLayout(0, 0));
		panelMain.add(panelSearch, BorderLayout.NORTH);
		panelMain.add(panelPatients, BorderLayout.CENTER);
		panelMain.add(panelButtons, BorderLayout.SOUTH);
		
		return panelMain;
	}

	protected String getTitle() {
		return "MRS - Usuario: " + UserManager.getCurrentUserId();
	}
	
	private void onAddPatient() {
		// Opens the add patient frame
		GuiManager.openFrame(GuiManager.ADD_PATIENT_FRAME);
	}
	
	private void onExit() {
		// Closes the current frame
		GuiManager.closeCurrentFrame();
	}
	
	private void onSelectPatient() {
		// Gets the selected row index (if any)
		int selectedRowIndex = tablePatients.getSelectedRow();
		
		if (selectedRowIndex < 0)
			// No row has been selected
			buttonViewPatient.setEnabled(false);
		else
			// A row has been selected
			buttonViewPatient.setEnabled(true);
	}
	
	private void onViewPatient() {
		// Gets the selected row index (if any)
		int selectedRowIndex = tablePatients.getSelectedRow();
		
		if (selectedRowIndex >= 0) {
			// Gets the patient ID
			byte[] patientId = (byte[]) tablePatients.getValueAt(selectedRowIndex, PatientTable.ID);
			
			// Sets the patient ID as the current one
			PatientManager.setCurrentPatientId(patientId);
			
			// Opens the patient frame
			GuiManager.openFrame(GuiManager.PATIENT_FRAME);
		}
	}
	
}
