package managementApp;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JButton;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class ProductManagementApplication extends JFrame {

	private JPanel contentPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					ProductManagementApplication frame = new ProductManagementApplication();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public ProductManagementApplication() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JButton productRegisterFrameOpenButton = new JButton("상품등록");
		productRegisterFrameOpenButton.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				ProductRegisterFrame productRegisterFrame = new ProductRegisterFrame(); //JFrame인 객체 생성
				productRegisterFrame.setVisible(true); //새창띄우기
				
			}
		});
		productRegisterFrameOpenButton.setBounds(68, 86, 97, 23);
		contentPane.add(productRegisterFrameOpenButton);
		
		JButton productListFrameOpenButton = new JButton("상품조회");
		productListFrameOpenButton.setBounds(262, 86, 97, 23);
		contentPane.add(productListFrameOpenButton);
	}
}
