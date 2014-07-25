package modules;

import gui.ErrorFrame;
import gui.LogInFrame;
import gui.PatientFrame;
import gui.UserFrame;
import java.awt.EventQueue;

public class GuiManager {
	
	public static void onErrorFrameClosed() {
		// Exits the application abnormally
		ApplicationManager.exitAbnormally();
	}
	
	public static void onLogInFrameClosed() {
		// Exits the application normally
		ApplicationManager.exitNormally();
	}
	
	public static void onPatientFrameClosed() {
		// Opens the user frame
		openUserFrame();
	}
	
	public static void onStudyFrameClosed() {
		// Opens the patient frame
		openPatientFrame(PatientManager.getCurrentPatientId());
	}
	
	public static void onUserFrameClosed() {
		// Opens the log in frame
		openLogInFrame();
	}
	
	public static void openErrorFrame(final Exception exception) {
		// TODO: hide current frame? (don't DISPOSE IT --> careful: loops --> close --> onClose --> ...)
		
		// Runs this code in the event dispatch thread (EDT)
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				// Creates the frame and shows it
				ErrorFrame frame = new ErrorFrame(exception);
				frame.initializeGui();
			}
		});
	}
	
	public static void openLogInFrame() {
		// Runs this code in the event dispatch thread (EDT)
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				// Creates the frame and shows it
				LogInFrame frame = new LogInFrame();
				frame.initializeGui();
			}
		});
	}
	
	public static void openPatientFrame(byte[] patientId) {
		// Sets the current patient ID
		PatientManager.setCurrentPatientId(patientId);
		
		// Runs this code in the event dispatch thread (EDT)
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				// Creates the frame and shows it
				PatientFrame frame = new PatientFrame();
				frame.initializeGui();
			}
		});
	}
	
	public static void openStudyFrame(byte[] studyId) {
		// Sets the current study ID
		StudyManager.setCurrentStudyId(studyId);
		
		// Runs this code in the event dispatch thread (EDT)
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				// Creates the frame and shows it
				UserFrame frame = new UserFrame();
				frame.initializeGui();
			}
		});
	}
	
	public static void openUserFrame() {
		// Runs this code in the event dispatch thread (EDT)
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				// Creates the frame and shows it
				UserFrame frame = new UserFrame();
				frame.initializeGui();
			}
		});
	}
	
}