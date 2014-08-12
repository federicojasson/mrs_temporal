package gui.workers;

import java.util.List;
import entities.StudyHistory;

public interface GetStudyHistoriesCaller {

	public void onGetStudyHistoriesSuccess(List<StudyHistory> studyHistories);

}
