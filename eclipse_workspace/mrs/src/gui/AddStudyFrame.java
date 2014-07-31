package gui;

import entities.StudyType;
import gui.components.DatePicker;
import gui.components.GuiFrame;
import gui.components.FileList;
import gui.workers.AddStudyCaller;
import gui.workers.AddStudyWorker;
import gui.workers.GetStudyTypesCaller;
import gui.workers.GetStudyTypesWorker;
import gui.workers.OpenFileDirectoryCaller;
import gui.workers.OpenFileDirectoryWorker;
import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.GridLayout;
import java.awt.Image;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.io.File;
import java.sql.Date;
import java.util.LinkedList;
import java.util.List;
import javax.swing.BoxLayout;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFileChooser;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.ListSelectionModel;
import javax.swing.border.EmptyBorder;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import utilities.Utility;
import com.jgoodies.forms.factories.FormFactory;
import com.jgoodies.forms.layout.ColumnSpec;
import com.jgoodies.forms.layout.FormLayout;
import com.jgoodies.forms.layout.RowSpec;
import managers.GuiManager;

//TODO: validate input
//TODO: file management
public class AddStudyFrame extends GuiFrame implements AddStudyCaller, GetStudyTypesCaller, OpenFileDirectoryCaller {

	private JButton buttonDatePicker;
	private JButton buttonRemoveFile;
	private JComboBox<StudyType> comboBoxStudyType;
	private DatePicker datePicker;
	private JTextField fieldDate;
	private JTextArea fieldObservations;
	private FileList listStudyFiles;

	public void addStudyCallback() {
		// Closes the current frame
		GuiManager.closeCurrentFrame();
	}
	
	public void getStudyTypesCallback(List<StudyType> studyTypes) {
		// Adds the study types to the combo box
		for (StudyType studyType : studyTypes)
			comboBoxStudyType.addItem(studyType);
		
		// Unlocks the frame
		unlock();
	}
	
	public void initialize() {
		// Initializes the GUI
		super.initialize();
		
		// Locks the frame
		lock();
		
		// Gets the study types
		GetStudyTypesWorker worker = new GetStudyTypesWorker(this);
		worker.execute();
	}

	public void openFileDirectoryCallback() {
		// Unlocks the frame
		unlock();
	}
	
	protected JPanel getMainPanel() {
		JLabel labelStudyType = new JLabel("Tipo de estudio");
		
		comboBoxStudyType = new JComboBox<StudyType>();
		registerComponent("comboBoxStudyType", comboBoxStudyType);
		
		JLabel labelDate = new JLabel("Fecha de realización");
		
		fieldDate = new JTextField();
		fieldDate.setEditable(false);
		registerComponent("fieldDate", fieldDate);
		
		datePicker = new DatePicker();
		datePicker.addPopupListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onPickDate();
			}
		});
		
		Image imageButtonDatePicker = new ImageIcon(getClass().getResource("/images/datepicker.gif")).getImage().getScaledInstance(25, 30 , Image.SCALE_SMOOTH);
		
		ImageIcon iconButtonDatePicker = new ImageIcon(imageButtonDatePicker);
		
		buttonDatePicker = new JButton(iconButtonDatePicker);
		buttonDatePicker.setMargin(new Insets(0, 0, 0, 0));
		buttonDatePicker.setPreferredSize(new Dimension(30, 24));
		buttonDatePicker.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onDatePickerButtonAction();
			}
		});
		registerComponent("buttonDatePicker", buttonDatePicker);
		
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
			FormFactory.PARAGRAPH_GAP_ROWSPEC
		}));
		panelFields.add(labelStudyType, "1, 1, right, default");
		panelFields.add(comboBoxStudyType, "3, 1, fill, default");
		panelFields.add(labelDate, "1, 3, right, default");
		panelFields.add(panelDate, "3, 3, fill, default");
		
		JLabel labelObservations = new JLabel("Observaciones");
		
		fieldObservations = new JTextArea();
		fieldObservations.setLineWrap(true);
		fieldObservations.setWrapStyleWord(true);
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

		listStudyFiles = new FileList();
		listStudyFiles.addMouseListener(new MouseAdapter() {
			public void mouseClicked(MouseEvent event) {
				if (event.getClickCount() == 2)
					onViewStudyFile();
			}
		});
		listStudyFiles.getSelectionModel().setSelectionMode(ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);
		listStudyFiles.getSelectionModel().addListSelectionListener(new ListSelectionListener() {
			public void valueChanged(ListSelectionEvent event) {
				if (! event.getValueIsAdjusting())
					onSelectStudyFile();
			}
		});
		registerComponent("listStudyFiles", listStudyFiles);
		
		JScrollPane panelStudyFilesContainer = new JScrollPane(listStudyFiles, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		panelStudyFilesContainer.setPreferredSize(new Dimension(256, 256));
		
		Image imageButtonAddFile = new ImageIcon(getClass().getResource("/images/file_add.png")).getImage().getScaledInstance(25, 30 , Image.SCALE_SMOOTH);
		
		ImageIcon iconButtonAddFile = new ImageIcon(imageButtonAddFile);
		
		JButton buttonAddFile = new JButton();
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
		
		JButton buttonCancel = new JButton("Cancelar");
		buttonCancel.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onCancel();
			}
		});
		registerComponent("buttonCancel", buttonCancel);
		
		JButton buttonAddStudy = new JButton("Ingresar estudio");
		buttonAddStudy.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onAddStudy();
			}
		});
		registerComponent("buttonAddStudy", buttonAddStudy);
		setDefaultButton(buttonAddStudy);
		
		JPanel panelButtons = new JPanel();
		panelButtons.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.BUTTON_COLSPEC,
			FormFactory.GROWING_BUTTON_COLSPEC,
			FormFactory.BUTTON_COLSPEC
		}, new RowSpec[] {
			FormFactory.MIN_ROWSPEC
		}));
		panelButtons.add(buttonCancel, "1, 1");
		panelButtons.add(buttonAddStudy, "3, 1");
		
		JPanel panelMain = new JPanel();
		panelMain.setBorder(new EmptyBorder(5, 5, 5, 5));
		panelMain.setLayout(new BorderLayout(0, 5));
		panelMain.add(panelContent, BorderLayout.CENTER);
		panelMain.add(panelButtons, BorderLayout.SOUTH);
		
		onSelectStudyFile();
		
		return panelMain;
	}

	protected String getTitle() {
		return "MRS - Ingresar estudio";
	}
	
	private void onAddFile() {
		// Gets the file chooser and configures it
		JFileChooser fileChooser = GuiManager.getFileChooser();
		fileChooser.setMultiSelectionEnabled(true);
		
		// Shows the file selection dialog
		if (fileChooser.showDialog(getFrame(), "Seleccionar") == JFileChooser.APPROVE_OPTION)
			// At least one file has been selected
			listStudyFiles.addFiles(fileChooser.getSelectedFiles());
	}
	
	private void onAddStudy() {
		// Locks the frame
		lock();
		
		// Gets the study's information
		Date date = datePicker.getDate();
		String observations = fieldObservations.getText();
		byte[] studyTypeId = comboBoxStudyType.getItemAt(comboBoxStudyType.getSelectedIndex()).getId();
		List<File> studyFiles = listStudyFiles.getFilesToAdd();
		
		// Adds the study
		AddStudyWorker worker = new AddStudyWorker(this, date, observations, studyTypeId, studyFiles);
		worker.execute();
	}
	
	private void onCancel() {
		// Closes the current frame
		GuiManager.closeCurrentFrame();
	}
	
	private void onDatePickerButtonAction() {
		if (datePicker.isShowing())
			// Hides the date picker popup
			datePicker.hidePopup();
		else
			// Shows the date picker popup
			datePicker.showPopup(buttonDatePicker);
	}
	
	private void onPickDate() {
		// Shows the picked date in the date field
		fieldDate.setText(Utility.formatDate(datePicker.getDate()));
		
		// Hides the date picker popup
		datePicker.hidePopup();
	}
	
	private void onRemoveFile() {
		// Removes the selected files
		listStudyFiles.removeSelectedFiles();
	}
	
	private void onSelectStudyFile() {
		// Gets the selected item smallest index (if any)
		int selectedItemIndex = listStudyFiles.getSelectedIndex();
		
		if (selectedItemIndex < 0)
			// No row has been selected
			buttonRemoveFile.setEnabled(false);
		else
			// At least one row has been selected
			buttonRemoveFile.setEnabled(true);
	}
	
	private void onViewStudyFile() {
		// Gets the selected file with the smallest index (if any)
		File file = listStudyFiles.getSelectedValue();
		
		if (file != null) {
			// Locks the frame
			lock();
			
			// Opens the file's directory
			OpenFileDirectoryWorker worker = new OpenFileDirectoryWorker(this, file);
			worker.execute();
		}
	}
	
}
