package gui.components;

import java.awt.Component;
import java.sql.Date;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;
import utilities.Utility;

public class DateTableCellRenderer extends DefaultTableCellRenderer {
	
	public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus, int row, int column) {
		// Formats the date
		String newValue = Utility.formatDate((Date) value);
		
		return super.getTableCellRendererComponent(table, newValue, isSelected, hasFocus, row, column);
	}
	
}
