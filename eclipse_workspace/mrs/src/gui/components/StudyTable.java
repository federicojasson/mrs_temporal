package gui.components;

import java.awt.Dimension;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JTable;
import javax.swing.SwingConstants;
import javax.swing.table.AbstractTableModel;
import javax.swing.table.DefaultTableCellRenderer;
import entities.StudySummary;

@SuppressWarnings("serial")
public class StudyTable extends JTable {

	public static final int DATE = 2;
	public static final int ID = 0;
	public static final int STUDY_TYPE_DESCRIPTION = 1;

	private static final int COLUMN_COUNT = 3;
	private static final int ROW_HEADER_HEIGHT = 32;
	private static final int ROW_HEIGHT = 24;

	public StudyTable() {
		super(new StudyTableModel());

		// Sets cell renderers
		setDefaultRenderer(Object.class, new PaddingTableCellRenderer());
		columnModel.getColumn(DATE).setCellRenderer(new DateTableCellRenderer());
		columnModel.getColumn(ID).setCellRenderer(new IdTableCellRenderer());

		// Applies other configurations
		setRowHeight(ROW_HEIGHT);
		tableHeader.setPreferredSize(new Dimension(tableHeader.getPreferredSize().width, ROW_HEADER_HEIGHT));
		tableHeader.setReorderingAllowed(false);
		((DefaultTableCellRenderer) tableHeader.getDefaultRenderer()).setHorizontalAlignment(SwingConstants.CENTER);
	}

	public void removeStudySummary(int rowIndex) {
		// Gets the table model
		StudyTableModel tableModel = (StudyTableModel) dataModel;

		// Removes the row
		tableModel.removeRow(rowIndex);

		// Notifies that data have changed
		tableModel.fireTableDataChanged();
	}

	public void setStudySummaries(List<StudySummary> studySummaries) {
		// Gets the table model
		StudyTableModel tableModel = (StudyTableModel) dataModel;

		// Replaces the model's list with a new one containing the study summaries
		tableModel.studySummaries = new ArrayList<StudySummary>(studySummaries);

		// Notifies that data have changed
		tableModel.fireTableDataChanged();
	}

	private static class StudyTableModel extends AbstractTableModel {

		private static String[] columnNames;

		private List<StudySummary> studySummaries;

		static {
			// Initializes the column names
			columnNames = new String[COLUMN_COUNT];
			columnNames[DATE] = "Fecha de realización";
			columnNames[ID] = "ID";
			columnNames[STUDY_TYPE_DESCRIPTION] = "Tipo de estudio";
		}

		private StudyTableModel() {
			studySummaries = new ArrayList<StudySummary>(0);
		}

		public int getColumnCount() {
			return columnNames.length;
		}

		public String getColumnName(int columnIndex) {
			return columnNames[columnIndex];
		}

		public int getRowCount() {
			return studySummaries.size();
		}

		public Object getValueAt(int rowIndex, int columnIndex) {
			// Gets the study summary
			StudySummary studySummary = studySummaries.get(rowIndex);

			// Returns the corresponding value
			switch (columnIndex) {
				case DATE :
					return studySummary.getDate();
				case ID :
					return studySummary.getId();
				case STUDY_TYPE_DESCRIPTION :
					return studySummary.getStudyTypeDescription();
				default :
					return null;
			}
		}

		public void removeRow(int rowIndex) {
			studySummaries.remove(rowIndex);
		}

	}

}
