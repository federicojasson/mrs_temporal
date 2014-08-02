package gui.components;

import java.awt.Color;
import java.awt.Component;
import java.awt.Font;
import java.awt.GridLayout;
import java.io.File;
import java.io.IOException;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JPanel;
import javax.swing.ListCellRenderer;
import javax.swing.UIDefaults;
import javax.swing.UIManager;
import javax.swing.border.Border;
import javax.swing.border.CompoundBorder;
import javax.swing.border.EmptyBorder;

public class FileListCellRenderer implements ListCellRenderer<File> {

	private Border borderCell;
	private Border borderCellFocused;
	private Color colorCanonicalPathForeground;
	private Color colorCanonicalPathForegroundSelected;
	private Color colorCellBackground;
	private Color colorCellBackgroundSelected;
	private Color colorFilenameForeground;
	private Color colorFilenameForegroundSelected;
	private Font fontCanonicalPath;
	private Font fontFilename;
	
	public FileListCellRenderer() {
		// Gets the defaults GUI configurations
		UIDefaults defaultsGuiConfigurations = UIManager.getDefaults();
		
		// Gets the list's default font
		Font listFont = defaultsGuiConfigurations.getFont("List.font");
		
		// Initializes the configurations
		borderCell = new EmptyBorder(5, 10, 5, 10);
		borderCellFocused = new CompoundBorder(defaultsGuiConfigurations.getBorder("List.focusCellHighlightBorder"), new EmptyBorder(4, 9, 4, 9));
		colorCanonicalPathForeground = Color.GRAY;
		colorCanonicalPathForegroundSelected = defaultsGuiConfigurations.getColor("List.selectionForeground");
		colorCellBackground = defaultsGuiConfigurations.getColor("List.background");
		colorCellBackgroundSelected = defaultsGuiConfigurations.getColor("List.selectionBackground");
		colorFilenameForeground = defaultsGuiConfigurations.getColor("List.foreground");
		colorFilenameForegroundSelected = defaultsGuiConfigurations.getColor("List.selectionForeground");
		fontCanonicalPath = new Font(listFont.getFontName(), Font.ITALIC, listFont.getSize());
		fontFilename = new Font(listFont.getFontName(), Font.BOLD, listFont.getSize());
	}
	
	public Component getListCellRendererComponent(JList<? extends File> list, File value, int index, boolean isSelected, boolean cellHasFocus) {
		String filename = value.getName();
		
		String canonicalPath;
		try {
			canonicalPath = value.getCanonicalPath();
		} catch (IOException exception) {
			canonicalPath = "Archivo no localizado";
		}
		
		JLabel labelFilename = new JLabel(filename);
		labelFilename.setFont(fontFilename);
		
		JLabel labelCanonicalPath = new JLabel(canonicalPath);
		labelCanonicalPath.setFont(fontCanonicalPath);

		JPanel panel = new JPanel();
		panel.setLayout(new GridLayout(2, 1, 0, 5));
		panel.add(labelFilename);
		panel.add(labelCanonicalPath);
		
		if (isSelected) {
			// Cell is selected
			labelCanonicalPath.setForeground(colorCanonicalPathForegroundSelected);
			labelFilename.setForeground(colorFilenameForegroundSelected);
			panel.setBackground(colorCellBackgroundSelected);
		} else {
			// Cell is not selected
			labelCanonicalPath.setForeground(colorCanonicalPathForeground);
			labelFilename.setForeground(colorFilenameForeground);
			panel.setBackground(colorCellBackground);
		}
		
		if (cellHasFocus)
			// Cell has the focus
			panel.setBorder(borderCellFocused);
		else
			// Cell has not the focus
			panel.setBorder(borderCell);
		
		return panel;
	}
	
}
