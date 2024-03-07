package sample.spring.project;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import common.DbClose;
import common.DbSet;

public class TourDAO {
	
	private static TourDAO instance = new TourDAO();
	
	//private 생성자
	private TourDAO() {} 
	
	//class로 접근해서 사용하기 위해 static 사용
	public static TourDAO getInstance() {
		return instance; //DAO 객체인 instance를 return 해줌
	}
		
	//----- CRUD 변수들 ----
	Connection conn;
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet rs;
	int result;

	//====================================================
	
	public int tourInsert(TourDTO dto) {
		
		try {

			conn = DbSet.getConnection();
			System.out.println("2단계 : DB 연동 성공!");

			String sql = "insert into tourmember values (?,?,?,?,?,?)";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getMem_id());
			pstmt.setString(2, dto.getMem_pwd());
			pstmt.setString(3, dto.getMem_name());
			pstmt.setString(4, dto.getMem_email());
			pstmt.setString(5, dto.getMem_phone());
			pstmt.setString(6, dto.getMem_birth());			
			
			result = pstmt.executeUpdate(); 
			
		} catch (SQLException e) {
			e.printStackTrace(); 
		} catch (ClassNotFoundException e) {
			e.printStackTrace(); 
		}  finally {
				DbClose.close(conn, pstmt);
		}	
		
		return result;
	
	}
	
	//====================================================
	
	public int tourLogin(TourDTO dto) {
		
		try {
			conn = DbSet.getConnection();

			String sql = "select * from tourmember where mem_id = ? and mem_pwd = ?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getMem_id());
			pstmt.setString(2, dto.getMem_pwd());
			
			result = pstmt.executeUpdate(); 
			
		} catch (SQLException e) {
			e.printStackTrace(); 
		} catch (ClassNotFoundException e) {
			e.printStackTrace(); 
		}  finally {
				DbClose.close(conn, pstmt);
		}	
		
		return result;
	
	}
	
	//====================================================
	
	ArrayList<TourDTO> dtoTL = new ArrayList<TourDTO>();
	
	public ArrayList<TourDTO> memberSelect() {

		String sql = "select * from tourmember";
		
		try {
			dtoTL.clear();
			
			conn = DbSet.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				
				TourDTO dtoset = new TourDTO();
	
				dtoset.setMem_id(rs.getString("mem_id")); 				
				dtoset.setMem_pwd(rs.getString("mem_pwd")); 
				dtoset.setMem_name(rs.getString("mem_name"));
				dtoset.setMem_email(rs.getString("mem_email"));
				dtoset.setMem_phone(rs.getString("mem_phone"));
				dtoset.setMem_birth(rs.getString("mem_birth")); 			
				
				dtoTL.add(dtoset);
			}
			
		} catch (SQLException e) {
			e.printStackTrace(); 
		} catch (ClassNotFoundException e) {
			e.printStackTrace(); 
		}  finally {
				DbClose.close(conn, stmt);
		}	
		
		return dtoTL;
	
	}	
	
	
	//====================================================
	
	ArrayList<ReviewDTO> dtoRL = new ArrayList<ReviewDTO>();
	
	public ArrayList<ReviewDTO> reviewSelect() {

		String sql = "select * from reviewtour ORDER BY gue_no DESC";
		
		try {
			dtoRL.clear();
			
			conn = DbSet.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				
				ReviewDTO dtoset = new ReviewDTO();
	
				dtoset.setGue_no(rs.getString("gue_no")); 				
				dtoset.setGue_id(rs.getString("gue_id")); 
				dtoset.setGue_pwd(rs.getString("gue_pwd"));
				dtoset.setGue_subject(rs.getString("gue_subject"));
				dtoset.setGue_content(rs.getString("gue_content"));
				dtoset.setGue_logtime(rs.getString("gue_logtime")); 			
				
				dtoRL.add(dtoset);
			}
			
		} catch (SQLException e) {
			e.printStackTrace(); 
		} catch (ClassNotFoundException e) {
			e.printStackTrace(); 
		}  finally {
				DbClose.close(conn, stmt);
		}	
		
		return dtoRL;
	
	}
	//=======================================
	
	public ArrayList<ReviewDTO> reviewSelect(int beginPage, int perPage){
		
		//String sql = "select * from guestbook where gue_no >= " + beginPage + " and gue_no < " + perPage + " ORDER BY gue_no";
		String sql = "select * from ( select rownum as RN, a.* from (select * from reviewtour order by gue_no DESC) a)  where RN >= "+ (beginPage+1) +" and RN < "+(perPage+1);
				
		try {			
			dtoRL.clear();
			conn = DbSet.getConnection();
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				ReviewDTO dtoset = new ReviewDTO();
				
				dtoset.setGue_no(rs.getString("gue_no")); 				
				dtoset.setGue_id(rs.getString("gue_id")); 
				dtoset.setGue_pwd(rs.getString("gue_pwd"));
				dtoset.setGue_subject(rs.getString("gue_subject"));
				dtoset.setGue_content(rs.getString("gue_content"));
				dtoset.setGue_logtime(rs.getString("gue_logtime")); 		

				dtoRL.add(dtoset);
			}
			
		} catch (SQLException e) {
			e.printStackTrace(); 
		} catch (ClassNotFoundException e) {
			e.printStackTrace(); 
		}  finally {
			DbClose.close(conn, stmt);
		}	
		
		
		return dtoRL;
	}
	
	//=====================================================
	
	public ArrayList<ReviewDTO> reviewSelect(String index){
		
		String sql = "select * from reviewtour";
		
		try {	
			
			dtoRL.clear();
			
			conn = DbSet.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				
				ReviewDTO dtoset = new ReviewDTO();
				
				if (rs.getString("gue_no").equals(index)) {
					dtoset.setGue_no(rs.getString("gue_no")); 				
					dtoset.setGue_id(rs.getString("gue_id")); 
					dtoset.setGue_pwd(rs.getString("gue_pwd"));
					dtoset.setGue_subject(rs.getString("gue_subject"));
					dtoset.setGue_content(rs.getString("gue_content"));	
					dtoset.setGue_logtime(rs.getString("gue_logtime")); 			
					
					dtoRL.add(dtoset);	
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace(); 
		} catch (ClassNotFoundException e) {
			e.printStackTrace(); 
		}  finally {
			DbClose.close(conn, stmt);
		}
		
		return dtoRL;
	}
	
	
	//=====================================================
	
	public int reviewWrite(ReviewDTO dto) {	
		
		try {
			conn = DbSet.getConnection();
	
			String sql = "select max(gue_no) as num from reviewtour";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(sql);
			int number = 1;
			
			if(rs.next()) { //gue_no에 값이 있다면
				number = rs.getInt("num") + 1; //gue_no의 최대값 + 1
			}
			
			sql = "insert into reviewtour values (?,?,?,?,?,sysdate)";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, number);
			pstmt.setString(2, dto.getGue_id());
			pstmt.setString(3, dto.getGue_pwd());
			pstmt.setString(4, dto.getGue_subject());
			pstmt.setString(5, dto.getGue_content());
			
			System.out.println("DAOtest04" + result);
			
			result = pstmt.executeUpdate(); 
			
		} catch (SQLException e) {
			e.printStackTrace(); 
		} catch (ClassNotFoundException e) {
			e.printStackTrace(); 
		}  finally {
				DbClose.close(conn, pstmt);
		}
		
		return result;
		
	}
	
	
	//=====================================================	
	
	public int reviewUpdate(int no, ReviewDTO dto) {
		
		try {
			conn = DbSet.getConnection();
			String sql = "update reviewtour set gue_subject = ?, gue_content = ? where gue_no = ?";			
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getGue_subject());
			pstmt.setString(2, dto.getGue_content());
			pstmt.setInt(3, no);
			
			result = pstmt.executeUpdate(); 
			
		} catch (SQLException e) {
			e.printStackTrace(); 
		} catch (ClassNotFoundException e) {
			e.printStackTrace(); 
		}  finally {
				DbClose.close(conn, pstmt);
		}	
		
		return result;
	}
	//=====================================================
	
	public int reviewDelete(ReviewDTO dto) {
		
		System.out.println(">>>>>>> reviewDelete CHK!!!!!!!!!!!!!!!!!!!!!");
		
		try {
			conn = DbSet.getConnection();
		
			String sql = "delete reviewtour where gue_no = ? and  gue_id = ? and  gue_pwd = ?";			
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getGue_no());
			pstmt.setString(2, dto.getGue_id());
			pstmt.setString(3, dto.getGue_pwd());
			
			result = pstmt.executeUpdate(); 
			
		} catch (SQLException e) {
			e.printStackTrace(); 
		} catch (ClassNotFoundException e) {
			e.printStackTrace(); 
		}  finally {
				DbClose.close(conn, pstmt);
		}	
		
		System.out.println("result >>>>>>" + result);
		
		return result;
	}

	//=====================================================
	

	public int reviewCount(){
		
		String sql = "select * from reviewtour ORDER BY gue_no";
		
		int count = 0;
		
		try {	
			
			//dtoL.clear();
			
			conn = DbSet.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				count++;
			}
			
		} catch (SQLException e) {
			e.printStackTrace(); 
		} catch (ClassNotFoundException e) {
			e.printStackTrace(); 
		}  finally {
			DbClose.close(conn, stmt);
		}	
		
		return count;
	}
	
}