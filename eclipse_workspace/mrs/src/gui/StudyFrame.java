package gui;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Image;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.util.List;
import entities.Study;
import entities.StudyType;
import gui.components.DatePicker;
import gui.components.GuiFrame;
import gui.workers.GetStudyCaller;
import gui.workers.GetStudyTypesCaller;
import gui.workers.GetStudyTypesWorker;
import gui.workers.GetStudyWorker;
import gui.workers.ModifyStudyCaller;
import gui.workers.ModifyStudyWorker;
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
import managers.GuiManager;
import managers.StudyManager;
import com.jgoodies.forms.factories.FormFactory;
import com.jgoodies.forms.layout.ColumnSpec;
import com.jgoodies.forms.layout.FormLayout;
import com.jgoodies.forms.layout.RowSpec;

public class StudyFrame extends GuiFrame implements GetStudyCaller, GetStudyTypesCaller, ModifyStudyCaller {
	
	private JButton buttonAddFile;
	private JButton buttonDatePicker;
	private JButton buttonModifyStudy;
	private JButton buttonRemoveFile;
	private JButton buttonSetModifyMode;
	private JComboBox<StudyType> comboBoxStudyType;
	private DatePicker datePicker;
	private JTextField fieldDate;
	private JTextField fieldId;
	private HTMLEditorPane fieldObservations;
	
	public void getStudyCallback(Study study) {
		// Sets the study's information
		//comboBoxStudyType.setSelectedIndex(BloodType.getConstant(study.get()).ordinal()); TODO
		datePicker.setDate(study.getDate());
		fieldDate.setText(Utility.formatDate(study.getDate()));
		fieldId.setText(Utility.bytesToHexadecimal(study.getId()));
		fieldObservations.setText(study.getObservations());
		
		// Restores the state of the disabled components
		restoreComponentsState();
	}

	public void getStudyTypesCallback(List<StudyType> studyTypes) {
		// Adds the study types to the combo box
		if (studyTypes.isEmpty())
			;// TODO: notify error!
		else
			for (StudyType studyType : studyTypes)
				comboBoxStudyType.addItem(studyType);
	}
	
	public void initialize() {
		// Initializes the GUI
		super.initialize();

		// Disables components
		disableComponents();
		
		// Gets the study types
		GetStudyTypesWorker worker0 = new GetStudyTypesWorker(this);
		worker0.execute();
		
		// Gets the stuy
		GetStudyWorker worker1 = new GetStudyWorker(this, StudyManager.getCurrentStudyId());
		worker1.execute();
	}

	public void modifyStudyCallback() {
		// TODO
		
	}
	
	protected JPanel getMainPanel() {
		// TODO: add to a panel
		JLabel labelId = new JLabel("ID de estudio");
		
		// TODO: add to a panel
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
		
		JPanel panelTop = new JPanel();
		panelTop.setLayout(new FormLayout(new ColumnSpec[] {
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
		panelTop.add(labelStudyType, "1, 1, right, default");
		panelTop.add(comboBoxStudyType, "3, 1, fill, default");
		panelTop.add(labelDate, "5, 1, right, default");
		panelTop.add(panelDate, "7, 1, fill, default");
		
		JLabel labelObservations = new JLabel("Observaciones");
		
		fieldObservations = new HTMLEditorPane();
		fieldObservations.setEnabled(false);
		
		JLabel labelFiles = new JLabel("Archivos");
		
		JScrollPane panelFilesContainer = new JScrollPane(/*listOfFiles*/); // TODO
		panelFilesContainer.setPreferredSize(new Dimension(60, 110));
		
		// TODO
		Image btnAgregarImg = new ImageIcon(StudyFrame.class.getResource("/images/file_add.png")).getImage();
		Image btnAgregarNewimg = btnAgregarImg.getScaledInstance(25, 30, java.awt.Image.SCALE_SMOOTH);
		ImageIcon btnAgregarIcon = new ImageIcon(btnAgregarNewimg);
		
		buttonAddFile = new JButton();
		buttonAddFile.setEnabled(false);
		buttonAddFile.setIcon(btnAgregarIcon);
		buttonAddFile.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onAddFile();
			}
		});
		
		// TODO
		Image btnQuitarImg = new ImageIcon(StudyFrame.class.getResource("/images/file_delete.png")).getImage();
		Image btnQuitarNewimg = btnQuitarImg.getScaledInstance(25, 30, java.awt.Image.SCALE_SMOOTH);
		ImageIcon btnQuitarIcon = new ImageIcon(btnQuitarNewimg);
		
		buttonRemoveFile = new JButton();
		buttonRemoveFile.setEnabled(false);
		buttonRemoveFile.setIcon(btnQuitarIcon);
		buttonRemoveFile.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onRemoveFile();
			}
		});
		
		JPanel panelFileButtons = new JPanel();
		panelFileButtons.add(buttonAddFile, " 1, 1");
		panelFileButtons.add(buttonRemoveFile, " 2, 1");
		
		JPanel panelFiles = new JPanel();
		panelFiles.setLayout(new BorderLayout(0, 0));
		panelFiles.add(panelFilesContainer, BorderLayout.CENTER);
		panelFiles.add(panelFileButtons, BorderLayout.SOUTH);
		
		JPanel panelCenter = new JPanel();
		panelCenter.setLayout(new FormLayout(new ColumnSpec[] {
			ColumnSpec.decode("max(620px;pref):grow"),
			FormFactory.UNRELATED_GAP_COLSPEC,
			ColumnSpec.decode("max(120px;pref):grow")
		}, new RowSpec[] {
			RowSpec.decode("fill:min"),
			FormFactory.LINE_GAP_ROWSPEC,
			RowSpec.decode("fill:max(250px;default):grow"),
			FormFactory.PARAGRAPH_GAP_ROWSPEC
		}));
		panelCenter.add(labelObservations, "1, 1");
		panelCenter.add(fieldObservations, "1, 3");
		panelCenter.add(labelFiles, "3, 1");
		panelCenter.add(panelFiles, "3, 3, fill, fill");
		
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
		panelMain.setLayout(new BoxLayout(panelMain, BoxLayout.Y_AXIS));
		panelMain.add(panelTop);
		panelMain.add(panelCenter);
		panelMain.add(panelButtons);
		
		return panelMain;
	}

	protected String getTitle() {
		return "MRS - Estudio (" + Utility.bytesToHexadecimal(StudyManager.getCurrentStudyId()) + ")";
	}
	
	private void onAddFile() {
		// TODO
	}
	
	private void onDatePickerButtonAction() {
		// TODO: check if it is showing and toggle state (hide or show)
		
		// Shows the date picker popup
		datePicker.popupShow(buttonDatePicker);
	}
	
	private void onGoBack() {
		// Closes the current frame
		GuiManager.closeCurrentFrame();
	}
	
	private void onModifyStudy() {
		// Disables components
		disableComponents();
		
		// Gets the study's information
		// TODO
		/*Date birthDate = datePicker.getDate();
		byte[] bloodType = comboBoxBloodType.getItemAt(comboBoxBloodType.getSelectedIndex()).getValue();
		byte[] gender = comboBoxGender.getItemAt(comboBoxGender.getSelectedIndex()).getValue();
		String name = fieldName.getText();*/
		String observations = null;
		List<File> studyFilesToAdd = null;
		List<File> studyFilesToRemove = null;
		
		// Modifies the study
		ModifyStudyWorker worker = new ModifyStudyWorker(this, observations, studyFilesToAdd, studyFilesToRemove);
		worker.execute();
	}
	
	private void onPickDate() {
		// Shows the picked date in the date field
		fieldDate.setText(Utility.formatDate(datePicker.getDate()));
		
		// Hides the date picker popup
		datePicker.popupHide();
	}
	
	private void onRemoveFile() {
		// TODO
	}
	
	private void onSetModifyMode() {
		// Sets the modify mode
		setModifyMode();
	}
	
	private void setModifyMode() {
		// Enables the study's information fields that can be modified
		buttonAddFile.setEnabled(true);
		buttonDatePicker.setEnabled(true);
		buttonRemoveFile.setEnabled(true);
		comboBoxStudyType.setEnabled(true);
		fieldObservations.setEnabled(true);
		
		// Enables the modify study button
		buttonModifyStudy.setEnabled(true);
		
		// Disables the set modify mode button
		buttonSetModifyMode.setEnabled(false);
	}
	
}
