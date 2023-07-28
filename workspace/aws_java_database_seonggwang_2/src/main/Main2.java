package main;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.xdevapi.Result;

import config.DBConnectionMgr;

public class Main2 {

	public static void main(String[] args) {
		
		//우리는 이것을 pool이라고 부르기로 했어요
		DBConnectionMgr pool = DBConnectionMgr.getInstance(); 
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

///////////////////////////////////////////////////////////////////////////
//		(2)Insert into 
		try {
			//DB에 연결
			con = pool.getConnection();
			
			//쿼리문 작성
			String sql = "insert into test_tb values(0, ?, ?)";
			
			//쿼리문 가공준비
			pstmt = con.prepareStatement(sql);
			
			//쿼리문 가공
			pstmt.setString(1,"ShinyDev"); //1번(째 물음표)에 값 저장
			pstmt.setString(2,"https://dogfoot-er.tistory.com/");
			
			//쿼리문 실행
			int successCount = pstmt.executeUpdate();
			System.out.println("\n insert 성공횟수 : " + successCount +"\n");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
//////////////////////////////////////////////////////////////////////////////////
//		(3) (1)과 같음. select.
		try {
			con = pool.getConnection();
			String sql = "select * from test_tb";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			System.out.println("번호\t|\t아이디\t|\t비밀번호");
			while(rs.next()) { 
				System.out.println(rs.getInt(1) + "\t|\t" + rs.getString(2) + "\t|\t" + rs.getString(3));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs); 
		}

	}
}
