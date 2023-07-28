package managementApp;

import java.awt.EventQueue;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.util.List;

import javax.swing.DefaultComboBoxModel;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;
import javax.swing.table.DefaultTableModel;

import entity.Product;
import service.ProductService;
import utils.CustomSwingTableUtil;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class ProductSearchFrame extends JFrame {

	private JPanel contentPane;
	private JComboBox comboBox;
	private JTextField SearchTextField;
	private JTable productTable;
	private JScrollPane scrollPane;
	private DefaultTableModel searchProductTableModel;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					ProductSearchFrame frame = new ProductSearchFrame();
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
	public ProductSearchFrame() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 1000, 500);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel titleLabel = new JLabel("상품 조회 ");
		titleLabel.setFont(new Font("나눔스퀘어 Bold", Font.BOLD, 16));
		titleLabel.setHorizontalAlignment(SwingConstants.CENTER);
		titleLabel.setBounds(12, 10, 102, 35);
		contentPane.add(titleLabel);
		
		JButton productModifyButton = new JButton("수정");
		productModifyButton.addMouseListener(new MouseAdapter() {
			
			@Override
			public void mouseClicked(MouseEvent e) {
				if(!productModifyButton.isEnabled()) {return;} //disabled 일 때(= 선택된 테이블 없을 때) 클릭이벤트 동작 안하도록
				
				int productId = Integer.parseInt((String) searchProductTableModel.getValueAt(productTable.getSelectedRow(), 0));
				ProductModifyFrame productModifyFrame = 
						new ProductModifyFrame(productId);
				productModifyFrame.setVisible(true);
				
			}
			
		});
		
		productModifyButton.setBounds(766, 17, 97, 23);
		productModifyButton.setEnabled(false);
		contentPane.add(productModifyButton);
		
		JButton productRemoveButton = new JButton("삭제");
		productRemoveButton.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				if(!productRemoveButton.isEnabled()) { return; } //클릭이벤트 동작 안하도록
				int productId = Integer.parseInt((String)searchProductTableModel.getValueAt(productTable.getSelectedRow(), 0));
				
				if(!ProductService.getInstance().removeProduct(productId)) {
					JOptionPane.showMessageDialog(contentPane, "상품삭제중 오류가 발생하였습니다.", "삭제오류", JOptionPane.ERROR_MESSAGE);
					return;
				}
				JOptionPane.showMessageDialog(contentPane, "선택한 상품을 삭제하였습니다.", "삭제성공", JOptionPane.PLAIN_MESSAGE);
				setSearchProductTableModel();
				productModifyButton.setEnabled(false);
				productRemoveButton.setEnabled(false);
			}
		});
		productRemoveButton.setBounds(875, 17, 97, 23);
		productRemoveButton.setEnabled(false);
		contentPane.add(productRemoveButton);
		
		JLabel searchLabel = new JLabel("검색");
		searchLabel.setHorizontalAlignment(SwingConstants.RIGHT);
		searchLabel.setBounds(541, 49, 56, 24);
		contentPane.add(searchLabel);
		
		comboBox = new JComboBox();
		comboBox.setModel(new DefaultComboBoxModel(new String[] {"전체", "상품명", "색상", "카테고리"}));
		comboBox.setBounds(609, 50, 102, 23);
		contentPane.add(comboBox); 
		
		SearchTextField = new JTextField();
		SearchTextField.addKeyListener(new KeyAdapter() {
			@Override
			public void keyPressed(KeyEvent e) {
				if(e.getKeyCode() == KeyEvent.VK_ENTER) {
					setSearchProductTableModel();
					productModifyButton.setEnabled(false);
					productRemoveButton.setEnabled(false);
					
				}
			}
		});
		
		SearchTextField.setBounds(723, 51, 249, 21);
		contentPane.add(SearchTextField);
		SearchTextField.setColumns(10);
		
		scrollPane = new JScrollPane();
		scrollPane.setBounds(12, 82, 960, 369);
		contentPane.add(scrollPane);
		
		productTable = new JTable();
		setSearchProductTableModel();
		productTable.addMouseListener(new MouseAdapter() {
			
			@Override
			public void mouseClicked(MouseEvent e) {
				productModifyButton.setEnabled(true);
				productRemoveButton.setEnabled(true);
			}
		});
		scrollPane.setViewportView(productTable);
	}
	
	
	private void setSearchProductTableModel() {
		String searchOption = (String) comboBox.getSelectedItem(); //다운캐스팅 필수
		String searchValue = SearchTextField.getText();
		
		List<Product> searchProductList = ProductService.getInstance().searchProduct(searchOption, searchValue);
		String[][] searchProductModelArray = CustomSwingTableUtil.searchProductListToArray(searchProductList);
		searchProductTableModel = new DefaultTableModel (
				searchProductModelArray,
				new String[] {
					"product_Id", "product_Name", "product_Price", "color_Id", "color_Name", "Category_Id", "Category_Name"
				}
		);
		
		productTable.setModel(searchProductTableModel);
	}
}
