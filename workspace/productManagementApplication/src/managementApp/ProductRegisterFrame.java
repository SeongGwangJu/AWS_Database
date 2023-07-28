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

public class ProductRegisterFrame extends JFrame {

	private JPanel contentPane;
	private JTextField productNameTextField;
	private JTextField productPriceTextField;

	
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					ProductRegisterFrame frame = new ProductRegisterFrame();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	
	public ProductRegisterFrame() {
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel titleLabel = new JLabel("상품 등록");
		titleLabel.setFont(new Font("굴림", Font.BOLD, 14));
		titleLabel.setHorizontalAlignment(SwingConstants.CENTER);
		titleLabel.setBounds(177, 10, 93, 33);
		contentPane.add(titleLabel);
		
		JLabel productNameLabel = new JLabel("상품명");
		productNameLabel.setBounds(12, 56, 57, 15);
		contentPane.add(productNameLabel);
		
		productNameTextField = new JTextField();
		productNameTextField.setBounds(81, 53, 341, 21);
		contentPane.add(productNameTextField);
		productNameTextField.setColumns(10);
		
		productPriceTextField = new JTextField();
		productPriceTextField.setColumns(10);
		productPriceTextField.setBounds(81, 84, 341, 21);
		contentPane.add(productPriceTextField);
		
		JLabel productPriceLabel = new JLabel("가격");
		productPriceLabel.setBounds(12, 87, 57, 15);
		contentPane.add(productPriceLabel);
		
		JLabel productColorLabel = new JLabel("색상");
		productColorLabel.setBounds(12, 118, 57, 15);
		contentPane.add(productColorLabel);
		
		
		JComboBox colorComboBox = new JComboBox();
		CustomSwingComboBoxUtil.setComboBoxModel(colorComboBox, ProductColorService.getInstance().getProductColorNameList());
		colorComboBox.setBounds(81, 115, 341, 21);
		contentPane.add(colorComboBox);
		
		
		JLabel productCategoryLabel = new JLabel("카테고리");
		productCategoryLabel.setBounds(12, 149, 57, 15);
		contentPane.add(productCategoryLabel);
		
		JComboBox categoryComboBox = new JComboBox();
		CustomSwingComboBoxUtil.setComboBoxModel(categoryComboBox, ProductCategoryService.getInstance().getProductCategoryNameList());
		categoryComboBox.setBounds(81, 145, 341, 21);
		contentPane.add(categoryComboBox);
		
		JButton registerSubmitButton = new JButton("상품 등록");
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
					JOptionPane.showMessageDialog(contentPane, "상품등록 중 오류가 발생하였습니다.", "등록오류", JOptionPane.ERROR_MESSAGE);
					return;
				}
				
					JOptionPane.showMessageDialog(contentPane, "새로운 상품을 등록하였습니다",  "등록 성공", JOptionPane.PLAIN_MESSAGE);
					
					CustomSwingTextUtil.clearTextField(productNameTextField);
					CustomSwingTextUtil.clearTextField(productPriceTextField);
					colorComboBox.setSelectedIndex(0);
					categoryComboBox.setSelectedIndex(0);
			}
			
		});
		registerSubmitButton.setBounds(12, 183, 405, 68);
		contentPane.add(registerSubmitButton);

		

	}
}
