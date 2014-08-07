package gui.components;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Component;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.Point;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Date;
import java.text.DateFormatSymbols;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.LinkedList;
import java.util.List;
import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.Popup;
import javax.swing.PopupFactory;

@SuppressWarnings("serial")
public class DatePicker extends JPanel {

	private JButton buttonNextMonth;
	private JButton buttonNextYear;
	private JButton buttonPreviousMonth;
	private JButton buttonPreviousYear;
	private Calendar currentCalendar;
	private Popup currentPopup;
	private SimpleDateFormat dateFormatterButton;
	private SimpleDateFormat dateFormatterField;
	private SimpleDateFormat dateFormatterLabel;
	private JTextField fieldCurrentDate;
	private Calendar newCalendar;
	private boolean popupIsShowing;
	private List<ActionListener> popupListeners;
	private String[] weekdays;

	public DatePicker() {
		currentCalendar = Calendar.getInstance();
		dateFormatterButton = new SimpleDateFormat("d");
		dateFormatterField = new SimpleDateFormat("dd/MM/yyyy");
		dateFormatterLabel = new SimpleDateFormat("MMMM 'de' yyyy");
		newCalendar = Calendar.getInstance();
		popupIsShowing = false;
		popupListeners = new LinkedList<ActionListener>();
		weekdays = new DateFormatSymbols().getShortWeekdays();
	}

	public void addPopupListener(ActionListener listener) {
		popupListeners.add(listener);
	}

	public Date getDate() {
		return new Date(currentCalendar.getTimeInMillis());
	}

	public String getFormattedDate() {
		return dateFormatterField.format(currentCalendar.getTime());
	}

	public void hidePopup() {
		if (popupIsShowing) {
			currentPopup.hide();
			currentPopup = null;
			popupIsShowing = false;
		}
	}

	public boolean popupIsShowing() {
		return popupIsShowing;
	}

	public void setDate(Date date) {
		currentCalendar.setTime(date);

		if (popupIsShowing)
			refreshPanel();
	}

	public void showPopup(Container owner) {
		if (! popupIsShowing) {
			newCalendar.setTimeInMillis(currentCalendar.getTimeInMillis());
			refreshPanel();
			currentPopup = createPopup(owner);
			currentPopup.show();
			popupIsShowing = true;
		}
	}

	private JPanel createBottomControls() {
		JButton closeButton = new JButton("Cancelar");
		closeButton.setMargin(new Insets(2, 8, 2, 8));
		closeButton.addActionListener(new ActionListener() {
			
			public void actionPerformed(ActionEvent e) {
				hidePopup();
			}
			
		});
		
		JPanel panel = new JPanel();
		panel.setLayout(new FlowLayout(FlowLayout.CENTER));
		panel.add(closeButton);
		
		return panel;
	}

	private JPanel createCalendar() {
		JPanel panel = new JPanel();
		GridBagLayout gridbag = new GridBagLayout();
		GridBagConstraints constraints = new GridBagConstraints();
		
		panel.setLayout(gridbag);
	
		constraints.gridx = 0;
		constraints.gridy = 0;
		constraints.gridwidth = 7;
		constraints.gridheight = 1;
		JLabel title = new JLabel(dateFormatterLabel.format(newCalendar.getTime()));
		panel.add(title, constraints);
		Font font = title.getFont();
		Font weekFont = new Font(font.getName(), font.getStyle(), font.getSize() - 2);
		title.setFont(font);
	
		constraints.gridy = 1;
		constraints.gridwidth = 1;
		constraints.gridheight = 1;
		for (constraints.gridx = 0; constraints.gridx < 7; constraints.gridx++) {
			JLabel label = new JLabel(weekdays[constraints.gridx + 1]); // Weekdays are indexed from 1 to 7
			panel.add(label, constraints);
			label.setFont(weekFont);
		}
	
		Calendar draw = (Calendar) newCalendar.clone();
		draw.set(Calendar.DATE, 1);
		draw.add(Calendar.DATE, - draw.get(Calendar.DAY_OF_WEEK) + 1);
		int monthInt = newCalendar.get(Calendar.MONTH);
	
		constraints.gridwidth = 1;
		constraints.gridheight = 1;
		int width = getFontMetrics(weekFont).stringWidth(" Wed ");
		int width1 = getFontMetrics(weekFont).stringWidth("Wed");
		int height = getFontMetrics(weekFont).getHeight() + width - width1;
	
		for (constraints.gridy = 2; constraints.gridy < 8; constraints.gridy++)
			for (constraints.gridx = 0; constraints.gridx < 7; constraints.gridx++) {
				JButton dayButton = new JButton();
				
				if (draw.get(Calendar.MONTH) == monthInt) {
					String dayString = dateFormatterButton.format(draw.getTime());
					if (draw.get(Calendar.DAY_OF_MONTH) < 10)
						dayString = " " + dayString;
					dayButton.setText(dayString);
				} else {
					dayButton.setEnabled(false);
				}
				
				if (draw.get(Calendar.DAY_OF_MONTH) == newCalendar.get(Calendar.DAY_OF_MONTH) && draw.get(Calendar.MONTH) == monthInt)
					dayButton.setBackground(Color.yellow);
				
				dayButton.setFont(weekFont);
				dayButton.setPreferredSize(new Dimension(width, height));
				dayButton.setMargin(new Insets(0, 0, 0, 0));
				dayButton.addActionListener(new ActionListener() {
	
					public void actionPerformed(ActionEvent event) {
						onPickDay(event.getActionCommand());
					}
	
				});
				panel.add(dayButton, constraints);
				
				draw.add(Calendar.DATE, + 1);
			}
	
		return panel;
	}

	private Popup createPopup(Component owner) {
		Point locationOnScreen = owner.getLocationOnScreen();
		PopupFactory popupFactory = PopupFactory.getSharedInstance();
		return popupFactory.getPopup(owner, this, locationOnScreen.x, locationOnScreen.y);
	}

	private JPanel createTopControls() {
		JPanel panel = new JPanel();
		panel.setLayout(new FlowLayout(FlowLayout.CENTER));
	
		buttonPreviousYear = new JButton(" << ");
		panel.add(buttonPreviousYear);
		buttonPreviousYear.setMargin(new Insets(0, 0, 0, 0));
		buttonPreviousYear.addActionListener(new ActionListener() {
	
			public void actionPerformed(ActionEvent arg0) {
				onButtonPreviousYearAction();
			}
			
		});
	
		buttonPreviousMonth = new JButton(" < ");
		panel.add(buttonPreviousMonth);
		buttonPreviousMonth.setMargin(new Insets(0, 0, 0, 0));
		buttonPreviousMonth.addActionListener(new ActionListener() {
	
			public void actionPerformed(ActionEvent arg0) {
				onButtonPreviousMonthAction();
			}
			
		});
	
		fieldCurrentDate = new JTextField(dateFormatterField.format(newCalendar.getTime()), 10);
		fieldCurrentDate.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent arg0) {
				onEditDate();
			}
			
		});
		panel.add(fieldCurrentDate);
	
		buttonNextMonth = new JButton(" > ");
		panel.add(buttonNextMonth);
		buttonNextMonth.setMargin(new Insets(0, 0, 0, 0));
		buttonNextMonth.addActionListener(new ActionListener() {
	
			public void actionPerformed(ActionEvent arg0) {
				onButtonNextMonthAction();
			}
			
		});
	
		buttonNextYear = new JButton(" >> ");
		panel.add(buttonNextYear);
		buttonNextYear.setMargin(new Insets(0, 0, 0, 0));
		buttonNextYear.addActionListener(new ActionListener() {
	
			public void actionPerformed(ActionEvent arg0) {
				onButtonNextYearAction();
			}
			
		});
	
		return panel;
	}

	private void onButtonNextMonthAction() {
		newCalendar.add(Calendar.MONTH, 1);
		refreshPanel();
	}

	private void onButtonNextYearAction() {
		newCalendar.add(Calendar.YEAR, 1);
		refreshPanel();
	}

	private void onButtonPreviousMonthAction() {
		newCalendar.add(Calendar.MONTH, - 1);
		refreshPanel();
	}

	private void onButtonPreviousYearAction() {
		newCalendar.add(Calendar.YEAR, - 1);
		refreshPanel();
	}

	private void onEditDate() {
		try {
			String dateString = fieldCurrentDate.getText();
			newCalendar.setTime(dateFormatterField.parse(dateString));
		} catch (ParseException exception) {
			// Invalid date
		}

		refreshPanel();
	}

	private void onPickDay(String day) {
		newCalendar.set(Calendar.DAY_OF_MONTH, Integer.valueOf(day.trim()));
		currentCalendar.setTimeInMillis(newCalendar.getTimeInMillis());

		ActionEvent event = new ActionEvent(this, ActionEvent.ACTION_PERFORMED, day);
		for (ActionListener popupListener : popupListeners)
			popupListener.actionPerformed(event);
	}

	private void refreshPanel() {
		removeAll();
		
		setBorder(BorderFactory.createCompoundBorder(
			BorderFactory.createLineBorder(Color.GRAY, 1),
			BorderFactory.createEmptyBorder(4, 4, 4, 4)
		));

		setLayout(new BorderLayout(0, 4));
		add(createTopControls(), BorderLayout.NORTH);
		add(createCalendar(), BorderLayout.CENTER);
		add(createBottomControls(), BorderLayout.SOUTH);
		
		revalidate();
	}
}
