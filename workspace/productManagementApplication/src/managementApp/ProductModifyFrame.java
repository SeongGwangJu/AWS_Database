package managementApp;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import entity.Product;
import entity.ProductCategory;
import entity.ProductColor;
import service.ProductCategoryService;
import service.ProductColorService;
import service.ProductService;
import utils.CustomSwingComboBoxUtil;
import utils.CustomSwingTextUtil;

import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.JButton;
import javax.swing.SwingConstants;
import javax.swing.JComboBox;
import javax.swing.DefaultComboBoxModel;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.Font;

public class ProductModifyFrame extends JFrame {

	private JPanel contentPane;
	private JTextField productNameTextField;
	private JTextField productPriceTextField;
	private JTextField productIdTextField;

	
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					ProductModifyFrame frame = new ProductModifyFrame(1);
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	
	public ProductModifyFrame(int productId) {
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 453, 373);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel titleLabel = new JLabel("상품 수정");
		titleLabel.setFont(new Font("굴림", Font.BOLD, 14));
		titleLabel.setHorizontalAlignment(SwingConstants.CENTER);
		titleLabel.setBounds(177, 10, 93, 33);
		contentPane.add(titleLabel);
		
		JLabel productIdLabel_1 = new JLabel("상품번호");
		productIdLabel_1.setBounds(7, 72, 57, 15);
		contentPane.add(productIdLabel_1);
		
		productIdTextField = new JTextField();
		productIdTextField.setColumns(10);
		productIdTextField.setBounds(76, 69, 341, 21);
		productIdTextField.setText("10");
		productIdTextField.setEnabled(false);
		contentPane.add(productIdTextField);
		
		JLabel productNameLabel = new JLabel("상품명");
		productNameLabel.setBounds(7, 103, 57, 15);
		contentPane.add(productNameLabel);
		
		productNameTextField = new JTextField();
		productNameTextField.setBounds(76, 100, 341, 21);
		//productNameTextField.setEnabled(false);
		contentPane.add(productNameTextField);
		productNameTextField.setColumns(10);
		
		productPriceTextField = new JTextField();
		productPriceTextField.setColumns(10);
		productPriceTextField.setBounds(76, 131, 341, 21);
		contentPane.add(productPriceTextField);
		
		JLabel productPriceLabel = new JLabel("가격");
		productPriceLabel.setBounds(7, 134, 57, 15);
		contentPane.add(productPriceLabel);
		
		JLabel productColorLabel = new JLabel("색상");
		productColorLabel.setBounds(7, 165, 57, 15);
		contentPane.add(productColorLabel);
		
		
		JComboBox colorComboBox = new JComboBox();
		CustomSwingComboBoxUtil.setComboBoxModel(colorComboBox, ProductColorService.getInstance().getProductColorNameList());
		colorComboBox.setBounds(76, 162, 341, 21);
		contentPane.add(colorComboBox);
		
		
		JLabel productCategoryLabel = new JLabel("카테고리");
		productCategoryLabel.setBounds(7, 196, 57, 15);
		contentPane.add(productCategoryLabel);
		
		JComboBox categoryComboBox = new JComboBox();
		CustomSwingComboBoxUtil.setComboBoxModel(categoryComboBox, ProductCategoryService.getInstance().getProductCategoryNameList());
		categoryComboBox.setBounds(76, 193, 341, 21);
		contentPane.add(categoryComboBox);
		
		JButton registerSubmitButton = new JButton("상품 수정");
		registerSubmitButton.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				String productName = productNameTextField.getText();
				
				if(CustomSwingTextUtil.isTextEmpty(contentPane, productName)) {return;}
				if(ProductService.getInstance().isProductNameDuplicated(productName)) {
					JOptionPane.showMessageDialog(contentPane, "이미 존재하는 상품명입니다", "중복오류", JOptionPane.ERROR_MESSAGE );
					return;
				}
				String productPrice = productPriceTextField.getText();
				if(CustomSwingTextUtil.isTextEmpty(contentPane, productPrice)) {return;}
				
				String productColorName = (String) colorComboBox.getSelectedItem(); //콤보박스에 선택된 값을 들고옴
				if(CustomSwingTextUtil.isTextEmpty(contentPane, productColorName)) {return;}
				
				String productCategoryName = (String) categoryComboBox.getSelectedItem();
				if(CustomSwingTextUtil.isTextEmpty(contentPane, productCategoryName)) {return;}
				
				Product product = Product.builder()
						.product_Name(productName)
						.product_Price(Integer.parseInt(productPrice)) // String to int Parse.
						.productColor(ProductColor.builder().color_Name(productColorName).build())
						.productCategory(ProductCategory.builder().category_Name(productCategoryName).build())
						.build();
				
				if(!ProductService.getInstance().registerProduct(product)) {
					JOptionPane.showMessageDialog(contentPane, "상품수정 중 오류가 발생하였습니다.", "수정오류", JOptionPane.ERROR_MESSAGE);
					return;
				}
				
					JOptionPane.showMessageDialog(contentPane, "새로운 상품을 수정하였습니다",  "수정 성공", JOptionPane.PLAIN_MESSAGE);
					
					CustomSwingTextUtil.clearTextField(productNameTextField);
					CustomSwingTextUtil.clearTextField(productPriceTextField);
					colorComboBox.setSelectedIndex(0);
					categoryComboBox.setSelectedIndex(0);
			}
			
		});
		registerSubmitButton.setBounds(12, 256, 405, 68);
		contentPane.add(registerSubmitButton);
		


		

	}
}
