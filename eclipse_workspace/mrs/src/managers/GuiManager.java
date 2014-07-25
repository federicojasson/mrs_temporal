package managers;

import gui.ErrorFrame;
import gui.GuiFrame;
import gui.LogInFrame;
import gui.PatientFrame;
import gui.StudyFrame;
import gui.UserFrame;
import java.awt.EventQueue;

public class GuiManager {
	
	public static final int ERROR_FRAME = 0;
	public static final int LOG_IN_FRAME = 1;
	public static final int PATIENT_FRAME = 2;
	public static final int STUDY_FRAME = 3;
	public static final int USER_FRAME = 4;
	
	private static final int FRAME_COUNT = 5;
	
	private static int currentFrameIndex; // Points to the current frame
	private static GuiFrame[] frames;
	
	static {
		// Initializes the frames
		frames = new GuiFrame[FRAME_COUNT];
		frames[ERROR_FRAME] = new ErrorFrame();
		frames[LOG_IN_FRAME] = new LogInFrame();
		frames[PATIENT_FRAME] = new PatientFrame();
		frames[STUDY_FRAME] = new StudyFrame();
		frames[USER_FRAME] = new UserFrame();
		currentFrameIndex = -1;
	}
	
	public static void closeCurrentFrame() {
		// Runs this code in the event dispatch thread (EDT)
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				// Closes the current frame
				closeCurrentFrame(true);
			}
		});
	}
	
	public static void openNewFrame(final int frameIndex) {
		// Runs this code in the event dispatch thread (EDT)
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				// Closes the current frame (if any is opened)
				if (currentFrameIndex >= 0)
					closeCurrentFrame(false);
				
				// Opens the new frame
				openFrame(frameIndex);
			}
		});
	}
	
	private static void closeCurrentFrame(boolean wasClosedByUser) {
		// Gets the current frame
		GuiFrame currentFrame = frames[currentFrameIndex];
		
		try {
			// Constructs a new object of the same class as the current frame
			frames[currentFrameIndex] = currentFrame.getClass().newInstance();
		} catch (InstantiationException | IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// Disposes the current frame
		currentFrame.dispose();
		
		if (wasClosedByUser)
			onCurrentFrameClosedByUser();
	}
	
	private static void onCurrentFrameClosedByUser() {
		switch (currentFrameIndex) {
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
				openFrame(USER_FRAME);
				break;
			}
			
			case STUDY_FRAME : {
				// Opens the patient frame
				openFrame(PATIENT_FRAME);
				break;
			}
			
			case USER_FRAME : {
				// Opens the log in frame
				openFrame(LOG_IN_FRAME);
				break;
			}
		}
	}
	
	private static void openFrame(int frameIndex) {
		// Updates the current frame's index
		currentFrameIndex = frameIndex;
		
		// Initializes the frame GUI
		frames[frameIndex].initializeGui();
	}
	
}
