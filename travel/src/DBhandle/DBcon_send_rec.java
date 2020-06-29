/********************************************************************************
 * 
 *  Mysql���� DB�� travelDB�� userinfo ���̺� ��� �� ������ ó����  ���ִ� ��ü
 * 
 * 
 ********************************************************************************/

package DBhandle;
import java.sql.*;

public class DBcon_send_rec {
	private Connection conn = null;
	private PreparedStatement pstmt;
	private ResultSet resultSet;
	
	public DBcon_send_rec(){
		
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
	
	public int login(String userid, String pw) {
		String SQL = "SELECT userpw FROM userinfo WHERE userid=?";
		
		try {
			pstmt = conn.prepareStatement(SQL);
			
			pstmt.setString(1, userid);
			resultSet = pstmt.executeQuery();
			
			if(resultSet.next()) {
				if(resultSet.getString(1).contentEquals(pw)) {

					return 1;
				}
				else {

					return 0;//��� Ʋ�� ���
				}
			}

			return -1;//���̵� ���� ���
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	
		return -2;//db����
	}
	public int signup(UserInfo user) {
		String SQL = "INSERT INTO userinfo VALUES(?,?,?)";
		
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1, user.getuserid());
			pstmt.setString(2, user.getuserpw());
			pstmt.setString(3, user.getusernickname());
			pstmt.executeUpdate();
			return 1;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
