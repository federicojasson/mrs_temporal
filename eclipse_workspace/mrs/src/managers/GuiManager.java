package managers;

import gui.frames.AddPatientFrame;
import gui.frames.AddStudyFrame;
import gui.frames.ErrorFrame;
import gui.frames.GuiFrame;
import gui.frames.LogInFrame;
import gui.frames.PatientFrame;
import gui.frames.StudyFrame;
import gui.frames.StudyHistoriesFrame;
import gui.frames.UserFrame;
import java.awt.EventQueue;
import java.io.File;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;

public class GuiManager {

	public static final int ADD_PATIENT_FRAME = 0;
	public static final int ADD_STUDY_FRAME = 1;
	public static final int ERROR_FRAME = 2;
	public static final int LOG_IN_FRAME = 3;
	public static final int PATIENT_FRAME = 4;
	public static final int STUDY_FRAME = 5;
	public static final int STUDY_HISTORIES_FRAME = 6;
	public static final int USER_FRAME = 7;

	private static final int FRAME_COUNT = 8;

	private static int currentFrameIndex; // Points to the current frame
	private static JFileChooser fileChooser;
	private static GuiFrame[] frames;

	static {
		currentFrameIndex = - 1;
		fileChooser = new JFileChooser();
		frames = new GuiFrame[FRAME_COUNT];

		// Configures the file chooser
		fileChooser.setMultiSelectionEnabled(true);

		// Initializes the frames
		frames[ADD_PATIENT_FRAME] = new AddPatientFrame();
		frames[ADD_STUDY_FRAME] = new AddStudyFrame();
		frames[ERROR_FRAME] = new ErrorFrame();
		frames[LOG_IN_FRAME] = new LogInFrame();
		frames[PATIENT_FRAME] = new PatientFrame();
		frames[STUDY_FRAME] = new StudyFrame();
		frames[STUDY_HISTORIES_FRAME] = new StudyHistoriesFrame();
		frames[USER_FRAME] = new UserFrame();
	}

	public static void closeCurrentFrame() {
		// Executes this code in the event dispatch thread (EDT)
		EventQueue.invokeLater(new Runnable() {

			public void run() {
				// Closes the current frame
				closeCurrentFrame(true);
			}
		});
	}

	public static void openFrame(final int frameId) {
		// Executes this code in the event dispatch thread (EDT)
		EventQueue.invokeLater(new Runnable() {

			public void run() {
				// Closes the current frame (if any is opened)
				if (currentFrameIndex >= 0)
					closeCurrentFrame(false);

				// Opens the new frame
				openNewFrame(frameId);
			}
		});
	}

	public static boolean showConfirmationDialog(GuiFrame callerFrame, String title, String message) {
		if (frames[currentFrameIndex] == callerFrame)
			// The caller frame is the current one
			// Shows the confirmation dialog
			return JOptionPane.showConfirmDialog(callerFrame.getFrame(), message, title, JOptionPane.YES_NO_OPTION) == JOptionPane.YES_OPTION;

		return false;
	}

	public static File[] showFileChooserDialog(GuiFrame callerFrame) {
		if (frames[currentFrameIndex] == callerFrame)
			// The caller frame is the current one
			// Shows the file chooser dialog
			if (fileChooser.showDialog(callerFrame.getFrame(), "Seleccionar") == JFileChooser.APPROVE_OPTION)
				// Action confirmed
				return fileChooser.getSelectedFiles();

		return new File[0];
	}

	public static void showWarningDialog(GuiFrame callerFrame, String title, String message) {
		if (frames[currentFrameIndex] == callerFrame)
			// The caller frame is the current one
			// Shows the warning dialog
			JOptionPane.showMessageDialog(callerFrame.getFrame(), message, title, JOptionPane.WARNING_MESSAGE);
	}

	private static void closeCurrentFrame(boolean wasClosedByUser) {
		try {
			// Gets the current frame
			GuiFrame currentFrame = frames[currentFrameIndex];

			// Constructs a new object of the same class as the current frame
			frames[currentFrameIndex] = currentFrame.getClass().newInstance();

			// Disposes the current frame
			currentFrame.dispose();

			if (wasClosedByUser)
				onCurrentFrameClosedByUser();
		} catch (InstantiationException | IllegalAccessException exception) {
			// There is nothing to be done
		}
	}

	private static void onCurrentFrameClosedByUser() {
		switch (currentFrameIndex) {
			case ADD_PATIENT_FRAME : {
				// Opens the user frame
				openNewFrame(USER_FRAME);
				break;
			}

			case ADD_STUDY_FRAME : {
				// Opens the patient frame
				openNewFrame(PATIENT_FRAME);
				break;
			}

			case ERROR_FRAME : {
				// Exits the application abnormally
				ApplicationManager.exitAbnormally();
				break;
			}

			case LOG_IN_FRAME : {
				// Exits the application normally
				ApplicationManager.exitNormally();
				break;
			}

			case PATIENT_FRAME : {
				// Opens the user frame
				openNewFrame(USER_FRAME);
				break;
			}

			case STUDY_FRAME : {
				// Opens the patient frame
				openNewFrame(PATIENT_FRAME);
				break;
			}

			case STUDY_HISTORIES_FRAME : {
				// Opens the study frame
				openNewFrame(STUDY_FRAME);
				break;
			}

			case USER_FRAME : {
				// Opens the log in frame
				openNewFrame(LOG_IN_FRAME);
				break;
			}
		}
	}

	private static void openNewFrame(int frameId) {
		// Updates the current frame's index
		currentFrameIndex = frameId;

		// Initializes the frame's GUI
		frames[frameId].initialize();
	}

}
