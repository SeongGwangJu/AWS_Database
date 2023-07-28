package main;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import config.DBConnectionMgr;

public class Method {
	DBConnectionMgr pool =  DBConnectionMgr.getInstance();
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	

//select * from
	public void selectAllFrom (String tableName) {

		try {
			con = pool.getConnection();
			StringBuilder stringBuilder = new StringBuilder("select * from ");
			stringBuilder.append(tableName);
			String sql =  stringBuilder.toString();
			System.out.println(sql);
			
			pstmt =con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			System.out.println("번호\t|\t아이디\t|\t비밀번호");
			while(rs.next()) {
				System.out.println(rs.getInt(1) + "\t|\t" +rs.getString(2) + "\t|\t" + rs.getString(3));
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			pool.freeConnection(con, pstmt, rs );
		}
	}
//insert
	public boolean insertUser(String username, String password) {
		boolean result = false;
		
		try {
			con = pool.getConnection();
			String sql = "insert into user_tb values(0, ?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			
			//한번이라도 실행 되면 -> true 반환
			result = (pstmt.executeUpdate() != 0);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return result;
		
	}
	
	public List<List<Object>> getUserListAll() {
		List<List<Object>> mstList = new ArrayList<>();
		
		try {
			con = pool.getConnection();
			String sql = "select * from user_tb";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				List<Object> dtlList = new ArrayList<>();
				dtlList.add(rs.getInt(1));
				dtlList.add(rs.getString(2));
				dtlList.add(rs.getString(3));
				mstList.add(dtlList);
			}
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return mstList;
	}
}

