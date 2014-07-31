package gui.components;

import java.util.List;
import javax.swing.JTable;
import javax.swing.table.AbstractTableModel;
import javax.swing.table.TableColumnModel;
import entities.PatientSummary;

@SuppressWarnings("serial")
public class PatientTable extends JTable {

	public static final int GENDER = 2;
	public static final int ID = 0;
	public static final int NAME = 1;
	
	private static final int COLUMN_COUNT = 3;
	
	public PatientTable() {
		super(new PatientTableModel());

		// Gets the table column model
		TableColumnModel tableColumnModel = getColumnModel();
		
		// Sets cell renderers for specific type data
		tableColumnModel.getColumn(GENDER).setCellRenderer(new GenderTableCellRenderer());
		tableColumnModel.getColumn(ID).setCellRenderer(new IdTableCellRenderer());
	}
	
	public void setPatientSummaries(List<PatientSummary> patientSummaries) {
		// Gets the table model
		PatientTableModel tableModel = (PatientTableModel) getModel();
		
		// Fills the array with the patient summaries
		tableModel.patientSummaries = new PatientSummary[patientSummaries.size()];
		patientSummaries.toArray(tableModel.patientSummaries);
		
		// Notifies that data have changed
		tableModel.fireTableDataChanged();
	}
	
	private static class PatientTableModel extends AbstractTableModel {
		
		private static String[] columnNames;
		
		private PatientSummary[] patientSummaries;
		
		static {
			// Initializes the column names
			columnNames = new String[COLUMN_COUNT];
			columnNames[GENDER] = "Sexo";
			columnNames[ID] = "ID";
			columnNames[NAME] = "Nombre y apellido";
		}
		
		private PatientTableModel() {
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
		
	}
	
}
