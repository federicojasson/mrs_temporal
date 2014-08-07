package gui.windows;

import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JPanel;
import javax.swing.WindowConstants;
import managers.GuiManager;
import managers.ImageManager;

public abstract class GuiDialog extends GuiWindow {

	private JDialog window;

	public void initialize(GuiWindow callerWindow) {
		window = new JDialog();

		window.addWindowListener(new WindowAdapter() {

			public void windowClosing(WindowEvent event) {
				onClose();
			}

		});

		window.setContentPane(getMainPanel());
		window.setTitle(getTitle());
		window.setDefaultCloseOperation(WindowConstants.DO_NOTHING_ON_CLOSE);
		window.setIconImage(ImageManager.getImage(ImageManager.WINDOW_ICON));
		window.pack();
		window.setMinimumSize(window.getSize());
		window.setLocationRelativeTo(callerWindow.getWindow());
		window.setVisible(true);
		window.setModal(true);
		window.setResizable(isResizable());

		setWindow(window);
	}

	protected abstract JPanel getMainPanel();

	protected abstract boolean isResizable();

	protected void onClose() {
		if (! isLocked())
			// The window is not locked
			// Closes the current dialog
			GuiManager.closeCurrentDialog();
	}

	protected void setDefaultButton(JButton button) {
		window.getRootPane().setDefaultButton(button);
	}

	protected void setTitle(String title) {
		window.setTitle(title);
	}

}
