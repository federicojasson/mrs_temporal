package gui;

import java.awt.Dimension;
import java.awt.EventQueue;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.List;
import javax.swing.BoxLayout;
import javax.swing.ComboBoxModel;
import javax.swing.DefaultComboBoxModel;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;
import javax.swing.border.EmptyBorder;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;
import com.jgoodies.forms.factories.FormFactory;
import com.jgoodies.forms.layout.ColumnSpec;
import com.jgoodies.forms.layout.FormLayout;
import com.jgoodies.forms.layout.RowSpec;

public class MedicalRecords extends JFrame {

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {

			public void run() {
				try {
					PatientManager manager = UsersManager.getInstance().getPatientManager();
					
					MedicalRecords frame = new MedicalRecords(manager.searchPatient("", "").get(0));
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	private JPanel contentPane;
	private JTextField fieldBuscar;
	
	private JTable records;
	
	private JButton datePicker;
	private ComboBoxModel<String> filtros = new DefaultComboBoxModel<String>(new String[] {
		"Cualquier Campo",
		"Tipo de Estudio",
		"Observaciones"
	});
	private ComboBoxModel<String> sexos = new DefaultComboBoxModel<String>(new String[] {
		"Masculino",
		"Femenino"
	});
	
	private ComboBoxModel<String> tiposSangre = new DefaultComboBoxModel<String>(new String[] {
		"0-",
		"0+",
		"A\u2212",
		"A+",
		"B\u2212",
		"B+",
		"AB\u2212",
		"AB+"
	});
	
	private TableModel dataRecords = new DefaultTableModel(new Object[][] {}, new String[] {
		"Tipo de Estudio",
		"Fecha",
		"Observaciones"
	});
	private JTextField dataId;
	private JTextField dataNombre;
	private JTextField dataFechaNac;
	//private UtilDateModel dataFechaNac;
	private JComboBox<String> dataSangre;
	private JComboBox<String> dataSexo;
	
	private Study[] dataEstudiosPaciente;
	
	private JFrame parent;

	private Patient paceinte;
	
	public MedicalRecords() {
		this.initGUI();
		this.paceinte = new Patient();
		this.editMode(true);
		this.showPatientData();
	}
	
	public MedicalRecords(JFrame parent) {
		this();
		this.parent = parent;
	}
	
	public MedicalRecords(Patient current_patient) {
		this.initGUI();
		this.paceinte = current_patient;
		this.editMode(false);
		this.showPatientData();
	}
	
	public MedicalRecords(Patient current_patient, JFrame parent) {
		this(current_patient);
		this.editMode(false);
		this.parent = parent;
	}
	
	private void AgregarEstudio(ActionEvent arg0) {
		AddRecord add = new AddRecord(this, this.paceinte.getId());
		add.setVisible(true);
		this.setVisible(false);
	}

	private void editMode(boolean editable) {
		if (! editable) {
			this.dataId.setEnabled(false);
			this.dataNombre.setEnabled(false);
			this.dataSexo.setEnabled(false);
			this.dataSangre.setEnabled(false);
			this.dataFechaNac.setEnabled(false);
			this.datePicker.setEnabled(false);
		}
	}
	
	private void fillRecords() {
		try {
			List<Study> lista = this.paceinte.getStudies_patient();
			this.dataEstudiosPaciente = new Study[lista.size()];
			String[][] data = new String[lista.size()][3];
			
			int i = 0;
			for (Study s : lista) {
				this.dataEstudiosPaciente[i] = s;
				
				data[i][0] = s.getType();
				data[i][1] = s.getDate();
				data[i][2] = s.getObservations();
				
				i++;
			}
			
			this.dataRecords = new DefaultTableModel(data, new String[] {
				"Tipo de Estudio",
				"Fecha",
				"Observaciones"
			});
			this.records.setModel(this.dataRecords);
		} catch (NoConnectedException e) {
			JOptionPane.showMessageDialog(null, e.getMessage(), "Connection error", JOptionPane.ERROR_MESSAGE);
			System.exit(ERROR);
		}
	}
	
	private void fillRecords(String searchCriteria) {
		try {
			List<Study> lista = this.paceinte.searchStudy(searchCriteria, "");
			this.dataEstudiosPaciente = new Study[lista.size()];
			String[][] data = new String[lista.size()][3];
			
			int i = 0;
			for (Study s : lista) {
				this.dataEstudiosPaciente[i] = s;
				
				data[i][0] = s.getType();
				data[i][1] = s.getDate();
				data[i][2] = s.getObservations();
				
				i++;
			}
			
			this.dataRecords = new DefaultTableModel(data, new String[] {
				"Tipo de Estudio",
				"Fecha",
				"Observaciones"
			});
			this.records.setModel(this.dataRecords);
		} catch (NoConnectedException e) {
			JOptionPane.showMessageDialog(null, e.getMessage(), "Connection error", JOptionPane.ERROR_MESSAGE);
			System.exit(ERROR);
		}
	}
	
	public int getPatientId() {
		return this.paceinte.getId();
	}
	
	/**
	 * Create the frame.
	 */
	private void initGUI() {
		try {
			UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
		} catch (ClassNotFoundException | InstantiationException | IllegalAccessException | UnsupportedLookAndFeelException e) {
			e.printStackTrace();
		}
		
		setTitle("Historia Cl\u00EDnica");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 800, 600);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(new BoxLayout(contentPane, BoxLayout.Y_AXIS));
		
		JPanel patientDataPane = new JPanel();
		patientDataPane.setMaximumSize(new Dimension(32767, 200));
		contentPane.add(patientDataPane);
		FormLayout fl_patientDataPane = new FormLayout(new ColumnSpec[] {
			FormFactory.MIN_COLSPEC,
			FormFactory.LABEL_COMPONENT_GAP_COLSPEC,
			FormFactory.GROWING_BUTTON_COLSPEC,
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
			FormFactory.PARAGRAPH_GAP_ROWSPEC,
		});
		patientDataPane.setLayout(fl_patientDataPane);
		
		JLabel lblIdPaciente = new JLabel("ID Paciente:");
		patientDataPane.add(lblIdPaciente, "1, 1, right, default");
		
		dataId = new JTextField();
		dataId.setPreferredSize(new Dimension(6, 23));
		dataId.setEditable(false);
		patientDataPane.add(dataId, "3, 1, fill, default");
		dataId.setColumns(10);
		
		JLabel lblNombre = new JLabel("Nombre:");
		patientDataPane.add(lblNombre, "1, 3, right, default");
		
		dataNombre = new JTextField();
		dataNombre.setPreferredSize(new Dimension(6, 23));
		patientDataPane.add(dataNombre, "3, 3, fill, default");
		dataNombre.setColumns(10);
		
		JLabel lblSexo = new JLabel("Sexo:");
		patientDataPane.add(lblSexo, "1, 5, right, default");
		
		dataSexo = new JComboBox<String>();
		dataSexo.setPreferredSize(new Dimension(28, 23));
		dataSexo.setModel(this.sexos);
		patientDataPane.add(dataSexo, "3, 5, fill, default");
		
		JLabel lblFechaNac = new JLabel("Fecha Nac.:");
		patientDataPane.add(lblFechaNac, "1, 7, right, default");
		
		//////////////////////////////////////////////////////////
		
		JPanel fechaPanel = new JPanel();
		fechaPanel.setPreferredSize(new Dimension(200, 24));
		fechaPanel.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.GROWING_BUTTON_COLSPEC,
			FormFactory.PREF_COLSPEC,
		}, new RowSpec[] {
			FormFactory.BUTTON_ROWSPEC,
		}));
		
		dataFechaNac = new JTextField(10);
		fechaPanel.add(dataFechaNac, "1, 1, fill, default");
		
		final DatePicker dp = new DatePicker();
		ImageIcon ii = dp.getImage();
		datePicker = new JButton(ii);
		datePicker.setPreferredSize(new Dimension(30, 24));
		fechaPanel.add(datePicker, "2, 1, default, default");
		datePicker.setMargin(new Insets(0, 0, 0, 0));
		datePicker.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				dp.setDate(dataFechaNac.getText());
				dp.popupShow(datePicker);
			}
		});
		dp.addPopupListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				dataFechaNac.setText(dp.getFormattedDate());
				dp.popupHide();
			}
		});

		patientDataPane.add(fechaPanel, "3, 7, fill, default");
		
		//////////////////////////////////////////////////////////
		
		JLabel lblSangre = new JLabel("Sangre:");
		patientDataPane.add(lblSangre, "1, 9, right, default");
		
		dataSangre = new JComboBox<String>();
		dataSangre.setPreferredSize(new Dimension(28, 23));
		dataSangre.setModel(this.tiposSangre);
		patientDataPane.add(dataSangre, "3, 9, fill, default");
		
		JPanel recordsPane = new JPanel();
		contentPane.add(recordsPane);
		recordsPane.setLayout(new BoxLayout(recordsPane, BoxLayout.Y_AXIS));
		
		JPanel search = new JPanel();
		search.setMaximumSize(new Dimension(32767, 90));
		recordsPane.add(search);
		search.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.MIN_COLSPEC,
			FormFactory.LABEL_COMPONENT_GAP_COLSPEC,
			FormFactory.GROWING_BUTTON_COLSPEC,
			FormFactory.UNRELATED_GAP_COLSPEC,
			FormFactory.MIN_COLSPEC,
			FormFactory.LABEL_COMPONENT_GAP_COLSPEC,
			FormFactory.GROWING_BUTTON_COLSPEC,
		}, new RowSpec[] {
			FormFactory.DEFAULT_ROWSPEC,
			FormFactory.NARROW_LINE_GAP_ROWSPEC,
		}));
		
		JLabel lblBuscar = new JLabel("Buscar:");
		search.add(lblBuscar, "1, 1, right, default");
		
		fieldBuscar = new JTextField();
		fieldBuscar.setPreferredSize(new Dimension(6, 23));
		search.add(fieldBuscar, "3, 1, fill, default");
		fieldBuscar.setColumns(10);
		
		JLabel lblCampo = new JLabel("Campo:");
		search.add(lblCampo, "5, 1, right, default");
		
		JComboBox<String> comboBox = new JComboBox<String>();
		comboBox.setPreferredSize(new Dimension(28, 23));
		comboBox.setModel(this.filtros);
		search.add(comboBox, "7, 1, fill, default");

		records = new JTable();
		records.setModel(this.dataRecords);
		records.getColumnModel().getColumn(0).setPreferredWidth(90);
		records.getColumnModel().getColumn(2).setPreferredWidth(230);
		
		JScrollPane scrollPane = new JScrollPane(records);
		scrollPane.setPreferredSize(new Dimension(750, 110));
		recordsPane.add(scrollPane);
		
		records.addMouseListener(new MouseAdapter() {

			public void mouseClicked(MouseEvent e) {
				if (e.getClickCount() == 2) {
					JTable target = (JTable) e.getSource();
					int row = target.getSelectedRow();

					verEstudio(dataEstudiosPaciente[row]);
				}
			}
		});
		
		JPanel bottomPane = new JPanel();
		bottomPane.setMaximumSize(new Dimension(32767, 90));
		contentPane.add(bottomPane);
		bottomPane.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.BUTTON_COLSPEC,
			FormFactory.UNRELATED_GAP_COLSPEC,
			FormFactory.BUTTON_COLSPEC,
			FormFactory.GROWING_BUTTON_COLSPEC,
			FormFactory.BUTTON_COLSPEC,
		}, new RowSpec[] {
			FormFactory.PARAGRAPH_GAP_ROWSPEC,
			FormFactory.DEFAULT_ROWSPEC,
		}));
		
		JButton btnAgregarEstudio = new JButton("Agregar Estudio");
		btnAgregarEstudio.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent arg0) {
				AgregarEstudio(arg0);
			}
		});
		bottomPane.add(btnAgregarEstudio, "1, 2");
		
		JButton btnVerEstudio = new JButton("Ver Estudio");
		btnAgregarEstudio.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent arg0) {
				int row = records.getSelectedRow();

				verEstudio(dataEstudiosPaciente[row]);
			}
		});
		bottomPane.add(btnVerEstudio, "3, 2");
		
		JButton btnVolver = new JButton("Volver");
		btnVolver.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				Volver(e);
			}
		});
		bottomPane.add(btnVolver, "5, 2");
	}
	
	public void ReturnFromAgregarEstudio(Study newStudy) {
		try {
			//Si se agreg� algo hay que recargar la lista de estudios
			if (newStudy != null) {
				//Recargar la lista de estudios de este paciente en la vista
				this.paceinte.addStudy(newStudy);
				
				this.fillRecords();
			}
			
			this.setVisible(true);
		} catch (NoConnectedException e) {
			JOptionPane.showMessageDialog(this, e.getMessage(), "Connection error", JOptionPane.ERROR_MESSAGE);
			System.exit(ERROR);
		}
	}
	
	private void showPatientData() {
		if (this.paceinte != null) {
			this.dataId.setText("" + this.paceinte.getId());
			;
			this.dataNombre.setText(this.paceinte.getName());
			;
			this.dataFechaNac.setText(this.paceinte.getDateOfBirth());
			
			System.out.println(this.tiposSangre.getElementAt(0) == null);
			
			int index = 0;
			while ((index < this.tiposSangre.getSize()) && ! this.tiposSangre.getElementAt(index).equals(this.paceinte.getBloodType()))
				index++;
			if (index < this.tiposSangre.getSize())
				this.dataSangre.setSelectedIndex(index);
			
			if (this.paceinte.getGender() == 'm')
				this.dataSexo.setSelectedIndex(0);
			else
				this.dataSexo.setSelectedIndex(1);
		}
		
		this.fillRecords();
	}
	
	private void verEstudio(Study selectedStudy) {
		//Lanzar la ventana de edici�n de estudios
	}
	
	private void Volver(ActionEvent arg0) {
		if (this.parent != null)
			parent.setVisible(true);
		this.setVisible(false);
		this.dispose();
	}
}