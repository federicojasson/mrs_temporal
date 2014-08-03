package gui.frames;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.GridLayout;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.io.File;
import java.util.List;
import entities.Study;
import gui.components.FileList;
import gui.workers.GetStudyCaller;
import gui.workers.GetStudyFilesCaller;
import gui.workers.GetStudyFilesWorker;
import gui.workers.GetStudyWorker;
import gui.workers.ModifyStudyCaller;
import gui.workers.ModifyStudyWorker;
import gui.workers.OpenFileDirectoryCaller;
import gui.workers.OpenFileDirectoryWorker;
import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.ListSelectionModel;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import utilities.Utility;
import managers.GuiManager;
import managers.StudyManager;
import com.jgoodies.forms.factories.FormFactory;
import com.jgoodies.forms.layout.ColumnSpec;
import com.jgoodies.forms.layout.FormLayout;
import com.jgoodies.forms.layout.RowSpec;

// TODO: validate input
public class StudyFrame extends GuiFrame {
	
	private JButton buttonAddStudyFile;
	private JButton buttonModifyStudy;
	private JButton buttonRemoveStudyFile;
	private JButton buttonSetModifyMode;
	private JTextField fieldDate;
	private JTextField fieldId;
	private JTextArea fieldObservations;
	private JTextField fieldStudyTypeDescription;
	private FileList listStudyFiles;
	private ListSelectionListener selectionListenerListStudyFilesModifyMode;
	
	public void initialize() {
		// Initializes the GUI
		super.initialize();
		
		// Sets the view mode
		setViewMode();
		
		// Locks the frame
		lock();
		
		// Gets the study
		GetStudyCaller caller = new GetStudyCaller() {
			public void getStudyCallback(Study study) {
				// Sets the study's information
				fieldDate.setText(Utility.formatDate(study.getDate()));
				fieldId.setText(Utility.bytesToHexadecimal(study.getId()));
				fieldObservations.setText(study.getObservations());
				fieldStudyTypeDescription.setText(study.getStudyTypeDescription());
				
				// Gets the study files
				GetStudyFilesCaller caller = new GetStudyFilesCaller() {
					public void getStudyFilesCallback(List<File> studyFiles) {
						// Sets the study files as the list's initial data
						listStudyFiles.setInitialFiles(studyFiles);
						
						// Unlocks the frame
						unlock();
					}
				};
				GetStudyFilesWorker worker = new GetStudyFilesWorker(caller, StudyManager.getCurrentStudyId());
				worker.execute();
			}
		};
		GetStudyWorker worker = new GetStudyWorker(caller, StudyManager.getCurrentStudyId());
		worker.execute();
	}
	
	protected JPanel getMainPanel() {
		JLabel labelId = new JLabel("ID de estudio:");
		
		fieldId = new JTextField();
		fieldId.setEditable(false);
		registerComponent("fieldId", fieldId);
		
		JLabel labelStudyType = new JLabel("Tipo de estudio:");
		
		fieldStudyTypeDescription = new JTextField();
		fieldStudyTypeDescription.setEditable(false);
		registerComponent("fieldStudyTypeDescription", fieldStudyTypeDescription);
		
		JLabel labelDate = new JLabel("Fecha de realización:");
		
		fieldDate = new JTextField();
		fieldDate.setEditable(false);
		registerComponent("fieldDate", fieldDate);
		
		JPanel panelFields = new JPanel();
		panelFields.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.MIN_COLSPEC,
			FormFactory.LABEL_COMPONENT_GAP_COLSPEC,
			FormFactory.GROWING_BUTTON_COLSPEC
		}, new RowSpec[] {
			FormFactory.MIN_ROWSPEC,
			FormFactory.NARROW_LINE_GAP_ROWSPEC,
			FormFactory.MIN_ROWSPEC,
			FormFactory.NARROW_LINE_GAP_ROWSPEC,
			FormFactory.MIN_ROWSPEC
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
		panelStudy.setLayout(new BorderLayout(0, 10));
		panelStudy.add(panelFields, BorderLayout.NORTH);
		panelStudy.add(panelObservations, BorderLayout.CENTER);
		
		JLabel labelStudyFiles = new JLabel("Archivos");
		
		selectionListenerListStudyFilesModifyMode = new ListSelectionListener() {
			public void valueChanged(ListSelectionEvent event) {
				if (! event.getValueIsAdjusting())
					onSelectStudyFiles();
			}
		};
		
		listStudyFiles = new FileList();
		listStudyFiles.addMouseListener(new MouseAdapter() {
			public void mouseClicked(MouseEvent event) {
				if (event.getClickCount() == 2)
					onViewStudyFile();
			}
		});
		registerComponent("listStudyFiles", listStudyFiles);
		
		JScrollPane panelStudyFilesContainer = new JScrollPane(listStudyFiles, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		panelStudyFilesContainer.setPreferredSize(new Dimension(256, 256));
		
		Image imageButtonAddFile = new ImageIcon(getClass().getResource("/images/file_add.png")).getImage().getScaledInstance(25, 30 , Image.SCALE_SMOOTH);
		
		ImageIcon iconButtonAddFile = new ImageIcon(imageButtonAddFile);
		
		buttonAddStudyFile = new JButton("Agregar archivos...");
		buttonAddStudyFile.setIcon(iconButtonAddFile);
		buttonAddStudyFile.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onAddStudyFile();
			}
		});
		registerComponent("buttonAddFile", buttonAddStudyFile);
		
		Image imageButtonRemoveFile = new ImageIcon(getClass().getResource("/images/file_delete.png")).getImage().getScaledInstance(25, 30 , Image.SCALE_SMOOTH);
		
		ImageIcon iconButtonRemoveFile = new ImageIcon(imageButtonRemoveFile);
		
		buttonRemoveStudyFile = new JButton("Eliminar archivos");
		buttonRemoveStudyFile.setIcon(iconButtonRemoveFile);
		buttonRemoveStudyFile.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onRemoveStudyFiles();
			}
		});
		registerComponent("buttonRemoveFile", buttonRemoveStudyFile);
		
		JPanel panelStudyFilesButtons = new JPanel();
		panelStudyFilesButtons.setLayout(new GridLayout(1, 2, 5, 0));
		panelStudyFilesButtons.add(buttonAddStudyFile);
		panelStudyFilesButtons.add(buttonRemoveStudyFile);
		
		JPanel panelStudyFiles = new JPanel();
		panelStudyFiles.setLayout(new BorderLayout(0, 5));
		panelStudyFiles.add(labelStudyFiles, BorderLayout.NORTH);
		panelStudyFiles.add(panelStudyFilesContainer, BorderLayout.CENTER);
		panelStudyFiles.add(panelStudyFilesButtons, BorderLayout.SOUTH);
		
		JPanel panelContent = new JPanel();
		panelContent.setLayout(new BorderLayout(10, 0));
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
		buttonModifyStudy.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onModifyStudy();
			}
		});
		registerComponent("buttonModifyStudy", buttonModifyStudy);
		setDefaultButton(buttonModifyStudy);
		
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
		panelMain.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
		panelMain.setLayout(new BorderLayout(0, 10));
		panelMain.add(panelContent, BorderLayout.CENTER);
		panelMain.add(panelButtons, BorderLayout.SOUTH);
		
		return panelMain;
	}

	protected String getTitle() {
		return "MRS - Estudio (" + Utility.bytesToHexadecimal(StudyManager.getCurrentStudyId()) + ")";
	}
	
	protected boolean isResizable() {
		return true;
	}
	
	private void onAddStudyFile() {
		// Shows the file chooser dialog
		File[] selectedFiles = GuiManager.showFileChooserDialog(this);
		
		if (selectedFiles.length > 0)
			// At least one file has been selected
			listStudyFiles.addFiles(selectedFiles);
	}
	
	private void onGoBack() {
		// Closes the current frame
		GuiManager.closeCurrentFrame();
	}
	
	private void onModifyStudy() {
		// Locks the frame
		lock();
		
		// Gets the study's information
		String observations = fieldObservations.getText();
		List<File> studyFilesToAdd = listStudyFiles.getFilesToAdd();
		List<File> studyFilesToRemove = listStudyFiles.getFilesToRemove();
		
		// Modifies the study
		ModifyStudyCaller caller = new ModifyStudyCaller() {
			public void modifyStudyCallback() {
				// Gets the study files again
				GetStudyFilesCaller caller = new GetStudyFilesCaller() {
					public void getStudyFilesCallback(List<File> studyFiles) {
						// Sets the study files as the list's initial data
						listStudyFiles.setInitialFiles(studyFiles);
						
						// Unlocks the frame
						unlock();
						
						// Sets the view mode
						setViewMode();
					}
				};
				GetStudyFilesWorker worker = new GetStudyFilesWorker(caller, StudyManager.getCurrentStudyId());
				worker.execute();
			}
		};
		ModifyStudyWorker worker = new ModifyStudyWorker(caller, observations, studyFilesToAdd, studyFilesToRemove);
		worker.execute();
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
			buttonRemoveStudyFile.setEnabled(false);
		else
			// At least one row has been selected
			buttonRemoveStudyFile.setEnabled(true);
	}
	
	private void onSetModifyMode() {
		// Sets the modify mode
		setModifyMode();
	}
	
	private void onViewStudyFile() {
		// Gets the selected file with the smallest cell index (if any)
		File file = listStudyFiles.getSelectedValue();
		
		if (file != null) {
			// Locks the frame
			lock();
			
			// Opens the file's directory
			OpenFileDirectoryCaller caller = new OpenFileDirectoryCaller() {
				public void openFileDirectoryCallback() {
					// Unlocks the frame
					unlock();
				}
			};
			OpenFileDirectoryWorker worker = new OpenFileDirectoryWorker(caller, file);
			worker.execute();
		}
	}
	
	private void setModifyMode() {
		// Changes the study files list selection behaviour
		listStudyFiles.getSelectionModel().addListSelectionListener(selectionListenerListStudyFilesModifyMode);
		listStudyFiles.getSelectionModel().setSelectionMode(ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);
		listStudyFiles.clearSelection();
		
		// Enables components
		buttonAddStudyFile.setEnabled(true);
		fieldObservations.setEditable(true);
		
		// Enables the modify study button
		buttonModifyStudy.setEnabled(true);
		
		// Disables the set modify mode button
		buttonSetModifyMode.setEnabled(false);
	}
	
	private void setViewMode() {
		// Changes the study files list selection behaviour
		listStudyFiles.getSelectionModel().removeListSelectionListener(selectionListenerListStudyFilesModifyMode);
		listStudyFiles.getSelectionModel().setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
		listStudyFiles.clearSelection();
		
		// Disables components
		buttonAddStudyFile.setEnabled(false);
		buttonRemoveStudyFile.setEnabled(false);
		fieldObservations.setEditable(false);
		
		// Disables the modify study button
		buttonModifyStudy.setEnabled(false);
		
		// Enables the set modify mode button
		buttonSetModifyMode.setEnabled(true);
	}
	
}
