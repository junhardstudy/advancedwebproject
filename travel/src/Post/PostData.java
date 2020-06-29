/********************************************************************************
 * 
2 * 게시글(post)데이터를 저장하고 보내주는 객체
 * 
 * 
 ********************************************************************************/
package Post;

public class PostData {
	private int postid;
	private String posttitle;
	private String postcontents;
	private String postdate;
	private String postuserid;
	private int postavailable;
	public int getPostid() {
		return postid;
	}
	public void setPostid(int postid) {
		this.postid = postid;
	}
	public String getPosttitle() {
		return posttitle;
	}
	public void setPosttitle(String posttitle) {
		this.posttitle = posttitle;
	}
	public String getPostcontents() {
		return postcontents;
	}
	public void setPostcontents(String postcontents) {
		this.postcontents = postcontents;
	}
	public String getPostdate() {
		return postdate;
	}
	public void setPostdate(String postdate) {
		this.postdate = postdate;
	}
	public String getPostuserid() {
		return postuserid;
	}
	public void setPostuserid(String postuserid) {
		this.postuserid = postuserid;
	}
	public int getPostavailable() {
		return postavailable;
	}
	public void setPostavailable(int postavailable) {
		this.postavailable = postavailable;
	}
	
	
	
	
	
}
