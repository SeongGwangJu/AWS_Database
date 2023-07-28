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
		setBounds(100, 100, 452, 333);
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
		productRegisterFrameOpenButton.setBounds(63, 10, 306, 42);
		contentPane.add(productRegisterFrameOpenButton);
		
		JButton productSearchFrameOpenButton = new JButton("상품조회");
		productSearchFrameOpenButton.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				ProductSearchFrame productSearchFrame = 
						new ProductSearchFrame();
				productSearchFrame.setVisible(true);
			}
		});
		productSearchFrameOpenButton.setBounds(63, 85, 306, 42);
		contentPane.add(productSearchFrameOpenButton);
		
		JButton productColorRegisterFrameOpenButton_1 = new JButton("상품색상등록");
		productColorRegisterFrameOpenButton_1.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				ProductColorRegisterFrame productColorRegisterFrame = new ProductColorRegisterFrame();
				productColorRegisterFrame.setVisible(true); 
			}
		});
		productColorRegisterFrameOpenButton_1.setBounds(63, 160, 306, 42);
		contentPane.add(productColorRegisterFrameOpenButton_1);
		
		JButton productCategoryRegisterFrameOpenButton_2 = new JButton("상품카테고리 등록");
		productCategoryRegisterFrameOpenButton_2.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				ProductCategoryRegisterFrame productCategoryRegisterFrame = new ProductCategoryRegisterFrame();
				productCategoryRegisterFrame.setVisible(true); 
			}
		});
		productCategoryRegisterFrameOpenButton_2.setBounds(63, 235, 306, 42);
		contentPane.add(productCategoryRegisterFrameOpenButton_2);
	}
}
