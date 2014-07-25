package gui;

import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.swing.JFrame;
import javax.swing.JPanel;

public abstract class GuiFrame {
	
	private JFrame frame;
	
	public void close() {
		frame.dispose();
	}
	
	public void initializeGui() {
		frame = new JFrame();
		
		frame.addWindowListener(new WindowAdapter() {
			public void windowClosed(WindowEvent e) {
				// Executes a notifier method
				onClose();
			}
		});
		
		frame.add(getMainPanel());
		frame.setTitle(getTitle());
		frame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		frame.pack();
		frame.setLocationRelativeTo(null);
		frame.setVisible(true);
	}
	
	protected abstract JPanel getMainPanel();
	
	protected abstract String getTitle();
	
	protected abstract void onClose();
	
}
