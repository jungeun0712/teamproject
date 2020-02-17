package logic;

import java.util.Date;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class Help {
	private int qnano;
	private User user; // userid만 db에 넣
	@NotEmpty(message="제목을 입력해주세요")
	private String q_subject;
	@NotEmpty(message="내용을 입력하세요")
	private String q_content; // notice
	/*@NotEmpty(message="내용을 입력하세요")
	private String fcontent; // faq 
*/	
	private String userid;
	
	public String getQ_subject() {
		return q_subject;
	}
	public void setQ_subject(String q_subject) {
		this.q_subject = q_subject;
	}
	public String getQ_content() {
		return q_content;
	}
	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}
	private MultipartFile qnafile1;
	private String qnafileurl;
	
	private int boardcode; // 공지사항1, QNA 2, 1:1 3
	private Date boarddate;
	
	private int filter; // 배송1, 교환/반품/환불2, 기타3, 상품4, 주문결제5

	private String a_content;
	private int checkin; // 1:1 답변 승인여부 확인
	@NotEmpty(message="비밀번호를 입력하세요")
	private	String password;
	

	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public MultipartFile getQnafile1() {
		return qnafile1;
	}
	public void setQnafile1(MultipartFile qnafile1) {
		this.qnafile1 = qnafile1;
	}
	public String getQnafileurl() {
		return qnafileurl;
	}
	public void setQnafileurl(String qnafileurl) {
		this.qnafileurl = qnafileurl;
	}
	/*public String getFcontent() {
		return fcontent;
	}
	public void setFcontent(String fcontent) {
		this.fcontent = fcontent;
	}*/
	public Date getBoarddate() {
		return boarddate;
	}
	public void setBoarddate(Date boarddate) {
		this.boarddate = boarddate;
	}
	public int getQnano() {
		return qnano;
	}
	public void setQnano(int qnano) {
		this.qnano = qnano;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
		this.userid = user.getUserid();
	}
	public String getUserid() {
		return userid;
	}
	
	public int getFilter() {
		return filter;
	}
	public void setFilter(int filter) {
		this.filter = filter;
	}
	public String getA_content() {
		return a_content;
	}
	public void setA_content(String a_content) {
		this.a_content = a_content;
	}
	public int getCheckin() {
		return checkin;
	}
	public void setCheckin(int checkin) {
		this.checkin = checkin;
	}
	
	public int getBoardcode() {
		return boardcode;
	}
	public void setBoardcode(int boardcode) {
		this.boardcode = boardcode;
	}
	@Override
	public String toString() {
		return "Help [qnano=" + qnano + ", user=" + user + ", q_subject=" + q_subject + ", q_content=" + q_content
				+ ", userid=" + userid + ", qnafile1=" + qnafile1 + ", qnafileurl=" + qnafileurl + ", boardcode="
				+ boardcode + ", boarddate=" + boarddate + ", filter=" + filter + ", a_content=" + a_content
				+ ", checkin=" + checkin + ", password=" + password + "]";
	}
	
	
	
	
}
