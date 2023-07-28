package repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.cj.jdbc.CallableStatement;
import com.mysql.cj.jdbc.exceptions.SQLError;

import config.DBConnectionMgr;
import entity.Product;

public class ProductRepository {
	
	private DBConnectionMgr pool;
	
	//싱글톤
	private static ProductRepository instance;
	private ProductRepository() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public static ProductRepository getInstance() {
		if(instance == null) {
			instance = new ProductRepository();
			
		}
		return instance;
		
	}

////////////////////////////////////////////
	public Product findProductNameByProductName(String productName) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Product product = null;
		
		try {
			con = pool.getConnection();
			
			String sql = "select "
					+ "product_id, "
					+ "product_name, "
					+ "product_price, "
					+ "color_id, "
					+ "category_id "
					+ "from "
					+ "product_tb pt "
					+ "where "
					+ "product_name = ? ";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, productName);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				product = Product.builder()
						.product_Id(rs.getInt(1))
						.product_Name(rs.getString(2))
						.product_Price(rs.getInt(3))
						.color_Id(rs.getInt(4))
						.category_Id(rs.getInt(5))
						.build();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		
		return product;
	}
	public int saveProduct(Product product) {
		Connection con = null;
		java.sql.CallableStatement cstmt = null;
		int successCount = 0;
		
		try {
			con = pool.getConnection();
			
			String sql = "{ call p_insert_product(?, ?, ?, ?) } ";
			
			cstmt = con.prepareCall(sql);
			cstmt.setString(1, product.getProduct_Name());
			cstmt.setInt(2, product.getProduct_Price());
			cstmt.setString(3, product.getProductColor().getColor_Name());
			cstmt.setString(4, product.getProductCategory().getCategory_Name());
			successCount = cstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(cstmt != null) {
				try {
					cstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			pool.freeConnection(con);
		}
		return successCount;
	}
}
