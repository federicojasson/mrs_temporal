package gui.windows;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.GridLayout;
import java.awt.Insets;
import java.awt.KeyboardFocusManager;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.io.File;
import java.sql.Date;
import java.util.List;
import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.ListSelectionModel;
import javax.swing.ScrollPaneConstants;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import managers.GuiManager;
import managers.ImageManager;
import utilities.Utility;
import com.jgoodies.forms.factories.FormFactory;
import com.jgoodies.forms.layout.ColumnSpec;
import com.jgoodies.forms.layout.FormLayout;
import com.jgoodies.forms.layout.RowSpec;
import entities.StudyType;
import gui.components.DatePicker;
import gui.components.FileList;
import gui.workers.AddStudyCaller;
import gui.workers.AddStudyWorker;
import gui.workers.GetStudyTypesCaller;
import gui.workers.GetStudyTypesWorker;
import gui.workers.OpenFileDirectoryCaller;
import gui.workers.OpenFileDirectoryWorker;

public class GuiFrameAddStudy extends GuiFrame {

	private JButton buttonDatePicker;
	private JButton buttonRemoveStudyFiles;
	private JComboBox<StudyType> comboBoxStudyType;
	private DatePicker datePicker;
	private JTextArea fieldCauses;
	private JTextField fieldDate;
	private JTextArea fieldDiagnosis;
	private JTextArea fieldIndications;
	private JTextArea fieldObservations;
	private FileList listStudyFiles;

	protected JPanel getMainPanel() {
		JLabel labelStudyType = new JLabel("Tipo de estudio:");

		comboBoxStudyType = new JComboBox<StudyType>();
		registerComponent("comboBoxStudyType", comboBoxStudyType);

		JLabel labelDate = new JLabel("Fecha de realización:");

		datePicker = new DatePicker();
		datePicker.addPopupListener(new ActionListener() {

			public void actionPerformed(ActionEvent event) {
				onPickDate();
			}

		});

		fieldDate = new JTextField();
		fieldDate.setEditable(false);
		fieldDate.setText(datePicker.getFormattedDate());
		registerComponent("fieldDate", fieldDate);

		buttonDatePicker = new JButton(ImageManager.getImageIcon(ImageManager.DATE_PICKER, 25, 30));
		buttonDatePicker.setMargin(new Insets(0, 0, 0, 0));
		buttonDatePicker.setPreferredSize(new Dimension(30, 24));
		buttonDatePicker.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent event) {
				onButtonDatePickerAction();
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
		panelFields.setBorder(BorderFactory.createCompoundBorder(BorderFactory.createTitledBorder("Información básica"), BorderFactory.createEmptyBorder(5, 10, 10, 10)));
		panelFields.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.MIN_COLSPEC,
			FormFactory.LABEL_COMPONENT_GAP_COLSPEC,
			ColumnSpec.decode("fill:max(224px;default):grow")
		}, new RowSpec[] {
			FormFactory.MIN_ROWSPEC,
			FormFactory.NARROW_LINE_GAP_ROWSPEC,
			FormFactory.MIN_ROWSPEC
		}));
		panelFields.add(labelStudyType, "1, 1, right, default");
		panelFields.add(comboBoxStudyType, "3, 1, fill, default");
		panelFields.add(labelDate, "1, 3, right, default");
		panelFields.add(panelDate, "3, 3, fill, default");

		fieldCauses = new JTextArea();
		fieldCauses.setFocusTraversalKeys(KeyboardFocusManager.FORWARD_TRAVERSAL_KEYS, null);
		fieldCauses.setFocusTraversalKeys(KeyboardFocusManager.BACKWARD_TRAVERSAL_KEYS, null);
		fieldCauses.setLineWrap(true);
		fieldCauses.setWrapStyleWord(true);
		registerComponent("fieldCauses", fieldCauses);

		JScrollPane scrollPanelCauses = new JScrollPane(fieldCauses, ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED, ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED);

		JPanel panelCauses = new JPanel();
		panelCauses.setBorder(BorderFactory.createCompoundBorder(BorderFactory.createTitledBorder("Motivos del estudio"), BorderFactory.createEmptyBorder(5, 10, 10, 10)));
		panelCauses.setLayout(new GridLayout());
		panelCauses.add(scrollPanelCauses);

		fieldDiagnosis = new JTextArea();
		fieldDiagnosis.setFocusTraversalKeys(KeyboardFocusManager.FORWARD_TRAVERSAL_KEYS, null);
		fieldDiagnosis.setFocusTraversalKeys(KeyboardFocusManager.BACKWARD_TRAVERSAL_KEYS, null);
		fieldDiagnosis.setLineWrap(true);
		fieldDiagnosis.setWrapStyleWord(true);
		registerComponent("fieldDiagnosis", fieldDiagnosis);

		JScrollPane scrollPanelDiagnosis = new JScrollPane(fieldDiagnosis, ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED, ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED);

		JPanel panelDiagnosis = new JPanel();
		panelDiagnosis.setBorder(BorderFactory.createCompoundBorder(BorderFactory.createTitledBorder("Diagnóstico"), BorderFactory.createEmptyBorder(5, 10, 10, 10)));
		panelDiagnosis.setLayout(new GridLayout());
		panelDiagnosis.add(scrollPanelDiagnosis);

		fieldIndications = new JTextArea();
		fieldIndications.setFocusTraversalKeys(KeyboardFocusManager.FORWARD_TRAVERSAL_KEYS, null);
		fieldIndications.setFocusTraversalKeys(KeyboardFocusManager.BACKWARD_TRAVERSAL_KEYS, null);
		fieldIndications.setLineWrap(true);
		fieldIndications.setWrapStyleWord(true);
		registerComponent("fieldDiagnosis", fieldIndications);

		JScrollPane scrollPanelIndications = new JScrollPane(fieldIndications, ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED, ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED);

		JPanel panelIndications = new JPanel();
		panelIndications.setBorder(BorderFactory.createCompoundBorder(BorderFactory.createTitledBorder("Indicaciones"), BorderFactory.createEmptyBorder(5, 10, 10, 10)));
		panelIndications.setLayout(new GridLayout());
		panelIndications.add(scrollPanelIndications);

		fieldObservations = new JTextArea();
		fieldObservations.setFocusTraversalKeys(KeyboardFocusManager.FORWARD_TRAVERSAL_KEYS, null);
		fieldObservations.setFocusTraversalKeys(KeyboardFocusManager.BACKWARD_TRAVERSAL_KEYS, null);
		fieldObservations.setLineWrap(true);
		fieldObservations.setWrapStyleWord(true);
		registerComponent("fieldObservations", fieldObservations);

		JScrollPane scrollPanelObservations = new JScrollPane(fieldObservations, ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED, ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED);

		JPanel panelObservations = new JPanel();
		panelObservations.setBorder(BorderFactory.createCompoundBorder(BorderFactory.createTitledBorder("Observaciones"), BorderFactory.createEmptyBorder(5, 10, 10, 10)));
		panelObservations.setLayout(new GridLayout());
		panelObservations.add(scrollPanelObservations);

		JPanel panelAreas = new JPanel();
		panelAreas.setLayout(new FormLayout(new ColumnSpec[] {
			ColumnSpec.decode("fill:max(288px;default):grow"),
			FormFactory.RELATED_GAP_COLSPEC,
			ColumnSpec.decode("fill:max(288px;default):grow")
		}, new RowSpec[] {
			RowSpec.decode("fill:max(128px;default):grow"),
			FormFactory.LINE_GAP_ROWSPEC,
			RowSpec.decode("fill:max(128px;default):grow")
		}));
		panelAreas.add(panelCauses, "1, 1");
		panelAreas.add(panelDiagnosis, "3, 1");
		panelAreas.add(panelIndications, "1, 3");
		panelAreas.add(panelObservations, "3, 3");

		JPanel panelStudy = new JPanel();
		panelStudy.setLayout(new BorderLayout(0, 10));
		panelStudy.add(panelFields, BorderLayout.NORTH);
		panelStudy.add(panelAreas, BorderLayout.CENTER);

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
					onSelectStudyFiles();
			}

		});
		registerComponent("listStudyFiles", listStudyFiles);

		JScrollPane scrollPanelStudyFiles = new JScrollPane(listStudyFiles, ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED, ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED);

		JButton buttonAddStudyFiles = new JButton("Agregar...");
		buttonAddStudyFiles.setIcon(ImageManager.getImageIcon(ImageManager.ADD_FILES, 25, 30));
		buttonAddStudyFiles.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent event) {
				onAddStudyFile();
			}

		});
		registerComponent("buttonAddFile", buttonAddStudyFiles);

		buttonRemoveStudyFiles = new JButton("Eliminar");
		buttonRemoveStudyFiles.setIcon(ImageManager.getImageIcon(ImageManager.REMOVE_FILES, 25, 30));
		buttonRemoveStudyFiles.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent event) {
				onRemoveStudyFiles();
			}

		});
		registerComponent("buttonRemoveFile", buttonRemoveStudyFiles);

		JPanel panelStudyFilesButtons = new JPanel();
		panelStudyFilesButtons.setLayout(new GridLayout(1, 2, 3, 0));
		panelStudyFilesButtons.add(buttonAddStudyFiles);
		panelStudyFilesButtons.add(buttonRemoveStudyFiles);

		JPanel panelStudyFiles = new JPanel();
		panelStudyFiles.setBorder(BorderFactory.createCompoundBorder(BorderFactory.createTitledBorder("Archivos"), BorderFactory.createEmptyBorder(5, 10, 10, 10)));
		panelStudyFiles.setLayout(new FormLayout(new ColumnSpec[] {
			ColumnSpec.decode("fill:max(128px;default):grow")
		}, new RowSpec[] {
			RowSpec.decode("fill:max(224px;default):grow"),
			FormFactory.NARROW_LINE_GAP_ROWSPEC,
			FormFactory.MIN_ROWSPEC
		}));
		panelStudyFiles.add(scrollPanelStudyFiles, "1, 1");
		panelStudyFiles.add(panelStudyFilesButtons, "1, 3");

		JPanel panelContent = new JPanel();
		panelContent.setLayout(new BorderLayout(10, 0));
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
		panelMain.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
		panelMain.setLayout(new BorderLayout(0, 10));
		panelMain.add(panelContent, BorderLayout.CENTER);
		panelMain.add(panelButtons, BorderLayout.SOUTH);

		onInitialize();

		return panelMain;
	}

	protected String getTitle() {
		return "Nuevo estudio - MRS";
	}

	protected boolean isResizable() {
		return true;
	}

	protected void onPack() {
		setFocusOwner(fieldCauses);
	}

	private void onAddStudyFile() {
		// Shows the file chooser dialog
		File[] selectedFiles = GuiManager.showFileChooserDialog(this);

		if (selectedFiles.length > 0)
			// At least one file has been selected
			listStudyFiles.addFiles(selectedFiles);
	}

	private void onAddStudy() {
		// Gets the study's information
		String causes = fieldCauses.getText();
		Date date = datePicker.getDate();
		String diagnosis = fieldDiagnosis.getText();
		String indications = fieldIndications.getText();
		String observations = fieldObservations.getText();
		byte[] studyTypeId = comboBoxStudyType.getItemAt(comboBoxStudyType.getSelectedIndex()).getId();
		List<File> studyFiles = listStudyFiles.getFilesToAdd();

		// Locks the window
		lock();

		// Adds the study
		AddStudyCaller caller = new AddStudyCaller() {

			public void onAddStudySuccess() {
				// Closes the current window
				GuiManager.closeCurrentWindow();
			}

		};
		AddStudyWorker worker = new AddStudyWorker(caller, causes, date, diagnosis, indications, observations, studyTypeId, studyFiles);
		worker.execute();
	}

	private void onButtonDatePickerAction() {
		if (datePicker.popupIsShowing())
			// Hides the date picker popup
			datePicker.hidePopup();
		else
			// Shows the date picker popup
			datePicker.showPopup(buttonDatePicker);
	}

	private void onCancel() {
		// Closes the current window
		GuiManager.closeCurrentWindow();
	}

	private void onInitialize() {
		// Locks the window
		lock();

		// Gets the study types
		GetStudyTypesCaller caller = new GetStudyTypesCaller() {

			public void onGetStudyTypesSuccess(List<StudyType> studyTypes) {
				// Adds the study types to the combo box
				for (StudyType studyType : studyTypes)
					comboBoxStudyType.addItem(studyType);

				// Unlocks the window
				unlock();

				// Calls the selection callback method
				onSelectStudyFiles();
			}

		};
		GetStudyTypesWorker worker = new GetStudyTypesWorker(caller);
		worker.execute();
	}

	private void onPickDate() {
		// Shows the picked date in the date field
		fieldDate.setText(Utility.formatDate(datePicker.getDate()));

		// Hides the date picker popup
		datePicker.hidePopup();
	}

	private void onRemoveStudyFiles() {
		// Removes the selected study files
		listStudyFiles.removeSelectedFiles();
	}

	private void onSelectStudyFiles() {
		// Gets the selected smallest cell index (if any)
		int selectedItemIndex = listStudyFiles.getSelectedIndex();

		if (selectedItemIndex < 0)
			// No row has been selected
			buttonRemoveStudyFiles.setEnabled(false);
		else
			// At least one row has been selected
			buttonRemoveStudyFiles.setEnabled(true);
	}

	private void onViewStudyFile() {
		// Gets the selected file with the smallest cell index (if any)
		File file = listStudyFiles.getSelectedValue();

		if (file != null) {
			// Locks the window
			lock();

			// Opens the file's directory
			OpenFileDirectoryCaller caller = new OpenFileDirectoryCaller() {

				public void onOpenFileDirectorySuccess() {
					// Unlocks the window
					unlock();
				}

			};
			OpenFileDirectoryWorker worker = new OpenFileDirectoryWorker(caller, file);
			worker.execute();
		}
	}

}
