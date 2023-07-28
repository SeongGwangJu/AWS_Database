package repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import config.DBConnectionMgr;
import entity.ProductCategory;

public class ProductCategoryRepository {

	private DBConnectionMgr pool;
	
	//싱글톤
	private static ProductCategoryRepository instance;
	
	private ProductCategoryRepository() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public static ProductCategoryRepository getInstance() {
		if(instance == null) {
			instance = new ProductCategoryRepository();
		}
		return instance;
	}
	
	//////////////////
	
	//DB로부터 카테고리 목록을 가져옴 : productCategoryList반환
	public List<ProductCategory> getProductCategoryListAll() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		List<ProductCategory> productCategoryList = null;
		
		try {
			con = pool.getConnection();
			String sql = "select "
					+ "category_id, "
					+ "category_name "
					+ "from "
					+ "category_tb "
					+ "order by "
					+ "category_name ";
			
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			productCategoryList = new ArrayList<>();
			
			while(rs.next()) {
				ProductCategory productCategory = ProductCategory.builder()
						.category_Id(rs.getInt(1))
						.category_Name(rs.getString(2))
						.build();
				
				productCategoryList.add(productCategory);
			}		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return productCategoryList;
		
	}
	
	public ProductCategory findProductCategoryByProductCategoryName(String productCategoryName)  {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProductCategory productCategory = null;
		
		try {
			con = pool.getConnection();
			
			//뒤나 앞에 띄어쓰기가 있어야함!
			String sql = "select " 
					+ "Category_id, "
					+ "Category_name "
					+ "from "
					+ "Category_tb "
					+ "where "
					+ "Category_name = ? ";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, productCategoryName);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) //rs가 있으면 true, 없으면 false {
				productCategory = ProductCategory.builder()
						.category_Id(rs.getInt(1))
						.category_Name(rs.getString(2))
						.build();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		
		return productCategory;
	}
	
	public int saveProductCategory(ProductCategory productCategory) { //Category라는 객체를 매개변수로 함.
		Connection con = null;
		PreparedStatement pstmt = null;
		int successCount = 0;
		
		try {
			con = pool.getConnection();
			String sql = "insert into Category_tb values(0, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, productCategory.getCategory_Name());
			successCount = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return successCount;
		
	}
	
	
}
