package gui.workers;

import java.util.List;
import entities.StudySummary;

public interface SearchStudySummariesCaller {

	public void onSearchStudySummariesSuccess(List<StudySummary> studySummaries);

}
