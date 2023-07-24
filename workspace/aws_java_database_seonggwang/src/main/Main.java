package main;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.xdevapi.Result;

import config.DBConnectionMgr;

public class Main {

	public static void main(String[] args) {
		
		//우리는 이것을 pool이라고 부르기로 했어요
		DBConnectionMgr pool = DBConnectionMgr.getInstance(); 
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
//		(1)select * from 
		try {
			//java와 DB를 연결
//			Connection con = DBConnectionMgr.getInstance().getConnection();
//			con = DBConnectionMgr.getInstance().getConnection();
			con = pool.getConnection();
			//실행할 쿼리문 작성
			String sql = "select * from user_tb";
			
			//작성한 쿼리문 가공
//			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt = con.prepareStatement(sql);
			
			//가공된 커리문을 실행 =-> 결과를 ResultSet으로 변환
//			ResultSet rs = pstmt.executeQuery();
			rs = pstmt.executeQuery();
			
			//결과가 담긴 ResultSet을 반복작업을 통해 데이터 조회
			System.out.println("번호\t|\t아이디\t|\t비밀번호");
			while(rs.next()) { //1행->2행->......
				System.out.println(rs.getInt(1) + "\t|\t" + rs.getString(2) + "\t|\t" + rs.getString(3)); 
			} //					1번컬럼(Int)			2번컬럼(String)				3번컬럼(String)
			
			//생성된 rs, pstmt, con 객체소멸(데이터베이스 연결 해제)
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
//			DBConnectionMgr.getInstance().freeConnection(con, pstmt, rs); 
			pool.freeConnection(con, pstmt, rs); 
		}
		
///////////////////////////////////////////////////////////////////////////
//		(2)Insert into 
		try {
			//DB에 연결
			con = pool.getConnection();
			
			//쿼리문 작성
			String sql = "insert into user_tb values(0, ?, ?)";
			
			//쿼리문 가공준비
			pstmt = con.prepareStatement(sql);
			
			//쿼리문 가공
			pstmt.setString(1,"eee"); //1번(째 물음표)에 값 저장
			pstmt.setString(2,"1111");
			
			//쿼리문 실행
			int successCount = pstmt.executeUpdate();
			System.out.println("\ninsert 성공횟수 : " + successCount +"\n");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
//////////////////////////////////////////////////////////////////////////////////
//		(3) (1)과 같음. select.
		try {
			con = pool.getConnection();
			String sql = "select * from user_tb";
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
