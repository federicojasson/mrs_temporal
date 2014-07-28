package gui.components;

import java.util.List;
import javax.swing.JTable;
import javax.swing.ListSelectionModel;
import javax.swing.table.AbstractTableModel;
import entities.PatientSummary;

public class PatientTable extends JTable {

	public static final int GENDER = 2;
	public static final int ID = 0;
	public static final int NAME = 1;
	
	private static final int COLUMN_COUNT = 3;
	
	public PatientTable() {
		super(new PatientTableModel());

		// Sets cell renderers for specific type data
		getColumnModel().getColumn(GENDER).setCellRenderer(new GenderTableCellRenderer());
		getColumnModel().getColumn(ID).setCellRenderer(new IdTableCellRenderer());
	}
	
	public PatientTableModel getModel() {
		return (PatientTableModel) super.getModel();
	}
	
	public static class PatientTableModel extends AbstractTableModel {
		private static String[] columnNames;
		
		private PatientSummary[] patientSummaries;
		
		static {
			// Initializes the column names
			columnNames = new String[COLUMN_COUNT];
			columnNames[GENDER] = "Sexo";
			columnNames[ID] = "ID";
			columnNames[NAME] = "Nombre y apellido";
		}
		
		public PatientTableModel() {
			patientSummaries = new PatientSummary[0];
		}
		
		public int getColumnCount() {
			return columnNames.length;
		}
		
		public String getColumnName(int columnIndex) {
			return columnNames[columnIndex];
		}

		public int getRowCount() {
			return patientSummaries.length;
		}

		public Object getValueAt(int rowIndex, int columnIndex) {
			// Gets the patient summary
			PatientSummary patientSummary = patientSummaries[rowIndex];
			
			// Returns the corresponding value
			switch (columnIndex) {
				case GENDER : return patientSummary.getGender();
				case ID : return patientSummary.getId();
				case NAME : return patientSummary.getName();
				default : return null;
			}
		}
		
		public void setPatientSummaries(List<PatientSummary> patientSummaries) {
			// Fills the array with the patient summaries
			this.patientSummaries = new PatientSummary[patientSummaries.size()];
			patientSummaries.toArray(this.patientSummaries);
			
			// Notifies that all data have changed
			fireTableDataChanged();
		}
		
	}
	
}
