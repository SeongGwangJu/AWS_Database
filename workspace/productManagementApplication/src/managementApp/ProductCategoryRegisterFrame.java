package managementApp;

import java.awt.EventQueue;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;

import entity.ProductCategory;
import service.ProductCategoryService;
import utils.CustomSwingTextUtil;

public class ProductCategoryRegisterFrame extends JFrame {

	private JPanel contentPane;
	private JTextField productCategoryNameTextField;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					ProductCategoryRegisterFrame frame = new ProductCategoryRegisterFrame();
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
	public ProductCategoryRegisterFrame() {
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 450, 221);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel titleLabel = new JLabel("상품 카테고리 등록");
		titleLabel.setHorizontalAlignment(SwingConstants.CENTER);
		titleLabel.setBounds(153, 10, 143, 15);
		contentPane.add(titleLabel);
		
		JLabel productCategoryNameLabel = new JLabel("카테고리명");
		productCategoryNameLabel.setHorizontalAlignment(SwingConstants.CENTER);
		productCategoryNameLabel.setBounds(0, 66, 82, 21);
		contentPane.add(productCategoryNameLabel);
		
		productCategoryNameTextField = new JTextField();
		productCategoryNameTextField.setBounds(81, 66, 341, 21);
		contentPane.add(productCategoryNameTextField);
		productCategoryNameTextField.setColumns(10);
		
		JButton registerSubmitButton = new JButton("등록");
		registerSubmitButton.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				//중복체크
				String productCategoryName = productCategoryNameTextField.getText();
				
				//검증(빈값, 중복)
				if(CustomSwingTextUtil.isTextEmpty(contentPane, productCategoryName)) {
					return; 
					}
				
				if(ProductCategoryService.getInstance().isProductCategoryNameDuplicated(productCategoryName)) {
					JOptionPane.showMessageDialog(contentPane, "이미 존재하는 카테고리입니다", "중복오류", JOptionPane.ERROR_MESSAGE );
					return;
				} 
				
				ProductCategory productCategory = ProductCategory.builder()
						.category_Name(productCategoryName)
						.build();
				
				if(!ProductCategoryService.getInstance().registerProductCategory(productCategory)) {
					JOptionPane.showMessageDialog(contentPane, "등록 중 오류가 발생하였습니다", "등록오류", JOptionPane.ERROR_MESSAGE );
					return;
				}
				
				JOptionPane.showMessageDialog(contentPane, "새로운 카테고리를 등록하였습니다.", "등록 성공", JOptionPane.PLAIN_MESSAGE );
				CustomSwingTextUtil.clearTextField(productCategoryNameTextField);
				
			}
		});
		
		registerSubmitButton.setBounds(12, 97, 405, 68);
		contentPane.add(registerSubmitButton);
		
	}
}
