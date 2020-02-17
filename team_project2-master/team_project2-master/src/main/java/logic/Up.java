package logic;

public class Up {
	private int upno;
	private String userid;
	//private int upcnt;
	private int reviewno;
	
	public int getReviewno() {
		return reviewno;
	}
	public void setReviewno(int reviewno) {
		this.reviewno = reviewno;
	}
	public int getUpno() {
		return upno;
	}
	public void setUpno(int upno) {
		this.upno = upno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	@Override
	public String toString() {
		return "Up [upno=" + upno + ", userid=" + userid + ", reviewno=" + reviewno + "]";
	}
	
	
}
