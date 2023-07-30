package repository;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import config.DBConnectionMgr;
import entity.Product;
import entity.ProductCategory;
import entity.ProductColor;

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
	
//인덱스로 상품이름찾기
	public Product findProductNameByProductId(int productId) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Product product = null;
		
		try {
			con = pool.getConnection();
			
			String sql = "select \r\n"
					+ "		product_id,\r\n"
					+ "		product_name,\r\n"
					+ "    product_price,\r\n"
					+ "    pt.color_id,\r\n"
					+ "    cot.color_name,\r\n"
					+ "    pt.category_id,\r\n"
					+ "    cat.category_name\r\n"
					+ " from\r\n"
					+ "	product_tb pt\r\n"
					+ "    left outer join color_tb cot on(cot.color_id = pt.color_id)\r\n"
					+ "    left outer join category_tb cat on(cat.category_id = pt.category_id)\r\n"
					+ "where\r\n"
					+ "	pt.product_id = ? ;";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, productId);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				product = Product.builder()
						.product_Id(rs.getInt(1))
						.product_Name(rs.getString(2))
						.product_Price(rs.getInt(3))
						.color_Id(rs.getInt(4))
						.productColor(ProductColor.builder()
								.color_Id(rs.getInt(4))
								.color_Name(rs.getString(5))
								.build())
						.category_Id(rs.getInt(6))
						.productCategory(ProductCategory.builder()
								.category_Id(rs.getInt(6))
								.category_Name(rs.getString(7))
								.build())
						.build();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		
		return product;

	}
	
//상품명으로 상품 찾기
	public Product findProductNameByProductName(String productName) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Product product = null;
		
		try {
			con = pool.getConnection();
			
			String sql = "select \r\n"
					+ "		product_id,\r\n"
					+ "		product_name,\r\n"
					+ "    product_price,\r\n"
					+ "    pt.color_id,\r\n"
					+ "    cot.color_name,\r\n"
					+ "    pt.category_id,\r\n"
					+ "    cat.category_name\r\n"
					+ " from\r\n"
					+ "	product_tb pt\r\n"
					+ "    left outer join color_tb cot on(cot.color_id = pt.color_id)\r\n"
					+ "    left outer join category_tb cat on(cat.category_id = pt.category_id)\r\n"
					+ "where\r\n"
					+ "	pt.product_name = ? ;";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, productName);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				product = Product.builder()
						.product_Id(rs.getInt(1))
						.product_Name(rs.getString(2))
						.product_Price(rs.getInt(3))
						.color_Id(rs.getInt(4))
						.productColor(ProductColor.builder()
								.color_Id(rs.getInt(4))
								.color_Name(rs.getString(5))
								.build())
						.category_Id(rs.getInt(6))
						.productCategory(ProductCategory.builder()
								.category_Id(rs.getInt(6))
								.category_Name(rs.getString(7))
								.build())
						.build();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		
		return product;
		/* 리턴값(객체)을 출력해보면 이런 식으로 조회됨
		 * 
		 *  Product(product_Id=1,
		 *  product_Name=하트모양가디건,
		 *  product_Price=600000,
		 *  color_Id=1,
		 *  category_Id=2,
		 *  productColor=ProductColor(color_Id=1, color_Name=black),
		 *  productCategory=ProductCategory(category_Id=2, category_Name=가디건))
		 */
	}

//상품값 등록
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
	public List<Product> getSearchProductList(String searchOption, String searchValue) {
		Connection con = null;
		CallableStatement cstmt = null;
		ResultSet rs = null;
		List<Product> productList = null;
		
		try {
			con = pool.getConnection();
			String sql = "{ CALL p_select_product(?, ?) }";
			
			cstmt = con.prepareCall(sql);
			
	        cstmt.setString(1, searchOption);
	        cstmt.setString(2, searchValue);
	        
	        rs = cstmt.executeQuery();
			productList = new ArrayList<>();
			
			while(rs.next()) {
				Product product = Product.builder()
						.product_Id(rs.getInt(1))
						.product_Name(rs.getString(2))
						.product_Price(rs.getInt(3))
						.color_Id(rs.getInt(4))
						.productColor(ProductColor.builder()
								.color_Id(rs.getInt(4))
								.color_Name(rs.getString(5))
								.build())
						.category_Id(rs.getInt(6))
						.productCategory(ProductCategory.builder()
								.category_Id(rs.getInt(6))
								.category_Name(rs.getString(7))
								.build())
						.build();
				
					productList.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, cstmt, rs);
		}
		return productList;
	}
	
	/*
	 * public List<Product> getSearchProductList(String searchOption, String
	 * searchValue) { Connection con = null; PreparedStatement pstmt = null;
	 * ResultSet rs = null; List<Product> productList = null;
	 * 
	 * try { con = pool.getConnection(); String sql = "select \r\n" +
	 * "		product_id,\r\n" + "		product_name,\r\n" +
	 * "    product_price,\r\n" + "    pt.color_id,\r\n" + "    cot.color_name,\r\n"
	 * + "    pt.category_id,\r\n" + "    cat.category_name\r\n" + "from\r\n" +
	 * "	product_tb pt\r\n" +
	 * "    left outer join color_tb cot on(cot.color_id = pt.color_id)\r\n" +
	 * "    left outer join category_tb cat on(cat.category_id = pt.category_id)\r\n"
	 * + "where\r\n" + "	1=1 ";
	 * 
	 * 
	 * if(searchValue != null) { if(!searchValue.isBlank()) { String whereSql =
	 * null; switch (searchOption) { case "전체": whereSql = " " +
	 * "and pt.product_name like concat('%', ?, '%') " +
	 * "or cot.color_name like concat('%', ?, '%') " +
	 * "or cat.category_name like concat('%', ?, '%')"; break;
	 * 
	 * case "상품명": whereSql = "and pt.product_name like concat('%', ?, '%')"; break;
	 * 
	 * case "색상": whereSql = "and cot.color_name like concat('%', ?, '%')"; break;
	 * 
	 * case "카테고리": whereSql = "and cat.category_name like concat('%', ?, '%')";
	 * break; }
	 * 
	 * sql += whereSql; } }
	 * 
	 * 
	 * pstmt = con.prepareStatement(sql);
	 * 
	 * //null과 Blank의 차이를 아는가 휴먼? if(searchValue != null) {
	 * if(!searchValue.isBlank()) { if(searchOption.equals("전체")) {
	 * pstmt.setString(1, searchValue); pstmt.setString(2, searchValue);
	 * pstmt.setString(3, searchValue); }else { pstmt.setString(1, searchValue); } }
	 * }
	 * 
	 * rs = pstmt.executeQuery(); productList = new ArrayList<>();
	 * 
	 * while(rs.next()) { Product product = Product.builder()
	 * .product_Id(rs.getInt(1)) .product_Name(rs.getString(2))
	 * .product_Price(rs.getInt(3)) .color_Id(rs.getInt(4))
	 * .productColor(ProductColor.builder() .color_Id(rs.getInt(4))
	 * .color_Name(rs.getString(5)) .build()) .category_Id(rs.getInt(6))
	 * .productCategory(ProductCategory.builder() .category_Id(rs.getInt(6))
	 * .category_Name(rs.getString(7)) .build()) .build();
	 * 
	 * productList.add(product); }
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } finally {
	 * pool.freeConnection(con, pstmt, rs); } return productList; }
	 */
	
	public int deleteProduct(int productId) {
		Connection con = null;
		PreparedStatement pstmt = null;
		int successCount = 0;
		
		try {
			con = pool.getConnection();
			String sql = "delete from product_tb where product_id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, productId);
			successCount = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
				
		return successCount;
	}
	
	public int updateProduct(Product product) {
		Connection con = null;
		CallableStatement cstmt = null;
		int successCount = 0;
		
		try {
			con = pool.getConnection();
			String sql = "{ call p_update_product(?, ?, ?, ?, ?) }";
			
			cstmt = con.prepareCall(sql);
			
			cstmt.setInt(1,  product.getProduct_Id());
			cstmt.setString(2, product.getProduct_Name());
			cstmt.setInt(3, product.getProduct_Price());
			cstmt.setString(4, product.getProductColor().getColor_Name());
			cstmt.setString(5, product.getProductCategory().getCategory_Name());
					
			successCount = cstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		
		return successCount;
	}
}
