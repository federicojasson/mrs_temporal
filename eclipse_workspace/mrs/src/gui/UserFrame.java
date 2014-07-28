package gui;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.List;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;
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

//TODO: only one row can be selected at a time
//TODO: enable and disable buttonViewPatient when a row is clicked
public class UserFrame extends GuiFrame implements GetPatientSummariesCaller {

	private JButton buttonAddPatient;
	private JButton buttonExit;
	private JButton buttonViewPatient;
	private JComboBox<String> comboBoxCriterion;
	private JTextField fieldSearch;
	private PatientTable tablePatients;
	
	public void getPatientSummariesCallback(List<PatientSummary> patientSummaries) {
		// Sets the patient summaries as the table model data
		tablePatients.getModel().setPatientSummaries(patientSummaries);
		
		// Re-enables GUI interactions
		enableGuiInteractions();
	}
	
	public void initialize() {
		// Initializes the GUI
		super.initialize();
		
		// Disables GUI interactions
		disableGuiInteractions();
		
		// Gets the patient summaries
		GetPatientSummariesWorker worker = new GetPatientSummariesWorker(this, UserManager.getCurrentUserId());
		worker.execute();
	}
	
	protected JPanel getMainPanel() {
		JLabel labelSearch = new JLabel("B�squeda");
		
		fieldSearch = new JTextField();
		fieldSearch.addKeyListener(new KeyAdapter() {
			public void keyReleased(KeyEvent event) {
				//fillPatients(dataSearchCriteria.getText()); TODO
			}
		});
		fieldSearch.setColumns(10);
		
		JLabel labelCriterion = new JLabel("Criterio de b�squeda");
		
		comboBoxCriterion = new JComboBox<String>();
		comboBoxCriterion.addItemListener(new ItemListener() {
			public void itemStateChanged(ItemEvent event) {
				//fillPatients(dataSearchCriteria.getText()); TODO
			}
		});
		comboBoxCriterion.setModel(new DefaultComboBoxModel<String>(new String[] {
			"Nombre",
			"Fecha de nacimiento",
			"Sexo",
			"Grupo sangu�neo"
		}));
		
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
		
		JScrollPane panelPatients = new JScrollPane(tablePatients);
		panelPatients.setPreferredSize(new Dimension(800, 400));
		
		buttonExit = new JButton("Salir");
		buttonExit.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onExit();
			}
		});
		
		buttonAddPatient = new JButton("Ingresar paciente");
		buttonAddPatient.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onAddPatient();
			}
		});
		
		buttonViewPatient = new JButton("Ver paciente");
		buttonViewPatient.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onViewPatient();
			}
		});
		
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
		panelMain.setBorder(new EmptyBorder(5, 5, 5, 5));
		panelMain.setLayout(new BorderLayout(0, 0));
		panelMain.add(panelSearch, BorderLayout.NORTH);
		panelMain.add(panelPatients, BorderLayout.CENTER);
		panelMain.add(panelButtons, BorderLayout.SOUTH);
		
		return panelMain;
	}

	protected String getTitle() {
		return "MRS - Usuario: " + UserManager.getCurrentUserId();
	}
	
	private void disableGuiInteractions() {
		buttonAddPatient.setEnabled(false);
		buttonExit.setEnabled(false);
		buttonViewPatient.setEnabled(false);
		comboBoxCriterion.setEnabled(false);
		fieldSearch.setEnabled(false);
		tablePatients.setEnabled(false);
	}
	
	private void enableGuiInteractions() {
		buttonAddPatient.setEnabled(true);
		buttonExit.setEnabled(true);
		buttonViewPatient.setEnabled(true);
		comboBoxCriterion.setEnabled(true);
		fieldSearch.setEnabled(true);
		tablePatients.setEnabled(true);
	}
	
	private void onAddPatient() {
		// Nullifies the current patient ID
		PatientManager.setCurrentPatientId(null);
		
		// Opens the add patient frame
		GuiManager.openFrame(GuiManager.ADD_PATIENT_FRAME);
	}
	
	private void onExit() {
		// Closes the current frame
		GuiManager.closeCurrentFrame();
	}
	
	private void onViewPatient() {
		// Gets the selected row index (if any)
		int selectedRowIndex = tablePatients.getSelectedRow();
		
		if (selectedRowIndex >= 0) { // TODO: maybe it would be asured that a row is selected?
			// A row has been selected
			
			// Gets the patient ID
			byte[] patientId = (byte[]) tablePatients.getModel().getValueAt(selectedRowIndex, PatientTable.ID);
			
			// Sets the patient ID as the current one
			PatientManager.setCurrentPatientId(patientId);
			
			// Opens the patient frame
			GuiManager.openFrame(GuiManager.PATIENT_FRAME);
		}
	}
	
}
