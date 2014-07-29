package gui.components;

import java.awt.Component;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import managers.GuiManager;

public abstract class GuiFrame {
	
	private Map<String, Component> components;
	private boolean componentsDisabled;
	private Map<String, Boolean> componentsState;
	private JFrame frame;
	
	public GuiFrame() {
		components = new HashMap<String, Component>();
		componentsDisabled = false;
		componentsState = new HashMap<String, Boolean>();
	}
	
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
	
	protected void disableComponents() {
		if (! componentsDisabled) {
			componentsDisabled = true;
			
			// Saves the current state of the components
			for (Entry<String, Component> entry : components.entrySet()) {
				// Gets the component ID and the component itself
				String componentId = entry.getKey();
				Component component = entry.getValue();
				
				// Saves the component's current state
				componentsState.put(componentId, component.isEnabled());
			}
			
			// Disables all the components
			for (Component component : components.values())
				component.setEnabled(false);
		}
	}
	
	protected JFrame getFrame() {
		return frame;
	}
	
	protected abstract JPanel getMainPanel();
	
	protected abstract String getTitle();
	
	protected void registerComponent(String componentId, Component component) {
		components.put(componentId, component);
	}
	
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
	
	protected void restoreComponentsState() {
		if (componentsDisabled) {
			componentsDisabled = false;
			
			// Restores the state of all the components
			for (Entry<String, Component> entry : components.entrySet()) {
				// Gets the component ID and the component itself
				String componentId = entry.getKey();
				Component component = entry.getValue();
				
				// Restores the component's state
				component.setEnabled(componentsState.get(componentId));
			}
			
			// Clears the state of the components
			componentsState.clear();
		}
	}
	
	protected void setDefaultButton(JButton button) {
		frame.getRootPane().setDefaultButton(button);
	}
	
	private void onClose() {
		GuiManager.closeCurrentFrame();
	}
	
}
