package gui.components;

import java.awt.Component;
import javax.swing.JTable;
import entities.Gender;

@SuppressWarnings("serial")
public class GenderTableCellRenderer extends PaddingTableCellRenderer {

	public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus, int row, int column) {
		// The received object is a byte array
		Gender gender = Gender.getConstant((byte[]) value);
		String newValue = gender.toString();

		return super.getTableCellRendererComponent(table, newValue, isSelected, hasFocus, row, column);
	}

}
