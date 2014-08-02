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
	
	private JButton buttonToggleErrorDetails;
	private JScrollPane panelErrorDetails;
	
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
		panelErrorMessage.setLayout(new FormLayout(new ColumnSpec[] {
			ColumnSpec.decode("36px"),
			FormFactory.GROWING_BUTTON_COLSPEC
		}, new RowSpec[] {
			FormFactory.DEFAULT_ROWSPEC
		}));
		panelErrorMessage.add(labelIcon, "1, 1, fill, fill");
		panelErrorMessage.add(labelErrorMessage, "2, 1, fill, fill");
		
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
		panelButtons.setLayout(new FlowLayout(FlowLayout.RIGHT, 5, 5));
		panelButtons.add(buttonToggleErrorDetails);
		panelButtons.add(buttonOk);
		
		JTextArea fieldErrorDetails = new JTextArea(ErrorManager.getErrorDetails());
		fieldErrorDetails.setEditable(false);
		fieldErrorDetails.setColumns(80);
		fieldErrorDetails.setRows(15);
		registerComponent("fieldErrorDetails", fieldErrorDetails);
		
		panelErrorDetails = new JScrollPane(fieldErrorDetails, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		
		JPanel panelMain = new JPanel();
		panelMain.setBorder(new EmptyBorder(5, 5, 5, 5));
		panelMain.setLayout(new BorderLayout(0, 5));
		panelMain.add(panelErrorMessage, BorderLayout.NORTH);
		panelMain.add(panelErrorDetails, BorderLayout.CENTER);
		panelMain.add(panelButtons, BorderLayout.SOUTH);
		
		return panelMain;
	}

	protected String getTitle() {
		return "MRS - Error";
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
