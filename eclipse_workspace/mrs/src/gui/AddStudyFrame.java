package gui;

import entities.StudyType;
import gui.components.DatePicker;
import gui.components.GuiFrame;
import gui.workers.GetStudyTypesCaller;
import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.GridLayout;
import java.awt.Image;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.List;
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
import com.jgoodies.forms.factories.FormFactory;
import com.jgoodies.forms.layout.ColumnSpec;
import com.jgoodies.forms.layout.FormLayout;
import com.jgoodies.forms.layout.RowSpec;
import managers.GuiManager;

public class AddStudyFrame extends GuiFrame implements GetStudyTypesCaller {

	public void getStudyTypesCallback(List<StudyType> studyTypes) {
		// TODO
	}
	
	protected JPanel getMainPanel() {
		/*

		JLabel labelId = new JLabel("ID de estudio");
		
		fieldId = new JTextField();
		fieldId.setEditable(false);
		fieldId.setColumns(10);
		
		JLabel labelStudyType = new JLabel("Tipo de estudio");
		
		comboBoxStudyType = new JComboBox<StudyType>();
		comboBoxStudyType.setEnabled(false);
		
		JLabel labelDate = new JLabel("Fecha de realización");
		
		fieldDate = new JTextField(10);
		fieldDate.setEditable(false);
		
		datePicker = new DatePicker();
		datePicker.addPopupListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onPickDate();
			}
		});
		
		buttonDatePicker = new JButton(datePicker.getImage());
		buttonDatePicker.setEnabled(false);
		buttonDatePicker.setMargin(new Insets(0, 0, 0, 0));
		buttonDatePicker.setPreferredSize(new Dimension(30, 24));
		buttonDatePicker.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onDatePickerButtonAction();
			}
		});
		
		JPanel panelDate = new JPanel();
		panelDate.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.GROWING_BUTTON_COLSPEC,
			FormFactory.PREF_COLSPEC
		}, new RowSpec[] {
			FormFactory.BUTTON_ROWSPEC
		}));
		panelDate.add(fieldDate, "1, 1, fill, default");
		panelDate.add(buttonDatePicker, "2, 1, default, default");
		
		JPanel panelFields = new JPanel();
		panelFields.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.MIN_COLSPEC,
			FormFactory.LABEL_COMPONENT_GAP_COLSPEC,
			FormFactory.GROWING_BUTTON_COLSPEC
		}, new RowSpec[] {
			FormFactory.DEFAULT_ROWSPEC,
			FormFactory.NARROW_LINE_GAP_ROWSPEC,
			FormFactory.DEFAULT_ROWSPEC,
			FormFactory.NARROW_LINE_GAP_ROWSPEC,
			FormFactory.DEFAULT_ROWSPEC,
			FormFactory.PARAGRAPH_GAP_ROWSPEC
		}));
		panelFields.add(labelId, "1, 1, right, default");
		panelFields.add(fieldId, "3, 1, fill, default");
		panelFields.add(labelStudyType, "1, 3, right, default");
		panelFields.add(comboBoxStudyType, "3, 3, fill, default");
		panelFields.add(labelDate, "1, 5, right, default");
		panelFields.add(panelDate, "3, 5, fill, default");
		
		JLabel labelObservations = new JLabel("Observaciones");
		
		fieldObservations = new HTMLEditorPane();
		fieldObservations.setEnabled(false);
		
		JPanel panelObservations = new JPanel();
		panelObservations.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.MIN_COLSPEC
		}, new RowSpec[] {
			FormFactory.MIN_ROWSPEC,
			FormFactory.LINE_GAP_ROWSPEC,
			RowSpec.decode("fill:max(256px;default):grow")
		}));
		panelObservations.add(labelObservations, "1, 1");
		panelObservations.add(fieldObservations, "1, 3");
		
		JPanel panelStudy = new JPanel();
		panelStudy.setLayout(new BoxLayout(panelStudy, BoxLayout.Y_AXIS));
		panelStudy.add(panelFields);
		panelStudy.add(panelObservations);
		
		JLabel labelStudyFiles = new JLabel("Archivos");
		
		JScrollPane panelStudyFilesContainer = new JScrollPane();
		panelStudyFilesContainer.setPreferredSize(new Dimension(256, 256));
		
		Image imageButtonAddFile = new ImageIcon(getClass().getResource("/images/file_add.png")).getImage().getScaledInstance(25, 30 , Image.SCALE_SMOOTH);
		
		ImageIcon iconButtonAddFile = new ImageIcon(imageButtonAddFile);
		
		buttonAddFile = new JButton();
		buttonAddFile.setEnabled(false);
		buttonAddFile.setIcon(iconButtonAddFile);
		buttonAddFile.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onAddFile();
			}
		});
		
		Image imageButtonRemoveFile = new ImageIcon(getClass().getResource("/images/file_delete.png")).getImage().getScaledInstance(25, 30 , Image.SCALE_SMOOTH);
		
		ImageIcon iconButtonRemoveFile = new ImageIcon(imageButtonRemoveFile);
		
		buttonRemoveFile = new JButton();
		buttonRemoveFile.setEnabled(false);
		buttonRemoveFile.setIcon(iconButtonRemoveFile);
		buttonRemoveFile.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onRemoveFile();
			}
		});
		
		JPanel panelStudyFilesButtons = new JPanel();
		panelStudyFilesButtons.setLayout(new GridLayout(1, 2));
		panelStudyFilesButtons.add(buttonAddFile);
		panelStudyFilesButtons.add(buttonRemoveFile);
		
		JPanel panelStudyFiles = new JPanel();
		panelStudyFiles.setLayout(new BorderLayout(0, 5));
		panelStudyFiles.add(labelStudyFiles, BorderLayout.NORTH);
		panelStudyFiles.add(panelStudyFilesContainer, BorderLayout.CENTER);
		panelStudyFiles.add(panelStudyFilesButtons, BorderLayout.SOUTH);
		
		JPanel panelContent = new JPanel();
		panelContent.setLayout(new BorderLayout(5, 0));
		panelContent.add(panelStudy, BorderLayout.WEST);
		panelContent.add(panelStudyFiles, BorderLayout.CENTER);
		
		JButton buttonGoBack = new JButton("Volver");
		buttonGoBack.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onGoBack();
			}
		});
		
		buttonSetModifyMode = new JButton("Modificar información");
		buttonSetModifyMode.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onSetModifyMode();
			}
		});
		
		buttonModifyStudy = new JButton("Aplicar cambios");
		buttonModifyStudy.setEnabled(false);
		buttonModifyStudy.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onModifyStudy();
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
			FormFactory.MIN_ROWSPEC
		}));
		panelButtons.add(buttonGoBack, "1, 1");
		panelButtons.add(buttonSetModifyMode, "3, 1");
		panelButtons.add(buttonModifyStudy, "5, 1");
		
		JPanel panelMain = new JPanel();
		panelMain.setBorder(new EmptyBorder(5, 5, 5, 5));
		panelMain.setLayout(new BorderLayout(0, 5));
		panelMain.add(panelContent, BorderLayout.CENTER);
		panelMain.add(panelButtons, BorderLayout.SOUTH);
		
		return panelMain;
		*/
		
		JButton buttonCancel = new JButton("Cancelar");
		buttonCancel.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onCancel();
			}
		});
		
		JButton buttonAddStudy = new JButton("Ingresar estudio");
		buttonAddStudy.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onAddStudy();
			}
		});
		
		// TODO
		JPanel panelMain = new JPanel();
		
		return panelMain;
	}

	protected String getTitle() {
		return "MRS - Ingresar paciente";
	}
	
	private void onAddStudy() {
		// TODO
	}
	
	private void onCancel() {
		// Closes the current frame
		GuiManager.closeCurrentFrame();
	}
	
}
