package gui.windows;

import java.awt.Component;
import java.awt.Dimension;
import java.awt.Window;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public abstract class GuiWindow {

	private Map<String, Boolean> componentStates;
	private Map<String, Component> components;
	private Component focusOwner;
	private boolean isLocked;
	private String title;
	private Window window;

	public GuiWindow() {
		componentStates = new HashMap<String, Boolean>();
		components = new HashMap<String, Component>();
		isLocked = false;
	}

	public void dispose() {
		// Locks the window before disposing it
		lock();

		// Disposes the window
		window.dispose();
	}

	public Window getWindow() {
		return window;
	}

	public void recover() {
		// Shows the window
		window.setVisible(true);

		// Unlocks the window after recovering it
		unlock();
	}

	protected abstract String getTitle();

	protected boolean isLocked() {
		return isLocked;
	}

	protected void lock() {
		if (! isLocked) {
			isLocked = true;

			// Saves the window's title
			title = getTitle();

			// Saves the window's focus owner
			focusOwner = window.getMostRecentFocusOwner();

			// Saves the current state of the components
			for (Entry<String, Component> entry : components.entrySet()) {
				// Gets the component ID and the component itself
				String componentId = entry.getKey();
				Component component = entry.getValue();

				// Saves the component's current state
				componentStates.put(componentId, component.isEnabled());
			}

			// Changes the window's title
			setTitle("MRS - Cargando...");

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
		int currentWidth = window.getWidth();
		int currentHeight = window.getHeight();

		// Resizes the window
		window.setMinimumSize(new Dimension(0, 0));
		window.pack();
		window.setMinimumSize(window.getSize());

		// Gets the new dimensions
		int newWidth = window.getWidth();
		int newHeight = window.getHeight();

		// Moves the window to keep the same center as before
		int x = (int) (window.getX() - (newWidth - currentWidth) / 2.0);
		int y = (int) (window.getY() - (newHeight - currentHeight) / 2.0);
		window.setBounds(x, y, newWidth, newHeight);
	}

	protected abstract void setTitle(String title);

	protected void setWindow(Window window) {
		this.window = window;
	}

	protected void unlock() {
		if (isLocked) {
			isLocked = false;

			// Restores the window's title
			setTitle(title);

			if (focusOwner != null)
				// Restores the window's focus owner
				focusOwner.requestFocusInWindow();

			// Restores the state of all the components
			for (Entry<String, Component> entry : components.entrySet()) {
				// Gets the component ID and the component itself
				String componentId = entry.getKey();
				Component component = entry.getValue();

				// Restores the component's state
				component.setEnabled(componentStates.get(componentId));
			}

			// Clears the window's title
			title = null;

			// Clears the state of the components
			componentStates.clear();
		}
	}

}
