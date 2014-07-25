package gui;

import java.awt.EventQueue;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.SwingUtilities;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;
import javax.swing.border.EmptyBorder;
import com.jgoodies.forms.factories.FormFactory;
import com.jgoodies.forms.layout.ColumnSpec;
import com.jgoodies.forms.layout.FormLayout;
import com.jgoodies.forms.layout.RowSpec;

public class Login extends JFrame {

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {

			public void run() {
				try {
					Login frame = new Login();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	private JPanel contentPane;
	private JTextField dataUser;
	private JPasswordField dataPassword;
	private JLabel lblLogo;
	private JPanel botonesPane;
	private JButton btnSalir;

	private JButton btnAceptar;

	/**
	 * Create the frame.
	 */
	public Login() {
		try {
			UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
		} catch (ClassNotFoundException | InstantiationException | IllegalAccessException | UnsupportedLookAndFeelException e) {
			e.printStackTrace();
		}
		
		setTitle("Ingreso al sistema de historia cl\u00EDnica");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 800, 600);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.GROWING_BUTTON_COLSPEC,
			ColumnSpec.decode("min:grow"),
			FormFactory.GROWING_BUTTON_COLSPEC,
		}, new RowSpec[] {
			RowSpec.decode("default:grow"),
			FormFactory.DEFAULT_ROWSPEC,
			RowSpec.decode("9dlu:grow"),
			FormFactory.DEFAULT_ROWSPEC,
			FormFactory.PARAGRAPH_GAP_ROWSPEC,
			FormFactory.DEFAULT_ROWSPEC,
			RowSpec.decode("default:grow"),
		}));
		
		lblLogo = new JLabel("");
		lblLogo.setHorizontalAlignment(SwingConstants.CENTER);
		lblLogo.setIcon(new ImageIcon(Login.class.getResource("/images/logo.png")));
		contentPane.add(lblLogo, "2, 2, center, center");
		
		JPanel loginPane = new JPanel();
		contentPane.add(loginPane, "2, 4, center, center");
		loginPane.setLayout(new FormLayout(new ColumnSpec[] {
			FormFactory.MIN_COLSPEC,
			FormFactory.LABEL_COMPONENT_GAP_COLSPEC,
			ColumnSpec.decode("max(80dlu;min)"),
		}, new RowSpec[] {
			FormFactory.DEFAULT_ROWSPEC,
			FormFactory.RELATED_GAP_ROWSPEC,
			FormFactory.DEFAULT_ROWSPEC,
		}));
		
		JLabel lblUsername = new JLabel("Usuario:");
		loginPane.add(lblUsername, "1, 1");
		
		JLabel lblPassword = new JLabel("Contraseņa:");
		loginPane.add(lblPassword, "1, 3");
		
		dataUser = new JTextField(10);
		loginPane.add(dataUser, "3, 1");
		
		dataPassword = new JPasswordField(10);
		dataPassword.setColumns(10);
		loginPane.add(dataPassword, "3, 3");
		
		botonesPane = new JPanel();
		contentPane.add(botonesPane, "2, 6, fill, fill");
		
		btnSalir = new JButton("Salir");
		btnSalir.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				
			}
		});
		botonesPane.add(btnSalir);
		
		btnAceptar = new JButton("Aceptar");
		btnAceptar.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				System.out.println("Boton aceptar clickeado");
				//TODO
				login(dataUser.getText(), dataPassword.getText());
			}
		});
		botonesPane.add(btnAceptar);
	}
	
	private void login(String user, String password) {
		// TODO: ejemplo: tareas fuera del EDT
		Thread t = new Thread() {
			public void run() {
				System.out.println(SwingUtilities.isEventDispatchThread());
			}
		};
		t.start();
		
		//TODO
		/*UsersManager man = UsersManager.getInstance();
		try {
			man.login(user, password);
		} catch (UserPasswordException e) {
			JOptionPane.showMessageDialog(this, e.getMessage(), "Usuario o contraseņa incorrectos.", JOptionPane.ERROR_MESSAGE);
			this.dataUser.setText("");
			this.dataPassword.setText("");
		} catch (ConnectionException e) {
			JOptionPane.showMessageDialog(this, e.getMessage(), "Connection error.", JOptionPane.ERROR_MESSAGE);
		}
		
		if (man.isConnected()) {
			PatientSearch test = new PatientSearch();
			test.setVisible(true);
			this.setVisible(false);
			this.dispose();
		}*/
	}
	
	private void salir() {
		//TODO
		System.exit(0);
	}

}
