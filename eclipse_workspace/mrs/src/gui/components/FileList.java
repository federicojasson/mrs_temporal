package gui.components;

import java.io.File;
import java.util.LinkedList;
import java.util.List;
import javax.swing.JList;

@SuppressWarnings("serial")
public class FileList extends JList<File> {

	private List<File> filesToAdd;
	private List<File> filesToRemove;
	private List<File> initialFiles;
	
	public FileList() {
		initialFiles = new LinkedList<File>();
	}
	
	public void addFiles(File[] files) {
		// TODO: debug (remove it)
		for (File file : files)
			System.out.println(file);
		
		for (File file : files)
			filesToAdd.add(file);
	}
	
	public List<File> getFilesToAdd() {
		return filesToAdd;
	}
	
	public List<File> getFilesToRemove() {
		return filesToRemove;
	}
	
	public void setInitialFiles(List<File> initialFiles) {
		this.initialFiles = initialFiles;
	}
	
	/*public List<File> getFiles() {
		List<File> files = new LinkedList<File>();
		ListModel<File> listModel = getModel();
		
		int size = listModel.getSize();
		for (int i = 0; i < size; ++i)
			files.add(listModel.getElementAt(i));
		
		return files;
	}*/
	
	public void removeSelectedFiles() {
		// Gets the selected file smallest index
		int index = getSelectedIndex();
		
		while (index >= 0) {
			// Removes the selected file
			remove(index);
			
			// Gets the selected file smallest index
			index = getSelectedIndex(); 
		}
	}
	
}
