package gui.workers;

import java.util.List;
import entities.StudySummary;

public interface GetStudySummariesCaller {

	public void onGetStudySummariesSuccess(List<StudySummary> studySummaries);

}
