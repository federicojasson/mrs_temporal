package gui.frames;

import java.awt.Component;
import java.awt.Dimension;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.WindowConstants;
import managers.GuiManager;
import managers.ImageManager;

public abstract class GuiFrame {

	private Map<String, Component> components;
	private Map<String, Boolean> componentsState;
	private String currentTitle;
	private Component focusOwner;
	private JFrame frame;
	private boolean isLocked;

	public GuiFrame() {
		components = new HashMap<String, Component>();
		componentsState = new HashMap<String, Boolean>();
		isLocked = false;
	}

	public void dispose() {
		// Locks the frame before disposing it
		lock();

		// Disposes the frame
		frame.dispose();
	}

	public JFrame getFrame() {
		return frame;
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
		frame.setDefaultCloseOperation(WindowConstants.DO_NOTHING_ON_CLOSE);
		frame.setIconImage(ImageManager.getImage(ImageManager.WINDOW_ICON));
		frame.pack();
		frame.setMinimumSize(frame.getSize());
		frame.setLocationRelativeTo(null);
		frame.setVisible(true);
		frame.setResizable(isResizable());
	}

	protected abstract JPanel getMainPanel();

	protected abstract String getTitle();

	protected abstract boolean isResizable();

	protected void lock() {
		if (! isLocked) {
			isLocked = true;

			// Saves the frame's current title
			currentTitle = frame.getTitle();

			// Saves the frame's focus owner
			focusOwner = frame.getMostRecentFocusOwner();

			// Saves the current state of the components
			for (Entry<String, Component> entry : components.entrySet()) {
				// Gets the component ID and the component itself
				String componentId = entry.getKey();
				Component component = entry.getValue();

				// Saves the component's current state
				componentsState.put(componentId, component.isEnabled());
			}

			// Changes the frame's title
			frame.setTitle("MRS - Cargando...");

			// Disables all the components
			for (Component component : components.values())
				component.setEnabled(false);
		}
	}

	protected void registerComponent(String componentId, Component component) {
		components.put(componentId, component);
	}

	protected void repack() {
		// Gets the current dimensions
		int currentWidth = frame.getWidth();
		int currentHeight = frame.getHeight();

		// Resizes the frame
		frame.setMinimumSize(new Dimension(0, 0));
		frame.pack();
		frame.setMinimumSize(frame.getSize());

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

	protected void unlock() {
		if (isLocked) {
			isLocked = false;

			// Restores the frame's title
			frame.setTitle(currentTitle);

			if (focusOwner != null)
				// Restores the frame's focus owner
				focusOwner.requestFocusInWindow();

			// Restores the state of all the components
			for (Entry<String, Component> entry : components.entrySet()) {
				// Gets the component ID and the component itself
				String componentId = entry.getKey();
				Component component = entry.getValue();

				// Restores the component's state
				component.setEnabled(componentsState.get(componentId));
			}

			// Clears the frame's current title
			currentTitle = null;

			// Clears the state of the components
			componentsState.clear();
		}
	}

	private void onClose() {
		if (! isLocked)
			// The frame is not locked
			GuiManager.closeCurrentFrame();
	}

}
