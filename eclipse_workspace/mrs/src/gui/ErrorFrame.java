package gui;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import gui.components.GuiFrame;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.border.EmptyBorder;
import com.jgoodies.forms.factories.FormFactory;
import com.jgoodies.forms.layout.ColumnSpec;
import com.jgoodies.forms.layout.FormLayout;
import com.jgoodies.forms.layout.RowSpec;
import managers.ErrorManager;
import managers.GuiManager;

public class ErrorFrame extends GuiFrame {
	
	private JButton buttonShowErrorDetails;
	private String errorDetails;
	private JScrollPane panelErrorDetails;
	
	public void initialize() {
		// Gets the error details
		errorDetails = ErrorManager.getErrorDetails();
		
		// Initializes the GUI
		super.initialize();
	}
	
	protected JPanel getMainPanel() {
		JLabel labelIcon = new JLabel("");
		labelIcon.setIcon(new ImageIcon(getClass().getResource("/com/sun/java/swing/plaf/windows/icons/Error.gif")));
		
		JLabel labelErrorMessage = new JLabel();
		labelErrorMessage.setText("Se produjo un error y la aplicación debe cerrarse.");
		
		JPanel panelErrorMessage = new JPanel();
		panelErrorMessage.setLayout(new FormLayout(new ColumnSpec[] {
			ColumnSpec.decode("36px"),
			FormFactory.GROWING_BUTTON_COLSPEC
		}, new RowSpec[] {
			FormFactory.DEFAULT_ROWSPEC
		}));
		panelErrorMessage.add(labelIcon, "1, 1, fill, fill");
		panelErrorMessage.add(labelErrorMessage, "2, 1, fill, fill");
		
		buttonShowErrorDetails = new JButton();
		buttonShowErrorDetails.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onShowErrorDetails();
			}
		});
		
		JButton buttonOk = new JButton("Aceptar");
		buttonOk.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				onOk();
			}
		});
		
		JPanel panelButtons = new JPanel();
		panelButtons.setLayout(new FlowLayout(FlowLayout.RIGHT, 5, 5));
		panelButtons.add(buttonShowErrorDetails);
		panelButtons.add(buttonOk);
		
		JTextArea fieldErrorDetails = new JTextArea(errorDetails);
		fieldErrorDetails.setEditable(false);
		fieldErrorDetails.setColumns(80);
		fieldErrorDetails.setRows(15);
		
		panelErrorDetails = new JScrollPane(fieldErrorDetails, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		
		JPanel panelMain = new JPanel();
		panelMain.setBorder(new EmptyBorder(5, 5, 5, 5));
		panelMain.setLayout(new BorderLayout(0, 5));
		panelMain.add(panelErrorMessage, BorderLayout.NORTH);
		panelMain.add(panelErrorDetails, BorderLayout.CENTER);
		panelMain.add(panelButtons, BorderLayout.SOUTH);
		
		// Hides the error details panel
		onShowErrorDetails();
		
		return panelMain;
	}

	protected String getTitle() {
		return "MRS - Error";
	}
	
	private void onOk() {
		// Closes the current frame
		GuiManager.closeCurrentFrame();
	}
	
	private void onShowErrorDetails() {
		// Checks if the error details panel is visible
		boolean panelErrorDetailsIsVisible = panelErrorDetails.isVisible();
		
		if (panelErrorDetailsIsVisible)
			// The error details panel will be hidden
			buttonShowErrorDetails.setText("Más información");
		else
			// The error details panel will be shown
			buttonShowErrorDetails.setText("Menos información");
		
		// Toggles the error details panel visibility
		panelErrorDetails.setVisible(! panelErrorDetailsIsVisible);
		
		// Repacks the frame
		repack();
	}
	
}
