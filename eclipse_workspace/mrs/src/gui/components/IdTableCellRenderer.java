package gui.components;

import java.awt.Component;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;
import utilities.Utility;

@SuppressWarnings("serial")
public class IdTableCellRenderer extends DefaultTableCellRenderer {
	
	public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus, int row, int column) {
		// Converts the ID to hexadecimal
		String newValue = Utility.bytesToHexadecimal((byte[]) value);
		
		return super.getTableCellRendererComponent(table, newValue, isSelected, hasFocus, row, column);
	}
	
}
