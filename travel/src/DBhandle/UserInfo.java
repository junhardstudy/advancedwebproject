package DBhandle;

public class UserInfo {
	private String userid;
	private String userpw;
	private String usernickname;
	
	public String getuserid() {
		return userid;
	}
	public String getuserpw() {
		return userpw;
	}
	public String getusernickname() {
		return usernickname;
	}
	
	public void setuserid(String userid) {
		this.userid = userid;
	}
	public void setuserpw(String userpw) {
		this.userpw = userpw;
	}
	public void setusernickname(String usernickname) {
		this.usernickname = usernickname;
	}
	
}
