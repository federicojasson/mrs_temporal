package gui;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.BoxLayout;

import com.jgoodies.forms.layout.FormLayout;
import com.jgoodies.forms.layout.ColumnSpec;
import com.jgoodies.forms.layout.RowSpec;
import com.jgoodies.forms.factories.FormFactory;

import entities.Patient;
import entities.Study;

import javax.swing.ComboBoxModel;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.JComboBox;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;

import java.awt.Dimension;

import javax.swing.JButton;

import net.sourceforge.jdatepicker.impl.JDatePanelImpl;
import net.sourceforge.jdatepicker.impl.JDatePickerImpl;
import net.sourceforge.jdatepicker.impl.UtilDateModel;

import javax.swing.DefaultComboBoxModel;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.Date;
import java.util.List;
import java.util.Random;

public class MedicalRecords extends JFrame {

	private JPanel contentPane;
	private JTextField fieldBuscar;
	private JTable records;
	
	private ComboBoxModel<String> filtros =  new DefaultComboBoxModel<String>(new String[] {"Cualquier Campo", "Tipo de Estudio", "Observaciones"});
	private ComboBoxModel<String> sexos =  new DefaultComboBoxModel<String>(new String[] {"Masculino", "Femenino"});
	private ComboBoxModel<String> tiposSangre =  new DefaultComboBoxModel<String>(new String[] {"0-", "0+", "A\u2212", "A+", "B\u2212", "B+", "AB\u2212", "AB+"});
	
	private TableModel dataRecords = new DefaultTableModel(new Object[][] {}, new String[] {"Tipo de Estudio", "Fecha", "Observaciones"});
	
	private JTextField dataId;
	private JTextField dataNombre;
	private UtilDateModel dataFechaNac;
	private JComboBox<String> dataSangre;
	private JComboBox<String> dataSexo;
	private Study[] dataEstudiosPaciente;
	
	private JFrame parent;
	
	private Patient paceinte;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					MedicalRecords frame = new MedicalRecords(MedicalRecords.testPatient());
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}
	
	public MedicalRecords(Patient current_patient, JFrame parent){
		this(current_patient);
		this.parent = parent;
	}

	/**
	 * Create the frame.
	 */
	public MedicalRecords(Patient current_patient) {
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
				FormFactory.GROWING_BUTTON_COLSPEC,},
			new RowSpec[] {
				FormFactory.DEFAULT_ROWSPEC,
				FormFactory.DEFAULT_ROWSPEC,
				FormFactory.DEFAULT_ROWSPEC,
				FormFactory.DEFAULT_ROWSPEC,
				FormFactory.DEFAULT_ROWSPEC,});
		patientDataPane.setLayout(fl_patientDataPane);
		
		JLabel lblIdPaciente = new JLabel("ID Paciente:");
		patientDataPane.add(lblIdPaciente, "1, 1, right, default");
		
		dataId = new JTextField();
		dataId.setPreferredSize(new Dimension(6, 23));
		dataId.setEditable(false);
		patientDataPane.add(dataId, "2, 1, fill, default");
		dataId.setColumns(10);
		
		JLabel lblNombre = new JLabel("Nombre:");
		patientDataPane.add(lblNombre, "1, 2, right, default");
		
		dataNombre = new JTextField();
		dataNombre.setPreferredSize(new Dimension(6, 23));
		patientDataPane.add(dataNombre, "2, 2, fill, default");
		dataNombre.setColumns(10);
		
		JLabel lblSexo = new JLabel("Sexo:");
		patientDataPane.add(lblSexo, "1, 3, right, default");
		
		dataSexo = new JComboBox<String>();
		dataSexo.setPreferredSize(new Dimension(28, 23));
		dataSexo.setModel(this.sexos);
		patientDataPane.add(dataSexo, "2, 3, fill, default");
		
		JLabel lblFechaNac = new JLabel("Fecha Nac.:");
		patientDataPane.add(lblFechaNac, "1, 4, right, default");
		
		
		dataFechaNac = new UtilDateModel();
		JDatePanelImpl datePanel = new JDatePanelImpl(dataFechaNac);
		JDatePickerImpl FechaNac = new JDatePickerImpl(datePanel);
		patientDataPane.add(FechaNac, "2, 4, fill, default");

		
		JLabel lblSangre = new JLabel("Sangre:");
		patientDataPane.add(lblSangre, "1, 5, right, default");
		
		dataSangre = new JComboBox<String>();
		dataSangre.setPreferredSize(new Dimension(28, 23));
		dataSangre.setModel(this.tiposSangre);
		patientDataPane.add(dataSangre, "2, 5, fill, default");
		
		JPanel recordsPane = new JPanel();
		contentPane.add(recordsPane);
		recordsPane.setLayout(new BoxLayout(recordsPane, BoxLayout.Y_AXIS));
		
		JPanel search = new JPanel();
		search.setMaximumSize(new Dimension(32767, 90));
		recordsPane.add(search);
		search.setLayout(new FormLayout(new ColumnSpec[] {
				FormFactory.MIN_COLSPEC,
				FormFactory.GROWING_BUTTON_COLSPEC,
				FormFactory.MIN_COLSPEC,
				FormFactory.GROWING_BUTTON_COLSPEC,},
			new RowSpec[] {
				FormFactory.DEFAULT_ROWSPEC,}));
		
		JLabel lblBuscar = new JLabel("Buscar:");
		search.add(lblBuscar, "1, 1, right, default");
		
		fieldBuscar = new JTextField();
		fieldBuscar.setPreferredSize(new Dimension(6, 23));
		search.add(fieldBuscar, "2, 1, fill, default");
		fieldBuscar.setColumns(10);
		
		JLabel lblCampo = new JLabel("Campo:");
		search.add(lblCampo, "3, 1, right, default");
		
		JComboBox<String> comboBox = new JComboBox<String>();
		comboBox.setPreferredSize(new Dimension(28, 23));
		comboBox.setModel(this.filtros);
		search.add(comboBox, "4, 1, fill, default");

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
			         JTable target = (JTable)e.getSource();
			         int row = target.getSelectedRow();
			         
			         doubleClickStudy(dataEstudiosPaciente[row]);
			      }
			   }
		});
		
		JPanel bottomPane = new JPanel();
		bottomPane.setMaximumSize(new Dimension(32767, 90));
		contentPane.add(bottomPane);
		bottomPane.setLayout(new FormLayout(new ColumnSpec[] {
				FormFactory.BUTTON_COLSPEC,
				FormFactory.GROWING_BUTTON_COLSPEC,
				FormFactory.BUTTON_COLSPEC,},
			new RowSpec[] {
				FormFactory.DEFAULT_ROWSPEC,}));
		
		JButton btnAgregarEstudio = new JButton("Agregar Estudio");
		btnAgregarEstudio.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				AgregarEstudio(arg0);
			}
		});
		bottomPane.add(btnAgregarEstudio, "1, 1");
		
		JButton btnVolver = new JButton("Volver");
		btnVolver.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				Volver(e);
			}
		});
		bottomPane.add(btnVolver, "3, 1");
		
		this.paceinte = current_patient;
		this.showPatientData();
	}
	
	private void AgregarEstudio(ActionEvent arg0){
		AddRecord add = new AddRecord(this);
		add.setVisible(true);
		this.setVisible(false);
	}
	
	private void Volver(ActionEvent arg0){
		if(this.parent != null){
			parent.setVisible(true);
		}
		this.setVisible(false);
		this.dispose();
	}
	
	private void doubleClickStudy(Study selectedStudy){
		//Lanzar la ventana de edici�n de estudios
	}
	
	public void ReturnFromAgregarEstudio(Study newStudy){
		//Si se agreg� algo hay que recargar la lista de estudios
		if(newStudy != null){
			//Recargar la lista de estudios de este paciente en la vista
			this.paceinte.addStudy(newStudy);
			this.fillRecords();
		}
		
		this.setVisible(true);
	}
	
	public static Patient testPatient(){
		Patient test = new Patient(1000, "Paciente de Prueba", "02/03/1956", 'm', "0+");
		
		for(int i = 0; i < 100; i++){
			Study current = test.addStudy("Estudio de prueba "+i, "Test", "12/30/2013");
			
			Random r = new Random();
			int cant = r.nextInt() % 21;
			for(int j = 0; j < cant; j++){
				current.addFile("Archivo "+j);
			}
		}
		
		return test;
	}
	
	private void showPatientData(){
		if(this.paceinte != null){
			this.dataId.setText(""+this.paceinte.getId());;
			this.dataNombre.setText(this.paceinte.getName());;
			this.dataFechaNac.setValue(new Date(this.paceinte.getDateOfBirth()));
			
			System.out.println(this.tiposSangre.getElementAt(0) == null);
			
			int index = 0;
			while((index < this.tiposSangre.getSize()) && !this.tiposSangre.getElementAt(index).equals(this.paceinte.getBloodType())){
				index++;
			}
			if(index < this.tiposSangre.getSize())
				this.dataSangre.setSelectedIndex(index);
			
			if(this.paceinte.getGender() == 'm')
				this.dataSexo.setSelectedIndex(0);
			else
				this.dataSexo.setSelectedIndex(1);
		}
		
		this.fillRecords();
	}
	
	private void fillRecords(){
		List<Study> lista = this.paceinte.getStudies_patient();
		this.dataEstudiosPaciente = new Study[lista.size()];
		String[][] data = new String[lista.size()][3];
		
		int i = 0;
		for(Study s : lista){
			this.dataEstudiosPaciente[i] = s;
			
			data[i][0] = s.getType();
			data[i][1] = s.getDate();
			data[i][2] = s.getObservations();
			
			i++;
		}
		
		this.dataRecords = new DefaultTableModel(data, new String[] {"Tipo de Estudio", "Fecha", "Observaciones"});
		this.records.setModel(this.dataRecords);
	}
	
	public int getPatientId(){
		return this.paceinte.getId();
	}
}
