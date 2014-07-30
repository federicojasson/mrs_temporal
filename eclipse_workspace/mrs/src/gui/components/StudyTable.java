package gui.components;

import java.util.List;
import javax.swing.JTable;
import javax.swing.table.AbstractTableModel;
import entities.StudySummary;

@SuppressWarnings("serial")
public class StudyTable extends JTable {

	public static final int DATE = 2;
	public static final int ID = 0;
	public static final int STUDY_TYPE_DESCRIPTION = 1;
	
	private static final int COLUMN_COUNT = 3;
	
	public StudyTable() {
		super(new StudyTableModel());
		
		// Sets cell renderers for specific type data
		getColumnModel().getColumn(DATE).setCellRenderer(new DateTableCellRenderer());
		getColumnModel().getColumn(ID).setCellRenderer(new IdTableCellRenderer());
	}
	
	public StudyTableModel getModel() {
		return (StudyTableModel) super.getModel();
	}
	
	public static class StudyTableModel extends AbstractTableModel {
		private static String[] columnNames;
		
		private StudySummary[] studySummaries;
		
		static {
			// Initializes the column names
			columnNames = new String[COLUMN_COUNT];
			columnNames[DATE] = "Fecha de realización";
			columnNames[ID] = "ID";
			columnNames[STUDY_TYPE_DESCRIPTION] = "Tipo de estudio";
		}
		
		public StudyTableModel() {
			studySummaries = new StudySummary[0];
		}
		
		public int getColumnCount() {
			return columnNames.length;
		}
		
		public String getColumnName(int columnIndex) {
			return columnNames[columnIndex];
		}

		public int getRowCount() {
			return studySummaries.length;
		}

		public Object getValueAt(int rowIndex, int columnIndex) {
			// Gets the study summary
			StudySummary studySummary = studySummaries[rowIndex];
			
			// Returns the corresponding value
			switch (columnIndex) {
				case DATE : return studySummary.getDate();
				case ID : return studySummary.getId();
				case STUDY_TYPE_DESCRIPTION : return studySummary.getStudyTypeDescription();
				default : return null;
			}
		}
		
		public void setStudySummaries(List<StudySummary> studySummaries) {
			// Fills the array with the study summaries
			this.studySummaries = new StudySummary[studySummaries.size()];
			studySummaries.toArray(this.studySummaries);
			
			// Notifies that all data have changed
			fireTableDataChanged();
		}
		
	}
	
}
