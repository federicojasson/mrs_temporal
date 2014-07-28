package gui.components;

import java.awt.Component;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;

public class GenderTableCellRenderer extends DefaultTableCellRenderer {
	
	public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus, int row, int column) {
		// The received object is of class Byte, not byte, so two castings have to be performed
		char newValue = (char) (byte) value;
		
		return super.getTableCellRendererComponent(table, newValue, isSelected, hasFocus, row, column);
	}
	
}
