package managementApp;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import entity.ProductColor;
import service.ProductColorService;
import utils.CustomSwingTextUtil;

import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.JButton;
import javax.swing.SwingConstants;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class ProductColorRegisterFrame extends JFrame {

	private JPanel contentPane;
	private JTextField productColorNameTextField;
	ProductColorService productColorService = ProductColorService.getInstance();
	
	
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					ProductColorRegisterFrame frame = new ProductColorRegisterFrame();
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
	public ProductColorRegisterFrame() {
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 450, 221);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel titleLabel = new JLabel("상품 색상 등록");
		titleLabel.setHorizontalAlignment(SwingConstants.CENTER);
		titleLabel.setBounds(153, 10, 143, 15);
		contentPane.add(titleLabel);
		
		JLabel productColorNameLabel = new JLabel("색상명");
		productColorNameLabel.setBounds(12, 66, 57, 21);
		contentPane.add(productColorNameLabel);
		
		productColorNameTextField = new JTextField();
		productColorNameTextField.setBounds(81, 66, 341, 21);
		contentPane.add(productColorNameTextField);
		productColorNameTextField.setColumns(10);
		
		JButton registerSubmitButton = new JButton("등록");
		registerSubmitButton.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				
				String productColorName = productColorNameTextField.getText();
				
				//검증(빈값, 중복)
				if(CustomSwingTextUtil.isTextEmpty(contentPane, productColorName)) { return; }
				if(ProductColorService.getInstance().isProductColorNameDuplicated(productColorName)) {
					JOptionPane.showMessageDialog(contentPane, "이미 존재하는 색상입니다", "중복오류", JOptionPane.ERROR_MESSAGE );
					return;
				}
				
				ProductColor productColor = ProductColor.builder()
						.color_Name(productColorName)
						.build();
				
				if(!ProductColorService.getInstance().registerProductColor(productColor)) {
					JOptionPane.showMessageDialog(contentPane, "색상등록 중 오류가 발생하였습니다", "등록오류", JOptionPane.ERROR_MESSAGE );
					return;
				}
				
				JOptionPane.showMessageDialog(contentPane, "새로운 색상을 등록하였습니다.", "등록 성공", JOptionPane.PLAIN_MESSAGE );
				CustomSwingTextUtil.clearTextField(productColorNameTextField);
			}
		});
		registerSubmitButton.setBounds(12, 97, 405, 68);
		contentPane.add(registerSubmitButton);
	}

}
