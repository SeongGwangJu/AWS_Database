package main;

import java.awt.EventQueue;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JTextField;
import javax.swing.JLabel;
import javax.swing.JButton;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

import com.mysql.cj.exceptions.RSAException;

import config.DBConnectionMgr;
import lombok.Data;
import lombok.Getter;
@Data
public class RegistrationUser extends JFrame {

	private JPanel contentPane;
	private JTextField usernameTextField;
	private JTextField passwordTextField;
	private JTable table;

	public static void main(String[] args) {
		System.out.println(getUserByUserId(1) + "ddd");
		

		
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					RegistrationUser frame = new RegistrationUser();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}
	
	public static Map<String, Object> getUserByUserId(int user_id) {
		Map<String, Object> resultMap = new HashMap<>();
	DBConnectionMgr pool = DBConnectionMgr.getInstance(); 
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		con = pool.getConnection();
		String sql = "Select user_id, username, password FROM user_tb"
				+ " WHERE user_id = ?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, user_id);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			resultMap.put("user_id", rs.getInt(1));
			resultMap.put("username", rs.getString(2));
			resultMap.put("password", rs.getString(3));
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pool.freeConnection(con, pstmt, rs);
	}
	
	return resultMap;
}
	public static int getValue(int user_id) {
		Map<String, Object> userMap1 = getUserByUserId(user_id); 
		int userId = (int) userMap1.get("user_id");
		String username = (String) userMap1.get("username");
		String password = (String) userMap1.get("password");
		return userId;
	}
	public RegistrationUser() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		usernameTextField = new JTextField();
		usernameTextField.setBounds(12, 27, 194, 21);
		contentPane.add(usernameTextField);
		usernameTextField.setColumns(10);
		
		passwordTextField = new JTextField();
		passwordTextField.setBounds(228, 27, 194, 21);
		contentPane.add(passwordTextField);
		passwordTextField.setColumns(10);
		
		JLabel lblNewLabel = new JLabel("아이디");
		lblNewLabel.setBounds(12, 10, 57, 15);
		contentPane.add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("비밀번호");
		lblNewLabel_1.setBounds(208, 10, 57, 15);
		contentPane.add(lblNewLabel_1);
		
		JButton btnNewButton = new JButton("Add");
		btnNewButton.setBounds(12, 58, 410, 30);
		contentPane.add(btnNewButton);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(12, 98, 410, 153);
		contentPane.add(scrollPane);
		
		table = new JTable();
		table.setModel(new DefaultTableModel(
			new Object[][] {
				{1, "username", "password"},
				{null, null, null},
			},
			new String[] {
				"user_id", "username", "password"
			}
		));
		scrollPane.setViewportView(table);
	}
}
