package gui.components;

import java.awt.Component;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;

@SuppressWarnings("serial")
public class GenderTableCellRenderer extends DefaultTableCellRenderer {
	
	public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus, int row, int column) {
		// The received object is a byte array
		String newValue = new String((byte[]) value);
		
		return super.getTableCellRendererComponent(table, newValue, isSelected, hasFocus, row, column);
	}
	
}
