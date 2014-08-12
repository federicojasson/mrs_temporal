package managers;

import gui.windows.GuiDialog;
import gui.windows.GuiDialogStudyHistories;
import gui.windows.GuiFrame;
import gui.windows.GuiFrameAddPatient;
import gui.windows.GuiFrameAddStudy;
import gui.windows.GuiFrameError;
import gui.windows.GuiFrameLogIn;
import gui.windows.GuiFramePatient;
import gui.windows.GuiFrameStudy;
import gui.windows.GuiFrameUser;
import gui.windows.GuiWindow;
import java.io.File;
import java.util.Stack;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;

public class GuiManager {

	public static final int DIALOG_STUDY_HISTORIES = 0;

	public static final int FRAME_ADD_PATIENT = 0;
	public static final int FRAME_ADD_STUDY = 1;
	public static final int FRAME_ERROR = 2;
	public static final int FRAME_LOG_IN = 3;
	public static final int FRAME_PATIENT = 4;
	public static final int FRAME_STUDY = 5;
	public static final int FRAME_USER = 6;

	private static final int DIALOG_COUNT = 1;
	private static final int FRAME_COUNT = 7;

	private static GuiDialog[] dialogModels;
	private static Stack<GuiDialog> dialogs;
	private static JFileChooser fileChooser;
	private static GuiFrame[] frameModels;
	private static Stack<GuiFrame> frames;

	static {
		dialogModels = new GuiDialog[DIALOG_COUNT];
		dialogs = new Stack<GuiDialog>();
		fileChooser = new JFileChooser();
		frameModels = new GuiFrame[FRAME_COUNT];
		frames = new Stack<GuiFrame>();

		// Configures the file chooser
		fileChooser.setMultiSelectionEnabled(true);

		// Initializes the dialogs
		dialogModels[DIALOG_STUDY_HISTORIES] = new GuiDialogStudyHistories();

		// Initializes the frames
		frameModels[FRAME_ADD_PATIENT] = new GuiFrameAddPatient();
		frameModels[FRAME_ADD_STUDY] = new GuiFrameAddStudy();
		frameModels[FRAME_ERROR] = new GuiFrameError();
		frameModels[FRAME_LOG_IN] = new GuiFrameLogIn();
		frameModels[FRAME_PATIENT] = new GuiFramePatient();
		frameModels[FRAME_STUDY] = new GuiFrameStudy();
		frameModels[FRAME_USER] = new GuiFrameUser();
	}

	public static void closeCurrentWindow() {
		if (! dialogs.isEmpty())
			// There is an opened dialog
			closeCurrentDialog();
		else
			// There are no opened dialogs
			closeCurrentFrame();
	}

	public static void openDialog(final int dialogId) {
		try {
			// Gets the current window
			GuiWindow currentWindow = getCurrentWindow();

			// Opens a new dialog
			GuiDialog dialog = dialogModels[dialogId].getClass().newInstance();
			dialogs.push(dialog);
			dialog.initialize(currentWindow);
		} catch (InstantiationException | IllegalAccessException exception) {
			// There is nothing to be done
		}
	}

	public static void openFrame(final int frameId) {
		try {
			// Closes the opened dialogs
			while (! dialogs.isEmpty())
				closeCurrentDialog();

			if (frames.isEmpty()) {
				// There are no frames in the stack

				// Opens a new frame
				GuiFrame frame = frameModels[frameId].getClass().newInstance();
				frames.push(frame);
				frame.initialize();
			} else {
				// There is at least one more frame in the stack

				// Gets the current frame
				GuiFrame currentFrame = frames.peek();

				// Opens a new frame
				GuiFrame frame = frameModels[frameId].getClass().newInstance();
				frames.push(frame);
				frame.initialize(currentFrame);

				// Disposes the current frame
				currentFrame.dispose();
			}
		} catch (InstantiationException | IllegalAccessException exception) {
			// There is nothing to be done
		}
	}

	public static boolean showConfirmationDialog(GuiWindow callerWindow, String title, String message) {
		if (callerWindow == getCurrentWindow())
			// The caller window is the current one
			// Shows the confirmation dialog
			return JOptionPane.showConfirmDialog(callerWindow.getWindow(), message, title, JOptionPane.YES_NO_OPTION) == JOptionPane.YES_OPTION;

		return false;
	}

	public static void showErrorDialog(GuiWindow callerWindow, String title, String message) {
		if (callerWindow == getCurrentWindow())
			// The caller window is the current one
			// Shows the error dialog
			JOptionPane.showMessageDialog(callerWindow.getWindow(), message, title, JOptionPane.ERROR_MESSAGE);
	}

	public static File[] showFileChooserDialog(GuiWindow callerWindow) {
		if (callerWindow == getCurrentWindow())
			// The caller window is the current one
			// Shows the file chooser dialog
			if (fileChooser.showDialog(callerWindow.getWindow(), "Seleccionar") == JFileChooser.APPROVE_OPTION)
				// Action confirmed
				return fileChooser.getSelectedFiles();

		return new File[0];
	}

	public static void showWarningDialog(GuiWindow callerWindow, String title, String message) {
		if (callerWindow == getCurrentWindow())
			// The caller window is the current one
			// Shows the warning dialog
			JOptionPane.showMessageDialog(callerWindow.getWindow(), message, title, JOptionPane.WARNING_MESSAGE);
	}

	private static void closeCurrentDialog() {
		// Disposes the current dialog
		dialogs.pop().dispose();
	}

	private static void closeCurrentFrame() {
		// Gets the current frame
		GuiFrame currentFrame = frames.pop();

		if (frames.isEmpty())
			// The frame is the last one in the stack
			// Exits the application normally
			ApplicationManager.exitNormally();
		else {
			// There is at least one more frame in the stack

			// Recovers the previous frame
			frames.peek().recover(currentFrame);

			// Disposes the current frame
			currentFrame.dispose();
		}
	}

	private static GuiWindow getCurrentWindow() {
		if (! dialogs.isEmpty())
			// There is an opened dialog
			return dialogs.peek();
		else
			if (! frames.isEmpty())
				// There is an opened frame
				return frames.peek();
			else
				// There is no opened window
				return null;
	}

}
