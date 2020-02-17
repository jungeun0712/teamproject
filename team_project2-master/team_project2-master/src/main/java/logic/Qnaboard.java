package logic;

import java.util.Date;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class Qnaboard {
	private int qnano;
	private String userid;
	private int filter;
	private String q_subject; // 사용자 문의 제목
	private int boardcode; // 3번 1:1 문의
	private Date boarddate;
	private String q_content; // 사용자 문의 내용
	@NotEmpty(message="답변 내용을 입력해주세요")
	private String a_content; // 관리자 답변 내용
	private MultipartFile qnafile1;
	private String qnafileurl;
	private int checkin; // 관리자 문의 답변 여부 - 답변전 0, 답변 후 1
	
	@NotEmpty(message="비밀번호를 입력하세요")
	private String password;

	public int getQnano() {
		return qnano;
	}

	public void setQnano(int qnano) {
		this.qnano = qnano;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public int getFilter() {
		return filter;
	}

	public void setFilter(int filter) {
		this.filter = filter;
	}

	public String getQ_subject() {
		return q_subject;
	}

	public void setQ_subject(String q_subject) {
		this.q_subject = q_subject;
	}

	public int getBoardcode() {
		return boardcode;
	}

	public void setBoardcode(int boardcode) {
		this.boardcode = boardcode;
	}

	public Date getBoarddate() {
		return boarddate;
	}

	public void setBoarddate(Date boarddate) {
		this.boarddate = boarddate;
	}

	public String getQ_content() {
		return q_content;
	}

	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}

	public String getA_content() {
		return a_content;
	}

	public void setA_content(String a_content) {
		this.a_content = a_content;
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

	public int getCheckin() {
		return checkin;
	}

	public void setCheckin(int checkin) {
		this.checkin = checkin;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Contact [qnano=" + qnano + ", userid=" + userid + ", filter=" + filter + ", q_subject=" + q_subject
				+ ", boardcode=" + boardcode + ", boarddate=" + boarddate + ", q_content=" + q_content + ", a_content="
				+ a_content + ", qnafile1=" + qnafile1 + ", qnafileurl=" + qnafileurl + ", checkin=" + checkin
				+ ", password=" + password + "]";
	}
}