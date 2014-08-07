package gui.components;

import java.awt.Component;
import java.sql.Date;
import javax.swing.JTable;
import utilities.Utility;

@SuppressWarnings("serial")
public class DateTableCellRenderer extends PaddingTableCellRenderer {

	public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus, int row, int column) {
		// Formats the date
		String newValue = Utility.formatDate((Date) value);

		return super.getTableCellRendererComponent(table, newValue, isSelected, hasFocus, row, column);
	}

}
