/********************************************************************************
 * 
 * Mysql���� DB �� reviewlist ���̺� ���� �� ������ ó�� ���� ��ü
 * 
 * 
 ********************************************************************************/
package Review;
import java.sql.*;
import java.util.ArrayList;

import Post.PostData;

public class ReviewDB {
	private Connection conn = null;
	private PreparedStatement pstmt;
	private ResultSet resultSet;
	
	public ReviewDB() {
		try {
			String url = "jdbc:mysql://localhost:3306/TravelDB?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			
			Class.forName("com.mysql.jdbc.Driver");
	
			
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("success connect to db(reviewlist table)");
			
		} catch (Exception e) {
			System.out.println(e.getMessage());		
		} 
	}
	public int getNext() {//db postreviewlist table���� ���� ���� reviewid �� + 1 �� �ݳ� 

		String SQL = "SELECT reviewid FROM postreviewlist ORDER BY reviewid DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			resultSet = pstmt.executeQuery();
			if(resultSet.next()) {
				return resultSet.getInt(1) + 1;
			}
			return 1;//��� ���� ��Ʋ� ù ��° ������ ���
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //db ����
	}
	public int write(int postid, String userid, String reviewcontents, int reviewscore) {
		String SQL = "INSERT INTO postreviewlist VALUES(?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, postid);
			pstmt.setString(2, userid);
			pstmt.setString(3, reviewcontents);
			pstmt.setInt(4, reviewscore);
			pstmt.setInt(5, getNext());
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;//db����
	}
	public ArrayList<ReviewData> getList(int reviewpagenumber, int postid){
		String SQL = "SELECT * FROM postreviewlist Where postid = ? AND reviewid <? ORDER BY postid DESC LIMIT 10";
		ArrayList<ReviewData> list = new ArrayList<ReviewData>();
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, postid);
			pstmt.setInt(2, getNext() - (reviewpagenumber -1) * 10);
			resultSet = pstmt.executeQuery();
			while (resultSet.next()) {
				ReviewData ReviewData = new ReviewData();
				ReviewData.setPostid(resultSet.getInt(1));
				ReviewData.setReviewuserid(resultSet.getString(2));
				ReviewData.setReviewcontents(resultSet.getString(3));
				ReviewData.setReviewscore(resultSet.getInt(4));
				ReviewData.setReviewid(resultSet.getInt(5));

				list.add(ReviewData);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list; 

	}
	public boolean nextPage(int pageNumber) {
		String SQL = "SELECT * FROM postreviewlist WHERE postid =? AND  reviewid <? ORDER BY reviewid DESC LIMIT 10";
		ArrayList<ReviewData> list = new ArrayList<ReviewData>();
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
	public ReviewData getReviewData(int reviewid) {
		String SQL = "SELECT * FROM postlist WHERE reviewid=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, reviewid);
			resultSet = pstmt.executeQuery();
			if(resultSet.next()) {
				ReviewData ReviewData = new ReviewData();
				ReviewData.setPostid(resultSet.getInt(1));
				ReviewData.setReviewuserid(resultSet.getString(2));
				ReviewData.setReviewcontents(resultSet.getString(3));
				ReviewData.setReviewscore(resultSet.getInt(4));
				ReviewData.setReviewid(resultSet.getInt(5));
					
				return ReviewData;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public int modifyReview(int reviewid, String reviewcontents, int reviewscore) {
		String SQL = "UPDATE postreviewlist SET reviewcontents=?, reviewscore WHERE reviewid=?";

		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, reviewcontents);
			pstmt.setInt(2, reviewscore);
			pstmt.setInt(3, reviewid);
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	public int deleteReview(int reviewid) {
		String SQL = "DELETE FROM postreviewlist WHERE reviewid = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, reviewid);
			return pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
