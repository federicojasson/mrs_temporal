package gui.components;

import java.awt.Dimension;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JTable;
import javax.swing.SwingConstants;
import javax.swing.table.AbstractTableModel;
import javax.swing.table.DefaultTableCellRenderer;
import entities.PatientSummary;

@SuppressWarnings("serial")
public class PatientTable extends JTable {

	public static final int GENDER = 2;
	public static final int ID = 0;
	public static final int NAME = 1;

	private static final int COLUMN_COUNT = 3;
	private static final int ROW_HEADER_HEIGHT = 32;
	private static final int ROW_HEIGHT = 24;

	public PatientTable() {
		super(new PatientTableModel());

		// Sets cell renderers
		setDefaultRenderer(Object.class, new PaddingTableCellRenderer());
		columnModel.getColumn(GENDER).setCellRenderer(new GenderTableCellRenderer());
		columnModel.getColumn(ID).setCellRenderer(new IdTableCellRenderer());

		// Applies other configurations
		setRowHeight(ROW_HEIGHT);
		tableHeader.setPreferredSize(new Dimension(tableHeader.getPreferredSize().width, ROW_HEADER_HEIGHT));
		tableHeader.setReorderingAllowed(false);
		((DefaultTableCellRenderer) tableHeader.getDefaultRenderer()).setHorizontalAlignment(SwingConstants.CENTER);
	}

	public void removePatientSummary(int rowIndex) {
		// Gets the table model
		PatientTableModel tableModel = (PatientTableModel) dataModel;

		// Removes the row
		tableModel.removeRow(rowIndex);

		// Notifies that data have changed
		tableModel.fireTableDataChanged();
	}

	public void setPatientSummaries(List<PatientSummary> patientSummaries) {
		// Gets the table model
		PatientTableModel tableModel = (PatientTableModel) dataModel;

		// Replaces the model's list with a new one containing the patient summaries
		tableModel.patientSummaries = new ArrayList<PatientSummary>(patientSummaries);

		// Notifies that data have changed
		tableModel.fireTableDataChanged();
	}

	private static class PatientTableModel extends AbstractTableModel {

		private static String[] columnNames;

		private List<PatientSummary> patientSummaries;

		static {
			// Initializes the column names
			columnNames = new String[COLUMN_COUNT];
			columnNames[GENDER] = "Sexo";
			columnNames[ID] = "ID";
			columnNames[NAME] = "Nombre y apellido";
		}

		private PatientTableModel() {
			patientSummaries = new ArrayList<PatientSummary>(0);
		}

		public int getColumnCount() {
			return columnNames.length;
		}

		public String getColumnName(int columnIndex) {
			return columnNames[columnIndex];
		}

		public int getRowCount() {
			return patientSummaries.size();
		}

		public Object getValueAt(int rowIndex, int columnIndex) {
			// Gets the patient summary
			PatientSummary patientSummary = patientSummaries.get(rowIndex);

			// Returns the corresponding value
			switch (columnIndex) {
				case GENDER :
					return patientSummary.getGender();
				case ID :
					return patientSummary.getId();
				case NAME :
					return patientSummary.getName();
				default :
					return null;
			}
		}

		public void removeRow(int rowIndex) {
			patientSummaries.remove(rowIndex);
		}

	}

}
