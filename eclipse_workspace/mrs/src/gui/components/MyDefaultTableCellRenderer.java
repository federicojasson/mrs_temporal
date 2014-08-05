package gui.components;

import java.awt.Component;
import javax.swing.BorderFactory;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;

@SuppressWarnings("serial")
public class MyDefaultTableCellRenderer extends DefaultTableCellRenderer {
	
	public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus, int row, int column) {
		super.getTableCellRendererComponent(table, value, isSelected, hasFocus, row, column);
		
		// Sets an empty border
		setBorder(BorderFactory.createEmptyBorder(0, 5, 0, 5));
		
		return this;
	}
	
}
