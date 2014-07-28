package gui;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Image;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import gui.components.DatePicker;
import gui.components.GuiFrame;
import javax.swing.BoxLayout;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;
import net.atlanticbb.tantlinger.shef.HTMLEditorPane;
import utilities.Utility;
import managers.StudyManager;
import com.jgoodies.forms.factories.FormFactory;
import com.jgoodies.forms.layout.ColumnSpec;
import com.jgoodies.forms.layout.FormLayout;
import com.jgoodies.forms.layout.RowSpec;

public class StudyFrame extends GuiFrame {
	
	private boolean addStudy;
	
	public void initialize() {
		// Checks if a new study has to be added
		addStudy = StudyManager.getCurrentStudyId() == null;
		
		// Initializes the GUI
		super.initialize();
	}
	
	protected JPanel getMainPanel() {
		JLabel lblTipoDeEstudio = new JLabel("Tipo de Estudio:");
		
		JComboBox<String> dataTipoEstudio = new JComboBox<String>();
		dataTipoEstudio.setPreferredSize(new Dimension(28, 23)); // TODO: necessary?
		dataTipoEstudio.setEditable(true);
		//dataTipoEstudio.setModel(this.tiposDeEstudio); TODO
		
		JLabel lblFecha = new JLabel("Fecha:");
		
		JTextField dataFechaNac = new JTextField(10);
		
		DatePicker datePicker = new DatePicker();
		datePicker.addPopupListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				// TODO
				/*dataFechaNac.setText(dp.getFormattedDate());
				dp.popupHide();*/
			}
		});
		
		JButton buttonDatePicker = new JButton(datePicker.getImage());
		buttonDatePicker.setPreferredSize(new Dimension(30, 24)); // TODO: necessary?
		buttonDatePicker.setMargin(new Insets(0, 0, 0, 0)); // TODO: necessary?
		buttonDatePicker.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				// TODO
				/*dp.setDate(dataFechaNac.getText());
				dp.popupShow(datePicker);*/
			}
		});
		
		JPanel fechaPanel = new JPanel();
		fechaPanel.setPreferredSize(new Dimension(200, 24)); // TODO: necessary?
		fechaPanel.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.GROWING_BUTTON_COLSPEC,
			FormFactory.PREF_COLSPEC
		}, new RowSpec[] {
			FormFactory.BUTTON_ROWSPEC
		}));
		fechaPanel.add(dataFechaNac, "1, 1, fill, default");
		fechaPanel.add(datePicker, "2, 1, default, default");
		
		JPanel basicDataPane = new JPanel();
		basicDataPane.setMaximumSize(new Dimension(32767, 24)); // TODO: necessary?
		basicDataPane.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.MIN_COLSPEC,
			FormFactory.LABEL_COMPONENT_GAP_COLSPEC,
			FormFactory.GROWING_BUTTON_COLSPEC,
			FormFactory.UNRELATED_GAP_COLSPEC,
			FormFactory.MIN_COLSPEC,
			FormFactory.LABEL_COMPONENT_GAP_COLSPEC,
			FormFactory.GROWING_BUTTON_COLSPEC
		}, new RowSpec[] {
			FormFactory.DEFAULT_ROWSPEC,
			FormFactory.PARAGRAPH_GAP_ROWSPEC
		}));
		basicDataPane.add(lblTipoDeEstudio, "1, 1, right, default");
		basicDataPane.add(dataTipoEstudio, "3, 1, fill, default");
		basicDataPane.add(lblFecha, "5, 1, right, default");
		basicDataPane.add(fechaPanel, "7, 1, fill, default");
		
		JLabel lblObservaciones = new JLabel("Observaciones:");
		
		JLabel lblArchivos = new JLabel("Archivos:");
		
		HTMLEditorPane dataObservaciones = new HTMLEditorPane();
		
		JScrollPane scrollPane = new JScrollPane(/*listOfFiles*/); // TODO
		scrollPane.setPreferredSize(new Dimension(60, 110));
		
		Image btnAgregarImg = new ImageIcon(StudyFrame.class.getResource("/images/file_add.png")).getImage();
		Image btnAgregarNewimg = btnAgregarImg.getScaledInstance(25, 30, java.awt.Image.SCALE_SMOOTH);
		ImageIcon btnAgregarIcon = new ImageIcon(btnAgregarNewimg);
		
		JButton btnAgregar = new JButton();
		btnAgregar.setIcon(btnAgregarIcon);
		btnAgregar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				//AgregarArchivo(e); TODO
			}
		});
		
		Image btnQuitarImg = new ImageIcon(StudyFrame.class.getResource("/images/file_delete.png")).getImage();
		Image btnQuitarNewimg = btnQuitarImg.getScaledInstance(25, 30, java.awt.Image.SCALE_SMOOTH);
		ImageIcon btnQuitarIcon = new ImageIcon(btnQuitarNewimg);
		
		JButton btnQuitar = new JButton();
		btnQuitar.setIcon(btnQuitarIcon);
		btnQuitar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				//QuitarArchivo(e); TODO
			}
		});
		
		JPanel archivosBotonesPane = new JPanel();
		archivosBotonesPane.add(btnAgregar, " 1, 1");
		archivosBotonesPane.add(btnQuitar, " 2, 1");
		
		JPanel archivosPane = new JPanel();
		archivosPane.setLayout(new BorderLayout(0, 0));
		archivosPane.add(scrollPane, BorderLayout.CENTER);
		archivosPane.add(archivosBotonesPane, BorderLayout.SOUTH);
		
		JPanel centerPane = new JPanel();
		centerPane.setLayout(new FormLayout(new ColumnSpec[] {
			ColumnSpec.decode("max(620px;pref):grow"),
			FormFactory.UNRELATED_GAP_COLSPEC,
			ColumnSpec.decode("max(120px;pref):grow")
		}, new RowSpec[] {
			RowSpec.decode("fill:min"),
			FormFactory.LINE_GAP_ROWSPEC,
			RowSpec.decode("fill:max(250px;default):grow"),
			FormFactory.PARAGRAPH_GAP_ROWSPEC
		}));
		centerPane.add(lblObservaciones, "1, 1");
		centerPane.add(lblArchivos, "3, 1");
		centerPane.add(dataObservaciones, "1, 3");
		centerPane.add(archivosPane, "3, 3, fill, fill");
		
		JButton btnCancelar = new JButton("Cancelar");
		btnCancelar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				//Cancelar(e); TODO
			}
		});
		
		JButton btnAceptar = new JButton("Aceptar");
		btnAceptar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				//Aceptar(e); TODO
			}
		});
		
		JPanel panel = new JPanel();
		panel.setMaximumSize(new Dimension(32767, 60)); // TODO: necessary?
		panel.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.GROWING_BUTTON_COLSPEC,
			FormFactory.BUTTON_COLSPEC,
			FormFactory.RELATED_GAP_COLSPEC,
			FormFactory.BUTTON_COLSPEC
		}, new RowSpec[] {
			FormFactory.MIN_ROWSPEC
		}));
		panel.add(btnCancelar, "2, 1");
		panel.add(btnAceptar, "4, 1");
		
		JPanel panelMain = new JPanel();
		panelMain.setBorder(new EmptyBorder(5, 5, 5, 5));
		panelMain.setLayout(new BoxLayout(panelMain, BoxLayout.Y_AXIS));
		panelMain.add(basicDataPane);
		panelMain.add(centerPane);
		panelMain.add(panel);
		
		return panelMain;
	}

	protected String getTitle() {
		if (addStudy)
			return "MRS - Ingresar estudio";
		else
			return "MRS - Estudio (" + Utility.bytesToHexadecimal(StudyManager.getCurrentStudyId()) + ")";
	}
	
}
