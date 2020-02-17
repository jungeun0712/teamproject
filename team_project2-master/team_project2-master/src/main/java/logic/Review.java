package logic;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.validator.constraints.NotEmpty;

public class Review {
	private String userid;
	private int reviewno;
	@NotEmpty(message="리뷰 내용을 작성해주세요")
	private String reviewcontent;
	private int itemavg;
	private Date reviewdate;
	private int itemnum;

	/* 추천 리스트 */
	List<Up> uplist = new ArrayList<Up>();
	
	public List<Up> getUplist() {
		return uplist;
	}
	public void setUplist(List<Up> uplist) {
		this.uplist = uplist;
	}
	/* 추천 갯수 */ 
	private int upcount;
	
	public int getUpcount() {
		return upcount;
	}
	public void setUpcount(int upcount) {
		this.upcount = upcount;
	}
	/*////////////////*/
	public int getItemnum() {
		return itemnum;
	}
	public void setItemnum(int itemnum) {
		this.itemnum = itemnum;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getReviewno() {
		return reviewno;
	}
	public void setReviewno(int reviewno) {
		this.reviewno = reviewno;
	}
	public String getReviewcontent() {
		return reviewcontent;
	}
	public void setReviewcontent(String reviewcontent) {
		this.reviewcontent = reviewcontent;
	}
	public int getItemavg() {
		return itemavg;
	}
	public void setItemavg(int itemavg) {
		this.itemavg = itemavg;
	}
	public Date getReviewdate() {
		return reviewdate;
	}
	public void setReviewdate(Date reviewdate) {
		this.reviewdate = reviewdate;
	}
	@Override
	public String toString() {
		final int maxLen = 10;
		return "Review [userid=" + userid + ", reviewno=" + reviewno + ", reviewcontent=" + reviewcontent + ", itemavg="
				+ itemavg + ", reviewdate=" + reviewdate + ", itemnum=" + itemnum + ", uplist="
				+ (uplist != null ? uplist.subList(0, Math.min(uplist.size(), maxLen)) : null) + ", upcount=" + upcount
				+ "]";
	}
	
	
	
}
