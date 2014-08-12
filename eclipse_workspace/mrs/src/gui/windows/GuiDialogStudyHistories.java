package gui.windows;

import entities.StudyHistory;
import gui.workers.GetStudyHistoriesCaller;
import gui.workers.GetStudyHistoriesWorker;
import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.List;
import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.ScrollPaneConstants;
import managers.GuiManager;
import managers.StudyManager;
import utilities.Utility;

public class GuiDialogStudyHistories extends GuiDialog {

	private JTextArea fieldStudyHistories;

	protected JPanel getMainPanel() {
		fieldStudyHistories = new JTextArea();
		fieldStudyHistories.setEditable(false);
		fieldStudyHistories.setColumns(80);
		fieldStudyHistories.setRows(15);
		registerComponent("fieldStudyHistories", fieldStudyHistories);

		JScrollPane scrollPanelStudyHistories = new JScrollPane(fieldStudyHistories, ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED, ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED);

		JPanel panelStudyHistories = new JPanel();
		panelStudyHistories.setBorder(BorderFactory.createCompoundBorder(BorderFactory.createTitledBorder("Historial de modificaciones"), BorderFactory.createEmptyBorder(5, 10, 10, 10)));
		panelStudyHistories.setLayout(new GridLayout());
		panelStudyHistories.add(scrollPanelStudyHistories);

		JButton buttonGoBack = new JButton("Volver");
		buttonGoBack.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent event) {
				onGoBack();
			}

		});
		registerComponent("buttonGoBack", buttonGoBack);
		setDefaultButton(buttonGoBack);

		JPanel panelButtons = new JPanel();
		panelButtons.setLayout(new FlowLayout(FlowLayout.LEFT, 0, 0));
		panelButtons.add(buttonGoBack);

		JPanel panelMain = new JPanel();
		panelMain.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
		panelMain.setLayout(new BorderLayout(0, 10));
		panelMain.add(panelStudyHistories, BorderLayout.CENTER);
		panelMain.add(panelButtons, BorderLayout.SOUTH);

		onInitialize();

		return panelMain;
	}

	protected String getTitle() {
		return "Historial de modificaciones (" + Utility.bytesToHexadecimal(StudyManager.getCurrentStudyId()) + ") - MRS";
	}

	protected boolean isResizable() {
		return true;
	}

	protected void onPack() {
		setFocusOwner(null);
	}

	private void onGoBack() {
		// Closes the current window
		GuiManager.closeCurrentWindow();
	}

	private void onInitialize() {
		// Locks the window
		lock();

		// Gets the study histories
		GetStudyHistoriesCaller caller = new GetStudyHistoriesCaller() {

			public void onGetStudyHistoriesSuccess(List<StudyHistory> studyHistories) {
				for (StudyHistory studyHistory : studyHistories) {
					String studyHistoryLine = new String();
					studyHistoryLine += Utility.formatTimestamp(studyHistory.getDatetime());
					studyHistoryLine += " - ";
					studyHistoryLine += studyHistory.getModification();
					studyHistoryLine += System.lineSeparator();
					fieldStudyHistories.append(studyHistoryLine);

					// Unlocks the window
					unlock();
				}
			}

		};
		GetStudyHistoriesWorker worker = new GetStudyHistoriesWorker(caller);
		worker.execute();
	}

}
