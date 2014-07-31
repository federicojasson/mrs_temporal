/*package gui.components;

import java.awt.Color;
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
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.sql.Date;
import java.util.LinkedList;
import java.util.List;
import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.Popup;
import javax.swing.PopupFactory;

// TODO: clicks afuera del popup que lo cierren
public class DatePicker extends JPanel {

	private static final long serialVersionUID = 1L;
	
	private boolean isShowing;
	
	protected boolean controlsOnTop;

	protected boolean removeOnDaySelection;

	protected Calendar currentDisplayDate;
	protected JButton prevMonth;
	protected JButton nextMonth;
	protected JButton prevYear;

	protected JButton nextYear;

	protected JTextField textField;

	protected List<ActionListener> popupListeners = new LinkedList<ActionListener>();

	protected Popup popup;
	protected SimpleDateFormat dayName = new SimpleDateFormat("d");

	protected SimpleDateFormat monthName = new SimpleDateFormat("MMMM");
	protected String iconFile = "/images/datepicker.gif";

	protected String[] weekdayNames = {
//		"Sun",
//		"Mon",
//		"Tue",
//		"Wed",
//		"Thu",
//		"Fri",
//		"Sat"
		"Dom",
		"Lun",
		"Mar",
		"Mié",
		"Jue",
		"Vie",
		"Sáb"
	};

	public DatePicker() {
		super();
		isShowing = false;
		currentDisplayDate = Calendar.getInstance();
		controlsOnTop = true;
		removeOnDaySelection = true;
		createPanel();
	}

	public DatePicker(Calendar date) {
		super();
		setDate(date);
		isShowing = false;
		controlsOnTop = true;
		removeOnDaySelection = true;
		createPanel();
	}

	public DatePicker(int month, int day, int year) {
		super();
		setDate(month, day, year);
		isShowing = false;
		controlsOnTop = true;
		removeOnDaySelection = true;
		createPanel();
	}

	public void addMonth(int month) {
		currentDisplayDate.add(Calendar.MONTH, month);
		createPanel();
		validate();
		repaint();
	}

	public void addPopupListener(ActionListener l) {
		popupListeners.add(l);
	}

	public void addYear(int year) {
		currentDisplayDate.add(Calendar.YEAR, year);
		createPanel();
		validate();
		repaint();
	}

	public void changeDay(String day) {
		currentDisplayDate.set(Calendar.DAY_OF_MONTH, Integer.valueOf(day.trim()));
		if (removeOnDaySelection) {
			firePopupEvent(new ActionEvent(this, 1, "hide"));
			popup = null;
		} else {
			createPanel();
			validate();
			repaint();
		}
	}

	protected JPanel createCalendar() {
		JPanel x = new JPanel();
		GridBagLayout gridbag = new GridBagLayout();
		GridBagConstraints c = new GridBagConstraints();

		x.setFocusable(true);
		x.setLayout(gridbag);

		String month = monthName.format(currentDisplayDate.getTime());
		String year = Integer.toString(getYear());

		c.gridx = 0;
		c.gridy = 0;
		c.gridwidth = 7;
		c.gridheight = 1;
		JLabel title = new JLabel(month + " " + year);
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
			JLabel label = new JLabel(weekdayNames[c.gridx]);
			x.add(label, c);
			label.setFont(weekFont);
		}

		Calendar draw = (Calendar) currentDisplayDate.clone();
		draw.set(Calendar.DATE, 1);
		draw.add(Calendar.DATE, - draw.get(Calendar.DAY_OF_WEEK) + 1);
		int monthInt = currentDisplayDate.get(Calendar.MONTH);
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
					String dayString = dayName.format(draw.getTime());
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
				if ((draw.get(Calendar.DAY_OF_MONTH) == getDay()) && (draw.get(Calendar.MONTH) == monthInt))
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

					public void actionPerformed(ActionEvent e) {
						changeDay(e.getActionCommand());
					}

				});
				draw.add(Calendar.DATE, + 1);
			}
		//          if (draw.get(Calendar.MONTH) != monthInt) break;
		return x;
	}

	protected JPanel createControls() {
		JPanel c = new JPanel();
		c.setBorder(BorderFactory.createRaisedBevelBorder());
		c.setFocusable(true);
		c.setLayout(new FlowLayout(FlowLayout.CENTER));

		prevYear = new JButton("<<");
		c.add(prevYear);
		prevYear.setMargin(new Insets(0, 0, 0, 0));
		prevYear.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent arg0) {
				addYear(- 1);
			}
		});

		prevMonth = new JButton("<");
		c.add(prevMonth);
		prevMonth.setMargin(new Insets(0, 0, 0, 0));
		prevMonth.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent arg0) {
				addMonth(- 1);
			}
		});

		textField = new JTextField(getFormattedDate(), 10);
		c.add(textField);
		textField.setEditable(true);
		textField.setEnabled(true);
		textField.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				editDate(textField.getText());
			}
		});

		nextMonth = new JButton(">");
		c.add(nextMonth);
		nextMonth.setMargin(new Insets(0, 0, 0, 0));
		nextMonth.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent arg0) {
				addMonth(+ 1);
			}
		});

		nextYear = new JButton(">>");
		c.add(nextYear);
		nextYear.setMargin(new Insets(0, 0, 0, 0));
		nextYear.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent arg0) {
				addYear(+ 1);
			}
		});

		return c;
	}

	protected ImageIcon createImageIcon(String path, String description) {
		ImageIcon icon = new ImageIcon(getClass().getResource(iconFile));
		return icon;
	}

	protected void createPanel() {
		removeAll();
		setBorder(BorderFactory.createLineBorder(Color.black, 3));
		setFocusable(true);
		setLayout(new BoxLayout(this, BoxLayout.Y_AXIS));
		if (controlsOnTop) {
			add(createControls());
			add(createCalendar());
		} else {
			add(createCalendar());
			add(createControls());
		}
		Dimension d = getPreferredSize();
		setPreferredSize(new Dimension(d.width, d.height + 8));
	}

	public void editDate(String date) {
		parseDate(date);
		createPanel();
		validate();
		repaint();
	}

	protected int expandYear(int year) {
		if (year < 100) { // 2 digit year
			int currentYear = Calendar.getInstance().get(Calendar.YEAR);
			int current2DigitYear = currentYear % 100;
			int currentCentury = currentYear / 100 * 100;
			// set 2 digit year range +20 / -80 from current year
			int high2DigitYear = (current2DigitYear + 20) % 100;
			if (year <= high2DigitYear)
				year += currentCentury;
			else
				year += (currentCentury - 100);
		}
		return year;
	}

	public void firePopupEvent(ActionEvent e) {
		for (int i = popupListeners.size() - 1; i >= 0; i--) {
			ActionListener l = popupListeners.get(i);
			l.actionPerformed(e);
		}
	}

	public Calendar getCalendarDate() {
		return currentDisplayDate;
	}

	public Date getDate() {
		return new Date(currentDisplayDate.getTimeInMillis());
	}

	public int getDay() {
		return currentDisplayDate.get(Calendar.DAY_OF_MONTH);
	}

	public String getFormattedDate() {
		return new SimpleDateFormat("dd/MM/yyyy").format(currentDisplayDate.getTime());
		//return Integer.toString(getMonth()) + "/" + Integer.toString(getDay()) + "/" + Integer.toString(getYear());
	}

	public ImageIcon getImage() {
		return createImageIcon(iconFile, "Calendar date picker");
	}

	public int getMonth() {
		return currentDisplayDate.get(Calendar.MONTH) + 1;
	}

	public Popup getPopup(Container c) {
		if (popup == null) {
			Point p = c.getLocationOnScreen();
			PopupFactory factory = PopupFactory.getSharedInstance();
			popup = factory.getPopup(c, this, p.x, p.y);
		}
		return popup;
	}

	public int getYear() {
		return currentDisplayDate.get(Calendar.YEAR);
	}
	
	public boolean isShowing() {
		return isShowing;
	}

	protected void parseDate(String date) {
		String[] parts = date.split("/");
		if (parts.length == 3) {
			currentDisplayDate.set(Calendar.MONTH, Integer.valueOf(parts[0]) - 1);
			currentDisplayDate.set(Calendar.DAY_OF_MONTH, Integer.valueOf(parts[1]));
			currentDisplayDate.set(Calendar.YEAR, expandYear(Integer.valueOf(parts[2])));
		} else
			if (parts.length == 2) {
				currentDisplayDate = Calendar.getInstance();
				currentDisplayDate.set(Calendar.MONTH, Integer.valueOf(parts[0]) - 1);
				currentDisplayDate.set(Calendar.DAY_OF_MONTH, Integer.valueOf(parts[1]));
			} else
				// invalid date
				currentDisplayDate = Calendar.getInstance();
	}

	public void popupHide() {
		popup.hide();
		isShowing = false;
	}

	public void popupShow(Container c) {
		getPopup(c);
		popup.show();
		isShowing = true;
	}

	public void removePopupListener(ActionListener l) {
		popupListeners.remove(l);
	}

	public void setControlsOnTop(boolean flag) {
		controlsOnTop = flag;
		createPanel();
		validate();
		repaint();
	}
	
	public void setDate(Date date) {
	  Calendar calendar = Calendar.getInstance();
	  calendar.setTime(date);
	  setDate(calendar);
	}

	public void setDate(Calendar date) {
		currentDisplayDate = date;
		createPanel();
		validate();
		repaint();
	}

	public void setDate(int month, int day, int year) {
		currentDisplayDate = Calendar.getInstance();
		currentDisplayDate.set(expandYear(year), month - 1, day);
		createPanel();
		validate();
		repaint();
	}

	public void setDate(String date) {
		currentDisplayDate = Calendar.getInstance();
		editDate(date);
	}

	public void setRemoveOnDaySelection(boolean flag) {
		removeOnDaySelection = flag;
	}
}*/

package gui.components;

import java.awt.Color;
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
	private Calendar currentDate;
	private JTextField fieldCurrentDate;
	private Popup popup;
	private boolean popupIsShowing;
	private List<ActionListener> popupListeners;
	
	private SimpleDateFormat dayName = new SimpleDateFormat("d");
	private SimpleDateFormat monthName = new SimpleDateFormat("MMMM");

	private String[] weekdayNames = {
		"Dom",
		"Lun",
		"Mar",
		"Mié",
		"Jue",
		"Vie",
		"Sáb"
	};

	public DatePicker() {
		super();
		currentDate = Calendar.getInstance();
		popupIsShowing = false;
		popupListeners = new LinkedList<ActionListener>();
		createPanel();
	}

	public void addPopupListener(ActionListener listener) {
		popupListeners.add(listener);
	}

	public Date getDate() {
		return new Date(currentDate.getTimeInMillis());
	}

	public void hidePopup() {
		popup.hide();
		popupIsShowing = false;
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
	  setDate(calendar);
	}

	public void showPopup(Container owner) {
		getPopup(owner);
		popup.show();
		popupIsShowing = true;
	}

	private void addMonth(int month) {
		currentDate.add(Calendar.MONTH, month);
		createPanel();
		validate();
		repaint();
	}

	private void addYear(int year) {
		currentDate.add(Calendar.YEAR, year);
		createPanel();
		validate();
		repaint();
	}

	private void changeDay(String day) {
		currentDate.set(Calendar.DAY_OF_MONTH, Integer.valueOf(day.trim()));
		firePopupEvent(new ActionEvent(this, 1, "hide"));
		popup = null;
	}

	private JPanel createCalendar() {
		JPanel x = new JPanel();
		GridBagLayout gridbag = new GridBagLayout();
		GridBagConstraints c = new GridBagConstraints();

		x.setFocusable(true);
		x.setLayout(gridbag);

		String month = monthName.format(currentDate.getTime());
		String year = Integer.toString(getYear());

		c.gridx = 0;
		c.gridy = 0;
		c.gridwidth = 7;
		c.gridheight = 1;
		JLabel title = new JLabel(month + " " + year);
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
			JLabel label = new JLabel(weekdayNames[c.gridx]);
			x.add(label, c);
			label.setFont(weekFont);
		}

		Calendar draw = (Calendar) currentDate.clone();
		draw.set(Calendar.DATE, 1);
		draw.add(Calendar.DATE, - draw.get(Calendar.DAY_OF_WEEK) + 1);
		int monthInt = currentDate.get(Calendar.MONTH);
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
					String dayString = dayName.format(draw.getTime());
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
				if ((draw.get(Calendar.DAY_OF_MONTH) == getDay()) && (draw.get(Calendar.MONTH) == monthInt))
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

					public void actionPerformed(ActionEvent e) {
						changeDay(e.getActionCommand());
					}

				});
				draw.add(Calendar.DATE, + 1);
			}
		//          if (draw.get(Calendar.MONTH) != monthInt) break;
		return x;
	}

	private JPanel createControls() {
		JPanel c = new JPanel();
		c.setBorder(BorderFactory.createRaisedBevelBorder());
		c.setFocusable(true);
		c.setLayout(new FlowLayout(FlowLayout.CENTER));

		buttonPreviousYear = new JButton("<<");
		c.add(buttonPreviousYear);
		buttonPreviousYear.setMargin(new Insets(0, 0, 0, 0));
		buttonPreviousYear.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent arg0) {
				addYear(- 1);
			}
		});

		buttonPreviousMonth = new JButton("<");
		c.add(buttonPreviousMonth);
		buttonPreviousMonth.setMargin(new Insets(0, 0, 0, 0));
		buttonPreviousMonth.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent arg0) {
				addMonth(- 1);
			}
		});

		fieldCurrentDate = new JTextField(getFormattedDate(), 10);
		c.add(fieldCurrentDate);
		fieldCurrentDate.setEditable(true);
		fieldCurrentDate.setEnabled(true);
		fieldCurrentDate.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				editDate(fieldCurrentDate.getText());
			}
		});

		buttonNextMonth = new JButton(">");
		c.add(buttonNextMonth);
		buttonNextMonth.setMargin(new Insets(0, 0, 0, 0));
		buttonNextMonth.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent arg0) {
				addMonth(+ 1);
			}
		});

		buttonNextYear = new JButton(">>");
		c.add(buttonNextYear);
		buttonNextYear.setMargin(new Insets(0, 0, 0, 0));
		buttonNextYear.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent arg0) {
				addYear(+ 1);
			}
		});

		return c;
	}

	private void createPanel() {
		removeAll();
		setBorder(BorderFactory.createLineBorder(Color.black, 3));
		setFocusable(true);
		setLayout(new BoxLayout(this, BoxLayout.Y_AXIS));
		add(createControls());
		add(createCalendar());
		Dimension d = getPreferredSize();
		setPreferredSize(new Dimension(d.width, d.height + 8));
	}

	private void editDate(String date) {
		parseDate(date);
		createPanel();
		validate();
		repaint();
	}

	private int expandYear(int year) {
		if (year < 100) { // 2 digit year
			int currentYear = Calendar.getInstance().get(Calendar.YEAR);
			int current2DigitYear = currentYear % 100;
			int currentCentury = currentYear / 100 * 100;
			// set 2 digit year range +20 / -80 from current year
			int high2DigitYear = (current2DigitYear + 20) % 100;
			if (year <= high2DigitYear)
				year += currentCentury;
			else
				year += (currentCentury - 100);
		}
		return year;
	}

	private void firePopupEvent(ActionEvent e) {
		for (int i = popupListeners.size() - 1; i >= 0; i--) {
			ActionListener l = popupListeners.get(i);
			l.actionPerformed(e);
		}
	}

	private int getDay() {
		return currentDate.get(Calendar.DAY_OF_MONTH);
	}

	private String getFormattedDate() {
		return new SimpleDateFormat("dd/MM/yyyy").format(currentDate.getTime());
		//return Integer.toString(getMonth()) + "/" + Integer.toString(getDay()) + "/" + Integer.toString(getYear());
	}

	private Popup getPopup(Container c) {
		if (popup == null) {
			Point p = c.getLocationOnScreen();
			PopupFactory factory = PopupFactory.getSharedInstance();
			popup = factory.getPopup(c, this, p.x, p.y);
		}
		return popup;
	}

	private int getYear() {
		return currentDate.get(Calendar.YEAR);
	}
	
	private void parseDate(String date) {
		String[] parts = date.split("/");
		if (parts.length == 3) {
			currentDate.set(Calendar.MONTH, Integer.valueOf(parts[0]) - 1);
			currentDate.set(Calendar.DAY_OF_MONTH, Integer.valueOf(parts[1]));
			currentDate.set(Calendar.YEAR, expandYear(Integer.valueOf(parts[2])));
		} else
			if (parts.length == 2) {
				currentDate = Calendar.getInstance();
				currentDate.set(Calendar.MONTH, Integer.valueOf(parts[0]) - 1);
				currentDate.set(Calendar.DAY_OF_MONTH, Integer.valueOf(parts[1]));
			} else
				// invalid date
				currentDate = Calendar.getInstance();
	}

	private void setDate(Calendar date) {
		currentDate = date;
		createPanel();
		validate();
		repaint();
	}
}
