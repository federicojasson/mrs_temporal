package gui;

import java.awt.Component;
import java.util.List;
import javax.swing.JTable;
import javax.swing.table.AbstractTableModel;
import javax.swing.table.DefaultTableCellRenderer;
import utilities.Utility;
import entities.PatientSummary;

public class PatientTable extends JTable {

	public static final int GENDER = 2;
	public static final int ID = 0;
	public static final int NAME = 1;
	
	private static final int COLUMN_COUNT = 3;
	
	public PatientTable() {
		super(new PatientTableModel());
		getColumnModel().getColumn(GENDER).setCellRenderer(new PatientTableGenderCellRenderer());
		getColumnModel().getColumn(ID).setCellRenderer(new PatientTableIdCellRenderer());
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
	
	private static class PatientTableGenderCellRenderer extends DefaultTableCellRenderer {
		
		public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus, int row, int column) {
			// The received object is of class Byte, not byte, so two castings have to be performed
			char newValue = (char) (byte) value;
			
			return super.getTableCellRendererComponent(table, newValue, isSelected, hasFocus, row, column);
		}
		
	}
	
	private static class PatientTableIdCellRenderer extends DefaultTableCellRenderer {
		
		public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus, int row, int column) {
			// Converts the patient ID to hexadecimal
			String newValue = Utility.bytesToHexadecimal((byte[]) value);
			
			return super.getTableCellRendererComponent(table, newValue, isSelected, hasFocus, row, column);
		}
		
	}
	
}
