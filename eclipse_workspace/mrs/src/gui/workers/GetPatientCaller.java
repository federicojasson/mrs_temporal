package gui.workers;

import entities.Patient;

public interface GetPatientCaller {

	public void onGetPatientFailure();

	public void onGetPatientSuccess(Patient patient);

}
