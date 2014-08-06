package gui.frames;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import managers.ErrorManager;
import managers.GuiManager;

public class ErrorFrame extends GuiFrame {
	
	private JButton buttonToggleErrorDetails;
	private JPanel panelErrorDetails;
	
	public void initialize() {
		// Initializes the GUI
		super.initialize();
		
		// Hides the error details
		onToggleErrorDetails();
	}
	
	protected JPanel getMainPanel() {
		ImageIcon iconLabelIcon = new ImageIcon(getClass().getResource("/com/sun/java/swing/plaf/windows/icons/Error.gif"));
		
		JLabel labelIcon = new JLabel(iconLabelIcon);
		
		JLabel labelErrorMessage = new JLabel();
		labelErrorMessage.setText("Se produjo un error y la aplicación debe cerrarse.");
		
		JPanel panelErrorMessage = new JPanel();
		panelErrorMessage.setLayout(new BorderLayout(10, 0));
		panelErrorMessage.add(labelIcon, BorderLayout.WEST);
		panelErrorMessage.add(labelErrorMessage, BorderLayout.CENTER);
		
		JTextArea fieldErrorDetails = new JTextArea(ErrorManager.getErrorDetails());
		fieldErrorDetails.setEditable(false);
		fieldErrorDetails.setColumns(80);
		fieldErrorDetails.setRows(15);
		registerComponent("fieldErrorDetails", fieldErrorDetails);
		
		JScrollPane panelErrorDetailsContainer = new JScrollPane(fieldErrorDetails, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		
		panelErrorDetails = new JPanel();
		panelErrorDetails.setBorder(BorderFactory.createCompoundBorder(BorderFactory.createTitledBorder("Detalles"), BorderFactory.createEmptyBorder(5, 10, 10, 10)));
		panelErrorDetails.setLayout(new GridLayout());
		panelErrorDetails.add(panelErrorDetailsContainer);
		
		buttonToggleErrorDetails = new JButton();
		buttonToggleErrorDetails.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onToggleErrorDetails();
			}
		});
		registerComponent("buttonToggleErrorDetails", buttonToggleErrorDetails);
		setDefaultButton(buttonToggleErrorDetails);
		
		JButton buttonOk = new JButton("Aceptar");
		buttonOk.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onOk();
			}
		});
		registerComponent("buttonOk", buttonOk);
		
		JPanel panelButtons = new JPanel();
		panelButtons.setLayout(new FlowLayout(FlowLayout.RIGHT, 0, 0));
		panelButtons.add(buttonToggleErrorDetails);
		panelButtons.add(buttonOk);
		
		JPanel panelMain = new JPanel();
		panelMain.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
		panelMain.setLayout(new BorderLayout(0, 10));
		panelMain.add(panelErrorMessage, BorderLayout.NORTH);
		panelMain.add(panelErrorDetails, BorderLayout.CENTER);
		panelMain.add(panelButtons, BorderLayout.SOUTH);
		
		return panelMain;
	}

	protected String getTitle() {
		return "MRS - Error";
	}
	
	protected boolean isResizable() {
		return false;
	}
	
	private void onOk() {
		// Closes the current frame
		GuiManager.closeCurrentFrame();
	}
	
	private void onToggleErrorDetails() {
		// Checks if the error details panel is visible
		boolean panelErrorDetailsIsVisible = panelErrorDetails.isVisible();
		
		if (panelErrorDetailsIsVisible)
			// The error details panel will be hidden
			buttonToggleErrorDetails.setText("Más información");
		else
			// The error details panel will be shown
			buttonToggleErrorDetails.setText("Menos información");
		
		// Toggles the error details panel visibility
		panelErrorDetails.setVisible(! panelErrorDetailsIsVisible);
		
		// Repacks the frame
		repack();
	}
	
}
