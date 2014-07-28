package gui.components;

import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.swing.JButton;
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
			public void windowClosing(WindowEvent event) {
				onClose();
			}
		});
		
		frame.setContentPane(getMainPanel());
		frame.setTitle(getTitle());
		frame.setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
		frame.pack();
		frame.setLocationRelativeTo(null);
		frame.setVisible(true);
		frame.setResizable(false);
	}
	
	protected JFrame getFrame() {
		return frame;
	}
	
	protected abstract JPanel getMainPanel();
	
	protected abstract String getTitle();
	
	protected void repack() {
		// Gets the current dimensions
		int currentWidth = frame.getWidth();
		int currentHeight = frame.getHeight();
		
		// Resizes the frame
		frame.pack();
		
		// Gets the new dimensions
		int newWidth = frame.getWidth();
		int newHeight = frame.getHeight();
		
		// Moves the frame to keep the same center as before
		int x = (int) (frame.getX() - (newWidth - currentWidth) / 2.0);
		int y = (int) (frame.getY() - (newHeight - currentHeight) / 2.0);
		frame.setBounds(x, y, newWidth, newHeight);
	}
	
	protected void setDefaultButton(JButton button) {
		frame.getRootPane().setDefaultButton(button);
	}
	
	private void onClose() {
		GuiManager.closeCurrentFrame();
	}
	
}
