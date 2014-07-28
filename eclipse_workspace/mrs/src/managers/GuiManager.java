package managers;

import gui.AddPatientFrame;
import gui.ErrorFrame;
import gui.LogInFrame;
import gui.PatientFrame;
import gui.StudyFrame;
import gui.UserFrame;
import gui.components.GuiFrame;
import java.awt.EventQueue;

public class GuiManager {
	
	public static final int ADD_PATIENT_FRAME = 0;
	public static final int ERROR_FRAME = 1;
	public static final int LOG_IN_FRAME = 2;
	public static final int PATIENT_FRAME = 3;
	public static final int STUDY_FRAME = 4;
	public static final int USER_FRAME = 5;
	
	private static final int FRAME_COUNT = 6;
	
	private static int currentFrameIndex; // Points to the current frame
	private static GuiFrame[] frames;
	
	static {
		// Initializes the frames
		frames = new GuiFrame[FRAME_COUNT];
		frames[ADD_PATIENT_FRAME] = new AddPatientFrame();
		frames[ERROR_FRAME] = new ErrorFrame();
		frames[LOG_IN_FRAME] = new LogInFrame();
		frames[PATIENT_FRAME] = new PatientFrame();
		frames[STUDY_FRAME] = new StudyFrame();
		frames[USER_FRAME] = new UserFrame();
		currentFrameIndex = -1;
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
			// An error occurred
			ErrorManager.notifyError(exception);
		}
	}
	
	private static void onCurrentFrameClosedByUser() {
		switch (currentFrameIndex) {
			case ADD_PATIENT_FRAME : {
				// Opens the user frame
				openNewFrame(USER_FRAME);
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
		
		// Initializes the frame GUI
		frames[frameId].initialize();
	}
	
}
