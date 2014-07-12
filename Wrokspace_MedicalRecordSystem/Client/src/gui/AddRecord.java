package gui;

import java.awt.BorderLayout;
import java.awt.EventQueue;
import java.awt.Image;
import java.awt.Insets;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.BoxLayout;

import com.jgoodies.forms.layout.FormLayout;
import com.jgoodies.forms.layout.ColumnSpec;
import com.jgoodies.forms.layout.RowSpec;
import com.jgoodies.forms.factories.FormFactory;

import entities.Study;
import entitiesManagers.UsersManager;
import exceptions.NoConnectedException;

import javax.swing.JLabel;
import javax.swing.JComboBox;

import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import net.atlanticbb.tantlinger.shef.HTMLEditorPane;
import net.sourceforge.jdatepicker.impl.JDatePanelImpl;
import net.sourceforge.jdatepicker.impl.JDatePickerImpl;
import net.sourceforge.jdatepicker.impl.UtilDateModel;

import javax.swing.ComboBoxModel;
import javax.swing.DefaultComboBoxModel;
import javax.swing.DefaultListModel;
import javax.swing.JFileChooser;
import javax.swing.JList;
import javax.swing.JButton;
import javax.swing.ImageIcon;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTextField;
import javax.swing.ListModel;
import javax.swing.ListSelectionModel;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

public class AddRecord extends JFrame {

	private JPanel contentPane;
	private JList<String> listOfFiles;
	
	private ComboBoxModel<String> tiposDeEstudio =  new DefaultComboBoxModel<String>();
	
	private JComboBox<String> dataTipoEstudio;
	private HTMLEditorPane dataObservaciones;
	private DefaultListModel<String> dataArchivos;
	private JTextField dataFechaNac;
	
	private MedicalRecords parent;
	
	private JButton datePicker;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					AddRecord frame = new AddRecord();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}
	
	public AddRecord(MedicalRecords parent){
		this();
		this.parent = parent;
	}

	/**
	 * Create the frame.
	 */
	public AddRecord() {
		try {
			UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
		} catch (ClassNotFoundException | InstantiationException
				| IllegalAccessException | UnsupportedLookAndFeelException e) {
			e.printStackTrace();
		}
		
		setTitle("Agregar Estudio");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 800, 600);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(new BoxLayout(contentPane, BoxLayout.Y_AXIS));
		
		JPanel basicDataPane = new JPanel();
		basicDataPane.setMaximumSize(new Dimension(32767, 24));
		contentPane.add(basicDataPane);
		basicDataPane.setLayout(new FormLayout(new ColumnSpec[] {
				FormFactory.MIN_COLSPEC,
				FormFactory.LABEL_COMPONENT_GAP_COLSPEC,
				FormFactory.GROWING_BUTTON_COLSPEC,
				FormFactory.UNRELATED_GAP_COLSPEC,
				FormFactory.MIN_COLSPEC,
				FormFactory.LABEL_COMPONENT_GAP_COLSPEC,
				FormFactory.GROWING_BUTTON_COLSPEC,},
			new RowSpec[] {
				FormFactory.DEFAULT_ROWSPEC,
				FormFactory.PARAGRAPH_GAP_ROWSPEC,}));
		
		JLabel lblTipoDeEstudio = new JLabel("Tipo de Estudio:");
		basicDataPane.add(lblTipoDeEstudio, "1, 1, right, default");
		
		dataTipoEstudio = new JComboBox<String>();
		dataTipoEstudio.setPreferredSize(new Dimension(28, 23));
		dataTipoEstudio.setEditable(true);
		dataTipoEstudio.setModel(this.tiposDeEstudio);
		basicDataPane.add(dataTipoEstudio, "3, 1, fill, default");
		
		JLabel lblFecha = new JLabel("Fecha:");
		basicDataPane.add(lblFecha, "5, 1, right, default");
		
		//////////////////////////////////////////////////////////
		
		JPanel fechaPanel = new JPanel();
		fechaPanel.setPreferredSize(new Dimension(200, 24));
		fechaPanel.setLayout(new FormLayout(new ColumnSpec[] {
				FormFactory.GROWING_BUTTON_COLSPEC,
				FormFactory.PREF_COLSPEC,},
			new RowSpec[] {
				FormFactory.BUTTON_ROWSPEC,
				}));
		
		dataFechaNac = new JTextField(10);
		fechaPanel.add(dataFechaNac, "1, 1, fill, default");
		
		final DatePicker dp = new DatePicker();
        ImageIcon ii = dp.getImage();
        datePicker = new JButton(ii);
        datePicker.setPreferredSize(new Dimension(30, 24));
        fechaPanel.add(datePicker, "2, 1, default, default");
        datePicker.setMargin(new Insets(0,0,0,0));
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
        
        basicDataPane.add(fechaPanel, "7, 1, fill, default");
		
		//////////////////////////////////////////////////////////
		
		/*dataFecha = new UtilDateModel();
		JDatePanelImpl datePanel = new JDatePanelImpl(dataFecha);
		JDatePickerImpl Fecha = new JDatePickerImpl(datePanel);
		basicDataPane.add(Fecha, "4, 1, fill, default");*/
		
		JPanel centerPane = new JPanel();
		contentPane.add(centerPane);
		centerPane.setLayout(new FormLayout(new ColumnSpec[] {
				ColumnSpec.decode("max(620px;pref):grow"),
				FormFactory.UNRELATED_GAP_COLSPEC,
				ColumnSpec.decode("max(120px;pref):grow"),},
			new RowSpec[] {
				RowSpec.decode("fill:min"),
				FormFactory.LINE_GAP_ROWSPEC,
				RowSpec.decode("fill:max(250px;default):grow"),
				FormFactory.PARAGRAPH_GAP_ROWSPEC,}));
		
		JLabel lblObservaciones = new JLabel("Observaciones:");
		centerPane.add(lblObservaciones, "1, 1");
		
		JLabel lblArchivos = new JLabel("Archivos:");
		centerPane.add(lblArchivos, "3, 1");
		
		dataObservaciones = new HTMLEditorPane();
		centerPane.add(dataObservaciones, "1, 3");
		
		JPanel archivosPane = new JPanel();
		centerPane.add(archivosPane, "3, 3, fill, fill");
		archivosPane.setLayout(new BorderLayout(0, 0));
		
		listOfFiles = new JList<String>();
		dataArchivos = new DefaultListModel<String>();
		listOfFiles.setModel(dataArchivos);
		listOfFiles.setSelectionMode(ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);
		
		JScrollPane scrollPane = new JScrollPane(listOfFiles);
		scrollPane.setPreferredSize(new Dimension(60, 110));
		archivosPane.add(scrollPane, BorderLayout.CENTER);
		//archivosPane.add(listOfFiles, BorderLayout.CENTER);
		
		JPanel archivosBotonesPane = new JPanel();
		archivosPane.add(archivosBotonesPane, BorderLayout.SOUTH);
		
		JButton btnAgregar = new JButton();
		ImageIcon icon = new ImageIcon(AddRecord.class.getResource("/images/file_add.png"));
		Image img = icon.getImage() ;  
		Image newimg = img.getScaledInstance( 25, 30,  java.awt.Image.SCALE_SMOOTH ) ;  
		icon = new ImageIcon( newimg );
		btnAgregar.setIcon(icon);
		btnAgregar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				AgregarArchivo(e);
			}
		});
		archivosBotonesPane.add(btnAgregar, " 1, 1");
		
		JButton btnQuitar = new JButton();
		icon = new ImageIcon(AddRecord.class.getResource("/images/file_delete.png"));
		img = icon.getImage() ;  
		newimg = img.getScaledInstance( 25, 30,  java.awt.Image.SCALE_SMOOTH ) ;  
		icon = new ImageIcon( newimg );
		btnQuitar.setIcon(icon);
		btnQuitar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				QuitarArchivo(e);
			}
		});
		archivosBotonesPane.add(btnQuitar, " 2, 1");
		
		JPanel panel = new JPanel();
		panel.setMaximumSize(new Dimension(32767, 60));
		contentPane.add(panel);
		panel.setLayout(new FormLayout(new ColumnSpec[] {
				FormFactory.GROWING_BUTTON_COLSPEC,
				FormFactory.BUTTON_COLSPEC,
				FormFactory.RELATED_GAP_COLSPEC,
				FormFactory.BUTTON_COLSPEC,},
			new RowSpec[] {
				FormFactory.MIN_ROWSPEC,}));
		
		JButton btnCancelar = new JButton("Cancelar");
		btnCancelar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				Cancelar(e);
			}
		});
		panel.add(btnCancelar, "2, 1");
		
		JButton btnAceptar = new JButton("Aceptar");
		btnAceptar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				Aceptar(e);
			}
		});
		panel.add(btnAceptar, "4, 1");
		
		try {
			List<String> lista = UsersManager.getInstance().getStudyTypes();
			String[] tipos = new String[lista.size()];
			
			int i = 0;
			for(String tipo : lista){
				tipos[i++] = tipo;
			}
			
			tiposDeEstudio =  new DefaultComboBoxModel<String>(tipos);
			dataTipoEstudio.setModel(tiposDeEstudio);
		} catch (NoConnectedException e) {
			JOptionPane.showMessageDialog(null,
				    e.getMessage(),
				    "Connection error",
				    JOptionPane.ERROR_MESSAGE);
		}
	}
	
	private void Aceptar(ActionEvent arg0){
		if(this.parent != null){
			parent.ReturnFromAgregarEstudio(this.createNewStudy());
		}
		this.setVisible(false);
		this.dispose();
	}
	
	private void Cancelar(ActionEvent arg0){
		if(this.parent != null){
			parent.ReturnFromAgregarEstudio(null);
		}
		this.setVisible(false);
		this.dispose();
	}
	
	private void AgregarArchivo(ActionEvent arg0){
		JFileChooser fc = new JFileChooser();
		fc.setMultiSelectionEnabled(true);
		int returnVal = fc.showOpenDialog(this);

        if (returnVal == JFileChooser.APPROVE_OPTION) {
            File[] files = fc.getSelectedFiles();
            
            //Si se eleigi� un archivo ac� habr�a que hacer la subida del mismo
            for(int i = 0; i < files.length; i++){
            	this.dataArchivos.addElement(files[i].getName());
            }
        }
	}
	
	private void QuitarArchivo(ActionEvent arg0){
		if(listOfFiles.getSelectedIndex() != -1){
			//Dado que esto permite seleccionar de manera irregular complica el remover
			//No se puede remover usando indices porque despu�s de remover el primero de 
			//los elementos seleccionados cambian todos los �ndices, por eso queda feo.
			
			int[] indices = listOfFiles.getSelectedIndices();
			String[] toRemove = new String[indices.length];
			
			for(int i = 0; i < indices.length; i++){
				toRemove[i] = this.dataArchivos.elementAt(indices[i]);
			}
			
			for(int i = 0; i < toRemove.length; i++){
				this.dataArchivos.removeElement(toRemove[i]);
				//Ac� habr�a que remover el archivo del directorio
			}
		}
	}
	
	private Study createNewStudy(){
		Random r = new Random();
		int id = r.nextInt() % 1027;
		String observaciones = dataObservaciones.getText();
		String tipoEstudio = (String) dataTipoEstudio.getSelectedItem();
		String fecha = dataFechaNac.getText();
		List<String> archivos = new ArrayList<String>();
		for(int i = 0; i < dataArchivos.size(); i++){
			archivos.add(dataArchivos.elementAt(i));
		}
		
		Study toReturn = new Study(id, observaciones, tipoEstudio, fecha, archivos, this.parent.getPatientId());
		
		return toReturn;
	}
}