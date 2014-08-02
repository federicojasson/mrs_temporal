package gui.components;

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
import java.text.DateFormatSymbols;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.sql.Date;
import java.util.LinkedList;
import java.util.List;
import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.Popup;
import javax.swing.PopupFactory;

// TODO: clicks afuera del popup que lo cierren
// TODO: hacer que el diálogo se mueva
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
	private boolean popupIsShowing;
	private List<ActionListener> popupListeners;
	private String[] weekdays;

	public DatePicker() {
		currentCalendar = Calendar.getInstance();
		dateFormatterButton = new SimpleDateFormat("d");
		dateFormatterField = new SimpleDateFormat("dd/MM/yyyy");
		dateFormatterLabel = new SimpleDateFormat("MMMM 'de' yyyy");
		popupIsShowing = false;
		popupListeners = new LinkedList<ActionListener>();
		weekdays = new DateFormatSymbols().getShortWeekdays();
		
	  refreshPanel();
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
	
	public void removePopupListener(ActionListener listener) {
		popupListeners.remove(listener);
	}
	
	public void removePopupListeners() {
		popupListeners.clear();
	}

	public void setDate(Date date) {
	  Calendar calendar = Calendar.getInstance();
	  calendar.setTime(date);
	  currentCalendar = calendar;
		
	  refreshPanel();
	}

	public void showPopup(Container owner) {
		if (! popupIsShowing) {
			currentPopup = createPopup(owner);
			currentPopup.show();
			popupIsShowing = true;
		}
	}

	private JPanel createCalendar() {
		JPanel x = new JPanel();
		GridBagLayout gridbag = new GridBagLayout();
		GridBagConstraints c = new GridBagConstraints();

		x.setFocusable(true);
		x.setLayout(gridbag);

		c.gridx = 0;
		c.gridy = 0;
		c.gridwidth = 7;
		c.gridheight = 1;
		JLabel title = new JLabel(dateFormatterLabel.format(currentCalendar.getTime()));
		x.add(title, c);
		Font font = title.getFont();
		//        Font titleFont = new Font(font.getName(), font.getStyle(),
		//              font.getSize() + 2);
		Font weekFont = new Font(font.getName(), font.getStyle(), font.getSize() - 2);
		title.setFont(font);

		c.gridy = 1;
		c.gridwidth = 1;
		c.gridheight = 1;
		for (c.gridx = 0; c.gridx < 7; c.gridx++) {
			JLabel label = new JLabel(weekdays[c.gridx + 1]); // Weekdays are indexed from 1 to 7
			x.add(label, c);
			label.setFont(weekFont);
		}

		Calendar draw = (Calendar) currentCalendar.clone();
		draw.set(Calendar.DATE, 1);
		draw.add(Calendar.DATE, - draw.get(Calendar.DAY_OF_WEEK) + 1);
		int monthInt = currentCalendar.get(Calendar.MONTH);
		//      monthInt = 0;
		//      System.out.println("Current month: " + monthInt);

		c.gridwidth = 1;
		c.gridheight = 1;
		int width = getFontMetrics(weekFont).stringWidth(" Wed ");
		int width1 = getFontMetrics(weekFont).stringWidth("Wed");
		int height = getFontMetrics(weekFont).getHeight() + (width - width1);

		for (c.gridy = 2; c.gridy < 8; c.gridy++)
			for (c.gridx = 0; c.gridx < 7; c.gridx++) {
				JButton dayButton;
				//              System.out.print("Draw month: " + draw.get(Calendar.MONTH));
				if (draw.get(Calendar.MONTH) == monthInt) {
					String dayString = dateFormatterButton.format(draw.getTime());
					if (draw.get(Calendar.DAY_OF_MONTH) < 10)
						dayString = " " + dayString;
					dayButton = new JButton(dayString);
				} else {
					dayButton = new JButton();
					dayButton.setEnabled(false);
				}
				//              System.out.println(", day: " + dayName.format(draw.getTime()));
				x.add(dayButton, c);
				Color color = dayButton.getBackground();
				if ((draw.get(Calendar.DAY_OF_MONTH) == currentCalendar.get(Calendar.DAY_OF_MONTH)) && (draw.get(Calendar.MONTH) == monthInt))
					dayButton.setBackground(Color.yellow);
				//                  dayButton.setFocusPainted(true);
				//                  dayButton.setSelected(true);
				else
					dayButton.setBackground(color);
				dayButton.setFont(weekFont);
				dayButton.setFocusable(true);
				dayButton.setPreferredSize(new Dimension(width, height));
				dayButton.setMargin(new Insets(0, 0, 0, 0));
				dayButton.addActionListener(new ActionListener() {
					public void actionPerformed(ActionEvent event) {
						onPickDay(event.getActionCommand());
					}

				});
				draw.add(Calendar.DATE, + 1);
			}
		
		return x;
	}

	private JPanel createControls() {
		JPanel c = new JPanel();
		c.setBorder(BorderFactory.createRaisedBevelBorder());
		c.setFocusable(true);
		c.setLayout(new FlowLayout(FlowLayout.CENTER));

		buttonPreviousYear = new JButton(" << ");
		c.add(buttonPreviousYear);
		buttonPreviousYear.setMargin(new Insets(0, 0, 0, 0));
		buttonPreviousYear.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				onButtonPreviousYearAction();
			}
		});

		buttonPreviousMonth = new JButton(" < ");
		c.add(buttonPreviousMonth);
		buttonPreviousMonth.setMargin(new Insets(0, 0, 0, 0));
		buttonPreviousMonth.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				onButtonPreviousMonthAction();
			}
		});

		fieldCurrentDate = new JTextField(getFormattedDate(), 10);
		c.add(fieldCurrentDate);
		fieldCurrentDate.setEditable(true);
		fieldCurrentDate.setEnabled(true);
		fieldCurrentDate.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				onEditDate();
			}
		});

		buttonNextMonth = new JButton(" > ");
		c.add(buttonNextMonth);
		buttonNextMonth.setMargin(new Insets(0, 0, 0, 0));
		buttonNextMonth.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				onButtonNextMonthAction();
			}
		});

		buttonNextYear = new JButton(" >> ");
		c.add(buttonNextYear);
		buttonNextYear.setMargin(new Insets(0, 0, 0, 0));
		buttonNextYear.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				onButtonNextYearAction();
			}
		});

		return c;
	}

	private Popup createPopup(Component owner) {
		Point locationOnScreen = owner.getLocationOnScreen();
		PopupFactory popupFactory = PopupFactory.getSharedInstance();
		return popupFactory.getPopup(owner, this, locationOnScreen.x, locationOnScreen.y);
	}
	
	private void onButtonNextMonthAction() {
		currentCalendar.add(Calendar.MONTH, 1);
		refreshPanel();
	}
	
	private void onButtonNextYearAction() {
		currentCalendar.add(Calendar.YEAR, 1);
		refreshPanel();
	}
	
	private void onButtonPreviousMonthAction() {
		currentCalendar.add(Calendar.MONTH, -1);
		refreshPanel();
	}
	
	private void onButtonPreviousYearAction() {
		currentCalendar.add(Calendar.YEAR, -1);
		refreshPanel();
	}
	
	private void onEditDate() {
	  try {
	  	String dateString = fieldCurrentDate.getText();
		  Calendar calendar = Calendar.getInstance();
			calendar.setTime(dateFormatterField.parse(dateString));
		  currentCalendar = calendar;
		} catch (ParseException exception) {
			// Invalid date: sets the current one
			currentCalendar = Calendar.getInstance();
		}
	  
		refreshPanel();
	}
	
	private void onPickDay(String day) {
		currentCalendar.set(Calendar.DAY_OF_MONTH, Integer.valueOf(day.trim()));
		
		ActionEvent event = new ActionEvent(this, ActionEvent.ACTION_PERFORMED, day);
		for (ActionListener popupListener : popupListeners)
			popupListener.actionPerformed(event);
	}

	private void refreshPanel() {
		removeAll();
		
		setBorder(BorderFactory.createCompoundBorder(
			BorderFactory.createLineBorder(Color.BLACK, 1),
			BorderFactory.createEmptyBorder(0, 0, 8, 0)
		));
		
		setFocusable(true);
		setLayout(new BoxLayout(this, BoxLayout.Y_AXIS));
		add(createControls());
		add(createCalendar());
		
		validate();
		repaint();
	}
}
