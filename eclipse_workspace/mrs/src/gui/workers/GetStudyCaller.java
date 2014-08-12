package gui.workers;

import entities.Study;

public interface GetStudyCaller {

	public void onGetStudyFailure();

	public void onGetStudySuccess(Study study);

}
