package managers;

import java.util.Timer;
import java.util.TimerTask;

public class TimerManager {

	private static Timer timer;

	static {
		timer = new Timer();
	}

	public static void scheduleTask(TimerTask task, long delay) {
		// Cancels the current scheduled tasks
		timer.cancel();
		timer.purge();

		// Creates a new timer and schedules the task
		timer = new Timer();
		timer.schedule(task, delay);
	}

}
