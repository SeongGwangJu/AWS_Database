package main;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.table.DefaultTableModel;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.JPasswordField;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JButton;
import javax.swing.JScrollPane;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.List;

public class User_tb_GUI extends JFrame {

	private JPanel contentPane;
	private JTextField userNameTextField;
	private JTextField passwordTextField;
	private JLabel idLabel;
	private JLabel passwordLabel;
	private JTable table;
	Method mth = new Method();
	
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					User_tb_GUI frame = new User_tb_GUI();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	public User_tb_GUI() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 530, 778);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		userNameTextField = new JTextField();
		userNameTextField.setBounds(33, 63, 184, 27);
		contentPane.add(userNameTextField);
		userNameTextField.setColumns(10);
		
		passwordTextField = new JTextField();
		passwordTextField.setBounds(301, 63, 184, 27);
		contentPane.add(passwordTextField);
		passwordTextField.setColumns(10);
		
		idLabel = new JLabel("ID");
		idLabel.setBounds(33, 21, 124, 32);
		contentPane.add(idLabel);
		
		passwordLabel = new JLabel("Password");
		passwordLabel.setBounds(301, 21, 133, 27);
		contentPane.add(passwordLabel);
		
		JButton addUserButton = new JButton("Add");
		addUserButton.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				//insertUser가 false일때 실행 = 실행 실패시
				if(!mth.insertUser(userNameTextField.getText(), passwordTextField.getText())) {
					JOptionPane.showConfirmDialog(contentPane, "사용자 추가 실패!" , "insert오류", JOptionPane.ERROR_MESSAGE);
					return;
				}
				updateUserListTable(table);
			}
		});
		addUserButton.setBounds(33, 100, 453, 41);
		contentPane.add(addUserButton);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(33, 178, 471, 553);
		contentPane.add(scrollPane);
		
		table = new JTable();
		scrollPane.setViewportView(table);
	}
	
	//
	private void updateUserListTable(JTable jTable) {
		jTable.setModel(getUserTableModel());
	}
	
	//
	public DefaultTableModel getUserTableModel() {
		String[] header = new String[] { "user_id", "username", "password" };
		
		List<List<Object>> userListAll = mth.getUserListAll();
		
		Object[][] userModelArray = new Object[userListAll.size()] [userListAll.get(0).size()];
		
		for(int i = 0; i < userListAll.size(); i++) {
			for(int j = 0; j < userListAll.get(i).size(); j++) {
				userModelArray[i][j] = userListAll.get(i).get(j);
			}
		}
		return new DefaultTableModel(userModelArray, header);
	}

	
	
	
	
	
	
	
}
