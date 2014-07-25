package gui;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.EventQueue;
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

public class PatientSearch extends JFrame {

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {

			public void run() {
				try {
					PatientSearch frame = new PatientSearch();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	private JPanel contentPane;
	private JTextField dataSearchCriteria;
	
	private JTable dataPaceientes;
	private List<Patient> dataPacientes;

	private TableModel modelTablaPacientes;

	public PatientSearch() {
		this.initGUI();
		this.fillPatients("");
	}
	
	private void addNewPatient() {
		MedicalRecords show = new MedicalRecords(this);
		show.setVisible(true);
		this.setVisible(false);
	}
	
	private void fillPatients(String searchCriteria) {
		System.out.println(searchCriteria);
		try {
			PatientManager manager = UsersManager.getInstance().getPatientManager();
			this.dataPacientes = manager.searchPatient(searchCriteria, "");
			String[][] data = new String[this.dataPacientes.size()][4];
			
			int i = 0;
			for (Patient p : this.dataPacientes) {
				
				data[i][0] = p.getName();
				data[i][1] = p.getDateOfBirth();
				data[i][2] = "" + p.getGender();
				data[i][3] = p.getBloodType();
				
				i++;
			}
			
			this.modelTablaPacientes = new DefaultTableModel(data, new String[] {
				"Nombre",
				"F. Nac.",
				"Sexo",
				"Sangre"
			});
			this.dataPaceientes.setModel(this.modelTablaPacientes);
		} catch (NoConnectedException e) {
			JOptionPane.showMessageDialog(null, e.getMessage(), "Connection error", JOptionPane.ERROR_MESSAGE);
			System.exit(ERROR);
		}
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
		
		setTitle("Buscar Paciente");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 800, 600);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(new BorderLayout(0, 0));
		
		JPanel searchFieldsPane = new JPanel();
		contentPane.add(searchFieldsPane, BorderLayout.NORTH);
		searchFieldsPane.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.MIN_COLSPEC,
			FormFactory.LABEL_COMPONENT_GAP_COLSPEC,
			FormFactory.GROWING_BUTTON_COLSPEC,
			FormFactory.RELATED_GAP_COLSPEC,
			FormFactory.MIN_COLSPEC,
			FormFactory.LABEL_COMPONENT_GAP_COLSPEC,
			ColumnSpec.decode("min:grow"),
		}, new RowSpec[] {
			FormFactory.DEFAULT_ROWSPEC,
			FormFactory.PARAGRAPH_GAP_ROWSPEC,
		}));
		
		JLabel lblBuscar = new JLabel("Buscar:");
		searchFieldsPane.add(lblBuscar, "1, 1, right, default");
		
		dataSearchCriteria = new JTextField();
		dataSearchCriteria.addKeyListener(new KeyAdapter() {

			@Override
			public void keyReleased(KeyEvent arg0) {
				fillPatients(dataSearchCriteria.getText());
			}
		});
		searchFieldsPane.add(dataSearchCriteria, "3, 1, fill, default");
		dataSearchCriteria.setColumns(10);
		
		JLabel lblCampo = new JLabel("Campo:");
		searchFieldsPane.add(lblCampo, "5, 1, right, default");
		
		JComboBox Campos = new JComboBox();
		Campos.addItemListener(new ItemListener() {

			public void itemStateChanged(ItemEvent arg0) {
				fillPatients(dataSearchCriteria.getText());
			}
		});
		Campos.setModel(new DefaultComboBoxModel(new String[] {
			"Nombre",
			"Fecha Nac.",
			"Sexo",
			"Sangre"
		}));
		searchFieldsPane.add(Campos, "7, 1, fill, default");
		
		dataPaceientes = new JTable();
		JScrollPane scrollPane = new JScrollPane(dataPaceientes);
		scrollPane.setPreferredSize(new Dimension(800, 500));
		contentPane.add(scrollPane, BorderLayout.CENTER);
		
		JPanel buttonsPane = new JPanel();
		contentPane.add(buttonsPane, BorderLayout.SOUTH);
		buttonsPane.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.BUTTON_COLSPEC,
			FormFactory.GROWING_BUTTON_COLSPEC,
			FormFactory.BUTTON_COLSPEC,
			FormFactory.RELATED_GAP_COLSPEC,
			FormFactory.BUTTON_COLSPEC,
		}, new RowSpec[] {
			FormFactory.PARAGRAPH_GAP_ROWSPEC,
			FormFactory.DEFAULT_ROWSPEC,
		}));
		
		JButton btnSalir = new JButton("Salir");
		buttonsPane.add(btnSalir, "1, 2");
		
		JButton btnAddNew = new JButton("Agregar Nuevo");
		btnAddNew.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent arg0) {
				addNewPatient();
			}
		});
		buttonsPane.add(btnAddNew, "3, 2");
		
		JButton btnView = new JButton("Ver");
		btnView.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent arg0) {
				int row = dataPaceientes.getSelectedRow();

				viewPatient(dataPacientes.get(row));
			}
		});
		buttonsPane.add(btnView, "5, 2");
		
		dataPaceientes.addMouseListener(new MouseAdapter() {

			public void mouseClicked(MouseEvent e) {
				System.out.println(e.getClickCount());
				if (e.getClickCount() == 2) {
					JTable target = (JTable) e.getSource();
					int row = target.getSelectedRow();

					viewPatient(dataPacientes.get(row));
				}
			}
		});
	}
	
	private void viewPatient(Patient patient) {
		MedicalRecords mr = new MedicalRecords(patient, this);
		mr.setVisible(true);
		this.setVisible(false);
	}

}
