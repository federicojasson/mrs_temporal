package gui;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.GridLayout;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.util.LinkedList;
import java.util.List;
import entities.Study;
import gui.components.GuiFrame;
import gui.workers.GetStudyCaller;
import gui.workers.GetStudyWorker;
import gui.workers.ModifyStudyCaller;
import gui.workers.ModifyStudyWorker;
import javax.swing.BoxLayout;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;
import utilities.Utility;
import managers.GuiManager;
import managers.StudyManager;
import com.jgoodies.forms.factories.FormFactory;
import com.jgoodies.forms.layout.ColumnSpec;
import com.jgoodies.forms.layout.FormLayout;
import com.jgoodies.forms.layout.RowSpec;

// TODO: validate input
// TODO: file management
public class StudyFrame extends GuiFrame implements GetStudyCaller, ModifyStudyCaller {
	
	private JButton buttonAddFile;
	private JButton buttonModifyStudy;
	private JButton buttonRemoveFile;
	private JButton buttonSetModifyMode;
	private JTextField fieldDate;
	private JTextField fieldId;
	private JTextArea fieldObservations;
	private JTextField fieldStudyTypeDescription;
	
	public void getStudyCallback(Study study) {
		// Sets the study's information
		fieldDate.setText(Utility.formatDate(study.getDate()));
		fieldId.setText(Utility.bytesToHexadecimal(study.getId()));
		fieldObservations.setText(study.getObservations());
		fieldStudyTypeDescription.setText(study.getStudyTypeDescription());
		
		// Restores the state of the disabled components
		restoreComponentsState();
	}
	
	public void initialize() {
		// Initializes the GUI
		super.initialize();

		// Disables components
		disableComponents();
		
		// Gets the study
		GetStudyWorker worker = new GetStudyWorker(this, StudyManager.getCurrentStudyId());
		worker.execute();
	}

	public void modifyStudyCallback() {
		// Restores the state of the disabled components
		restoreComponentsState();
		
		// Sets the view mode
		setViewMode();
	}
	
	protected JPanel getMainPanel() {
		JLabel labelId = new JLabel("ID de estudio");
		
		fieldId = new JTextField();
		fieldId.setEditable(false);
		registerComponent("fieldId", fieldId);
		
		JLabel labelStudyType = new JLabel("Tipo de estudio");
		
		fieldStudyTypeDescription = new JTextField();
		fieldStudyTypeDescription.setEditable(false);
		registerComponent("fieldStudyTypeDescription", fieldStudyTypeDescription);
		
		JLabel labelDate = new JLabel("Fecha de realización");
		
		fieldDate = new JTextField();
		fieldDate.setEditable(false);
		registerComponent("fieldDate", fieldDate);
		
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
		panelFields.add(fieldStudyTypeDescription, "3, 3, fill, default");
		panelFields.add(labelDate, "1, 5, right, default");
		panelFields.add(fieldDate, "3, 5, fill, default");
		
		JLabel labelObservations = new JLabel("Observaciones");
		
		fieldObservations = new JTextArea();
		fieldObservations.setLineWrap(true);
		fieldObservations.setWrapStyleWord(true);
		fieldObservations.setEditable(false);
		fieldObservations.setColumns(60);
		fieldObservations.setRows(15);
		registerComponent("fieldObservations", fieldObservations);
		
		JScrollPane panelObservationsContainer = new JScrollPane(fieldObservations, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		
		JPanel panelObservations = new JPanel();
		panelObservations.setLayout(new FormLayout(new ColumnSpec[] {
			ColumnSpec.decode("fill:max(256px;default):grow")
		}, new RowSpec[] {
			FormFactory.MIN_ROWSPEC,
			FormFactory.LINE_GAP_ROWSPEC,
			RowSpec.decode("fill:max(256px;default):grow")
		}));
		panelObservations.add(labelObservations, "1, 1");
		panelObservations.add(panelObservationsContainer, "1, 3");
		
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
		registerComponent("buttonAddFile", buttonAddFile);
		
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
		registerComponent("buttonRemoveFile", buttonRemoveFile);
		
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
		registerComponent("buttonGoBack", buttonGoBack);
		
		buttonSetModifyMode = new JButton("Modificar información");
		buttonSetModifyMode.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onSetModifyMode();
			}
		});
		registerComponent("buttonSetModifyMode", buttonSetModifyMode);
		
		buttonModifyStudy = new JButton("Aplicar cambios");
		buttonModifyStudy.setEnabled(false);
		buttonModifyStudy.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onModifyStudy();
			}
		});
		registerComponent("buttonModifyStudy", buttonModifyStudy);
		
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
	}

	protected String getTitle() {
		return "MRS - Estudio (" + Utility.bytesToHexadecimal(StudyManager.getCurrentStudyId()) + ")";
	}
	
	private void onAddFile() {
		// TODO
	}
	
	private void onGoBack() {
		// Closes the current frame
		GuiManager.closeCurrentFrame();
	}
	
	private void onModifyStudy() {
		// Disables components
		disableComponents();
		
		// Gets the study's information
		String observations = fieldObservations.getText();
		List<File> studyFilesToAdd = new LinkedList<File>();// TODO
		List<File> studyFilesToRemove = new LinkedList<File>();// TODO
		
		// Modifies the study
		ModifyStudyWorker worker = new ModifyStudyWorker(this, observations, studyFilesToAdd, studyFilesToRemove);
		worker.execute();
	}
	
	private void onRemoveFile() {
		// TODO
	}
	
	private void onSetModifyMode() {
		// Sets the modify mode
		setModifyMode();
	}
	
	private void setModifyMode() {
		// Enables some components
		buttonAddFile.setEnabled(true);
		buttonRemoveFile.setEnabled(true);
		fieldObservations.setEditable(true);
		
		// Enables the modify study button
		buttonModifyStudy.setEnabled(true);
		
		// Disables the set modify mode button
		buttonSetModifyMode.setEnabled(false);
	}
	
	private void setViewMode() {
		// Disables some components
		buttonAddFile.setEnabled(false);
		buttonRemoveFile.setEnabled(false);
		fieldObservations.setEditable(false);
		
		// Disables the modify study button
		buttonModifyStudy.setEnabled(false);
		
		// Enables the set modify mode button
		buttonSetModifyMode.setEnabled(true);
	}
	
}
