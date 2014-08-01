package gui.components;

import java.io.File;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import javax.swing.AbstractListModel;
import javax.swing.JList;

// TODO: check if a file exists???????? only the name (not the path) ---> or maybe remove current files that are equal to the added ones?
@SuppressWarnings("serial")
public class FileList extends JList<File> {
	
	public FileList() {
		super(new FileListModel());
		
		// Sets a cell renderer for the list
		setCellRenderer(new FileListCellRenderer());
	}
	
	public void addFiles(File[] files) {
		// Gets the list model
		FileListModel listModel = (FileListModel) getModel();
		
		// Adds the files
		for (File file : files) {
			listModel.files.add(file);
			listModel.filesToAdd.add(file);
		}
		
		// Notifies that data have changed
		listModel.fireContentsChanged();
	}
	
	public List<File> getFilesToAdd() {
		// Gets the list model
		FileListModel listModel = (FileListModel) getModel();
		
		// Returns the files to add
		return listModel.filesToAdd;
	}
	
	public List<File> getFilesToRemove() {
		// Gets the list model
		FileListModel listModel = (FileListModel) getModel();
		
		// Returns the files to remove
		return listModel.filesToRemove;
	}
	
	public void removeSelectedFiles() {
		// Gets the list model
		FileListModel listModel = (FileListModel) getModel();
		
		// Gets the selected files
		List<File> selectedFiles = getSelectedValuesList();
		
		// Clears the list selection
		clearSelection();
		
		// Removes the files
		for (File selectedFile : selectedFiles) {
			listModel.files.remove(selectedFile);
			
			if (listModel.initialFiles.remove(selectedFile))
				// The file was part of the initial set
				listModel.filesToRemove.add(selectedFile);
			else
				// The file was a new one
				listModel.filesToAdd.remove(selectedFile);
		}
		
		// Notifies that data have changed
		listModel.fireContentsChanged();
	}
	
	public void setInitialFiles(List<File> initialFiles) {
		// Gets the list model
		FileListModel listModel = (FileListModel) getModel();
		
		// Clears the file lists
		listModel.files.clear();
		listModel.filesToAdd.clear();
		listModel.filesToRemove.clear();
		listModel.initialFiles.clear();
		
		// Adds the files
		for (File initialFile : initialFiles) {
			listModel.files.add(initialFile);
			listModel.initialFiles.add(initialFile);
		}
		
		// Notifies that data have changed
		listModel.fireContentsChanged();
	}
	
	private static class FileListModel extends AbstractListModel<File> {

		private List<File> files;
		private List<File> filesToAdd;
		private List<File> filesToRemove;
		private List<File> initialFiles;
		
		private FileListModel() {
			files = new ArrayList<File>();
			filesToAdd = new LinkedList<File>();
			filesToRemove = new LinkedList<File>();
			initialFiles = new LinkedList<File>();
		}
		
		public File getElementAt(int index) {
			return files.get(index);
		}

		public int getSize() {
			return files.size();
		}
		
		private void fireContentsChanged() {
			fireContentsChanged(this, 0, files.size());
		}
		
	}
	
}
