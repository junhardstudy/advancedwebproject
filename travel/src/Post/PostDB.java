/********************************************************************************
 * 
 * Mysql에서 DB 인 postlist 테이블 연결 및 데이터 처리 관련 객체
 * 
 * 
 ********************************************************************************/
package Post;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;


public class PostDB {
	private Connection conn = null;
	private PreparedStatement pstmt;
	private ResultSet resultSet;
	
	public PostDB(){		
		try {
			String url = "jdbc:mysql://localhost:3306/TravelDB?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			
			Class.forName("com.mysql.jdbc.Driver");
	
			
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("success connect to db");
			
		} catch (Exception e) {
			System.out.println(e.getMessage());		
		} 
		
	}
	public ArrayList<PostData> getList(int pageNumber){
		String SQL = "SELECT * FROM postlist Where postid <? postavailable = 1 ORDER BY postid DESC LIMIT 10";
		ArrayList<PostData> list = new ArrayList<PostData>();
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber -1) * 10);
			resultSet = pstmt.executeQuery();
			while (resultSet.next()) {
				PostData PostData = new PostData();
				PostData.setPostid(resultSet.getInt(1));
				PostData.setPosttitle(resultSet.getString(2));
				PostData.setPostuserid(resultSet.getString(6));
				PostData.setPostdate(resultSet.getString(3));
				PostData.setPostcontents(resultSet.getString(4));
				PostData.setPostavailable(resultSet.getInt(5));
				list.add(PostData);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list; 

	}
	
	public boolean nextPage(int pageNumber) {
		String SQL = "SELECT * FROM postlist WHERE postid <? postavailable = 1 ORDER BY postid DESC LIMIT 10";
		ArrayList<PostData> list = new ArrayList<PostData>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber -1) * 10);
			resultSet = pstmt.executeQuery();
			if (resultSet.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;

	}
	
	
	public String getDate() {
		String SQL = "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			resultSet = pstmt.executeQuery();
			
			if(resultSet.next()) {
				return resultSet.getString(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "";//db 에러일때 빈 문자열 보내줄거임
		
	}
	public int getNext() { 

		String SQL = "SELECT postid FROM postlist ORDER BY postid DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			resultSet = pstmt.executeQuery();
			if(resultSet.next()) {
				return resultSet.getInt(1) + 1;
			}
			return 1;//첫 번째 게시물인 경우
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //db 오류
	}
	public int write(String posttitle, String userid, String postcontents) { 

		String SQL = "INSERT INTO postlist VALUES(?, ?, ?, ?, ?, ?)";

		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, posttitle);
			pstmt.setString(6, userid);
			pstmt.setString(3, getDate());
			pstmt.setString(4, postcontents);
			pstmt.setInt(5,1);
			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //db 오류
	}


}
