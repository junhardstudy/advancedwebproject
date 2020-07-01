package Review;

public class ReviewData {
	private int postid;
	private int reviewid;
	private String reviewuserid;
	private String reviewcontents;
	private int reviewscore = -1;
	public int getPostid() {
		return postid;
	}
	public void setPostid(int postid) {
		this.postid = postid;
	}
	public int getReviewid() {
		return reviewid;
	}
	public void setReviewid(int reviewid) {
		this.reviewid = reviewid;
	}
	public String getReviewuserid() {
		return reviewuserid;
	}
	public void setReviewuserid(String reviewuserid) {
		this.reviewuserid = reviewuserid;
	}
	public String getReviewcontents() {
		return reviewcontents;
	}
	public void setReviewcontents(String reviewcontents) {
		this.reviewcontents = reviewcontents;
	}
	public int getReviewscore() {
		return reviewscore;
	}
	public void setReviewscore(int reviewscore) {
		this.reviewscore = reviewscore;
	}
	
}
