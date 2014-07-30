package gui.workers;

import java.util.List;
import entities.StudyType;

public interface GetStudyTypesCaller {
	
	public void getStudyTypesCallback(List<StudyType> studyTypes);
	
}
