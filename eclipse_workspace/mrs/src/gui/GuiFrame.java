package gui;

import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.swing.JFrame;
import javax.swing.JPanel;
import managers.GuiManager;

public abstract class GuiFrame {
	
	private JFrame frame;
	
	public void dispose() {
		frame.dispose();
	}
	
	public void initialize() {
		frame = new JFrame();
		
		frame.addWindowListener(new WindowAdapter() {
			public void windowClosing(WindowEvent e) {
				// Executes an event method
				onClose();
			}
		});
		
		frame.add(getMainPanel());
		frame.setTitle(getTitle());
		frame.setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
		frame.pack();
		frame.setLocationRelativeTo(null);
		frame.setVisible(true);
	}
	
	protected abstract JPanel getMainPanel();
	
	protected abstract String getTitle();
	
	private void onClose() {
		GuiManager.closeCurrentFrame();
	}
	
}
