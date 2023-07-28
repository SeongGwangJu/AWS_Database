package repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import config.DBConnectionMgr;
import entity.ProductColor;

public class ProductColorRepository {

	private DBConnectionMgr pool;
	
	//싱글톤
	private static ProductColorRepository instance;
	
	private ProductColorRepository() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public static ProductColorRepository getInstance() {
		if(instance == null) {
			instance = new ProductColorRepository();
		}
		return instance;
	}
	
	//////////////////
	
	//DB로부터 색 리스트를 가져옴 : productColorList반환
	public List<ProductColor> getProductColorListAll() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<ProductColor> productColorList = null;
		
		try {
			con = pool.getConnection();
			String sql = "select "
					+ "color_id, "
					+ "color_name "
					+ "from "
					+ "color_tb "
					+ "order by "
					+ "color_name";
			
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			productColorList = new ArrayList<>();
			
			while(rs.next()) {
				ProductColor productColor = ProductColor.builder()
						.color_Id(rs.getInt(1))
						.color_Name(rs.getString(2))
						.build();
				
				productColorList.add(productColor);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return productColorList;
	}
	
	public ProductColor findProductColorByProductColorName(String productColorName) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProductColor productColor = null;
		
		try {
			con = pool.getConnection();
			
			//뒤나 앞에 띄어쓰기가 있어야함!
			String sql = "select " 
					+ "color_id, "
					+ "color_name "
					+ "from "
					+ "color_tb "
					+ "where "
					+ "color_name = ? ";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, productColorName);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {//rs가 있으면 true, 없으면 false {
				productColor = ProductColor.builder()
						.color_Id(rs.getInt(1))
						.color_Name(rs.getString(2))
						.build();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		
		return productColor;
	}
	
	public int saveProductColor(ProductColor productColor) { //Color라는 객체를 매개변수로 함.
		Connection con = null;
		PreparedStatement pstmt = null;
		int successCount = 0;
		
		try {
			con = pool.getConnection();
			String sql = "insert into color_tb values(0, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, productColor.getColor_Name());
			successCount = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return successCount;
		
	}
	
	
}
